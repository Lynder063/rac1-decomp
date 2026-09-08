.align 3
/* Handwritten function */
nonmatching func_0020E838, 0x158

glabel func_0020E838
    /* 10F7B8 0020E838 800CE121 */  addi       $at, $t7, 0xC80 /* handwritten instruction */
    /* 10F7BC 0020E83C 1C00033C */  lui        $v1, %hi(D_001C7AC0)
    /* 10F7C0 0020E840 C07A6324 */  addiu      $v1, $v1, %lo(D_001C7AC0)
    /* 10F7C4 0020E844 F00CE221 */  addi       $v0, $t7, 0xCF0 /* handwritten instruction */
    /* 10F7C8 0020E848 1893998F */  lw         $t9, -0x6CE8($gp)
    /* 10F7CC 0020E84C 00000000 */  nop
.align 2
  .L0020E850:
    /* 10F7D0 0020E850 27002210 */  beq        $at, $v0, .L0020E8F0
    /* 10F7D4 0020E854 00002490 */   lbu       $a0, 0x0($at)
    /* 10F7D8 0020E858 01002120 */  addi       $at, $at, 0x1 /* handwritten instruction */
    /* 10F7DC 0020E85C 04006320 */  addi       $v1, $v1, 0x4 /* handwritten instruction */
    /* 10F7E0 0020E860 00000000 */  nop
    /* 10F7E4 0020E864 00000000 */  nop
    /* 10F7E8 0020E868 F9FF8010 */  beqz       $a0, .L0020E850
    /* 10F7EC 0020E86C 00000000 */   nop
    /* 10F7F0 0020E870 FCFF648C */  lw         $a0, -0x4($v1)
    /* 10F7F4 0020E874 00000520 */  addi       $a1, $zero, 0x0 /* handwritten instruction */
.align 2
  alabel func_0020E878
    /* 10F7F8 0020E878 F5FFA004 */  bltz       $a1, .L0020E850
    /* 10F7FC 0020E87C 00008584 */   lh        $a1, 0x0($a0)
    /* 10F800 0020E880 02008420 */  addi       $a0, $a0, 0x2 /* handwritten instruction */
    /* 10F804 0020E884 FF7FA630 */  andi       $a2, $a1, 0x7FFF
    /* 10F808 0020E888 003A0600 */  sll        $a3, $a2, 8
    /* 10F80C 0020E88C 000006A7 */  sh         $a2, 0x0($t8)
    /* 10F810 0020E890 2038F900 */  add        $a3, $a3, $t9 /* handwritten instruction */
    /* 10F814 0020E894 00000000 */  nop
    /* 10F818 0020E898 2000E980 */  lb         $t1, 0x20($a3)
    /* 10F81C 0020E89C 00000000 */  nop
    /* 10F820 0020E8A0 3400EA94 */  lhu        $t2, 0x34($a3)
    /* 10F824 0020E8A4 00000000 */  nop
    /* 10F828 0020E8A8 F3FF2005 */  bltz       $t1, func_0020E878
    /* 10F82C 0020E8AC 2200E990 */   lbu       $t1, 0x22($a3)
    /* 10F830 0020E8B0 00104A31 */  andi       $t2, $t2, 0x1000
    /* 10F834 0020E8B4 00000000 */  nop
    /* 10F838 0020E8B8 C0480900 */  sll        $t1, $t1, 3
    /* 10F83C 0020E8BC 01004A29 */  slti       $t2, $t2, 0x1
    /* 10F840 0020E8C0 20482F01 */  add        $t1, $t1, $t7 /* handwritten instruction */
    /* 10F844 0020E8C4 01004A29 */  slti       $t2, $t2, 0x1
    /* 10F848 0020E8C8 0400288D */  lw         $t0, 0x4($t1)
    /* 10F84C 0020E8CC 40500A00 */  sll        $t2, $t2, 1
    /* 10F850 0020E8D0 20C00A03 */  add        $t8, $t8, $t2 /* handwritten instruction */
    /* 10F854 0020E8D4 00000000 */  nop
    /* 10F858 0020E8D8 03000011 */  beqz       $t0, .L0020E8E8
    /* 10F85C 0020E8DC 040027AD */   sw        $a3, 0x4($t1)
    /* 10F860 0020E8E0 1E3A0808 */  j          func_0020E878
    /* 10F864 0020E8E4 280007AD */   sw        $a3, 0x28($t0)
