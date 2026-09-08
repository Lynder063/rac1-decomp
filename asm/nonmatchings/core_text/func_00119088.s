.align 3
nonmatching func_00119088, 0x74

glabel func_00119088
    /* 1A008 00119088 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 1A00C 0011908C 2000B2FF */  sd         $s2, 0x20($sp)
    /* 1A010 00119090 1000B1FF */  sd         $s1, 0x10($sp)
    /* 1A014 00119094 2D90C000 */  daddu      $s2, $a2, $zero
    /* 1A018 00119098 3000BFFF */  sd         $ra, 0x30($sp)
    /* 1A01C 0011909C 2D88A000 */  daddu      $s1, $a1, $zero
    /* 1A020 001190A0 0F008014 */  bnez       $a0, .L001190E0
    /* 1A024 001190A4 0000B0FF */   sd        $s0, 0x0($sp)
    /* 1A028 001190A8 1300103C */  lui        $s0, %hi(D_0012FCF0)
    /* 1A02C 001190AC F0FC028E */  lw         $v0, %lo(D_0012FCF0)($s0)
    /* 1A030 001190B0 07004014 */  bnez       $v0, .L001190D0
    /* 1A034 001190B4 2D202002 */   daddu     $a0, $s1, $zero
    /* 1A038 001190B8 3267040C */  jal        func_00119CC8
    /* 1A03C 001190BC 00000000 */   nop
    /* 1A040 001190C0 07004010 */  beqz       $v0, .L001190E0
    /* 1A044 001190C4 01000224 */   addiu     $v0, $zero, 0x1
    /* 1A048 001190C8 F0FC02AE */  sw         $v0, %lo(D_0012FCF0)($s0)
    /* 1A04C 001190CC 2D202002 */  daddu      $a0, $s1, $zero
.align 2
  .L001190D0:
    /* 1A050 001190D0 FE66040C */  jal        func_00119BF8
    /* 1A054 001190D4 2D284002 */   daddu     $a1, $s2, $zero
    /* 1A058 001190D8 03000010 */  b          .L001190E8
    /* 1A05C 001190DC 3000BFDF */   ld        $ra, 0x30($sp)
.align 2
  .L001190E0:
    /* 1A060 001190E0 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 1A064 001190E4 3000BFDF */  ld         $ra, 0x30($sp)
.align 2
  .L001190E8:
    /* 1A068 001190E8 2000B2DF */  ld         $s2, 0x20($sp)
    /* 1A06C 001190EC 1000B1DF */  ld         $s1, 0x10($sp)
    /* 1A070 001190F0 0000B0DF */  ld         $s0, 0x0($sp)
    /* 1A074 001190F4 0800E003 */  jr         $ra
    /* 1A078 001190F8 4000BD27 */   addiu     $sp, $sp, 0x40
endlabel func_00119088
    /* 1A07C 001190FC 00000000 */  nop
