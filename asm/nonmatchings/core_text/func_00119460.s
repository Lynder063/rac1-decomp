.align 3
/* Handwritten function */
nonmatching func_00119460, 0x68

glabel func_00119460
    /* 1A3E0 00119460 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 1A3E4 00119464 1000B1FF */  sd         $s1, 0x10($sp)
    /* 1A3E8 00119468 2000BFFF */  sd         $ra, 0x20($sp)
    /* 1A3EC 0011946C 2D888000 */  daddu      $s1, $a0, $zero
    /* 1A3F0 00119470 0000B0FF */  sd         $s0, 0x0($sp)
    /* 1A3F4 00119474 00601040 */  mfc0       $s0, $12 /* handwritten instruction */
    /* 1A3F8 00119478 0100023C */  lui        $v0, (0x10000 >> 16)
    /* 1A3FC 0011947C 24800202 */  and        $s0, $s0, $v0
    /* 1A400 00119480 03000012 */  beqz       $s0, .L00119490
    /* 1A404 00119484 00000000 */   nop
    /* 1A408 00119488 5876040C */  jal        func_0011D960
    /* 1A40C 0011948C 00000000 */   nop
.align 2
  .L00119490:
    /* 1A410 00119490 C062040C */  jal        func_00118B00
    /* 1A414 00119494 2D202002 */   daddu     $a0, $s1, $zero
    /* 1A418 00119498 2D884000 */  daddu      $s1, $v0, $zero
    /* 1A41C 0011949C 0F000000 */  sync
    /* 1A420 001194A0 04000012 */  beqz       $s0, .L001194B4
    /* 1A424 001194A4 2D102002 */   daddu     $v0, $s1, $zero
    /* 1A428 001194A8 6A76040C */  jal        func_0011D9A8
    /* 1A42C 001194AC 00000000 */   nop
    /* 1A430 001194B0 2D102002 */  daddu      $v0, $s1, $zero
.align 2
  .L001194B4:
    /* 1A434 001194B4 2000BFDF */  ld         $ra, 0x20($sp)
    /* 1A438 001194B8 1000B1DF */  ld         $s1, 0x10($sp)
    /* 1A43C 001194BC 0000B0DF */  ld         $s0, 0x0($sp)
    /* 1A440 001194C0 0800E003 */  jr         $ra
    /* 1A444 001194C4 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_00119460
