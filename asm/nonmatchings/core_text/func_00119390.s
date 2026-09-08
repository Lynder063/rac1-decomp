.align 3
/* Handwritten function */
nonmatching func_00119390, 0x68

glabel func_00119390
    /* 1A310 00119390 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 1A314 00119394 1000B1FF */  sd         $s1, 0x10($sp)
    /* 1A318 00119398 2000BFFF */  sd         $ra, 0x20($sp)
    /* 1A31C 0011939C 2D888000 */  daddu      $s1, $a0, $zero
    /* 1A320 001193A0 0000B0FF */  sd         $s0, 0x0($sp)
    /* 1A324 001193A4 00601040 */  mfc0       $s0, $12 /* handwritten instruction */
    /* 1A328 001193A8 0100023C */  lui        $v0, (0x10000 >> 16)
    /* 1A32C 001193AC 24800202 */  and        $s0, $s0, $v0
    /* 1A330 001193B0 03000012 */  beqz       $s0, .L001193C0
    /* 1A334 001193B4 00000000 */   nop
    /* 1A338 001193B8 5876040C */  jal        func_0011D960
    /* 1A33C 001193BC 00000000 */   nop
.align 2
  .L001193C0:
    /* 1A340 001193C0 B862040C */  jal        func_00118AE0
    /* 1A344 001193C4 2D202002 */   daddu     $a0, $s1, $zero
    /* 1A348 001193C8 2D884000 */  daddu      $s1, $v0, $zero
    /* 1A34C 001193CC 0F000000 */  sync
    /* 1A350 001193D0 04000012 */  beqz       $s0, .L001193E4
    /* 1A354 001193D4 2D102002 */   daddu     $v0, $s1, $zero
    /* 1A358 001193D8 6A76040C */  jal        func_0011D9A8
    /* 1A35C 001193DC 00000000 */   nop
    /* 1A360 001193E0 2D102002 */  daddu      $v0, $s1, $zero
.align 2
  .L001193E4:
    /* 1A364 001193E4 2000BFDF */  ld         $ra, 0x20($sp)
    /* 1A368 001193E8 1000B1DF */  ld         $s1, 0x10($sp)
    /* 1A36C 001193EC 0000B0DF */  ld         $s0, 0x0($sp)
    /* 1A370 001193F0 0800E003 */  jr         $ra
    /* 1A374 001193F4 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_00119390
