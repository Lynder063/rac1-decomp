.align 3
nonmatching func_0011B770, 0x88

glabel func_0011B770
    /* 1C6F0 0011B770 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 1C6F4 0011B774 1000B1FF */  sd         $s1, 0x10($sp)
    /* 1C6F8 0011B778 0000B0FF */  sd         $s0, 0x0($sp)
    /* 1C6FC 0011B77C 2000BFFF */  sd         $ra, 0x20($sp)
    /* 1C700 0011B780 C46D040C */  jal        func_0011B710
    /* 1C704 0011B784 1300113C */   lui       $s1, %hi(D_0012FDA0)
    /* 1C708 0011B788 2C63040C */  jal        func_00118CB0
    /* 1C70C 0011B78C A0FD248E */   lw        $a0, %lo(D_0012FDA0)($s1)
    /* 1C710 0011B790 1500033C */  lui        $v1, %hi(D_00157E80)
    /* 1C714 0011B794 807E7024 */  addiu      $s0, $v1, %lo(D_00157E80)
    /* 1C718 0011B798 00020326 */  addiu      $v1, $s0, 0x200
    /* 1C71C 0011B79C 2B100302 */  sltu       $v0, $s0, $v1
    /* 1C720 0011B7A0 0D004010 */  beqz       $v0, .L0011B7D8
    /* 1C724 0011B7A4 0010053C */   lui       $a1, (0x10000000 >> 16)
    /* 1C728 0011B7A8 0400028E */  lw         $v0, 0x4($s0)
    /* 1C72C 0011B7AC 00000000 */  nop
.align 2
  .L0011B7B0:
    /* 1C730 0011B7B0 06004054 */  bnel       $v0, $zero, .L0011B7CC
    /* 1C734 0011B7B4 10001026 */   addiu     $s0, $s0, 0x10
    /* 1C738 0011B7B8 A0FD248E */  lw         $a0, %lo(D_0012FDA0)($s1)
    /* 1C73C 0011B7BC 2463040C */  jal        func_00118C90
    /* 1C740 0011B7C0 040005AE */   sw        $a1, 0x4($s0)
    /* 1C744 0011B7C4 07000010 */  b          .L0011B7E4
    /* 1C748 0011B7C8 2D100002 */   daddu     $v0, $s0, $zero
.align 2
  .L0011B7CC:
    /* 1C74C 0011B7CC 2B100302 */  sltu       $v0, $s0, $v1
    /* 1C750 0011B7D0 F7FF4054 */  bnel       $v0, $zero, .L0011B7B0
    /* 1C754 0011B7D4 0400028E */   lw        $v0, 0x4($s0)
.align 2
  .L0011B7D8:
    /* 1C758 0011B7D8 2463040C */  jal        func_00118C90
    /* 1C75C 0011B7DC A0FD248E */   lw        $a0, %lo(D_0012FDA0)($s1)
    /* 1C760 0011B7E0 2D100000 */  daddu      $v0, $zero, $zero
.align 2
  .L0011B7E4:
    /* 1C764 0011B7E4 2000BFDF */  ld         $ra, 0x20($sp)
    /* 1C768 0011B7E8 1000B1DF */  ld         $s1, 0x10($sp)
    /* 1C76C 0011B7EC 0000B0DF */  ld         $s0, 0x0($sp)
    /* 1C770 0011B7F0 0800E003 */  jr         $ra
    /* 1C774 0011B7F4 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_0011B770
