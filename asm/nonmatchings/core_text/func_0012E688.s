.align 3
nonmatching func_0012E688, 0x194

glabel func_0012E688
    /* 2F608 0012E688 90FFBD27 */  addiu      $sp, $sp, -0x70
    /* 2F60C 0012E68C 1000B07F */  sq         $s0, 0x10($sp)
    /* 2F610 0012E690 5000B47F */  sq         $s4, 0x50($sp)
    /* 2F614 0012E694 2D80A000 */  daddu      $s0, $a1, $zero
    /* 2F618 0012E698 4000B37F */  sq         $s3, 0x40($sp)
    /* 2F61C 0012E69C 2DA08000 */  daddu      $s4, $a0, $zero
    /* 2F620 0012E6A0 3000B27F */  sq         $s2, 0x30($sp)
    /* 2F624 0012E6A4 2D280000 */  daddu      $a1, $zero, $zero
    /* 2F628 0012E6A8 6000BF7F */  sq         $ra, 0x60($sp)
    /* 2F62C 0012E6AC 1300133C */  lui        $s3, %hi(D_00133200)
    /* 2F630 0012E6B0 2000B17F */  sq         $s1, 0x20($sp)
    /* 2F634 0012E6B4 1200001A */  blez       $s0, .L0012E700
    /* 2F638 0012E6B8 1600123C */   lui       $s2, %hi(D_0015ECC0)
    /* 2F63C 0012E6BC 1300023C */  lui        $v0, %hi(D_00133240)
    /* 2F640 0012E6C0 40324724 */  addiu      $a3, $v0, %lo(D_00133240)
    /* 2F644 0012E6C4 00000000 */  nop
.align 2
  .L0012E6C8:
    /* 2F648 0012E6C8 2110C500 */  addu       $v0, $a2, $a1
    /* 2F64C 0012E6CC 2120A700 */  addu       $a0, $a1, $a3
    /* 2F650 0012E6D0 00004390 */  lbu        $v1, 0x0($v0)
    /* 2F654 0012E6D4 0100A524 */  addiu      $a1, $a1, 0x1
    /* 2F658 0012E6D8 2A10B000 */  slt        $v0, $a1, $s0
    /* 2F65C 0012E6DC FAFF4014 */  bnez       $v0, .L0012E6C8
    /* 2F660 0012E6E0 000083A0 */   sb        $v1, 0x0($a0)
    /* 2F664 0012E6E4 07000010 */  b          .L0012E704
    /* 2F668 0012E6E8 8080828F */   lw        $v0, -0x7F80($gp)
    /* 2F66C 0012E6EC 00000000 */  nop
.align 2
  .L0012E6F0:
    /* 2F670 0012E6F0 70B7040C */  jal        func_0012DDC0
    /* 2F674 0012E6F4 00000000 */   nop
    /* 2F678 0012E6F8 6063040C */  jal        func_00118D80
    /* 2F67C 0012E6FC 2D200000 */   daddu     $a0, $zero, $zero
.align 2
  .L0012E700:
    /* 2F680 0012E700 8080828F */  lw         $v0, -0x7F80($gp)
.align 2
  .L0012E704:
    /* 2F684 0012E704 FAFF4014 */  bnez       $v0, .L0012E6F0
    /* 2F688 0012E708 00326426 */   addiu     $a0, $s3, %lo(D_00133200)
    /* 2F68C 0012E70C 0EB8040C */  jal        func_0012E038
    /* 2F690 0012E710 01000524 */   addiu     $a1, $zero, 0x1
    /* 2F694 0012E714 08000010 */  b          .L0012E738
    /* 2F698 0012E718 1500113C */   lui       $s1, %hi(D_00153E20)
    /* 2F69C 0012E71C 00000000 */  nop
.align 2
  .L0012E720:
    /* 2F6A0 0012E720 1E58040C */  jal        func_00116078
    /* 2F6A4 0012E724 203E2426 */   addiu     $a0, $s1, %lo(D_00153E20)
    /* 2F6A8 0012E728 70B7040C */  jal        func_0012DDC0
    /* 2F6AC 0012E72C 00000000 */   nop
    /* 2F6B0 0012E730 6063040C */  jal        func_00118D80
    /* 2F6B4 0012E734 2D200000 */   daddu     $a0, $zero, $zero
