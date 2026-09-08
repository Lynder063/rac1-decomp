.align 3
/* Handwritten function */
nonmatching func_0022B648, 0x2AC

glabel func_0022B648
    /* 12C5C8 0022B648 0070013C */  lui        $1, (0x70003600 >> 16)
    /* 12C5CC 0022B64C 1E000E3C */  lui        $14, %hi(D_001D9040)
    /* 12C5D0 0022B650 4090CE25 */  addiu      $14, $14, %lo(D_001D9040)
    /* 12C5D4 0022B654 00312F20 */  addi       $15, $1, (0x70003100 & 0xFFFF) /* handwritten instruction */
    /* 12C5D8 0022B658 00362D20 */  addi       $13, $1, (0x70003600 & 0xFFFF) /* handwritten instruction */
    /* 12C5DC 0022B65C 1E000C3C */  lui        $12, %hi(D_001D9140)
    /* 12C5E0 0022B660 40918C25 */  addiu      $12, $12, %lo(D_001D9140)
    /* 12C5E4 0022B664 00000000 */  nop
    /* 12C5E8 0022B668 CC978A8F */  lw         $10, -0x6834($28)
    /* 12C5EC 0022B66C 1E000B3C */  lui        $11, %hi(D_001D9640)
    /* 12C5F0 0022B670 40966B25 */  addiu      $11, $11, %lo(D_001D9640)
    /* 12C5F4 0022B674 00000920 */  addi       $9, $0, 0x0 /* handwritten instruction */
    /* 12C5F8 0022B678 00A3988F */  lw         $24, -0x5D00($28)
    /* 12C5FC 0022B67C 02CA0400 */  srl        $25, $4, 8
    /* 12C600 0022B680 FF7F083C */  lui        $8, (0x7FFFFFFF >> 16)
    /* 12C604 0022B684 FFFF0835 */  ori        $8, $8, (0x7FFFFFFF & 0xFFFF)
    /* 12C608 0022B688 0000A121 */  addi       $1, $13, 0x0 /* handwritten instruction */
    /* 12C60C 0022B68C 0001A221 */  addi       $2, $13, 0x100 /* handwritten instruction */
.align 2
  .L0022B690:
    /* 12C610 0022B690 0000207C */  sq         $0, 0x0($1)
    /* 12C614 0022B694 20002120 */  addi       $1, $1, 0x20 /* handwritten instruction */
    /* 12C618 0022B698 00000000 */  nop
    /* 12C61C 0022B69C 00000000 */  nop
    /* 12C620 0022B6A0 00000000 */  nop
    /* 12C624 0022B6A4 FAFF2214 */  bne        $1, $2, .L0022B690
    /* 12C628 0022B6A8 F0FF207C */   sq        $0, -0x10($1)
.align 2
  .L0022B6AC:
    /* 12C62C 0022B6AC 1D002A11 */  beq        $9, $10, .L0022B724
    /* 12C630 0022B6B0 01002921 */   addi      $9, $9, 0x1 /* handwritten instruction */
    /* 12C634 0022B6B4 0000E18D */  lw         $1, 0x0($15)
    /* 12C638 0022B6B8 0400EF21 */  addi       $15, $15, 0x4 /* handwritten instruction */
    /* 12C63C 0022B6BC 0000C28D */  lw         $2, 0x0($14)
    /* 12C640 0022B6C0 0400CE21 */  addi       $14, $14, 0x4 /* handwritten instruction */
    /* 12C644 0022B6C4 F9FF2810 */  beq        $1, $8, .L0022B6AC
    /* 12C648 0022B6C8 10006B21 */   addi      $11, $11, 0x10 /* handwritten instruction */
    /* 12C64C 0022B6CC 40180200 */  sll        $3, $2, 1
    /* 12C650 0022B6D0 FFFF2421 */  addi       $4, $9, -0x1 /* handwritten instruction */
    /* 12C654 0022B6D4 22186100 */  sub        $3, $3, $1 /* handwritten instruction */
    /* 12C658 0022B6D8 000084AD */  sw         $4, 0x0($12)
    /* 12C65C 0022B6DC F3FF6018 */  blez       $3, .L0022B6AC
    /* 12C660 0022B6E0 22184100 */   sub       $3, $2, $1 /* handwritten instruction */
    /* 12C664 0022B6E4 03006018 */  blez       $3, .L0022B6F4
    /* 12C668 0022B6E8 01000320 */   addi      $3, $0, 0x1 /* handwritten instruction */
    /* 12C66C 0022B6EC 03000320 */  addi       $3, $0, 0x3 /* handwritten instruction */
    /* 12C670 0022B6F0 00000000 */  nop
