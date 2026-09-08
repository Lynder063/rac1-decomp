.align 3
/* Handwritten function */
nonmatching func_0020E838, 0x158

glabel func_0020E838
    /* 10F7B8 0020E838 800CE121 */  addi       $1, $15, 0xC80 /* handwritten instruction */
    /* 10F7BC 0020E83C 1C00033C */  lui        $3, %hi(D_001C7AC0)
    /* 10F7C0 0020E840 C07A6324 */  addiu      $3, $3, %lo(D_001C7AC0)
    /* 10F7C4 0020E844 F00CE221 */  addi       $2, $15, 0xCF0 /* handwritten instruction */
    /* 10F7C8 0020E848 1893998F */  lw         $25, -0x6CE8($28)
    /* 10F7CC 0020E84C 00000000 */  nop
.align 2
  .L0020E850:
    /* 10F7D0 0020E850 27002210 */  beq        $1, $2, .L0020E8F0
    /* 10F7D4 0020E854 00002490 */   lbu       $4, 0x0($1)
    /* 10F7D8 0020E858 01002120 */  addi       $1, $1, 0x1 /* handwritten instruction */
    /* 10F7DC 0020E85C 04006320 */  addi       $3, $3, 0x4 /* handwritten instruction */
    /* 10F7E0 0020E860 00000000 */  nop
    /* 10F7E4 0020E864 00000000 */  nop
    /* 10F7E8 0020E868 F9FF8010 */  beqz       $4, .L0020E850
    /* 10F7EC 0020E86C 00000000 */   nop
    /* 10F7F0 0020E870 FCFF648C */  lw         $4, -0x4($3)
    /* 10F7F4 0020E874 00000520 */  addi       $5, $0, 0x0 /* handwritten instruction */
.align 2
  alabel func_0020E878
    /* 10F7F8 0020E878 F5FFA004 */  bltz       $5, .L0020E850
    /* 10F7FC 0020E87C 00008584 */   lh        $5, 0x0($4)
    /* 10F800 0020E880 02008420 */  addi       $4, $4, 0x2 /* handwritten instruction */
    /* 10F804 0020E884 FF7FA630 */  andi       $6, $5, 0x7FFF
    /* 10F808 0020E888 003A0600 */  sll        $7, $6, 8
    /* 10F80C 0020E88C 000006A7 */  sh         $6, 0x0($24)
    /* 10F810 0020E890 2038F900 */  add        $7, $7, $25 /* handwritten instruction */
    /* 10F814 0020E894 00000000 */  nop
    /* 10F818 0020E898 2000E980 */  lb         $9, 0x20($7)
    /* 10F81C 0020E89C 00000000 */  nop
    /* 10F820 0020E8A0 3400EA94 */  lhu        $10, 0x34($7)
    /* 10F824 0020E8A4 00000000 */  nop
    /* 10F828 0020E8A8 F3FF2005 */  bltz       $9, func_0020E878
    /* 10F82C 0020E8AC 2200E990 */   lbu       $9, 0x22($7)
    /* 10F830 0020E8B0 00104A31 */  andi       $10, $10, 0x1000
    /* 10F834 0020E8B4 00000000 */  nop
    /* 10F838 0020E8B8 C0480900 */  sll        $9, $9, 3
    /* 10F83C 0020E8BC 01004A29 */  slti       $10, $10, 0x1
    /* 10F840 0020E8C0 20482F01 */  add        $9, $9, $15 /* handwritten instruction */
    /* 10F844 0020E8C4 01004A29 */  slti       $10, $10, 0x1
    /* 10F848 0020E8C8 0400288D */  lw         $8, 0x4($9)
    /* 10F84C 0020E8CC 40500A00 */  sll        $10, $10, 1
    /* 10F850 0020E8D0 20C00A03 */  add        $24, $24, $10 /* handwritten instruction */
    /* 10F854 0020E8D4 00000000 */  nop
    /* 10F858 0020E8D8 03000011 */  beqz       $8, .L0020E8E8
    /* 10F85C 0020E8DC 040027AD */   sw        $7, 0x4($9)
    /* 10F860 0020E8E0 1E3A0808 */  j          func_0020E878
    /* 10F864 0020E8E4 280007AD */   sw        $7, 0x28($8)
