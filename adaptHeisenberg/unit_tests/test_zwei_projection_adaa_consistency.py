import numpy as np
import pytest

from phoenix.keymap import KeyMap, Entry
from phoenix.adaa_derived import NumPyRA

from adaptHeisenberg.sigma0 import ProductState
from adaptHeisenberg.projection import project_system_adaa, project_term_delta


def _build_system_keymap(keys):
    root = KeyMap(name="sys")

    by_nums = {}
    for nums, word in keys:
        by_nums.setdefault(nums, set()).add(word)

    # IMPORTANT: the *child* passed to root.link must be a KeyMap (not a tuple)
    for nums, words in by_nums.items():
        sub = KeyMap(name=f"sub_{nums}")  # KeyMap child
        # store the nums label inside the submap (not as a child node)
        sub.labels = (nums,)  # if KeyMap supports labels; if not, ignore

        for w in sorted(words):
            sub.link(w, Entry(name=f"w={w}"))

        root.link(nums, sub)

    root.update()

    return root



def _adaa_to_dict(op):
    km = type(op)._KEYMAP
    out = {}
    for i in range(op.size):
        v = float(op.data["real"][i])
        if v != 0.0:
            nums, word = km.off2key(i).labels
            out[(nums, word)] = v
    return out


def _assert_reduced_key_invariants(km, op):
    """
    Guard against the exact failure mode:
    'word' must be reduced (len(word) == len(nums), and must not contain I/i).
    """
    for i in range(op.size):
        nums, word = km.off2key(i).labels
        # roundtrip sanity
        assert km.key2off(nums, word) == i

        # reduced-format sanity
        assert isinstance(nums, tuple)
        assert isinstance(word, str)
        assert len(word) == len(nums), (nums, word)
        assert "I" not in word and "i" not in word, (nums, word)
        assert nums == tuple(sorted(nums)), (nums, word)


def test_project_system_adaa_matches_term_oracle_and_preserves_sites():
    # ----- choose N just for sigma0 vector sizing; KeyMap is reduced so N not used directly -----
    N = 20

    # generic nonzero local means to make projection produce nontrivial lower-body terms
    vectors = np.zeros((N, 3), dtype=float)
    vectors[0] = (0.2, 0.1, 0.3)
    vectors[5] = (0.4, 0.2, 0.1)
    vectors[7] = (0.1, 0.3, 0.2)
    vectors[12] = (0.5, 0.1, 0.4)
    sigma0 = ProductState(vectors)

    m = 3
    exclude_scalar = False
    eps = 0.0

    # ----- build a source with multiple disjoint supports (this catches misplacement/collisions) -----
    # include: one term already <=m (copied), and two terms >m (expanded)
    src_terms = {
        ((0, 5, 7), "xyz"): 1.0,           # body=3 <= m -> copy
        ((0, 5, 7, 12), "xzyx"): 2.0,      # body=4 > m -> expand
        ((5, 7, 12, 13), "yzxx"): -1.5,    # body=4 > m -> expand (different region)
    }

    # ----- compute expected via oracle: copy small terms, delta-project overflow terms -----
    expected = {}
    for (nums, word), c in src_terms.items():
        if len(nums) <= m:
            expected[(nums, word)] = expected.get((nums, word), 0.0) + c
        else:
            pieces = project_term_delta(nums, word, sigma0, m, exclude_scalar=exclude_scalar, eps=eps)
            for k, v in pieces.items():
                expected[k] = expected.get(k, 0.0) + c * float(v)

    # ----- KeyMap must include *all* keys that can appear -----
    all_keys = set(expected.keys()) | set(src_terms.keys())
    km = _build_system_keymap(all_keys)
    Op = NumPyRA.set_keymap(km)

    src = Op()
    dst = Op()
    
      
    # DEBUG: show how labels look
    for i in range(min(10, km.size)):
        print(i, km.off2key(i), km.off2key(i).labels)
    
    # poison dst to catch leakage (projection must overwrite/zero it)
    dst.data["real"][:] = 123.0

    # set src coefficients
    for (nums, word), c in src_terms.items():
        off = km.key2off(nums, word)
        src.data["real"][off] = c

    # guard: ensure key format is reduced (this will FAIL if you accidentally build full words)
    _assert_reduced_key_invariants(km, src)

    # project
    project_system_adaa(src, dst, sigma0, m, exclude_scalar=exclude_scalar, eps=eps)

    out = _adaa_to_dict(dst)
    
    missing = set(expected) - set(out)
    extra   = set(out) - set(expected)
    print("missing:", missing)
    print("extra:", extra)
    for k in sorted(missing)[:10]:
        print("expected missing", k, expected[k])
    for k in sorted(extra)[:10]:
        print("unexpected extra", k, out[k])

    # 1) closure: no term beyond m-body
    assert all(len(nums) <= m for (nums, _) in out.keys())

    # 2) exact key set match (no missing terms, no spurious terms)
    assert set(out.keys()) == set(expected.keys())

    # 3) coefficient match
    for k, vexp in expected.items():
        assert out[k] == pytest.approx(vexp, abs=1e-12)