.align 2
  .L0022B6F4:
    /* 12C674 0022B6F4 04008C21 */  addi       $12, $12, 0x4 /* handwritten instruction */
    /* 12C678 0022B6F8 00000000 */  nop
    /* 12C67C 0022B6FC F0FF6121 */  addi       $1, $11, -0x10 /* handwritten instruction */
    /* 12C680 0022B700 FF000220 */  addi       $2, $0, 0xFF /* handwritten instruction */
.align 2
  alabel func_0022B704
    /* 12C684 0022B704 00002490 */  lbu        $4, 0x0($1)
    /* 12C688 0022B708 01002120 */  addi       $1, $1, 0x1 /* handwritten instruction */
    /* 12C68C 0022B70C E7FF8210 */  beq        $4, $2, .L0022B6AC
    /* 12C690 0022B710 20208D00 */   add       $4, $4, $13 /* handwritten instruction */
    /* 12C694 0022B714 00008590 */  lbu        $5, 0x0($4)
    /* 12C698 0022B718 2528A300 */  or         $5, $5, $3
    /* 12C69C 0022B71C C1AD0808 */  j          func_0022B704
    /* 12C6A0 0022B720 000085A0 */   sb        $5, 0x0($4)
.align 2
  .L0022B724:
    /* 12C6A4 0022B724 FFFF0120 */  addi       $1, $0, -0x1 /* handwritten instruction */
    /* 12C6A8 0022B728 000081AD */  sw         $1, 0x0($12)
    /* 12C6AC 0022B72C 609B8B7B */  lq         $11, -0x64A0($28)
    /* 12C6B0 0022B730 709B8C7B */  lq         $12, -0x6490($28)
    /* 12C6B4 0022B734 809B8D7B */  lq         $13, -0x6480($28)
    /* 12C6B8 0022B738 909B8E7B */  lq         $14, -0x6470($28)
    /* 12C6BC 0022B73C A09B8F7B */  lq         $15, -0x6460($28)
    /* 12C6C0 0022B740 1E000A3C */  lui        $10, %hi(D_001D8C40)
    /* 12C6C4 0022B744 408C4A25 */  addiu      $10, $10, %lo(D_001D8C40)
    /* 12C6C8 0022B748 1E00073C */  lui        $7, %hi(D_001D8840)
    /* 12C6CC 0022B74C 4088E724 */  addiu      $7, $7, %lo(D_001D8840)
    /* 12C6D0 0022B750 00000000 */  nop
    /* 12C6D4 0022B754 0070083C */  lui        $8, (0x70003600 >> 16)
    /* 12C6D8 0022B758 EC97898F */  lw         $9, -0x6814($28)
    /* 12C6DC 0022B75C 00360821 */  addi       $8, $8, (0x70003600 & 0xFFFF) /* handwritten instruction */
    /* 12C6E0 0022B760 20482801 */  add        $9, $9, $8 /* handwritten instruction */