.align 2
  .L0020E8E8:
    /* 10F868 0020E8E8 1E3A0808 */  j          func_0020E878
    /* 10F86C 0020E8EC 000027AD */   sw        $a3, 0x0($t1)
.align 2
  .L0020E8F0:
    /* 10F870 0020E8F0 0008E121 */  addi       $at, $t7, 0x800 /* handwritten instruction */
    /* 10F874 0020E8F4 1C00023C */  lui        $v0, %hi(D_001C7C80)
    /* 10F878 0020E8F8 807C4224 */  addiu      $v0, $v0, %lo(D_001C7C80)
    /* 10F87C 0020E8FC 00000000 */  nop
    /* 10F880 0020E900 09003810 */  beq        $at, $t8, .L0020E928
    /* 10F884 0020E904 00002394 */   lhu       $v1, 0x0($at)
.align 2
  .L0020E908:
    /* 10F888 0020E908 00220300 */  sll        $a0, $v1, 8
    /* 10F88C 0020E90C 02002120 */  addi       $at, $at, 0x2 /* handwritten instruction */
    /* 10F890 0020E910 20209900 */  add        $a0, $a0, $t9 /* handwritten instruction */
    /* 10F894 0020E914 00002394 */  lhu        $v1, 0x0($at)
    /* 10F898 0020E918 000044AC */  sw         $a0, 0x0($v0)
    /* 10F89C 0020E91C 04004220 */  addi       $v0, $v0, 0x4 /* handwritten instruction */
    /* 10F8A0 0020E920 F9FF3814 */  bne        $at, $t8, .L0020E908
    /* 10F8A4 0020E924 00000000 */   nop
.align 2
  .L0020E928:
    /* 10F8A8 0020E928 000040AC */  sw         $zero, 0x0($v0)
    /* 10F8AC 0020E92C 00000000 */  nop
    /* 10F8B0 0020E930 00000120 */  addi       $at, $zero, 0x0 /* handwritten instruction */
    /* 10F8B4 0020E934 00000220 */  addi       $v0, $zero, 0x0 /* handwritten instruction */
    /* 10F8B8 0020E938 0000E321 */  addi       $v1, $t7, 0x0 /* handwritten instruction */
    /* 10F8BC 0020E93C 0007E421 */  addi       $a0, $t7, 0x700 /* handwritten instruction */
.align 2
  alabel func_0020E940
    /* 10F8C0 0020E940 11006410 */  beq        $v1, $a0, .L0020E988
    /* 10F8C4 0020E944 0000658C */   lw        $a1, 0x0($v1)
    /* 10F8C8 0020E948 00000000 */  nop
    /* 10F8CC 0020E94C 00000000 */  nop
    /* 10F8D0 0020E950 00000000 */  nop
    /* 10F8D4 0020E954 00000000 */  nop
    /* 10F8D8 0020E958 F9FFA010 */  beqz       $a1, func_0020E940
    /* 10F8DC 0020E95C 08006320 */   addi      $v1, $v1, 0x8 /* handwritten instruction */
    /* 10F8E0 0020E960 05002010 */  beqz       $at, .L0020E978
    /* 10F8E4 0020E964 FCFF668C */   lw        $a2, -0x4($v1)
    /* 10F8E8 0020E968 280045AC */  sw         $a1, 0x28($v0)
    /* 10F8EC 0020E96C 0000C220 */  addi       $v0, $a2, 0x0 /* handwritten instruction */
    /* 10F8F0 0020E970 503A0808 */  j          func_0020E940
    /* 10F8F4 0020E974 2800C0AC */   sw        $zero, 0x28($a2)
.align 2
  .L0020E978:
    /* 10F8F8 0020E978 0000A120 */  addi       $at, $a1, 0x0 /* handwritten instruction */
    /* 10F8FC 0020E97C 0000C220 */  addi       $v0, $a2, 0x0 /* handwritten instruction */
    /* 10F900 0020E980 503A0808 */  j          func_0020E940
    /* 10F904 0020E984 2800C0AC */   sw        $zero, 0x28($a2)
.align 2
  .L0020E988:
    /* 10F908 0020E988 0800E003 */  jr         $ra
    /* 10F90C 0020E98C 00002220 */   addi      $v0, $at, 0x0 /* handwritten instruction */
endlabel func_0020E838
