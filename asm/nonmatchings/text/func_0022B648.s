.align 3
/* Handwritten function */
nonmatching func_0022B648, 0x2AC

glabel func_0022B648
    /* 12C5C8 0022B648 0070013C */  lui        $at, (0x70003600 >> 16)
    /* 12C5CC 0022B64C 1E000E3C */  lui        $t6, %hi(D_001D9040)
    /* 12C5D0 0022B650 4090CE25 */  addiu      $t6, $t6, %lo(D_001D9040)
    /* 12C5D4 0022B654 00312F20 */  addi       $t7, $at, (0x70003100 & 0xFFFF) /* handwritten instruction */
    /* 12C5D8 0022B658 00362D20 */  addi       $t5, $at, (0x70003600 & 0xFFFF) /* handwritten instruction */
    /* 12C5DC 0022B65C 1E000C3C */  lui        $t4, %hi(D_001D9140)
    /* 12C5E0 0022B660 40918C25 */  addiu      $t4, $t4, %lo(D_001D9140)
    /* 12C5E4 0022B664 00000000 */  nop
    /* 12C5E8 0022B668 CC978A8F */  lw         $t2, -0x6834($gp)
    /* 12C5EC 0022B66C 1E000B3C */  lui        $t3, %hi(D_001D9640)
    /* 12C5F0 0022B670 40966B25 */  addiu      $t3, $t3, %lo(D_001D9640)
    /* 12C5F4 0022B674 00000920 */  addi       $t1, $zero, 0x0 /* handwritten instruction */
    /* 12C5F8 0022B678 00A3988F */  lw         $t8, -0x5D00($gp)
    /* 12C5FC 0022B67C 02CA0400 */  srl        $t9, $a0, 8
    /* 12C600 0022B680 FF7F083C */  lui        $t0, (0x7FFFFFFF >> 16)
    /* 12C604 0022B684 FFFF0835 */  ori        $t0, $t0, (0x7FFFFFFF & 0xFFFF)
    /* 12C608 0022B688 0000A121 */  addi       $at, $t5, 0x0 /* handwritten instruction */
    /* 12C60C 0022B68C 0001A221 */  addi       $v0, $t5, 0x100 /* handwritten instruction */
.align 2
  .L0022B690:
    /* 12C610 0022B690 0000207C */  sq         $zero, 0x0($at)
    /* 12C614 0022B694 20002120 */  addi       $at, $at, 0x20 /* handwritten instruction */
    /* 12C618 0022B698 00000000 */  nop
    /* 12C61C 0022B69C 00000000 */  nop
    /* 12C620 0022B6A0 00000000 */  nop
    /* 12C624 0022B6A4 FAFF2214 */  bne        $at, $v0, .L0022B690
    /* 12C628 0022B6A8 F0FF207C */   sq        $zero, -0x10($at)
.align 2
  .L0022B6AC:
    /* 12C62C 0022B6AC 1D002A11 */  beq        $t1, $t2, .L0022B724
    /* 12C630 0022B6B0 01002921 */   addi      $t1, $t1, 0x1 /* handwritten instruction */
    /* 12C634 0022B6B4 0000E18D */  lw         $at, 0x0($t7)
    /* 12C638 0022B6B8 0400EF21 */  addi       $t7, $t7, 0x4 /* handwritten instruction */
    /* 12C63C 0022B6BC 0000C28D */  lw         $v0, 0x0($t6)
    /* 12C640 0022B6C0 0400CE21 */  addi       $t6, $t6, 0x4 /* handwritten instruction */
    /* 12C644 0022B6C4 F9FF2810 */  beq        $at, $t0, .L0022B6AC
    /* 12C648 0022B6C8 10006B21 */   addi      $t3, $t3, 0x10 /* handwritten instruction */
    /* 12C64C 0022B6CC 40180200 */  sll        $v1, $v0, 1
    /* 12C650 0022B6D0 FFFF2421 */  addi       $a0, $t1, -0x1 /* handwritten instruction */
    /* 12C654 0022B6D4 22186100 */  sub        $v1, $v1, $at /* handwritten instruction */
    /* 12C658 0022B6D8 000084AD */  sw         $a0, 0x0($t4)
    /* 12C65C 0022B6DC F3FF6018 */  blez       $v1, .L0022B6AC
    /* 12C660 0022B6E0 22184100 */   sub       $v1, $v0, $at /* handwritten instruction */
    /* 12C664 0022B6E4 03006018 */  blez       $v1, .L0022B6F4
    /* 12C668 0022B6E8 01000320 */   addi      $v1, $zero, 0x1 /* handwritten instruction */
    /* 12C66C 0022B6EC 03000320 */  addi       $v1, $zero, 0x3 /* handwritten instruction */
    /* 12C670 0022B6F0 00000000 */  nop
