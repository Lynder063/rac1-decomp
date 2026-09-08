.align 3
nonmatching func_001F0F30, 0x3C

glabel func_001F0F30
    /* F1EB0 001F0F30 1900023C */  lui        $2, %hi(D_0018A3B0)
    /* F1EB4 001F0F34 01000424 */  addiu      $4, $0, 0x1
    /* F1EB8 001F0F38 B0A34224 */  addiu      $2, $2, %lo(D_0018A3B0)
    /* F1EBC 001F0F3C 13000324 */  addiu      $3, $0, 0x13
    /* F1EC0 001F0F40 4C004224 */  addiu      $2, $2, 0x4C
    /* F1EC4 001F0F44 00000000 */  nop
.align 2
  .L001F0F48:
    /* F1EC8 001F0F48 000044AC */  sw         $4, 0x0($2)
    /* F1ECC 001F0F4C FFFF6324 */  addiu      $3, $3, -0x1
    /* F1ED0 001F0F50 00000000 */  nop
    /* F1ED4 001F0F54 00000000 */  nop
    /* F1ED8 001F0F58 00000000 */  nop
    /* F1EDC 001F0F5C FAFF6104 */  bgez       $3, .L001F0F48
    /* F1EE0 001F0F60 FCFF4224 */   addiu     $2, $2, -0x4
    /* F1EE4 001F0F64 0800E003 */  jr         $31
    /* F1EE8 001F0F68 00000000 */   nop
endlabel func_001F0F30
    /* F1EEC 001F0F6C 00000000 */  nop
