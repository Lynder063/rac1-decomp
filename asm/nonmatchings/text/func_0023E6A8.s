.align 3
nonmatching func_0023E6A8, 0x64

glabel func_0023E6A8
    /* 13F628 0023E6A8 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 13F62C 0023E6AC 0000B07F */  sq         $s0, 0x0($sp)
    /* 13F630 0023E6B0 1000BF7F */  sq         $ra, 0x10($sp)
    /* 13F634 0023E6B4 A6F9080C */  jal        func_0023E698
    /* 13F638 0023E6B8 2D808000 */   daddu     $s0, $a0, $zero
    /* 13F63C 0023E6BC 0F004054 */  bnel       $v0, $zero, .L0023E6FC
    /* 13F640 0023E6C0 2D100000 */   daddu     $v0, $zero, $zero
    /* 13F644 0023E6C4 0800048E */  lw         $a0, 0x8($s0)
    /* 13F648 0023E6C8 0100063C */  lui        $a2, (0x138C0 >> 16)
    /* 13F64C 0023E6CC 0C00028E */  lw         $v0, 0xC($s0)
    /* 13F650 0023E6D0 C038C634 */  ori        $a2, $a2, (0x138C0 & 0xFFFF)
    /* 13F654 0023E6D4 1000038E */  lw         $v1, 0x10($s0)
    /* 13F658 0023E6D8 23208200 */  subu       $a0, $a0, $v0
    /* 13F65C 0023E6DC 21208300 */  addu       $a0, $a0, $v1
    /* 13F660 0023E6E0 01006050 */  beql       $v1, $zero, .L0023E6E8
    /* 13F664 0023E6E4 CD010000 */   break     0, 7
.align 2
  .L0023E6E8:
    /* 13F668 0023E6E8 1A008300 */  div        $zero, $a0, $v1
    /* 13F66C 0023E6EC 0400058E */  lw         $a1, 0x4($s0)
    /* 13F670 0023E6F0 10100000 */  mfhi       $v0
    /* 13F674 0023E6F4 18104600 */  mult       $v0, $v0, $a2
    /* 13F678 0023E6F8 2110A200 */  addu       $v0, $a1, $v0
.align 2
  .L0023E6FC:
    /* 13F67C 0023E6FC 1000BF7B */  lq         $ra, 0x10($sp)
    /* 13F680 0023E700 0000B07B */  lq         $s0, 0x0($sp)
    /* 13F684 0023E704 0800E003 */  jr         $ra
    /* 13F688 0023E708 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_0023E6A8
    /* 13F68C 0023E70C 00000000 */  nop
