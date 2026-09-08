.align 3
nonmatching func_00119E70, 0x34

glabel func_00119E70
    /* 1ADF0 00119E70 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 1ADF4 00119E74 0A000224 */  addiu      $v0, $zero, 0xA
    /* 1ADF8 00119E78 07008214 */  bne        $a0, $v0, .L00119E98
    /* 1ADFC 00119E7C 0000BFFF */   sd        $ra, 0x0($sp)
    /* 1AE00 00119E80 6267040C */  jal        func_00119D88
    /* 1AE04 00119E84 0D000424 */   addiu     $a0, $zero, 0xD
    /* 1AE08 00119E88 0000BFDF */  ld         $ra, 0x0($sp)
    /* 1AE0C 00119E8C 0A000424 */  addiu      $a0, $zero, 0xA
    /* 1AE10 00119E90 62670408 */  j          func_00119D88
    /* 1AE14 00119E94 1000BD27 */   addiu     $sp, $sp, 0x10
.align 2
  .L00119E98:
    /* 1AE18 00119E98 0000BFDF */  ld         $ra, 0x0($sp)
    /* 1AE1C 00119E9C 62670408 */  j          func_00119D88
    /* 1AE20 00119EA0 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_00119E70
    /* 1AE24 00119EA4 00000000 */  nop
