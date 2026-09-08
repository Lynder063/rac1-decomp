.align 3
/* Handwritten function */
nonmatching func_00119328, 0x68

glabel func_00119328
    /* 1A2A8 00119328 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 1A2AC 0011932C 1000B1FF */  sd         $s1, 0x10($sp)
    /* 1A2B0 00119330 2000BFFF */  sd         $ra, 0x20($sp)
    /* 1A2B4 00119334 2D888000 */  daddu      $s1, $a0, $zero
    /* 1A2B8 00119338 0000B0FF */  sd         $s0, 0x0($sp)
    /* 1A2BC 0011933C 00601040 */  mfc0       $s0, $12 /* handwritten instruction */
    /* 1A2C0 00119340 0100023C */  lui        $v0, (0x10000 >> 16)
    /* 1A2C4 00119344 24800202 */  and        $s0, $s0, $v0
    /* 1A2C8 00119348 03000012 */  beqz       $s0, .L00119358
    /* 1A2CC 0011934C 00000000 */   nop
    /* 1A2D0 00119350 5876040C */  jal        func_0011D960
    /* 1A2D4 00119354 00000000 */   nop
.align 2
  .L00119358:
    /* 1A2D8 00119358 BC62040C */  jal        func_00118AF0
    /* 1A2DC 0011935C 2D202002 */   daddu     $a0, $s1, $zero
    /* 1A2E0 00119360 2D884000 */  daddu      $s1, $v0, $zero
    /* 1A2E4 00119364 0F000000 */  sync
    /* 1A2E8 00119368 04000012 */  beqz       $s0, .L0011937C
    /* 1A2EC 0011936C 2D102002 */   daddu     $v0, $s1, $zero
    /* 1A2F0 00119370 6A76040C */  jal        func_0011D9A8
    /* 1A2F4 00119374 00000000 */   nop
    /* 1A2F8 00119378 2D102002 */  daddu      $v0, $s1, $zero
.align 2
  .L0011937C:
    /* 1A2FC 0011937C 2000BFDF */  ld         $ra, 0x20($sp)
    /* 1A300 00119380 1000B1DF */  ld         $s1, 0x10($sp)
    /* 1A304 00119384 0000B0DF */  ld         $s0, 0x0($sp)
    /* 1A308 00119388 0800E003 */  jr         $ra
    /* 1A30C 0011938C 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_00119328
