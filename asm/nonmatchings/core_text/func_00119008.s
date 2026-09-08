.align 3
nonmatching func_00119008, 0x7C

glabel func_00119008
    /* 19F88 00119008 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 19F8C 0011900C FFFF8424 */  addiu      $a0, $a0, -0x1
    /* 19F90 00119010 2000B2FF */  sd         $s2, 0x20($sp)
    /* 19F94 00119014 0200842C */  sltiu      $a0, $a0, 0x2
    /* 19F98 00119018 1000B1FF */  sd         $s1, 0x10($sp)
    /* 19F9C 0011901C 2D90C000 */  daddu      $s2, $a2, $zero
    /* 19FA0 00119020 3000BFFF */  sd         $ra, 0x30($sp)
    /* 19FA4 00119024 2D88A000 */  daddu      $s1, $a1, $zero
    /* 19FA8 00119028 0F008010 */  beqz       $a0, .L00119068
    /* 19FAC 0011902C 0000B0FF */   sd        $s0, 0x0($sp)
    /* 19FB0 00119030 1300103C */  lui        $s0, %hi(D_0012FCF0)
    /* 19FB4 00119034 F0FC028E */  lw         $v0, %lo(D_0012FCF0)($s0)
    /* 19FB8 00119038 07004014 */  bnez       $v0, .L00119058
    /* 19FBC 0011903C 2D202002 */   daddu     $a0, $s1, $zero
    /* 19FC0 00119040 3267040C */  jal        func_00119CC8
    /* 19FC4 00119044 00000000 */   nop
    /* 19FC8 00119048 07004010 */  beqz       $v0, .L00119068
    /* 19FCC 0011904C 01000224 */   addiu     $v0, $zero, 0x1
    /* 19FD0 00119050 F0FC02AE */  sw         $v0, %lo(D_0012FCF0)($s0)
    /* 19FD4 00119054 2D202002 */  daddu      $a0, $s1, $zero
.align 2
  .L00119058:
    /* 19FD8 00119058 AA66040C */  jal        func_00119AA8
    /* 19FDC 0011905C 2D284002 */   daddu     $a1, $s2, $zero
    /* 19FE0 00119060 03000010 */  b          .L00119070
    /* 19FE4 00119064 3000BFDF */   ld        $ra, 0x30($sp)
.align 2
  .L00119068:
    /* 19FE8 00119068 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 19FEC 0011906C 3000BFDF */  ld         $ra, 0x30($sp)
.align 2
  .L00119070:
    /* 19FF0 00119070 2000B2DF */  ld         $s2, 0x20($sp)
    /* 19FF4 00119074 1000B1DF */  ld         $s1, 0x10($sp)
    /* 19FF8 00119078 0000B0DF */  ld         $s0, 0x0($sp)
    /* 19FFC 0011907C 0800E003 */  jr         $ra
    /* 1A000 00119080 4000BD27 */   addiu     $sp, $sp, 0x40
endlabel func_00119008
    /* 1A004 00119084 00000000 */  nop
