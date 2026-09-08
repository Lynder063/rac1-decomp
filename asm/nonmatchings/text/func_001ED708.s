.align 3
nonmatching func_001ED708, 0x10C

glabel func_001ED708
    /* EE688 001ED708 B0FFBD27 */  addiu      $sp, $sp, -0x50
    /* EE68C 001ED70C 1800023C */  lui        $v0, %hi(D_001871C0)
    /* EE690 001ED710 2000B17F */  sq         $s1, 0x20($sp)
    /* EE694 001ED714 1000B07F */  sq         $s0, 0x10($sp)
    /* EE698 001ED718 2D88A000 */  daddu      $s1, $a1, $zero
    /* EE69C 001ED71C C071428C */  lw         $v0, %lo(D_001871C0)($v0)
    /* EE6A0 001ED720 2D808000 */  daddu      $s0, $a0, $zero
    /* EE6A4 001ED724 3000BF7F */  sq         $ra, 0x30($sp)
    /* EE6A8 001ED728 08004010 */  beqz       $v0, .L001ED74C
    /* EE6AC 001ED72C 4000B4E7 */   swc1      $f20, 0x40($sp)
    /* EE6B0 001ED730 86004384 */  lh         $v1, 0x86($v0)
    /* EE6B4 001ED734 06000224 */  addiu      $v0, $zero, 0x6
    /* EE6B8 001ED738 05006254 */  bnel       $v1, $v0, .L001ED750
    /* EE6BC 001ED73C 0800038E */   lw        $v1, 0x8($s0)
    /* EE6C0 001ED740 0C0000AE */  sw         $zero, 0xC($s0)
    /* EE6C4 001ED744 2D000010 */  b          .L001ED7FC
    /* EE6C8 001ED748 080000AE */   sw        $zero, 0x8($s0)
.align 2
  .L001ED74C:
    /* EE6CC 001ED74C 0800038E */  lw         $v1, 0x8($s0)
.align 2
  .L001ED750:
    /* EE6D0 001ED750 2A006050 */  beql       $v1, $zero, .L001ED7FC
    /* EE6D4 001ED754 0C0000AE */   sw        $zero, 0xC($s0)
    /* EE6D8 001ED758 0C00028E */  lw         $v0, 0xC($s0)
    /* EE6DC 001ED75C 2A104300 */  slt        $v0, $v0, $v1
    /* EE6E0 001ED760 01004054 */  bnel       $v0, $zero, .L001ED768
    /* EE6E4 001ED764 0C0003AE */   sw        $v1, 0xC($s0)
.align 2
  .L001ED768:
    /* EE6E8 001ED768 42E6070C */  jal        func_001F9908
    /* EE6EC 001ED76C 08000426 */   addiu     $a0, $s0, 0x8
    /* EE6F0 001ED770 22EA070C */  jal        func_001FA888
    /* EE6F4 001ED774 0800048E */   lw        $a0, 0x8($s0)
    /* EE6F8 001ED778 0C00048E */  lw         $a0, 0xC($s0)
    /* EE6FC 001ED77C 22EA070C */  jal        func_001FA888
    /* EE700 001ED780 06050046 */   mov.s     $f20, $f0
    /* EE704 001ED784 0800048E */  lw         $a0, 0x8($s0)
    /* EE708 001ED788 22EA070C */  jal        func_001FA888
    /* EE70C 001ED78C 03A50046 */   div.s     $f20, $f20, $f0
    /* EE710 001ED790 F6E9070C */  jal        func_001FA7D8
    /* EE714 001ED794 00030046 */   add.s     $f12, $f0, $f0
    /* EE718 001ED798 E4E7070C */  jal        func_001F9F90
    /* EE71C 001ED79C 06030046 */   mov.s     $f12, $f0
    /* EE720 001ED7A0 000001C6 */  lwc1       $f1, 0x0($s0)
    /* EE724 001ED7A4 42080046 */  mul.s      $f1, $f1, $f0
    /* EE728 001ED7A8 42081446 */  mul.s      $f1, $f1, $f20
    /* EE72C 001ED7AC 020B1446 */  mul.s      $f12, $f1, $f20
    /* EE730 001ED7B0 07002016 */  bnez       $s1, .L001ED7D0
    /* EE734 001ED7B4 04000CE6 */   swc1      $f12, 0x4($s0)
    /* EE738 001ED7B8 1800053C */  lui        $a1, %hi(D_001873B0)
    /* EE73C 001ED7BC 2D20A003 */  daddu      $a0, $sp, $zero
    /* EE740 001ED7C0 70E7070C */  jal        func_001F9DC0
    /* EE744 001ED7C4 B073A524 */   addiu     $a1, $a1, %lo(D_001873B0)
    /* EE748 001ED7C8 06000010 */  b          .L001ED7E4
    /* EE74C 001ED7CC 1800043C */   lui       $a0, %hi(D_00187180)
.align 2
  .L001ED7D0:
    /* EE750 001ED7D0 1800053C */  lui        $a1, %hi(D_00187390)
    /* EE754 001ED7D4 2D20A003 */  daddu      $a0, $sp, $zero
    /* EE758 001ED7D8 70E7070C */  jal        func_001F9DC0
    /* EE75C 001ED7DC 9073A524 */   addiu     $a1, $a1, %lo(D_00187390)
    /* EE760 001ED7E0 1800043C */  lui        $a0, %hi(D_00187180)
.align 2
  .L001ED7E4:
    /* EE764 001ED7E4 2D30A003 */  daddu      $a2, $sp, $zero
    /* EE768 001ED7E8 80718424 */  addiu      $a0, $a0, %lo(D_00187180)
    /* EE76C 001ED7EC F6E6070C */  jal        func_001F9BD8
    /* EE770 001ED7F0 2D288000 */   daddu     $a1, $a0, $zero
    /* EE774 001ED7F4 02000010 */  b          .L001ED800
    /* EE778 001ED7F8 3000BF7B */   lq        $ra, 0x30($sp)
.align 2
  .L001ED7FC:
    /* EE77C 001ED7FC 3000BF7B */  lq         $ra, 0x30($sp)
.align 2
  .L001ED800:
    /* EE780 001ED800 2000B17B */  lq         $s1, 0x20($sp)
    /* EE784 001ED804 1000B07B */  lq         $s0, 0x10($sp)
    /* EE788 001ED808 4000B4C7 */  lwc1       $f20, 0x40($sp)
    /* EE78C 001ED80C 0800E003 */  jr         $ra
    /* EE790 001ED810 5000BD27 */   addiu     $sp, $sp, 0x50
endlabel func_001ED708
    /* EE794 001ED814 00000000 */  nop
