"""Bounded readers for the containers on the PAL disc. Evidence: docs/ASSETS.md.

Every reader checks sizes and offsets before using them and raises
FormatError on anything outside the layouts we have evidence for.
"""

import struct


class FormatError(ValueError):
    """Data outside the layouts this extractor supports."""


def span(data: bytes, offset: int, size: int) -> bytes:
    """data[offset:offset + size], or FormatError if any byte is missing."""
    if offset < 0 or size < 0 or offset + size > len(data):
        raise FormatError(f"range {offset:#x}+{size:#x} exceeds {len(data):#x} bytes")
    return data[offset:offset + size]


def unpack(fmt: str, data: bytes, offset: int = 0) -> tuple:
    return struct.unpack(fmt, span(data, offset, struct.calcsize(fmt)))
