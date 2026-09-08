.align 3
/* Handwritten function */
nonmatching func_001193F8, 0x68

glabel func_001193F8
    /* 1A378 001193F8 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 1A37C 001193FC 1000B1FF */  sd         $s1, 0x10($sp)
    /* 1A380 00119400 2000BFFF */  sd         $ra, 0x20($sp)
    /* 1A384 00119404 2D888000 */  daddu      $s1, $a0, $zero
    /* 1A388 00119408 0000B0FF */  sd         $s0, 0x0($sp)
    /* 1A38C 0011940C 00601040 */  mfc0       $s0, $12 /* handwritten instruction */
    /* 1A390 00119410 0100023C */  lui        $v0, (0x10000 >> 16)
    /* 1A394 00119414 24800202 */  and        $s0, $s0, $v0
    /* 1A398 00119418 03000012 */  beqz       $s0, .L00119428
    /* 1A39C 0011941C 00000000 */   nop
    /* 1A3A0 00119420 5876040C */  jal        func_0011D960
    /* 1A3A4 00119424 00000000 */   nop
.align 2
  .L00119428:
    /* 1A3A8 00119428 C462040C */  jal        func_00118B10
    /* 1A3AC 0011942C 2D202002 */   daddu     $a0, $s1, $zero
    /* 1A3B0 00119430 2D884000 */  daddu      $s1, $v0, $zero
    /* 1A3B4 00119434 0F000000 */  sync
    /* 1A3B8 00119438 04000012 */  beqz       $s0, .L0011944C
    /* 1A3BC 0011943C 2D102002 */   daddu     $v0, $s1, $zero
    /* 1A3C0 00119440 6A76040C */  jal        func_0011D9A8
    /* 1A3C4 00119444 00000000 */   nop
    /* 1A3C8 00119448 2D102002 */  daddu      $v0, $s1, $zero
.align 2
  .L0011944C:
    /* 1A3CC 0011944C 2000BFDF */  ld         $ra, 0x20($sp)
    /* 1A3D0 00119450 1000B1DF */  ld         $s1, 0x10($sp)
    /* 1A3D4 00119454 0000B0DF */  ld         $s0, 0x0($sp)
    /* 1A3D8 00119458 0800E003 */  jr         $ra
    /* 1A3DC 0011945C 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_001193F8
