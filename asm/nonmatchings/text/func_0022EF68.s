.align 3
nonmatching func_0022EF68, 0x78

glabel func_0022EF68
    /* 12FEE8 0022EF68 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 12FEEC 0022EF6C 1400033C */  lui        $v1, %hi(D_0013E650)
    /* 12FEF0 0022EF70 0000B07F */  sq         $s0, 0x0($sp)
    /* 12FEF4 0022EF74 50E66324 */  addiu      $v1, $v1, %lo(D_0013E650)
    /* 12FEF8 0022EF78 3000BF7F */  sq         $ra, 0x30($sp)
    /* 12FEFC 0022EF7C 2000B27F */  sq         $s2, 0x20($sp)
    /* 12FF00 0022EF80 1000B17F */  sq         $s1, 0x10($sp)
    /* 12FF04 0022EF84 900D628C */  lw         $v0, 0xD90($v1)
    /* 12FF08 0022EF88 0F004018 */  blez       $v0, .L0022EFC8
    /* 12FF0C 0022EF8C 2D800000 */   daddu     $s0, $zero, $zero
    /* 12FF10 0022EF90 2D906000 */  daddu      $s2, $v1, $zero
    /* 12FF14 0022EF94 2D880000 */  daddu      $s1, $zero, $zero
.align 2
  .L0022EF98:
    /* 12FF18 0022EF98 940D428E */  lw         $v0, 0xD94($s2)
    /* 12FF1C 0022EF9C 21202202 */  addu       $a0, $s1, $v0
    /* 12FF20 0022EFA0 0400828C */  lw         $v0, 0x4($a0)
    /* 12FF24 0022EFA4 04004050 */  beql       $v0, $zero, .L0022EFB8
    /* 12FF28 0022EFA8 900D428E */   lw        $v0, 0xD90($s2)
    /* 12FF2C 0022EFAC 09F84000 */  jalr       $v0
    /* 12FF30 0022EFB0 00000000 */   nop
    /* 12FF34 0022EFB4 900D428E */  lw         $v0, 0xD90($s2)
.align 2
  .L0022EFB8:
    /* 12FF38 0022EFB8 01001026 */  addiu      $s0, $s0, 0x1
    /* 12FF3C 0022EFBC 2A100202 */  slt        $v0, $s0, $v0
    /* 12FF40 0022EFC0 F5FF4014 */  bnez       $v0, .L0022EF98
    /* 12FF44 0022EFC4 90003126 */   addiu     $s1, $s1, 0x90
.align 2
  .L0022EFC8:
    /* 12FF48 0022EFC8 3000BF7B */  lq         $ra, 0x30($sp)
    /* 12FF4C 0022EFCC 2000B27B */  lq         $s2, 0x20($sp)
    /* 12FF50 0022EFD0 1000B17B */  lq         $s1, 0x10($sp)
    /* 12FF54 0022EFD4 0000B07B */  lq         $s0, 0x0($sp)
    /* 12FF58 0022EFD8 0800E003 */  jr         $ra
    /* 12FF5C 0022EFDC 4000BD27 */   addiu     $sp, $sp, 0x40
endlabel func_0022EF68
    /* 12FF60 0022EFE0 00000000 */  nop
    /* 12FF64 0022EFE4 00000000 */  nop
