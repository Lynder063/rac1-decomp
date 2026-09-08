.align 3
/* Handwritten function */
nonmatching func_0012A718, 0xCC

glabel func_0012A718
    /* 2B698 0012A718 0010023C */  lui        $v0, (0x1000E010 >> 16)
    /* 2B69C 0012A71C 10000324 */  addiu      $v1, $zero, 0x10
    /* 2B6A0 0012A720 10E04234 */  ori        $v0, $v0, (0x1000E010 & 0xFFFF)
    /* 2B6A4 0012A724 2D30A000 */  daddu      $a2, $a1, $zero
    /* 2B6A8 0012A728 000043AC */  sw         $v1, 0x0($v0)
    /* 2B6AC 0012A72C 0000C28C */  lw         $v0, 0x0($a2)
    /* 2B6B0 0012A730 03004014 */  bnez       $v0, .L0012A740
    /* 2B6B4 0012A734 FFFF0734 */   ori       $a3, $zero, 0xFFFF
    /* 2B6B8 0012A738 0800E003 */  jr         $ra
    /* 2B6BC 0012A73C 01000224 */   addiu     $v0, $zero, 0x1
.align 2
  .L0012A740:
    /* 2B6C0 0012A740 2B10E200 */  sltu       $v0, $a3, $v0
    /* 2B6C4 0012A744 17004010 */  beqz       $v0, .L0012A7A4
    /* 2B6C8 0012A748 0010033C */   lui       $v1, (0x1000B420 >> 16)
    /* 2B6CC 0012A74C 0400C48C */  lw         $a0, 0x4($a2)
    /* 2B6D0 0012A750 0010023C */  lui        $v0, (0x1000B410 >> 16)
    /* 2B6D4 0012A754 10B44234 */  ori        $v0, $v0, (0x1000B410 & 0xFFFF)
    /* 2B6D8 0012A758 000044AC */  sw         $a0, 0x0($v0)
    /* 2B6DC 0012A75C 20B46334 */  ori        $v1, $v1, (0x1000B420 & 0xFFFF)
    /* 2B6E0 0012A760 000067AC */  sw         $a3, 0x0($v1)
    /* 2B6E4 0012A764 0010023C */  lui        $v0, (0x1000B400 >> 16)
    /* 2B6E8 0012A768 00B44234 */  ori        $v0, $v0, (0x1000B400 & 0xFFFF)
    /* 2B6EC 0012A76C 01010324 */  addiu      $v1, $zero, 0x101
    /* 2B6F0 0012A770 000043AC */  sw         $v1, 0x0($v0)
    /* 2B6F4 0012A774 0F00053C */  lui        $a1, (0xFFFF0 >> 16)
    /* 2B6F8 0012A778 F0FFA534 */  ori        $a1, $a1, (0xFFFF0 & 0xFFFF)
    /* 2B6FC 0012A77C FF0F043C */  lui        $a0, (0xFFFFFFF >> 16)
    /* 2B700 0012A780 0400C38C */  lw         $v1, 0x4($a2)
    /* 2B704 0012A784 FFFF8434 */  ori        $a0, $a0, (0xFFFFFFF & 0xFFFF)
    /* 2B708 0012A788 0000C28C */  lw         $v0, 0x0($a2)
    /* 2B70C 0012A78C 21186500 */  addu       $v1, $v1, $a1
    /* 2B710 0012A790 24186400 */  and        $v1, $v1, $a0
    /* 2B714 0012A794 23104700 */  subu       $v0, $v0, $a3
    /* 2B718 0012A798 0000C2AC */  sw         $v0, 0x0($a2)
    /* 2B71C 0012A79C 0D000010 */  b          .L0012A7D4
    /* 2B720 0012A7A0 0400C3AC */   sw        $v1, 0x4($a2)
.align 2
  .L0012A7A4:
    /* 2B724 0012A7A4 0400C48C */  lw         $a0, 0x4($a2)
    /* 2B728 0012A7A8 0010023C */  lui        $v0, (0x1000B410 >> 16)
    /* 2B72C 0012A7AC 10B44234 */  ori        $v0, $v0, (0x1000B410 & 0xFFFF)
    /* 2B730 0012A7B0 000044AC */  sw         $a0, 0x0($v0)
    /* 2B734 0012A7B4 20B46334 */  ori        $v1, $v1, (0x1000B420 & 0xFFFF)
    /* 2B738 0012A7B8 0010023C */  lui        $v0, (0x1000B400 >> 16)
    /* 2B73C 0012A7BC 01010524 */  addiu      $a1, $zero, 0x101
    /* 2B740 0012A7C0 0000C48C */  lw         $a0, 0x0($a2)
    /* 2B744 0012A7C4 00B44234 */  ori        $v0, $v0, (0x1000B400 & 0xFFFF)
    /* 2B748 0012A7C8 000064AC */  sw         $a0, 0x0($v1)
    /* 2B74C 0012A7CC 000045AC */  sw         $a1, 0x0($v0)
    /* 2B750 0012A7D0 0000C0AC */  sw         $zero, 0x0($a2)
.align 2
  .L0012A7D4:
    /* 2B754 0012A7D4 0F000000 */  sync
    /* 2B758 0012A7D8 38000042 */  ei /* handwritten instruction */
    /* 2B75C 0012A7DC 0800E003 */  jr         $ra
    /* 2B760 0012A7E0 2D100000 */   daddu     $v0, $zero, $zero
endlabel func_0012A718
    /* 2B764 0012A7E4 00000000 */  nop