.align 2
  .L0022B6F4:
    /* 12C674 0022B6F4 04008C21 */  addi       $t4, $t4, 0x4 /* handwritten instruction */
    /* 12C678 0022B6F8 00000000 */  nop
    /* 12C67C 0022B6FC F0FF6121 */  addi       $at, $t3, -0x10 /* handwritten instruction */
    /* 12C680 0022B700 FF000220 */  addi       $v0, $zero, 0xFF /* handwritten instruction */
.align 2
  alabel func_0022B704
    /* 12C684 0022B704 00002490 */  lbu        $a0, 0x0($at)
    /* 12C688 0022B708 01002120 */  addi       $at, $at, 0x1 /* handwritten instruction */
    /* 12C68C 0022B70C E7FF8210 */  beq        $a0, $v0, .L0022B6AC
    /* 12C690 0022B710 20208D00 */   add       $a0, $a0, $t5 /* handwritten instruction */
    /* 12C694 0022B714 00008590 */  lbu        $a1, 0x0($a0)
    /* 12C698 0022B718 2528A300 */  or         $a1, $a1, $v1
    /* 12C69C 0022B71C C1AD0808 */  j          func_0022B704
    /* 12C6A0 0022B720 000085A0 */   sb        $a1, 0x0($a0)
.align 2
  .L0022B724:
    /* 12C6A4 0022B724 FFFF0120 */  addi       $at, $zero, -0x1 /* handwritten instruction */
    /* 12C6A8 0022B728 000081AD */  sw         $at, 0x0($t4)
    /* 12C6AC 0022B72C 609B8B7B */  lq         $t3, -0x64A0($gp)
    /* 12C6B0 0022B730 709B8C7B */  lq         $t4, -0x6490($gp)
    /* 12C6B4 0022B734 809B8D7B */  lq         $t5, -0x6480($gp)
    /* 12C6B8 0022B738 909B8E7B */  lq         $t6, -0x6470($gp)
    /* 12C6BC 0022B73C A09B8F7B */  lq         $t7, -0x6460($gp)
    /* 12C6C0 0022B740 1E000A3C */  lui        $t2, %hi(D_001D8C40)
    /* 12C6C4 0022B744 408C4A25 */  addiu      $t2, $t2, %lo(D_001D8C40)
    /* 12C6C8 0022B748 1E00073C */  lui        $a3, %hi(D_001D8840)
    /* 12C6CC 0022B74C 4088E724 */  addiu      $a3, $a3, %lo(D_001D8840)
    /* 12C6D0 0022B750 00000000 */  nop
    /* 12C6D4 0022B754 0070083C */  lui        $t0, (0x70003600 >> 16)
    /* 12C6D8 0022B758 EC97898F */  lw         $t1, -0x6814($gp)
    /* 12C6DC 0022B75C 00360821 */  addi       $t0, $t0, (0x70003600 & 0xFFFF) /* handwritten instruction */
    /* 12C6E0 0022B760 20482801 */  add        $t1, $t1, $t0 /* handwritten instruction */
