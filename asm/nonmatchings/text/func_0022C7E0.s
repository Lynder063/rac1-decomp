.align 3
nonmatching func_0022C7E0, 0x8C

glabel func_0022C7E0
    /* 12D760 0022C7E0 1600023C */  lui        $v0, %hi(D_00161000)
    /* 12D764 0022C7E4 0010428C */  lw         $v0, %lo(D_00161000)($v0)
    /* 12D768 0022C7E8 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 12D76C 0022C7EC 1600043C */  lui        $a0, %hi(D_00160550)
    /* 12D770 0022C7F0 01000524 */  addiu      $a1, $zero, 0x1
    /* 12D774 0022C7F4 1600013C */  lui        $at, %hi(D_00160570)
    /* 12D778 0022C7F8 700522AC */  sw         $v0, %lo(D_00160570)($at)
    /* 12D77C 0022C7FC 50058424 */  addiu      $a0, $a0, %lo(D_00160550)
    /* 12D780 0022C800 10004224 */  addiu      $v0, $v0, 0x10
    /* 12D784 0022C804 0000BF7F */  sq         $ra, 0x0($sp)
    /* 12D788 0022C808 58C9070C */  jal        func_001F2560
    /* 12D78C 0022C80C 00A382AF */   sw        $v0, -0x5D00($gp)
    /* 12D790 0022C810 1600053C */  lui        $a1, %hi(D_0016055C)
    /* 12D794 0022C814 5C05A58C */  lw         $a1, %lo(D_0016055C)($a1)
    /* 12D798 0022C818 2D200000 */  daddu      $a0, $zero, $zero
    /* 12D79C 0022C81C 1600023C */  lui        $v0, %hi(D_0015EF78)
    /* 12D7A0 0022C820 78EF428C */  lw         $v0, %lo(D_0015EF78)($v0)
    /* 12D7A4 0022C824 0C00A384 */  lh         $v1, 0xC($a1)
    /* 12D7A8 0022C828 1600013C */  lui        $at, %hi(D_0015EF74)
    /* 12D7AC 0022C82C 74EF22AC */  sw         $v0, %lo(D_0015EF74)($at)
    /* 12D7B0 0022C830 0B006018 */  blez       $v1, .L0022C860
    /* 12D7B4 0022C834 588880AF */   sw        $zero, -0x77A8($gp)
    /* 12D7B8 0022C838 1000A28C */  lw         $v0, 0x10($a1)
    /* 12D7BC 0022C83C 00000000 */  nop
.align 2
  .L0022C840:
    /* 12D7C0 0022C840 00190400 */  sll        $v1, $a0, 4
    /* 12D7C4 0022C844 01008424 */  addiu      $a0, $a0, 0x1
    /* 12D7C8 0022C848 21186200 */  addu       $v1, $v1, $v0
    /* 12D7CC 0022C84C 000060FC */  sd         $zero, 0x0($v1)
    /* 12D7D0 0022C850 0C00A284 */  lh         $v0, 0xC($a1)
    /* 12D7D4 0022C854 2A108200 */  slt        $v0, $a0, $v0
    /* 12D7D8 0022C858 F9FF4054 */  bnel       $v0, $zero, .L0022C840
    /* 12D7DC 0022C85C 1000A28C */   lw        $v0, 0x10($a1)
.align 2
  .L0022C860:
    /* 12D7E0 0022C860 0000BF7B */  lq         $ra, 0x0($sp)
    /* 12D7E4 0022C864 0800E003 */  jr         $ra
    /* 12D7E8 0022C868 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_0022C7E0
    /* 12D7EC 0022C86C 00000000 */  nop
