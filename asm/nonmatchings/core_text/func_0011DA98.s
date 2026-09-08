.align 3
nonmatching func_0011DA98, 0xFC

glabel func_0011DA98
    /* 1EA18 0011DA98 80FFBD27 */  addiu      $sp, $sp, -0x80
    /* 1EA1C 0011DA9C 1300023C */  lui        $v0, %hi(D_00130410)
    /* 1EA20 0011DAA0 5000B5FF */  sd         $s5, 0x50($sp)
    /* 1EA24 0011DAA4 4000B4FF */  sd         $s4, 0x40($sp)
    /* 1EA28 0011DAA8 1200153C */  lui        $s5, %hi(func_0011DA40)
    /* 1EA2C 0011DAAC 3000B3FF */  sd         $s3, 0x30($sp)
    /* 1EA30 0011DAB0 1200143C */  lui        $s4, %hi(func_0011DA08)
    /* 1EA34 0011DAB4 2000B2FF */  sd         $s2, 0x20($sp)
    /* 1EA38 0011DAB8 1000B1FF */  sd         $s1, 0x10($sp)
    /* 1EA3C 0011DABC 0000B0FF */  sd         $s0, 0x0($sp)
    /* 1EA40 0011DAC0 7000BFFF */  sd         $ra, 0x70($sp)
    /* 1EA44 0011DAC4 10045024 */  addiu      $s0, $v0, %lo(D_00130410)
    /* 1EA48 0011DAC8 6000B6FF */  sd         $s6, 0x60($sp)
    /* 1EA4C 0011DACC 1004448C */  lw         $a0, %lo(D_00130410)($v0)
    /* 1EA50 0011DAD0 E676040C */  jal        func_0011DB98
    /* 1EA54 0011DAD4 0400058E */   lw        $a1, 0x4($s0)
    /* 1EA58 0011DAD8 0C00058E */  lw         $a1, 0xC($s0)
    /* 1EA5C 0011DADC E676040C */  jal        func_0011DB98
    /* 1EA60 0011DAE0 0800048E */   lw        $a0, 0x8($s0)
    /* 1EA64 0011DAE4 0080043C */  lui        $a0, (0x80000000 >> 16)
    /* 1EA68 0011DAE8 0880053C */  lui        $a1, (0x80080000 >> 16)
    /* 1EA6C 0011DAEC A076040C */  jal        func_0011DA80
    /* 1EA70 0011DAF0 40DAA626 */   addiu     $a2, $s5, %lo(func_0011DA40)
    /* 1EA74 0011DAF4 2D984000 */  daddu      $s3, $v0, $zero
    /* 1EA78 0011DAF8 0080043C */  lui        $a0, (0x80000000 >> 16)
    /* 1EA7C 0011DAFC 0880053C */  lui        $a1, (0x80080000 >> 16)
    /* 1EA80 0011DB00 A076040C */  jal        func_0011DA80
    /* 1EA84 0011DB04 08DA8626 */   addiu     $a2, $s4, %lo(func_0011DA08)
    /* 1EA88 0011DB08 F4FD7126 */  addiu      $s1, $s3, -0x20C
    /* 1EA8C 0011DB0C 2D904000 */  daddu      $s2, $v0, $zero
    /* 1EA90 0011DB10 98FE5026 */  addiu      $s0, $s2, -0x168
    /* 1EA94 0011DB14 14003012 */  beq        $s1, $s0, .L0011DB68
    /* 1EA98 0011DB18 1300163C */   lui       $s6, %hi(D_00130408)
    /* 1EA9C 0011DB1C 2B103002 */  sltu       $v0, $s1, $s0
.align 2
  .L0011DB20:
    /* 1EAA0 0011DB20 07004010 */  beqz       $v0, .L0011DB40
    /* 1EAA4 0011DB24 04006426 */   addiu     $a0, $s3, 0x4
    /* 1EAA8 0011DB28 0880053C */  lui        $a1, (0x80080000 >> 16)
    /* 1EAAC 0011DB2C A076040C */  jal        func_0011DA80
    /* 1EAB0 0011DB30 40DAA626 */   addiu     $a2, $s5, %lo(func_0011DA40)
    /* 1EAB4 0011DB34 2D984000 */  daddu      $s3, $v0, $zero
    /* 1EAB8 0011DB38 07000010 */  b          .L0011DB58
    /* 1EABC 0011DB3C F4FD7126 */   addiu     $s1, $s3, -0x20C
.align 2
  .L0011DB40:
    /* 1EAC0 0011DB40 04004426 */  addiu      $a0, $s2, 0x4
    /* 1EAC4 0011DB44 0880053C */  lui        $a1, (0x80080000 >> 16)
    /* 1EAC8 0011DB48 A076040C */  jal        func_0011DA80
    /* 1EACC 0011DB4C 08DA8626 */   addiu     $a2, $s4, %lo(func_0011DA08)
    /* 1EAD0 0011DB50 2D904000 */  daddu      $s2, $v0, $zero
    /* 1EAD4 0011DB54 98FE5026 */  addiu      $s0, $s2, -0x168
.align 2
  .L0011DB58:
    /* 1EAD8 0011DB58 F1FF3016 */  bne        $s1, $s0, .L0011DB20
    /* 1EADC 0011DB5C 2B103002 */   sltu      $v0, $s1, $s0
    /* 1EAE0 0011DB60 02000010 */  b          .L0011DB6C
    /* 1EAE4 0011DB64 0804D1AE */   sw        $s1, %lo(D_00130408)($s6)
.align 2
  .L0011DB68:
    /* 1EAE8 0011DB68 0804D1AE */  sw         $s1, %lo(D_00130408)($s6)
.align 2
  .L0011DB6C:
    /* 1EAEC 0011DB6C 7000BFDF */  ld         $ra, 0x70($sp)
    /* 1EAF0 0011DB70 6000B6DF */  ld         $s6, 0x60($sp)
    /* 1EAF4 0011DB74 5000B5DF */  ld         $s5, 0x50($sp)
    /* 1EAF8 0011DB78 4000B4DF */  ld         $s4, 0x40($sp)
    /* 1EAFC 0011DB7C 3000B3DF */  ld         $s3, 0x30($sp)
    /* 1EB00 0011DB80 2000B2DF */  ld         $s2, 0x20($sp)
    /* 1EB04 0011DB84 1000B1DF */  ld         $s1, 0x10($sp)
    /* 1EB08 0011DB88 0000B0DF */  ld         $s0, 0x0($sp)
    /* 1EB0C 0011DB8C 0800E003 */  jr         $ra
    /* 1EB10 0011DB90 8000BD27 */   addiu     $sp, $sp, 0x80
endlabel func_0011DA98
    /* 1EB14 0011DB94 00000000 */  nop
