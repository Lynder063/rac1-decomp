#!/usr/bin/env python3
"""Extract Ratchet & Clank (PAL, SCES_509.16 v2.00) levels from your own disc.

  extract.py survey ISO                       disc layout and references, as JSON
"""

import argparse
import json
from pathlib import Path
import struct
import sys

from disc import Disc
from formats import FormatError


def main() -> None:
    parser = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    commands = parser.add_subparsers(dest="command", required=True)
    commands.add_parser("survey").add_argument("iso", type=Path)
    args = parser.parse_args()
    try:
        with Disc(args.iso) as disc:
            survey = disc.survey()
            json.dump(survey, sys.stdout, indent=2)
            print()
    except (OSError, FormatError, struct.error) as exc:
        parser.exit(1, f"extract: {exc}\n")


if __name__ == "__main__":
    main()
