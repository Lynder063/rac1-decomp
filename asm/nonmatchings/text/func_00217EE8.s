.align 3
nonmatching func_00217EE8, 0x80

glabel func_00217EE8
    /* 118E68 00217EE8 B0FFBD27 */  addiu      $sp, $sp, -0x50
    /* 118E6C 00217EEC 4000BF7F */  sq         $ra, 0x40($sp)
    /* 118E70 00217EF0 3000B37F */  sq         $s3, 0x30($sp)
    /* 118E74 00217EF4 2000B27F */  sq         $s2, 0x20($sp)
    /* 118E78 00217EF8 02001324 */  addiu      $s3, $zero, 0x2
    /* 118E7C 00217EFC 1000B17F */  sq         $s1, 0x10($sp)
    /* 118E80 00217F00 1D00123C */  lui        $s2, %hi(D_001CDAE0)
    /* 118E84 00217F04 0000B07F */  sq         $s0, 0x0($sp)
    /* 118E88 00217F08 9491040C */  jal        func_00124650
    /* 118E8C 00217F0C E0DA5126 */   addiu     $s1, $s2, %lo(D_001CDAE0)
    /* 118E90 00217F10 E292040C */  jal        func_00124B88
    /* 118E94 00217F14 2D200000 */   daddu     $a0, $zero, $zero
    /* 118E98 00217F18 1400103C */  lui        $s0, %hi(D_0013CA40)
    /* 118E9C 00217F1C E0DA53AE */  sw         $s3, %lo(D_001CDAE0)($s2)
    /* 118EA0 00217F20 40CA1026 */  addiu      $s0, $s0, %lo(D_0013CA40)
    /* 118EA4 00217F24 2D202002 */  daddu      $a0, $s1, $zero
    /* 118EA8 00217F28 2D280002 */  daddu      $a1, $s0, $zero
    /* 118EAC 00217F2C F292040C */  jal        func_00124BC8
    /* 118EB0 00217F30 040020AE */   sw        $zero, 0x4($s1)
    /* 118EB4 00217F34 E0DA53AE */  sw         $s3, %lo(D_001CDAE0)($s2)
    /* 118EB8 00217F38 01000324 */  addiu      $v1, $zero, 0x1
    /* 118EBC 00217F3C 040023AE */  sw         $v1, 0x4($s1)
    /* 118EC0 00217F40 940102AE */  sw         $v0, 0x194($s0)
    /* 118EC4 00217F44 9C0100AE */  sw         $zero, 0x19C($s0)
    /* 118EC8 00217F48 980100AE */  sw         $zero, 0x198($s0)
    /* 118ECC 00217F4C 4000BF7B */  lq         $ra, 0x40($sp)
    /* 118ED0 00217F50 3000B37B */  lq         $s3, 0x30($sp)
    /* 118ED4 00217F54 2000B27B */  lq         $s2, 0x20($sp)
    /* 118ED8 00217F58 1000B17B */  lq         $s1, 0x10($sp)
    /* 118EDC 00217F5C 0000B07B */  lq         $s0, 0x0($sp)
    /* 118EE0 00217F60 0800E003 */  jr         $ra
    /* 118EE4 00217F64 5000BD27 */   addiu     $sp, $sp, 0x50
endlabel func_00217EE8
