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
  /* Retail's gp base, read straight out of its own .reginfo section
     (Elf32_RegInfo.ri_gp_value). The 0x7f80-byte window below it is the
     small-data area: core.lit, .lit, .bss and the bottom of .data. All
     1011 gp-relative references in the disassembly land inside it. */
  _gp = 0x00166D00;

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

  /* Sections a nonzero -G makes the compiler emit.

     .sdata/.sbss come out empty -- our C defines no data of its own,
     every global is extern and resolved from the retail data objects or
     bss_equs -- so they are parked past the end of the image.

     .lit4/.lit8 are different: FP literals are addressed via $gp too
     (R_MIPS_LITERAL), so they MUST live inside the small-data window
     0x15ED00..0x16ED00 or their references cannot reach. They go in the
     128-byte gap below .core_lit, which is the only free space in the
     window (everything from 0x15ED80 up is occupied by core_lit/.lit/
     .bss/.data). Currently 12 bytes are needed (3 float literals, all in
     text.o), so this fits -- but it is a tight spot, and if the literal
     pool grows past 128 bytes this placement has to be rethought rather
     than nudged. Note these literals land at OUR addresses, not the ones
     retail's own .lit pool uses, so any function referencing one may
     differ from retail in that operand. */
  . = 0x2400000;
  .lit4  : { *(.lit4) }
  .lit8  : { *(.lit8) }
  .sdata : { *(.sdata) }
  .sbss  : { *(.sbss) *(.scommon) }
}
EOF
echo "wrote build-sn/rac1.ld"