.align 2
  .L0022B764:
    /* 12C6E4 0022B764 5F000911 */  beq        $t0, $t1, .L0022B8E4
    /* 12C6E8 0022B768 00000191 */   lbu       $at, 0x0($t0)
    /* 12C6EC 0022B76C 01000821 */  addi       $t0, $t0, 0x1 /* handwritten instruction */
    /* 12C6F0 0022B770 0000E48C */  lw         $a0, 0x0($a3)
    /* 12C6F4 0022B774 0400E720 */  addi       $a3, $a3, 0x4 /* handwritten instruction */
    /* 12C6F8 0022B778 000040AD */  sw         $zero, 0x0($t2)
    /* 12C6FC 0022B77C F9FF2010 */  beqz       $at, .L0022B764
    /* 12C700 0022B780 04004A21 */   addi      $t2, $t2, 0x4 /* handwritten instruction */
    /* 12C704 0022B784 02002230 */  andi       $v0, $at, 0x2
    /* 12C708 0022B788 00000000 */  nop
    /* 12C70C 0022B78C 021F0400 */  srl        $v1, $a0, 28
    /* 12C710 0022B790 00210400 */  sll        $a0, $a0, 4
    /* 12C714 0022B794 27004010 */  beqz       $v0, .L0022B834
    /* 12C718 0022B798 02210400 */   srl       $a0, $a0, 4
    /* 12C71C 0022B79C 00000B7F */  sq         $t3, 0x0($t8)
    /* 12C720 0022B7A0 10000C7F */  sq         $t4, 0x10($t8)
    /* 12C724 0022B7A4 20000D7F */  sq         $t5, 0x20($t8)
    /* 12C728 0022B7A8 30000E7F */  sq         $t6, 0x30($t8)
    /* 12C72C 0022B7AC 4000007F */  sq         $zero, 0x40($t8)
    /* 12C730 0022B7B0 53000120 */  addi       $at, $zero, 0x53 /* handwritten instruction */
    /* 12C734 0022B7B4 50000F7F */  sq         $t7, 0x50($t8)
    /* 12C738 0022B7B8 480001AF */  sw         $at, 0x48($t8)
    /* 12C73C 0022B7BC 240019A7 */  sh         $t9, 0x24($t8)
    /* 12C740 0022B7C0 FAFF6220 */  addi       $v0, $v1, -0x6 /* handwritten instruction */
    /* 12C744 0022B7C4 03004018 */  blez       $v0, .L0022B7D4
    /* 12C748 0022B7C8 01000120 */   addi      $at, $zero, 0x1 /* handwritten instruction */
    /* 12C74C 0022B7CC 04104100 */  sllv       $v0, $at, $v0
    /* 12C750 0022B7D0 260002A3 */  sb         $v0, 0x26($t8)
.align 2
  .L0022B7D4:
    /* 12C754 0022B7D4 04086100 */  sllv       $at, $at, $v1
    /* 12C758 0022B7D8 01000220 */  addi       $v0, $zero, 0x1 /* handwritten instruction */
    /* 12C75C 0022B7DC 300001AF */  sw         $at, 0x30($t8)
    /* 12C760 0022B7E0 04106200 */  sllv       $v0, $v0, $v1
    /* 12C764 0022B7E4 340001AF */  sw         $at, 0x34($t8)
    /* 12C768 0022B7E8 04106200 */  sllv       $v0, $v0, $v1
    /* 12C76C 0022B7EC 00800134 */  ori        $at, $zero, 0x8000
    /* 12C770 0022B7F0 02110200 */  srl        $v0, $v0, 4
    /* 12C774 0022B7F4 20082200 */  add        $at, $at, $v0 /* handwritten instruction */
    /* 12C778 0022B7F8 500001AF */  sw         $at, 0x50($t8)
    /* 12C77C 0022B7FC 0030013C */  lui        $at, (0x30000000 >> 16)
    /* 12C780 0022B800 6000007F */  sq         $zero, 0x60($t8)
    /* 12C784 0022B804 20082200 */  add        $at, $at, $v0 /* handwritten instruction */
    /* 12C788 0022B808 640004AF */  sw         $a0, 0x64($t8)
    /* 12C78C 0022B80C 600001AF */  sw         $at, 0x60($t8)
    /* 12C790 0022B810 0050013C */  lui        $at, (0x50000000 >> 16)
    /* 12C794 0022B814 20082200 */  add        $at, $at, $v0 /* handwritten instruction */
    /* 12C798 0022B818 02110200 */  srl        $v0, $v0, 4
    /* 12C79C 0022B81C FCFF59A5 */  sh         $t9, -0x4($t2)
    /* 12C7A0 0022B820 20C82203 */  add        $t9, $t9, $v0 /* handwritten instruction */
    /* 12C7A4 0022B824 6C0001AF */  sw         $at, 0x6C($t8)
    /* 12C7A8 0022B828 05C02223 */  addi       $v0, $t9, -0x3FFB /* handwritten instruction */
    /* 12C7AC 0022B82C 2B00401C */  bgtz       $v0, .L0022B8DC
    /* 12C7B0 0022B830 70001823 */   addi      $t8, $t8, 0x70 /* handwritten instruction */
