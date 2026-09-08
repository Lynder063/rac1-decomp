.align 3
nonmatching func_0021C790, 0xB0

glabel func_0021C790
    /* 11D710 0021C790 2D300000 */  daddu      $a2, $zero, $zero
    /* 11D714 0021C794 0300A010 */  beqz       $a1, .L0021C7A4
    /* 11D718 0021C798 2D380000 */   daddu     $a3, $zero, $zero
    /* 11D71C 0021C79C 0800E003 */  jr         $ra
    /* 11D720 0021C7A0 2D100000 */   daddu     $v0, $zero, $zero
.align 2
  .L0021C7A4:
    /* 11D724 0021C7A4 1D00023C */  lui        $v0, %hi(D_001D5F70)
    /* 11D728 0021C7A8 705F4524 */  addiu      $a1, $v0, %lo(D_001D5F70)
    /* 11D72C 0021C7AC 3401A88C */  lw         $t0, 0x134($a1)
    /* 11D730 0021C7B0 04000011 */  beqz       $t0, .L0021C7C4
    /* 11D734 0021C7B4 2D484000 */   daddu     $t1, $v0, $zero
    /* 11D738 0021C7B8 3000828C */  lw         $v0, 0x30($a0)
    /* 11D73C 0021C7BC 08004230 */  andi       $v0, $v0, 0x8
    /* 11D740 0021C7C0 2B300200 */  sltu       $a2, $zero, $v0
.align 2
  .L0021C7C4:
    /* 11D744 0021C7C4 3801A28C */  lw         $v0, 0x138($a1)
    /* 11D748 0021C7C8 04004010 */  beqz       $v0, .L0021C7DC
    /* 11D74C 0021C7CC 01000324 */   addiu     $v1, $zero, 0x1
    /* 11D750 0021C7D0 3000828C */  lw         $v0, 0x30($a0)
    /* 11D754 0021C7D4 04004230 */  andi       $v0, $v0, 0x4
    /* 11D758 0021C7D8 0B306200 */  movn       $a2, $v1, $v0
.align 2
  .L0021C7DC:
    /* 11D75C 0021C7DC 1200C010 */  beqz       $a2, .L0021C828
    /* 11D760 0021C7E0 00000000 */   nop
    /* 11D764 0021C7E4 2D180001 */  daddu      $v1, $t0, $zero
    /* 11D768 0021C7E8 01000724 */  addiu      $a3, $zero, 0x1
    /* 11D76C 0021C7EC 4C00848C */  lw         $a0, 0x4C($a0)
.align 2
  .L0021C7F0:
    /* 11D770 0021C7F0 05006010 */  beqz       $v1, .L0021C808
    /* 11D774 0021C7F4 2D300000 */   daddu     $a2, $zero, $zero
    /* 11D778 0021C7F8 3000828C */  lw         $v0, 0x30($a0)
    /* 11D77C 0021C7FC 2D30E000 */  daddu      $a2, $a3, $zero
    /* 11D780 0021C800 08004230 */  andi       $v0, $v0, 0x8
    /* 11D784 0021C804 0A300200 */  movz       $a2, $zero, $v0
.align 2
  .L0021C808:
    /* 11D788 0021C808 3801A28C */  lw         $v0, 0x138($a1)
    /* 11D78C 0021C80C 04004010 */  beqz       $v0, .L0021C820
    /* 11D790 0021C810 00000000 */   nop
    /* 11D794 0021C814 3000828C */  lw         $v0, 0x30($a0)
    /* 11D798 0021C818 04004230 */  andi       $v0, $v0, 0x4
    /* 11D79C 0021C81C 0B30E200 */  movn       $a2, $a3, $v0
.align 2
  .L0021C820:
    /* 11D7A0 0021C820 F3FFC054 */  bnel       $a2, $zero, .L0021C7F0
    /* 11D7A4 0021C824 4C00848C */   lw        $a0, 0x4C($a0)
.align 2
  .L0021C828:
    /* 11D7A8 0021C828 0300E010 */  beqz       $a3, .L0021C838
    /* 11D7AC 0021C82C 705F2225 */   addiu     $v0, $t1, %lo(D_001D5F70)
    /* 11D7B0 0021C830 0400438C */  lw         $v1, 0x4($v0)
    /* 11D7B4 0021C834 800064AC */  sw         $a0, 0x80($v1)
.align 2
  .L0021C838:
    /* 11D7B8 0021C838 0800E003 */  jr         $ra
    /* 11D7BC 0021C83C 2D100000 */   daddu     $v0, $zero, $zero
endlabel func_0021C790
