.align 3
nonmatching func_0012ED40, 0x6C

glabel func_0012ED40
    /* 2FCC0 0012ED40 1000BD27 */  addiu      $sp, $sp, 0x10
    /* 2FCC4 0012ED44 00000000 */  nop
.align 2
  alabel func_0012ED48
    /* 2FCC8 0012ED48 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 2FCCC 0012ED4C FFFFE330 */  andi       $v1, $a3, 0xFFFF
    /* 2FCD0 0012ED50 00140800 */  sll        $v0, $t0, 16
    /* 2FCD4 0012ED54 FFFFC630 */  andi       $a2, $a2, 0xFFFF
    /* 2FCD8 0012ED58 3000AC8F */  lw         $t4, 0x30($sp)
    /* 2FCDC 0012ED5C 004C0900 */  sll        $t1, $t1, 16
    /* 2FCE0 0012ED60 25104600 */  or         $v0, $v0, $a2
    /* 2FCE4 0012ED64 25482301 */  or         $t1, $t1, $v1
    /* 2FCE8 0012ED68 0000A4AF */  sw         $a0, 0x0($sp)
    /* 2FCEC 0012ED6C 2D30A003 */  daddu      $a2, $sp, $zero
    /* 2FCF0 0012ED70 0400A5AF */  sw         $a1, 0x4($sp)
    /* 2FCF4 0012ED74 2C000424 */  addiu      $a0, $zero, 0x2C
    /* 2FCF8 0012ED78 3800A78F */  lw         $a3, 0x38($sp)
    /* 2FCFC 0012ED7C 1C000524 */  addiu      $a1, $zero, 0x1C
    /* 2FD00 0012ED80 4000A8DF */  ld         $t0, 0x40($sp)
    /* 2FD04 0012ED84 2000BF7F */  sq         $ra, 0x20($sp)
    /* 2FD08 0012ED88 0800A2AF */  sw         $v0, 0x8($sp)
    /* 2FD0C 0012ED8C 0C00A9AF */  sw         $t1, 0xC($sp)
    /* 2FD10 0012ED90 1000AAAF */  sw         $t2, 0x10($sp)
    /* 2FD14 0012ED94 1400ABAF */  sw         $t3, 0x14($sp)
    /* 2FD18 0012ED98 08BA040C */  jal        func_0012E820
    /* 2FD1C 0012ED9C 1800ACAF */   sw        $t4, 0x18($sp)
    /* 2FD20 0012EDA0 2000BF7B */  lq         $ra, 0x20($sp)
    /* 2FD24 0012EDA4 0800E003 */  jr         $ra
    /* 2FD28 0012EDA8 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_0012ED40
    /* 2FD2C 0012EDAC 00000000 */  nop