.align 2
  .L0022B834:
    /* 12C7B4 0022B834 00000B7F */  sq         $t3, 0x0($t8)
    /* 12C7B8 0022B838 10000C7F */  sq         $t4, 0x10($t8)
    /* 12C7BC 0022B83C 20000D7F */  sq         $t5, 0x20($t8)
    /* 12C7C0 0022B840 30000E7F */  sq         $t6, 0x30($t8)
    /* 12C7C4 0022B844 4000007F */  sq         $zero, 0x40($t8)
    /* 12C7C8 0022B848 53000120 */  addi       $at, $zero, 0x53 /* handwritten instruction */
    /* 12C7CC 0022B84C 50000F7F */  sq         $t7, 0x50($t8)
    /* 12C7D0 0022B850 FFFF6320 */  addi       $v1, $v1, -0x1 /* handwritten instruction */
    /* 12C7D4 0022B854 480001AF */  sw         $at, 0x48($t8)
    /* 12C7D8 0022B858 00000000 */  nop
    /* 12C7DC 0022B85C 240019A7 */  sh         $t9, 0x24($t8)
    /* 12C7E0 0022B860 FAFF6220 */  addi       $v0, $v1, -0x6 /* handwritten instruction */
    /* 12C7E4 0022B864 03004018 */  blez       $v0, .L0022B874
    /* 12C7E8 0022B868 01000120 */   addi      $at, $zero, 0x1 /* handwritten instruction */
    /* 12C7EC 0022B86C 04104100 */  sllv       $v0, $at, $v0
    /* 12C7F0 0022B870 260002A3 */  sb         $v0, 0x26($t8)
.align 2
  .L0022B874:
    /* 12C7F4 0022B874 04086100 */  sllv       $at, $at, $v1
    /* 12C7F8 0022B878 01000220 */  addi       $v0, $zero, 0x1 /* handwritten instruction */
    /* 12C7FC 0022B87C 300001AF */  sw         $at, 0x30($t8)
    /* 12C800 0022B880 04106200 */  sllv       $v0, $v0, $v1
    /* 12C804 0022B884 340001AF */  sw         $at, 0x34($t8)
    /* 12C808 0022B888 04106200 */  sllv       $v0, $v0, $v1
    /* 12C80C 0022B88C 80080200 */  sll        $at, $v0, 2
    /* 12C810 0022B890 02110200 */  srl        $v0, $v0, 4
    /* 12C814 0022B894 20208100 */  add        $a0, $a0, $at /* handwritten instruction */
    /* 12C818 0022B898 00800134 */  ori        $at, $zero, 0x8000
    /* 12C81C 0022B89C 20082200 */  add        $at, $at, $v0 /* handwritten instruction */
    /* 12C820 0022B8A0 500001AF */  sw         $at, 0x50($t8)
    /* 12C824 0022B8A4 0030013C */  lui        $at, (0x30000000 >> 16)
    /* 12C828 0022B8A8 6000007F */  sq         $zero, 0x60($t8)
    /* 12C82C 0022B8AC 20082200 */  add        $at, $at, $v0 /* handwritten instruction */
    /* 12C830 0022B8B0 640004AF */  sw         $a0, 0x64($t8)
    /* 12C834 0022B8B4 600001AF */  sw         $at, 0x60($t8)
    /* 12C838 0022B8B8 0050013C */  lui        $at, (0x50000000 >> 16)
    /* 12C83C 0022B8BC 20082200 */  add        $at, $at, $v0 /* handwritten instruction */
    /* 12C840 0022B8C0 02110200 */  srl        $v0, $v0, 4
    /* 12C844 0022B8C4 FEFF59A5 */  sh         $t9, -0x2($t2)
    /* 12C848 0022B8C8 20C82203 */  add        $t9, $t9, $v0 /* handwritten instruction */
    /* 12C84C 0022B8CC 6C0001AF */  sw         $at, 0x6C($t8)
    /* 12C850 0022B8D0 05C02223 */  addi       $v0, $t9, -0x3FFB /* handwritten instruction */
    /* 12C854 0022B8D4 A3FF4018 */  blez       $v0, .L0022B764
    /* 12C858 0022B8D8 70001823 */   addi      $t8, $t8, 0x70 /* handwritten instruction */
.align 2
  .L0022B8DC:
    /* 12C85C 0022B8DC 90FF1823 */  addi       $t8, $t8, -0x70 /* handwritten instruction */
    /* 12C860 0022B8E0 00000000 */  nop
.align 2
  .L0022B8E4:
    /* 12C864 0022B8E4 00A398AF */  sw         $t8, -0x5D00($gp)
    /* 12C868 0022B8E8 00000000 */  nop
    /* 12C86C 0022B8EC 0800E003 */  jr         $ra
    /* 12C870 0022B8F0 00121900 */   sll       $v0, $t9, 8
endlabel func_0022B648
    /* 12C874 0022B8F4 00000000 */  nop
