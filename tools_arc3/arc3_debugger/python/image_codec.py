from __future__ import annotations

import io
from collections.abc import Mapping, Sequence
from pathlib import Path
from typing import Any

import numpy as np
from PIL import Image

ARC_PALETTE = np.array(
    [
        [0, 0, 0],
        [0, 116, 217],
        [255, 65, 54],
        [46, 204, 64],
        [255, 220, 0],
        [170, 170, 170],
        [240, 18, 190],
        [255, 133, 27],
        [127, 219, 255],
        [135, 12, 37],
        [255, 255, 255],
        [90, 90, 90],
        [190, 190, 190],
        [80, 80, 80],
        [220, 220, 220],
        [255, 255, 255],
    ],
    dtype=np.uint8,
)

PREFERRED_KEYS = (
    "frame",
    "frames",
    "image",
    "grid",
    "board",
    "pixels",
    "observation",
    "observation_space",
)


def _candidate_arrays(value: Any, depth: int = 0):
    if value is None or depth > 7:
        return

    if isinstance(value, Image.Image):
        yield np.asarray(value)
        return

    if isinstance(value, np.ndarray):
        yield value
        return

    if isinstance(value, Mapping):
        for key in PREFERRED_KEYS:
            if key in value:
                yield from _candidate_arrays(value[key], depth + 1)
        for key, child in value.items():
            if key not in PREFERRED_KEYS:
                yield from _candidate_arrays(child, depth + 1)
        return

    for key in PREFERRED_KEYS:
        if hasattr(value, key):
            try:
                yield from _candidate_arrays(getattr(value, key), depth + 1)
            except Exception:
                pass

    if isinstance(value, Sequence) and not isinstance(value, (str, bytes, bytearray)):
        # ARC FrameDataRaw.frame is commonly a sequence of frames; newest is last.
        for child in reversed(value):
            yield from _candidate_arrays(child, depth + 1)
        try:
            arr = np.asarray(value)
            if arr.dtype != object:
                yield arr
        except Exception:
            pass


def extract_latest_frame(*sources: Any) -> np.ndarray:
    for source in sources:
        for candidate in _candidate_arrays(source):
            arr = np.asarray(candidate)
            while arr.ndim > 3 and arr.shape[0] > 0:
                arr = arr[-1]
            if arr.ndim == 2 and min(arr.shape) > 0:
                return arr
            if arr.ndim == 3 and arr.shape[-1] in (3, 4):
                return arr
    raise ValueError(
        "Could not find image/grid data. Ensure the environment was created with "
        "include_frame_data=True and inspect env.observation_space.frame."
    )


def frame_to_image(frame: np.ndarray, scale: int = 10) -> Image.Image:
    arr = np.asarray(frame)
    if arr.ndim == 2:
        indices = np.clip(arr.astype(np.int64), 0, len(ARC_PALETTE) - 1)
        rgb = ARC_PALETTE[indices]
    elif arr.ndim == 3 and arr.shape[-1] in (3, 4):
        rgb = arr[..., :3].astype(np.uint8)
    else:
        raise ValueError(f"Unsupported frame shape: {arr.shape}")
    image = Image.fromarray(rgb, mode="RGB")
    if scale > 1:
        image = image.resize(
            (image.width * scale, image.height * scale),
            resample=Image.Resampling.NEAREST,
        )
    return image


def frame_to_png_bytes(frame: np.ndarray, scale: int = 10) -> bytes:
    buffer = io.BytesIO()
    frame_to_image(frame, scale=scale).save(buffer, format="PNG")
    return buffer.getvalue()


def save_frame(frame: np.ndarray, path: str | Path, scale: int = 10) -> Path:
    output = Path(path)
    output.parent.mkdir(parents=True, exist_ok=True)
    output.write_bytes(frame_to_png_bytes(frame, scale=scale))
    return output
