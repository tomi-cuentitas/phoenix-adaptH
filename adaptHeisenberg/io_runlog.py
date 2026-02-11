import json
from dataclasses import asdict, dataclass
from datetime import datetime
from pathlib import Path
from typing import Any, Dict, List, Optional

import numpy as np


def _fmt_sci(x: float) -> str:
    # stable 1e-03 formatting (no +, no leading zeros issues)
    return f"{x:.0e}".replace("+", "")


def make_run_id(
    *,
    ham: str,
    N: int,
    ell: int,
    m: int,
    eps: float,
    p_tail: int,
    dt: float,
    tmax: float,
    seed: str,
    sigma: str,
    stamp: Optional[datetime] = None,
) -> str:
    stamp = stamp or datetime.now()
    datestr = stamp.strftime("%Y%m%d_%H%M%S")
    return (
        f"{datestr}__{ham}"
        f"__N{N}__ell{ell}__m{m}"
        f"__eps{_fmt_sci(eps)}__ptail{p_tail}"
        f"__dt{dt:.3e}__tmax{tmax:g}"
        f"__seed{seed}__sigma{sigma}"
    )


def export_run(
    *,
    out_dir: str | Path,
    run_id: str,
    meta: Dict[str, Any],
    times: np.ndarray,
    obs: np.ndarray,
    tail_frac: np.ndarray,
    rebuilt: np.ndarray,
    phi_last: Optional[np.ndarray] = None,
) -> Path:
    out_dir = Path(out_dir)
    out_dir.mkdir(parents=True, exist_ok=True)

    run_path = out_dir / run_id
    run_path.mkdir(parents=True, exist_ok=True)

    # --- metadata ---
    meta2 = dict(meta)
    meta2["run_id"] = run_id
    meta2["exported_at"] = datetime.now().isoformat(timespec="seconds")

    (run_path / "meta.json").write_text(json.dumps(meta2, indent=2, sort_keys=True))

    # --- timeseries ---
    # columns: t, obs, tail_frac, rebuilt(0/1)
    data = np.column_stack([
        times.astype(float),
        obs.astype(float),
        tail_frac.astype(float),
        rebuilt.astype(int),
    ])
    np.savetxt(
        run_path / "timeseries.csv",
        data,
        delimiter=",",
        header="t,obs,tail_frac,rebuilt",
        comments="",
    )

    # --- final phi (optional) ---
    if phi_last is not None:
        np.save(run_path / "phi_last.npy", np.asarray(phi_last))

    return run_path
