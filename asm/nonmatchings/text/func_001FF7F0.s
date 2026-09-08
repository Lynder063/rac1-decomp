.align 3
nonmatching func_001FF7F0, 0x160

glabel func_001FF7F0
    /* 100770 001FF7F0 1A00033C */  lui        $v1, %hi(D_0019A4E8)
    /* 100774 001FF7F4 2D608000 */  daddu      $t4, $a0, $zero
    /* 100778 001FF7F8 E8A46624 */  addiu      $a2, $v1, %lo(D_0019A4E8)
    /* 10077C 001FF7FC 80200C00 */  sll        $a0, $t4, 2
    /* 100780 001FF800 1800C28C */  lw         $v0, 0x18($a2)
    /* 100784 001FF804 2D686000 */  daddu      $t5, $v1, $zero
    /* 100788 001FF808 74004224 */  addiu      $v0, $v0, 0x74
    /* 10078C 001FF80C 21204400 */  addu       $a0, $v0, $a0
    /* 100790 001FF810 0000838C */  lw         $v1, 0x0($a0)
    /* 100794 001FF814 4C006014 */  bnez       $v1, .L001FF948
    /* 100798 001FF818 2D50A000 */   daddu     $t2, $a1, $zero
    /* 10079C 001FF81C FFFF023C */  lui        $v0, (0xFFFFFFF0 >> 16)
    /* 1007A0 001FF820 0F004325 */  addiu      $v1, $t2, 0xF
    /* 1007A4 001FF824 F0FF4234 */  ori        $v0, $v0, (0xFFFFFFF0 & 0xFFFF)
    /* 1007A8 001FF828 24506200 */  and        $t2, $v1, $v0
    /* 1007AC 001FF82C 07008011 */  beqz       $t4, .L001FF84C
    /* 1007B0 001FF830 00008AAC */   sw        $t2, 0x0($a0)
    /* 1007B4 001FF834 1800C38C */  lw         $v1, 0x18($a2)
    /* 1007B8 001FF838 FFFF8225 */  addiu      $v0, $t4, -0x1
    /* 1007BC 001FF83C 80100200 */  sll        $v0, $v0, 2
    /* 1007C0 001FF840 21186200 */  addu       $v1, $v1, $v0
    /* 1007C4 001FF844 02000010 */  b          .L001FF850
    /* 1007C8 001FF848 1400648C */   lw        $a0, 0x14($v1)
.align 2
  .L001FF84C:
    /* 1007CC 001FF84C 2D200000 */  daddu      $a0, $zero, $zero
.align 2
  .L001FF850:
    /* 1007D0 001FF850 E8A4A525 */  addiu      $a1, $t5, %lo(D_0019A4E8)
    /* 1007D4 001FF854 80100C00 */  sll        $v0, $t4, 2
    /* 1007D8 001FF858 1800A38C */  lw         $v1, 0x18($a1)
    /* 1007DC 001FF85C 2D704000 */  daddu      $t6, $v0, $zero
    /* 1007E0 001FF860 2D388000 */  daddu      $a3, $a0, $zero
    /* 1007E4 001FF864 21186200 */  addu       $v1, $v1, $v0
    /* 1007E8 001FF868 1400688C */  lw         $t0, 0x14($v1)
    /* 1007EC 001FF86C 2A10E800 */  slt        $v0, $a3, $t0
    /* 1007F0 001FF870 13004010 */  beqz       $v0, .L001FF8C0
    /* 1007F4 001FF874 00000000 */   nop
    /* 1007F8 001FF878 FF7F093C */  lui        $t1, (0x7FFFFFFF >> 16)
    /* 1007FC 001FF87C 2D58A000 */  daddu      $t3, $a1, $zero
    /* 100800 001FF880 FFFF2935 */  ori        $t1, $t1, (0x7FFFFFFF & 0xFFFF)
    /* 100804 001FF884 00000000 */  nop
