.align 3
nonmatching func_0011DA40, 0x40

glabel func_0011DA40
    /* 1E9C0 0011DA40 0000828C */  lw         $v0, 0x0($a0)
    /* 1E9C4 0011DA44 0B004610 */  beq        $v0, $a2, .L0011DA74
    /* 1E9C8 0011DA48 2B108500 */   sltu      $v0, $a0, $a1
    /* 1E9CC 0011DA4C 0A004050 */  beql       $v0, $zero, .L0011DA78
    /* 1E9D0 0011DA50 0A200200 */   movz      $a0, $zero, $v0
    /* 1E9D4 0011DA54 04008424 */  addiu      $a0, $a0, 0x4
.align 2
  .L0011DA58:
    /* 1E9D8 0011DA58 0000828C */  lw         $v0, 0x0($a0)
    /* 1E9DC 0011DA5C 05004610 */  beq        $v0, $a2, .L0011DA74
    /* 1E9E0 0011DA60 2B108500 */   sltu      $v0, $a0, $a1
    /* 1E9E4 0011DA64 FCFF4054 */  bnel       $v0, $zero, .L0011DA58
    /* 1E9E8 0011DA68 04008424 */   addiu     $a0, $a0, 0x4
    /* 1E9EC 0011DA6C 02000010 */  b          .L0011DA78
    /* 1E9F0 0011DA70 0A200200 */   movz      $a0, $zero, $v0
.align 2
  .L0011DA74:
    /* 1E9F4 0011DA74 0A200200 */  movz       $a0, $zero, $v0
.align 2
  .L0011DA78:
    /* 1E9F8 0011DA78 0800E003 */  jr         $ra
    /* 1E9FC 0011DA7C 2D108000 */   daddu     $v0, $a0, $zero
endlabel func_0011DA40
