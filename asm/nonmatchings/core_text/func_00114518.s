.align 3
nonmatching func_00114518, 0x60

glabel func_00114518
    /* 15498 00114518 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 1549C 0011451C 0000B0FF */  sd         $s0, 0x0($sp)
    /* 154A0 00114520 2D808000 */  daddu      $s0, $a0, $zero
    /* 154A4 00114524 1000B1FF */  sd         $s1, 0x10($sp)
    /* 154A8 00114528 2D20A000 */  daddu      $a0, $a1, $zero
    /* 154AC 0011452C 1600113C */  lui        $s1, %hi(D_0015ED10)
    /* 154B0 00114530 2D28C000 */  daddu      $a1, $a2, $zero
    /* 154B4 00114534 2000BFFF */  sd         $ra, 0x20($sp)
    /* 154B8 00114538 10ED20AE */  sw         $zero, %lo(D_0015ED10)($s1)
    /* 154BC 0011453C 4264040C */  jal        func_00119108
    /* 154C0 00114540 2D30E000 */   daddu     $a2, $a3, $zero
    /* 154C4 00114544 2D184000 */  daddu      $v1, $v0, $zero
    /* 154C8 00114548 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 154CC 0011454C 05006214 */  bne        $v1, $v0, .L00114564
    /* 154D0 00114550 2000BFDF */   ld        $ra, 0x20($sp)
    /* 154D4 00114554 10ED228E */  lw         $v0, %lo(D_0015ED10)($s1)
    /* 154D8 00114558 02004054 */  bnel       $v0, $zero, .L00114564
    /* 154DC 0011455C 000002AE */   sw        $v0, 0x0($s0)
    /* 154E0 00114560 2000BFDF */  ld         $ra, 0x20($sp)
.align 2
  .L00114564:
    /* 154E4 00114564 2D106000 */  daddu      $v0, $v1, $zero
    /* 154E8 00114568 1000B1DF */  ld         $s1, 0x10($sp)
    /* 154EC 0011456C 0000B0DF */  ld         $s0, 0x0($sp)
    /* 154F0 00114570 0800E003 */  jr         $ra
    /* 154F4 00114574 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_00114518
