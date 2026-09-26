#!/usr/bin/env python3
"""Extract Ratchet & Clank (PAL, SCES_509.16 v2.00) levels from your own disc.

  extract.py survey ISO                       disc layout and references, as JSON
  extract.py godot ISO OUT [--level N ...]    a Godot 4 project of editable levels
  extract.py raw ISO OUT --level N            one level's sections, as stored and decoded

OUT must be a new directory under this repository's assets/ or build-sn/,
both ignored by git. Output is built beside it and moved into place only
when complete. Never commit or share it: see LEGAL.md.
"""

import argparse
import hashlib
import json
from pathlib import Path
import shutil
import struct
import sys
import tempfile

from disc import LEVEL_COUNT, Disc
from formats import FormatError
from godot import LevelWriter, write_project
from level import load_level

ROOT = Path(__file__).resolve().parents[2]


def output_path(path: Path) -> Path:
    """A new directory inside assets/ or build-sn/, after resolving symlinks."""
    resolved = path.resolve()
    if not any(root in resolved.parents for root in (ROOT / "assets", ROOT / "build-sn")):
        raise FormatError("output must be a new directory under this repository's assets/ or build-sn/")
    if resolved.exists():
        raise FormatError(f"{resolved} already exists; choose a new directory")
    return resolved


def publish(path: Path, build) -> Path:
    """Run build(directory) in a temporary sibling, then rename it to path."""
    dest = output_path(path)
    dest.parent.mkdir(parents=True, exist_ok=True)
    temporary = Path(tempfile.mkdtemp(prefix=f".{dest.name}-", dir=dest.parent))
    try:
        build(temporary)
        temporary.rename(dest)
    finally:
        if temporary.exists():
            shutil.rmtree(temporary)
    return dest


def godot(disc: Disc, survey: dict, levels: list[int], lod: int, out: Path) -> None:
    write_project(out, levels)
    for level_id in levels:
        stats = LevelWriter(out, load_level(disc, survey["levels"][level_id])).write(lod)
        print(f"level {level_id:02}: {stats['mesh_instances']} meshes placed, "
              f"{stats['triangles']} triangles, {stats['textures']} textures", flush=True)


def raw(disc: Disc, survey: dict, level_id: int, out: Path) -> None:
    level = load_level(disc, survey["levels"][level_id])
    files = {"level_header.bin": level.header, "core_index.bin": level.index,
             "core_data.bin": level.core, "gameplay_pal.bin": level.gameplay}
    files.update({f"stored/{name}.bin": data for name, data in level.stored.items()})
    manifest = {"schema": 1, "level": survey["levels"][level_id], "overlay": level.overlay, "files": []}
    for name, data in files.items():
        (out / name).parent.mkdir(parents=True, exist_ok=True)
        (out / name).write_bytes(data)
        manifest["files"].append({"path": name, "bytes": len(data), "sha256": hashlib.sha256(data).hexdigest()})
    (out / "manifest.json").write_text(json.dumps(manifest, indent=2) + "\n")


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    commands = parser.add_subparsers(dest="command", required=True)
    commands.add_parser("survey").add_argument("iso", type=Path)
    export = commands.add_parser("godot")
    export.add_argument("iso", type=Path)
    export.add_argument("out", type=Path)
    export.add_argument("--level", type=int, action="append", choices=range(LEVEL_COUNT),
                        help="a level to export (repeatable; default: all)")
    export.add_argument("--terrain-lod", type=int, choices=(0, 2), default=0,
                        help="terrain detail: 0 finest (default), 2 coarsest")
    dump = commands.add_parser("raw")
    dump.add_argument("iso", type=Path)
    dump.add_argument("out", type=Path)
    dump.add_argument("--level", type=int, required=True, choices=range(LEVEL_COUNT))
    args = parser.parse_args()
    try:
        with Disc(args.iso) as disc:
            survey = disc.survey()
            if args.command == "survey":
                json.dump(survey, sys.stdout, indent=2)
                print()
            elif args.command == "godot":
                levels = sorted(set(args.level or range(LEVEL_COUNT)))
                dest = publish(args.out, lambda out: godot(disc, survey, levels, args.terrain_lod, out))
                print(f"Godot project: {dest}")
            else:
                dest = publish(args.out, lambda out: raw(disc, survey, args.level, out))
                print(f"Level {args.level} sections: {dest}")
    except (OSError, FormatError, struct.error) as exc:
        parser.exit(1, f"extract: {exc}\n")


if __name__ == "__main__":
    main()