.align 2
  .L0012E738:
    /* 2F6B8 0012E738 AE6D040C */  jal        func_0011B6B8
    /* 2F6BC 0012E73C C0EC4426 */   addiu     $a0, $s2, %lo(D_0015ECC0)
    /* 2F6C0 0012E740 F7FF4014 */  bnez       $v0, .L0012E720
    /* 2F6C4 0012E744 00000000 */   nop
    /* 2F6C8 0012E748 0D000012 */  beqz       $s0, .L0012E780
    /* 2F6CC 0012E74C 1300073C */   lui       $a3, %hi(D_00133240)
    /* 2F6D0 0012E750 C0EC4426 */  addiu      $a0, $s2, %lo(D_0015ECC0)
    /* 2F6D4 0012E754 2D288002 */  daddu      $a1, $s4, $zero
    /* 2F6D8 0012E758 4032E724 */  addiu      $a3, $a3, %lo(D_00133240)
    /* 2F6DC 0012E75C 2D400002 */  daddu      $t0, $s0, $zero
    /* 2F6E0 0012E760 0000A0AF */  sw         $zero, 0x0($sp)
    /* 2F6E4 0012E764 01000624 */  addiu      $a2, $zero, 0x1
    /* 2F6E8 0012E768 00326926 */  addiu      $t1, $s3, %lo(D_00133200)
    /* 2F6EC 0012E76C 0C000A24 */  addiu      $t2, $zero, 0xC
    /* 2F6F0 0012E770 326D040C */  jal        func_0011B4C8
    /* 2F6F4 0012E774 2D580000 */   daddu     $t3, $zero, $zero
    /* 2F6F8 0012E778 0B000010 */  b          .L0012E7A8
    /* 2F6FC 0012E77C 00000000 */   nop
.align 2
  .L0012E780:
    /* 2F700 0012E780 C0EC4426 */  addiu      $a0, $s2, %lo(D_0015ECC0)
    /* 2F704 0012E784 2D288002 */  daddu      $a1, $s4, $zero
    /* 2F708 0012E788 0000A0AF */  sw         $zero, 0x0($sp)
    /* 2F70C 0012E78C 01000624 */  addiu      $a2, $zero, 0x1
    /* 2F710 0012E790 2D380000 */  daddu      $a3, $zero, $zero
    /* 2F714 0012E794 2D400000 */  daddu      $t0, $zero, $zero
    /* 2F718 0012E798 00326926 */  addiu      $t1, $s3, %lo(D_00133200)
    /* 2F71C 0012E79C 0C000A24 */  addiu      $t2, $zero, 0xC
    /* 2F720 0012E7A0 326D040C */  jal        func_0011B4C8
    /* 2F724 0012E7A4 2D580000 */   daddu     $t3, $zero, $zero
.align 2
  .L0012E7A8:
    /* 2F728 0012E7A8 ECB7040C */  jal        func_0012DFB0
    /* 2F72C 0012E7AC 00000000 */   nop
    /* 2F730 0012E7B0 00000000 */  nop
    /* 2F734 0012E7B4 00000000 */  nop
    /* 2F738 0012E7B8 00000000 */  nop
    /* 2F73C 0012E7BC FAFF4010 */  beqz       $v0, .L0012E7A8
    /* 2F740 0012E7C0 00326326 */   addiu     $v1, $s3, %lo(D_00133200)
    /* 2F744 0012E7C4 C080828F */  lw         $v0, -0x7F40($gp)
    /* 2F748 0012E7C8 0400708C */  lw         $s0, 0x4($v1)
    /* 2F74C 0012E7CC A0808327 */  addiu      $v1, $gp, -0x7F60
    /* 2F750 0012E7D0 80100200 */  sll        $v0, $v0, 2
    /* 2F754 0012E7D4 21104300 */  addu       $v0, $v0, $v1
    /* 2F758 0012E7D8 0000448C */  lw         $a0, 0x0($v0)
    /* 2F75C 0012E7DC 0000838C */  lw         $v1, 0x0($a0)
    /* 2F760 0012E7E0 05006010 */  beqz       $v1, .L0012E7F8
    /* 2F764 0012E7E4 C480828F */   lw        $v0, -0x7F3C($gp)
    /* 2F768 0012E7E8 04004014 */  bnez       $v0, .L0012E7FC
    /* 2F76C 0012E7EC 2D100002 */   daddu     $v0, $s0, $zero
    /* 2F770 0012E7F0 C6BA040C */  jal        func_0012EB18
    /* 2F774 0012E7F4 00000000 */   nop
.align 2
  .L0012E7F8:
    /* 2F778 0012E7F8 2D100002 */  daddu      $v0, $s0, $zero
.align 2
  .L0012E7FC:
    /* 2F77C 0012E7FC 6000BF7B */  lq         $ra, 0x60($sp)
    /* 2F780 0012E800 5000B47B */  lq         $s4, 0x50($sp)
    /* 2F784 0012E804 4000B37B */  lq         $s3, 0x40($sp)
    /* 2F788 0012E808 3000B27B */  lq         $s2, 0x30($sp)
    /* 2F78C 0012E80C 2000B17B */  lq         $s1, 0x20($sp)
    /* 2F790 0012E810 1000B07B */  lq         $s0, 0x10($sp)
    /* 2F794 0012E814 0800E003 */  jr         $ra
    /* 2F798 0012E818 7000BD27 */   addiu     $sp, $sp, 0x70
endlabel func_0012E688
    /* 2F79C 0012E81C 00000000 */  nop
