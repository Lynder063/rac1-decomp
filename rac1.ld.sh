#!/usr/bin/env bash
# Generates build-sn/rac1.ld from the same addresses recorded in
# config/splat.yaml. Kept as a generator script (not a static .ld) so the
# addresses stay traceable to one source of truth.
# bss regions are real (zero-filled) loaded sections here, not NOLOAD --
# this exact ld build (v2.3.7.513-era) doesn't advance the location
# counter correctly after a NOLOAD section (verified: an explicit
# `. = X;` right after one is silently ignored, next section lands back
# at the NOLOAD section's own start address instead). See
# docs/TOOLCHAIN.md. build-sn/{core_bss,bss}_pad.o must exist first --
# tools/build_sn_data.sh generates them.
cat > build-sn/rac1.ld <<'EOF'
OUTPUT_FORMAT("elf32-littlemips")
OUTPUT_ARCH(mips)

SECTIONS
{
  /* core segment (vram 0x100080, rom 0x1000) */
  /* vutext (0x100080-0x112380) is VU0 microcode, not linked here yet */

  . = 0x112380;
  .core_text : { build-sn/core_text.o(.text) }

  . = 0x12f580;
  .core_data : { build-sn/core_data.data.o(.data) }

  . = 0x152300;
  .core_rdata : { build-sn/core_rdata.rodata.o(.rodata) }

  . = 0x154200;
  .core_bss : { build-sn/core_bss_pad.o(.core_bss_pad) }

  /* main segment (vram 0x15ed80, rom 0x5fd00) */

  . = 0x15ed80;
  .core_lit : { build-sn/core_lit.rodata.o(.rodata) }

  . = 0x15f000;
  .lit : { build-sn/lit.rodata.o(.rodata) }

  . = 0x161380;
  .bss : { build-sn/bss_pad.o(.bss_pad) }

  . = 0x165580;
  .data : { build-sn/data.data.o(.data) }

  . = 0x1e8f00;
  .lvl_vtbl : { build-sn/lvl_vtbl.data.o(.data) }

  . = 0x1e8f80;
  .lvl_camvtbl : { build-sn/lvl_camvtbl.data.o(.data) }

  . = 0x1e9000;
  .lvl_sndvtbl : { build-sn/lvl_sndvtbl.data.o(.data) }

  . = 0x1e9080;
  .text : { build-sn/text.o(.text) }
}
EOF
echo "wrote build-sn/rac1.ld"
