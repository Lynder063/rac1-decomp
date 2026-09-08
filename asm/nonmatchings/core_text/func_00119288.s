.align 3
/* Handwritten function */
nonmatching func_00119288, 0x7C

glabel func_00119288
    /* 1A208 00119288 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 1A20C 0011928C 2000B2FF */  sd         $s2, 0x20($sp)
    /* 1A210 00119290 1000B1FF */  sd         $s1, 0x10($sp)
    /* 1A214 00119294 2D908000 */  daddu      $s2, $a0, $zero
    /* 1A218 00119298 3000BFFF */  sd         $ra, 0x30($sp)
    /* 1A21C 0011929C 2D88A000 */  daddu      $s1, $a1, $zero
    /* 1A220 001192A0 0000B0FF */  sd         $s0, 0x0($sp)
    /* 1A224 001192A4 00601040 */  mfc0       $s0, $12 /* handwritten instruction */
    /* 1A228 001192A8 0100023C */  lui        $v0, (0x10000 >> 16)
    /* 1A22C 001192AC 24800202 */  and        $s0, $s0, $v0
    /* 1A230 001192B0 03000012 */  beqz       $s0, .L001192C0
    /* 1A234 001192B4 00000000 */   nop
    /* 1A238 001192B8 5876040C */  jal        func_0011D960
    /* 1A23C 001192BC 00000000 */   nop
.align 2
  .L001192C0:
    /* 1A240 001192C0 FFFF043C */  lui        $a0, (0xFFFFFFC0 >> 16)
    /* 1A244 001192C4 C0FF8434 */  ori        $a0, $a0, (0xFFFFFFC0 & 0xFFFF)
    /* 1A248 001192C8 24282402 */  and        $a1, $s1, $a0
    /* 1A24C 001192CC 7864040C */  jal        func_001191E0
    /* 1A250 001192D0 24204402 */   and       $a0, $s2, $a0
    /* 1A254 001192D4 06000012 */  beqz       $s0, .L001192F0
    /* 1A258 001192D8 3000BFDF */   ld        $ra, 0x30($sp)
    /* 1A25C 001192DC 2000B2DF */  ld         $s2, 0x20($sp)
    /* 1A260 001192E0 1000B1DF */  ld         $s1, 0x10($sp)
    /* 1A264 001192E4 0000B0DF */  ld         $s0, 0x0($sp)
    /* 1A268 001192E8 6A760408 */  j          func_0011D9A8
    /* 1A26C 001192EC 4000BD27 */   addiu     $sp, $sp, 0x40
.align 2
  .L001192F0:
    /* 1A270 001192F0 2000B2DF */  ld         $s2, 0x20($sp)
    /* 1A274 001192F4 1000B1DF */  ld         $s1, 0x10($sp)
    /* 1A278 001192F8 0000B0DF */  ld         $s0, 0x0($sp)
    /* 1A27C 001192FC 0800E003 */  jr         $ra
    /* 1A280 00119300 4000BD27 */   addiu     $sp, $sp, 0x40
endlabel func_00119288
    /* 1A284 00119304 00000000 */  nop