.align 2
  .L001FF888:
    /* 100808 001FF888 2800648D */  lw         $a0, 0x28($t3)
    /* 10080C 001FF88C C0280700 */  sll        $a1, $a3, 3
    /* 100810 001FF890 0100E724 */  addiu      $a3, $a3, 0x1
    /* 100814 001FF894 2120A400 */  addu       $a0, $a1, $a0
    /* 100818 001FF898 2A30E800 */  slt        $a2, $a3, $t0
    /* 10081C 001FF89C 0000828C */  lw         $v0, 0x0($a0)
    /* 100820 001FF8A0 24104900 */  and        $v0, $v0, $t1
    /* 100824 001FF8A4 000082AC */  sw         $v0, 0x0($a0)
    /* 100828 001FF8A8 2800638D */  lw         $v1, 0x28($t3)
    /* 10082C 001FF8AC 2128A300 */  addu       $a1, $a1, $v1
    /* 100830 001FF8B0 0000A28C */  lw         $v0, 0x0($a1)
    /* 100834 001FF8B4 21104A00 */  addu       $v0, $v0, $t2
    /* 100838 001FF8B8 F3FFC014 */  bnez       $a2, .L001FF888
    /* 10083C 001FF8BC 0000A2AC */   sw        $v0, 0x0($a1)
.align 2
  .L001FF8C0:
    /* 100840 001FF8C0 07008011 */  beqz       $t4, .L001FF8E0
    /* 100844 001FF8C4 E8A4A225 */   addiu     $v0, $t5, %lo(D_0019A4E8)
    /* 100848 001FF8C8 FFFF8325 */  addiu      $v1, $t4, -0x1
    /* 10084C 001FF8CC 1800448C */  lw         $a0, 0x18($v0)
    /* 100850 001FF8D0 80180300 */  sll        $v1, $v1, 2
    /* 100854 001FF8D4 21208300 */  addu       $a0, $a0, $v1
    /* 100858 001FF8D8 02000010 */  b          .L001FF8E4
    /* 10085C 001FF8DC 3400848C */   lw        $a0, 0x34($a0)
.align 2
  .L001FF8E0:
    /* 100860 001FF8E0 2D200000 */  daddu      $a0, $zero, $zero
.align 2
  .L001FF8E4:
    /* 100864 001FF8E4 E8A4A525 */  addiu      $a1, $t5, %lo(D_0019A4E8)
    /* 100868 001FF8E8 2D388000 */  daddu      $a3, $a0, $zero
    /* 10086C 001FF8EC 1800A28C */  lw         $v0, 0x18($a1)
    /* 100870 001FF8F0 21104E00 */  addu       $v0, $v0, $t6
    /* 100874 001FF8F4 3400488C */  lw         $t0, 0x34($v0)
    /* 100878 001FF8F8 2A18E800 */  slt        $v1, $a3, $t0
    /* 10087C 001FF8FC 12006010 */  beqz       $v1, .L001FF948
    /* 100880 001FF900 FF7F093C */   lui       $t1, (0x7FFFFFFF >> 16)
    /* 100884 001FF904 2D58A000 */  daddu      $t3, $a1, $zero
    /* 100888 001FF908 FFFF2935 */  ori        $t1, $t1, (0x7FFFFFFF & 0xFFFF)
    /* 10088C 001FF90C 00000000 */  nop
.align 2
  .L001FF910:
    /* 100890 001FF910 2400648D */  lw         $a0, 0x24($t3)
    /* 100894 001FF914 C0280700 */  sll        $a1, $a3, 3
    /* 100898 001FF918 0100E724 */  addiu      $a3, $a3, 0x1
    /* 10089C 001FF91C 2120A400 */  addu       $a0, $a1, $a0
    /* 1008A0 001FF920 2A30E800 */  slt        $a2, $a3, $t0
    /* 1008A4 001FF924 0000828C */  lw         $v0, 0x0($a0)
    /* 1008A8 001FF928 24104900 */  and        $v0, $v0, $t1
    /* 1008AC 001FF92C 000082AC */  sw         $v0, 0x0($a0)
    /* 1008B0 001FF930 2400638D */  lw         $v1, 0x24($t3)
    /* 1008B4 001FF934 2128A300 */  addu       $a1, $a1, $v1
    /* 1008B8 001FF938 0000A28C */  lw         $v0, 0x0($a1)
    /* 1008BC 001FF93C 21104A00 */  addu       $v0, $v0, $t2
    /* 1008C0 001FF940 F3FFC014 */  bnez       $a2, .L001FF910
    /* 1008C4 001FF944 0000A2AC */   sw        $v0, 0x0($a1)
.align 2
  .L001FF948:
    /* 1008C8 001FF948 0800E003 */  jr         $ra
    /* 1008CC 001FF94C 00000000 */   nop
endlabel func_001FF7F0