.align 2
  .L0022B764:
    /* 12C6E4 0022B764 5F000911 */  beq        $8, $9, .L0022B8E4
    /* 12C6E8 0022B768 00000191 */   lbu       $1, 0x0($8)
    /* 12C6EC 0022B76C 01000821 */  addi       $8, $8, 0x1 /* handwritten instruction */
    /* 12C6F0 0022B770 0000E48C */  lw         $4, 0x0($7)
    /* 12C6F4 0022B774 0400E720 */  addi       $7, $7, 0x4 /* handwritten instruction */
    /* 12C6F8 0022B778 000040AD */  sw         $0, 0x0($10)
    /* 12C6FC 0022B77C F9FF2010 */  beqz       $1, .L0022B764
    /* 12C700 0022B780 04004A21 */   addi      $10, $10, 0x4 /* handwritten instruction */
    /* 12C704 0022B784 02002230 */  andi       $2, $1, 0x2
    /* 12C708 0022B788 00000000 */  nop
    /* 12C70C 0022B78C 021F0400 */  srl        $3, $4, 28
    /* 12C710 0022B790 00210400 */  sll        $4, $4, 4
    /* 12C714 0022B794 27004010 */  beqz       $2, .L0022B834
    /* 12C718 0022B798 02210400 */   srl       $4, $4, 4
    /* 12C71C 0022B79C 00000B7F */  sq         $11, 0x0($24)
    /* 12C720 0022B7A0 10000C7F */  sq         $12, 0x10($24)
    /* 12C724 0022B7A4 20000D7F */  sq         $13, 0x20($24)
    /* 12C728 0022B7A8 30000E7F */  sq         $14, 0x30($24)
    /* 12C72C 0022B7AC 4000007F */  sq         $0, 0x40($24)
    /* 12C730 0022B7B0 53000120 */  addi       $1, $0, 0x53 /* handwritten instruction */
    /* 12C734 0022B7B4 50000F7F */  sq         $15, 0x50($24)
    /* 12C738 0022B7B8 480001AF */  sw         $1, 0x48($24)
    /* 12C73C 0022B7BC 240019A7 */  sh         $25, 0x24($24)
    /* 12C740 0022B7C0 FAFF6220 */  addi       $2, $3, -0x6 /* handwritten instruction */
    /* 12C744 0022B7C4 03004018 */  blez       $2, .L0022B7D4
    /* 12C748 0022B7C8 01000120 */   addi      $1, $0, 0x1 /* handwritten instruction */
    /* 12C74C 0022B7CC 04104100 */  sllv       $2, $1, $2
    /* 12C750 0022B7D0 260002A3 */  sb         $2, 0x26($24)
.align 2
  .L0022B7D4:
    /* 12C754 0022B7D4 04086100 */  sllv       $1, $1, $3
    /* 12C758 0022B7D8 01000220 */  addi       $2, $0, 0x1 /* handwritten instruction */
    /* 12C75C 0022B7DC 300001AF */  sw         $1, 0x30($24)
    /* 12C760 0022B7E0 04106200 */  sllv       $2, $2, $3
    /* 12C764 0022B7E4 340001AF */  sw         $1, 0x34($24)
    /* 12C768 0022B7E8 04106200 */  sllv       $2, $2, $3
    /* 12C76C 0022B7EC 00800134 */  ori        $1, $0, 0x8000
    /* 12C770 0022B7F0 02110200 */  srl        $2, $2, 4
    /* 12C774 0022B7F4 20082200 */  add        $1, $1, $2 /* handwritten instruction */
    /* 12C778 0022B7F8 500001AF */  sw         $1, 0x50($24)
    /* 12C77C 0022B7FC 0030013C */  lui        $1, (0x30000000 >> 16)
    /* 12C780 0022B800 6000007F */  sq         $0, 0x60($24)
    /* 12C784 0022B804 20082200 */  add        $1, $1, $2 /* handwritten instruction */
    /* 12C788 0022B808 640004AF */  sw         $4, 0x64($24)
    /* 12C78C 0022B80C 600001AF */  sw         $1, 0x60($24)
    /* 12C790 0022B810 0050013C */  lui        $1, (0x50000000 >> 16)
    /* 12C794 0022B814 20082200 */  add        $1, $1, $2 /* handwritten instruction */
    /* 12C798 0022B818 02110200 */  srl        $2, $2, 4
    /* 12C79C 0022B81C FCFF59A5 */  sh         $25, -0x4($10)
    /* 12C7A0 0022B820 20C82203 */  add        $25, $25, $2 /* handwritten instruction */
    /* 12C7A4 0022B824 6C0001AF */  sw         $1, 0x6C($24)
    /* 12C7A8 0022B828 05C02223 */  addi       $2, $25, -0x3FFB /* handwritten instruction */
    /* 12C7AC 0022B82C 2B00401C */  bgtz       $2, .L0022B8DC
    /* 12C7B0 0022B830 70001823 */   addi      $24, $24, 0x70 /* handwritten instruction */
