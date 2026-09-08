.align 3
nonmatching func_00201A38, 0xA8

glabel func_00201A38
    /* 1029B8 00201A38 A0FFBD27 */  addiu      $sp, $sp, -0x60
    /* 1029BC 00201A3C 50000224 */  addiu      $v0, $zero, 0x50
    /* 1029C0 00201A40 3000B37F */  sq         $s3, 0x30($sp)
    /* 1029C4 00201A44 FFFF0824 */  addiu      $t0, $zero, -0x1
    /* 1029C8 00201A48 2D98C000 */  daddu      $s3, $a2, $zero
    /* 1029CC 00201A4C 0000B07F */  sq         $s0, 0x0($sp)
    /* 1029D0 00201A50 4000B47F */  sq         $s4, 0x40($sp)
    /* 1029D4 00201A54 03861300 */  sra        $s0, $s3, 24
    /* 1029D8 00201A58 2000B27F */  sq         $s2, 0x20($sp)
    /* 1029DC 00201A5C 00FF063C */  lui        $a2, (0xFF000000 >> 16)
    /* 1029E0 00201A60 1000B17F */  sq         $s1, 0x10($sp)
    /* 1029E4 00201A64 2D90A000 */  daddu      $s2, $a1, $zero
    /* 1029E8 00201A68 2D888000 */  daddu      $s1, $a0, $zero
    /* 1029EC 00201A6C 5100032A */  slti       $v1, $s0, 0x51
    /* 1029F0 00201A70 2DA0E000 */  daddu      $s4, $a3, $zero
    /* 1029F4 00201A74 24306602 */  and        $a2, $s3, $a2
    /* 1029F8 00201A78 0A804300 */  movz       $s0, $v0, $v1
    /* 1029FC 00201A7C 5000BF7F */  sq         $ra, 0x50($sp)
    /* 102A00 00201A80 01002426 */  addiu      $a0, $s1, 0x1
    /* 102A04 00201A84 F6DB070C */  jal        func_001F6FD8
    /* 102A08 00201A88 01004526 */   addiu     $a1, $s2, 0x1
    /* 102A0C 00201A8C E0FF4424 */  addiu      $a0, $v0, -0x20
    /* 102A10 00201A90 2D400002 */  daddu      $t0, $s0, $zero
    /* 102A14 00201A94 23302402 */  subu       $a2, $s1, $a0
    /* 102A18 00201A98 F8FF4526 */  addiu      $a1, $s2, -0x8
    /* 102A1C 00201A9C 40300600 */  sll        $a2, $a2, 1
    /* 102A20 00201AA0 5806080C */  jal        func_00201960
    /* 102A24 00201AA4 20000724 */   addiu     $a3, $zero, 0x20
    /* 102A28 00201AA8 2D202002 */  daddu      $a0, $s1, $zero
    /* 102A2C 00201AAC 2D284002 */  daddu      $a1, $s2, $zero
    /* 102A30 00201AB0 2D306002 */  daddu      $a2, $s3, $zero
    /* 102A34 00201AB4 2D388002 */  daddu      $a3, $s4, $zero
    /* 102A38 00201AB8 F6DB070C */  jal        func_001F6FD8
    /* 102A3C 00201ABC FFFF0824 */   addiu     $t0, $zero, -0x1
    /* 102A40 00201AC0 5000BF7B */  lq         $ra, 0x50($sp)
    /* 102A44 00201AC4 4000B47B */  lq         $s4, 0x40($sp)
    /* 102A48 00201AC8 3000B37B */  lq         $s3, 0x30($sp)
    /* 102A4C 00201ACC 2000B27B */  lq         $s2, 0x20($sp)
    /* 102A50 00201AD0 1000B17B */  lq         $s1, 0x10($sp)
    /* 102A54 00201AD4 0000B07B */  lq         $s0, 0x0($sp)
    /* 102A58 00201AD8 0800E003 */  jr         $ra
    /* 102A5C 00201ADC 6000BD27 */   addiu     $sp, $sp, 0x60
endlabel func_00201A38
