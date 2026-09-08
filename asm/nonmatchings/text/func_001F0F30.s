.align 3
nonmatching func_001F0F30, 0x3C

glabel func_001F0F30
    /* F1EB0 001F0F30 1900023C */  lui        $v0, %hi(D_0018A3B0)
    /* F1EB4 001F0F34 01000424 */  addiu      $a0, $zero, 0x1
    /* F1EB8 001F0F38 B0A34224 */  addiu      $v0, $v0, %lo(D_0018A3B0)
    /* F1EBC 001F0F3C 13000324 */  addiu      $v1, $zero, 0x13
    /* F1EC0 001F0F40 4C004224 */  addiu      $v0, $v0, 0x4C
    /* F1EC4 001F0F44 00000000 */  nop
.align 2
  .L001F0F48:
    /* F1EC8 001F0F48 000044AC */  sw         $a0, 0x0($v0)
    /* F1ECC 001F0F4C FFFF6324 */  addiu      $v1, $v1, -0x1
    /* F1ED0 001F0F50 00000000 */  nop
    /* F1ED4 001F0F54 00000000 */  nop
    /* F1ED8 001F0F58 00000000 */  nop
    /* F1EDC 001F0F5C FAFF6104 */  bgez       $v1, .L001F0F48
    /* F1EE0 001F0F60 FCFF4224 */   addiu     $v0, $v0, -0x4
    /* F1EE4 001F0F64 0800E003 */  jr         $ra
    /* F1EE8 001F0F68 00000000 */   nop
endlabel func_001F0F30
    /* F1EEC 001F0F6C 00000000 */  nop