.align 2
  .L0020E8E8:
    /* 10F868 0020E8E8 1E3A0808 */  j          func_0020E878
    /* 10F86C 0020E8EC 000027AD */   sw        $7, 0x0($9)
.align 2
  .L0020E8F0:
    /* 10F870 0020E8F0 0008E121 */  addi       $1, $15, 0x800 /* handwritten instruction */
    /* 10F874 0020E8F4 1C00023C */  lui        $2, %hi(D_001C7C80)
    /* 10F878 0020E8F8 807C4224 */  addiu      $2, $2, %lo(D_001C7C80)
    /* 10F87C 0020E8FC 00000000 */  nop
    /* 10F880 0020E900 09003810 */  beq        $1, $24, .L0020E928
    /* 10F884 0020E904 00002394 */   lhu       $3, 0x0($1)
.align 2
  .L0020E908:
    /* 10F888 0020E908 00220300 */  sll        $4, $3, 8
    /* 10F88C 0020E90C 02002120 */  addi       $1, $1, 0x2 /* handwritten instruction */
    /* 10F890 0020E910 20209900 */  add        $4, $4, $25 /* handwritten instruction */
    /* 10F894 0020E914 00002394 */  lhu        $3, 0x0($1)
    /* 10F898 0020E918 000044AC */  sw         $4, 0x0($2)
    /* 10F89C 0020E91C 04004220 */  addi       $2, $2, 0x4 /* handwritten instruction */
    /* 10F8A0 0020E920 F9FF3814 */  bne        $1, $24, .L0020E908
    /* 10F8A4 0020E924 00000000 */   nop
.align 2
  .L0020E928:
    /* 10F8A8 0020E928 000040AC */  sw         $0, 0x0($2)
    /* 10F8AC 0020E92C 00000000 */  nop
    /* 10F8B0 0020E930 00000120 */  addi       $1, $0, 0x0 /* handwritten instruction */
    /* 10F8B4 0020E934 00000220 */  addi       $2, $0, 0x0 /* handwritten instruction */
    /* 10F8B8 0020E938 0000E321 */  addi       $3, $15, 0x0 /* handwritten instruction */
    /* 10F8BC 0020E93C 0007E421 */  addi       $4, $15, 0x700 /* handwritten instruction */
.align 2
  alabel func_0020E940
    /* 10F8C0 0020E940 11006410 */  beq        $3, $4, .L0020E988
    /* 10F8C4 0020E944 0000658C */   lw        $5, 0x0($3)
    /* 10F8C8 0020E948 00000000 */  nop
    /* 10F8CC 0020E94C 00000000 */  nop
    /* 10F8D0 0020E950 00000000 */  nop
    /* 10F8D4 0020E954 00000000 */  nop
    /* 10F8D8 0020E958 F9FFA010 */  beqz       $5, func_0020E940
    /* 10F8DC 0020E95C 08006320 */   addi      $3, $3, 0x8 /* handwritten instruction */
    /* 10F8E0 0020E960 05002010 */  beqz       $1, .L0020E978
    /* 10F8E4 0020E964 FCFF668C */   lw        $6, -0x4($3)
    /* 10F8E8 0020E968 280045AC */  sw         $5, 0x28($2)
    /* 10F8EC 0020E96C 0000C220 */  addi       $2, $6, 0x0 /* handwritten instruction */
    /* 10F8F0 0020E970 503A0808 */  j          func_0020E940
    /* 10F8F4 0020E974 2800C0AC */   sw        $0, 0x28($6)
.align 2
  .L0020E978:
    /* 10F8F8 0020E978 0000A120 */  addi       $1, $5, 0x0 /* handwritten instruction */
    /* 10F8FC 0020E97C 0000C220 */  addi       $2, $6, 0x0 /* handwritten instruction */
    /* 10F900 0020E980 503A0808 */  j          func_0020E940
    /* 10F904 0020E984 2800C0AC */   sw        $0, 0x28($6)
.align 2
  .L0020E988:
    /* 10F908 0020E988 0800E003 */  jr         $31
    /* 10F90C 0020E98C 00002220 */   addi      $2, $1, 0x0 /* handwritten instruction */
endlabel func_0020E838
