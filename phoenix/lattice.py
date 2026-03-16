from typing import Tuple

from phoenix.keymap import KeyMap


def site_to_coord(site, shape):
    coord = []
    x = site
    for L in reversed(shape):
        coord.append(x % L)
        x //= L
    return tuple(reversed(coord))


def lattice_distance(i, j, shape, periodic=False):
    ci = site_to_coord(i, shape)
    cj = site_to_coord(j, shape)

    dist = 0
    for a, b, L in zip(ci, cj, shape):
        delta = abs(a - b)
        if periodic:
            delta = min(delta, L - delta)
        dist += delta
    return dist


def all_pairs_within_range(shape, zeta, periodic=False):
    nsites = 1
    for L in shape:
        nsites *= L

    for i in range(nsites):
        for j in range(i + 1, nsites):
            if lattice_distance(i, j, shape, periodic=periodic) <= zeta:
                yield (i, j)


def link_hamiltonian_domains(
    hamilton_keymap: KeyMap,
    keymap_larmor: KeyMap,
    keymap_dipdip: KeyMap,
    shape,
    zeta=1,
    periodic=False,
):
    for pair in all_pairs_within_range(shape, zeta, periodic=periodic):
        hamilton_keymap.link(pair, keymap_dipdip)


def nsites_from_shape(shape):
    n = 1
    for L in shape:
        n *= L
    return n