.align 2
  .L0022B834:
    /* 12C7B4 0022B834 00000B7F */  sq         $11, 0x0($24)
    /* 12C7B8 0022B838 10000C7F */  sq         $12, 0x10($24)
    /* 12C7BC 0022B83C 20000D7F */  sq         $13, 0x20($24)
    /* 12C7C0 0022B840 30000E7F */  sq         $14, 0x30($24)
    /* 12C7C4 0022B844 4000007F */  sq         $0, 0x40($24)
    /* 12C7C8 0022B848 53000120 */  addi       $1, $0, 0x53 /* handwritten instruction */
    /* 12C7CC 0022B84C 50000F7F */  sq         $15, 0x50($24)
    /* 12C7D0 0022B850 FFFF6320 */  addi       $3, $3, -0x1 /* handwritten instruction */
    /* 12C7D4 0022B854 480001AF */  sw         $1, 0x48($24)
    /* 12C7D8 0022B858 00000000 */  nop
    /* 12C7DC 0022B85C 240019A7 */  sh         $25, 0x24($24)
    /* 12C7E0 0022B860 FAFF6220 */  addi       $2, $3, -0x6 /* handwritten instruction */
    /* 12C7E4 0022B864 03004018 */  blez       $2, .L0022B874
    /* 12C7E8 0022B868 01000120 */   addi      $1, $0, 0x1 /* handwritten instruction */
    /* 12C7EC 0022B86C 04104100 */  sllv       $2, $1, $2
    /* 12C7F0 0022B870 260002A3 */  sb         $2, 0x26($24)
.align 2
  .L0022B874:
    /* 12C7F4 0022B874 04086100 */  sllv       $1, $1, $3
    /* 12C7F8 0022B878 01000220 */  addi       $2, $0, 0x1 /* handwritten instruction */
    /* 12C7FC 0022B87C 300001AF */  sw         $1, 0x30($24)
    /* 12C800 0022B880 04106200 */  sllv       $2, $2, $3
    /* 12C804 0022B884 340001AF */  sw         $1, 0x34($24)
    /* 12C808 0022B888 04106200 */  sllv       $2, $2, $3
    /* 12C80C 0022B88C 80080200 */  sll        $1, $2, 2
    /* 12C810 0022B890 02110200 */  srl        $2, $2, 4
    /* 12C814 0022B894 20208100 */  add        $4, $4, $1 /* handwritten instruction */
    /* 12C818 0022B898 00800134 */  ori        $1, $0, 0x8000
    /* 12C81C 0022B89C 20082200 */  add        $1, $1, $2 /* handwritten instruction */
    /* 12C820 0022B8A0 500001AF */  sw         $1, 0x50($24)
    /* 12C824 0022B8A4 0030013C */  lui        $1, (0x30000000 >> 16)
    /* 12C828 0022B8A8 6000007F */  sq         $0, 0x60($24)
    /* 12C82C 0022B8AC 20082200 */  add        $1, $1, $2 /* handwritten instruction */
    /* 12C830 0022B8B0 640004AF */  sw         $4, 0x64($24)
    /* 12C834 0022B8B4 600001AF */  sw         $1, 0x60($24)
    /* 12C838 0022B8B8 0050013C */  lui        $1, (0x50000000 >> 16)
    /* 12C83C 0022B8BC 20082200 */  add        $1, $1, $2 /* handwritten instruction */
    /* 12C840 0022B8C0 02110200 */  srl        $2, $2, 4
    /* 12C844 0022B8C4 FEFF59A5 */  sh         $25, -0x2($10)
    /* 12C848 0022B8C8 20C82203 */  add        $25, $25, $2 /* handwritten instruction */
    /* 12C84C 0022B8CC 6C0001AF */  sw         $1, 0x6C($24)
    /* 12C850 0022B8D0 05C02223 */  addi       $2, $25, -0x3FFB /* handwritten instruction */
    /* 12C854 0022B8D4 A3FF4018 */  blez       $2, .L0022B764
    /* 12C858 0022B8D8 70001823 */   addi      $24, $24, 0x70 /* handwritten instruction */
.align 2
  .L0022B8DC:
    /* 12C85C 0022B8DC 90FF1823 */  addi       $24, $24, -0x70 /* handwritten instruction */
    /* 12C860 0022B8E0 00000000 */  nop
.align 2
  .L0022B8E4:
    /* 12C864 0022B8E4 00A398AF */  sw         $24, -0x5D00($28)
    /* 12C868 0022B8E8 00000000 */  nop
    /* 12C86C 0022B8EC 0800E003 */  jr         $31
    /* 12C870 0022B8F0 00121900 */   sll       $2, $25, 8
endlabel func_0022B648
    /* 12C874 0022B8F4 00000000 */  nop
