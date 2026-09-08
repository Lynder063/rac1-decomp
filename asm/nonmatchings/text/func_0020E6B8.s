.align 3
/* Handwritten function */
nonmatching func_0020E6B8, 0x180

glabel func_0020E6B8
    /* 10F638 0020E6B8 00700F3C */  lui        $t7, (0x70000CF0 >> 16)
    /* 10F63C 0020E6BC 1800013C */  lui        $at, %hi(D_00187040)
    /* 10F640 0020E6C0 40702124 */  addiu      $at, $at, %lo(D_00187040)
    /* 10F644 0020E6C4 FFFF1920 */  addi       $t9, $zero, -0x1 /* handwritten instruction */
    /* 10F648 0020E6C8 400121D8 */  lqc2       $vf1, 0x140($at)
    /* 10F64C 0020E6CC 0008F821 */  addi       $t8, $t7, (0x70000800 & 0xFFFF) /* handwritten instruction */
    /* 10F650 0020E6D0 0301C04B */  vaddw.xyz  $vf4, $vf0, $vf0w
    /* 10F654 0020E6D4 00000000 */  nop
    /* 10F658 0020E6D8 0000E121 */  addi       $at, $t7, (0x70000000 & 0xFFFF) /* handwritten instruction */
    /* 10F65C 0020E6DC 0007E221 */  addi       $v0, $t7, (0x70000700 & 0xFFFF) /* handwritten instruction */
.align 2
  .L0020E6E0:
    /* 10F660 0020E6E0 0000207C */  sq         $zero, 0x0($at)
    /* 10F664 0020E6E4 1000207C */  sq         $zero, 0x10($at)
    /* 10F668 0020E6E8 2000207C */  sq         $zero, 0x20($at)
    /* 10F66C 0020E6EC 3000207C */  sq         $zero, 0x30($at)
    /* 10F670 0020E6F0 40002120 */  addi       $at, $at, 0x40 /* handwritten instruction */
    /* 10F674 0020E6F4 00000000 */  nop
    /* 10F678 0020E6F8 F9FF2214 */  bne        $at, $v0, .L0020E6E0
    /* 10F67C 0020E6FC 00000000 */   nop
    /* 10F680 0020E700 0008E121 */  addi       $at, $t7, (0x70000800 & 0xFFFF) /* handwritten instruction */
    /* 10F684 0020E704 000CE221 */  addi       $v0, $t7, (0x70000C00 & 0xFFFF) /* handwritten instruction */
.align 2
  .L0020E708:
    /* 10F688 0020E708 0000207C */  sq         $zero, 0x0($at)
    /* 10F68C 0020E70C 1000207C */  sq         $zero, 0x10($at)
    /* 10F690 0020E710 2000207C */  sq         $zero, 0x20($at)
    /* 10F694 0020E714 3000207C */  sq         $zero, 0x30($at)
    /* 10F698 0020E718 40002120 */  addi       $at, $at, 0x40 /* handwritten instruction */
    /* 10F69C 0020E71C 00000000 */  nop
    /* 10F6A0 0020E720 F9FF2214 */  bne        $at, $v0, .L0020E708
    /* 10F6A4 0020E724 00000000 */   nop
    /* 10F6A8 0020E728 800CE07D */  sq         $zero, (0x70000C80 & 0xFFFF)($t7)
    /* 10F6AC 0020E72C 900CE07D */  sq         $zero, (0x70000C90 & 0xFFFF)($t7)
    /* 10F6B0 0020E730 A00CE07D */  sq         $zero, (0x70000CA0 & 0xFFFF)($t7)
    /* 10F6B4 0020E734 B00CE07D */  sq         $zero, (0x70000CB0 & 0xFFFF)($t7)
    /* 10F6B8 0020E738 C00CE07D */  sq         $zero, (0x70000CC0 & 0xFFFF)($t7)
    /* 10F6BC 0020E73C D00CE07D */  sq         $zero, (0x70000CD0 & 0xFFFF)($t7)
    /* 10F6C0 0020E740 E00CE07D */  sq         $zero, (0x70000CE0 & 0xFFFF)($t7)
    /* 10F6C4 0020E744 F00CE07D */  sq         $zero, (0x70000CF0 & 0xFFFF)($t7)
    /* 10F6C8 0020E748 1893818F */  lw         $at, -0x6CE8($gp)
    /* 10F6CC 0020E74C 00FF2120 */  addi       $at, $at, -0x100 /* handwritten instruction */
.align 2
  alabel func_0020E750
    /* 10F6D0 0020E750 20012280 */  lb         $v0, 0x120($at)
    /* 10F6D4 0020E754 00012120 */  addi       $at, $at, 0x100 /* handwritten instruction */
    /* 10F6D8 0020E758 000120CC */  pref       0x00, 0x100($at)
    /* 10F6DC 0020E75C 01003923 */  addi       $t9, $t9, 0x1 /* handwritten instruction */
    /* 10F6E0 0020E760 05004104 */  bgez       $v0, .L0020E778
    /* 10F6E4 0020E764 FFFF0320 */   addi      $v1, $zero, -0x1 /* handwritten instruction */
    /* 10F6E8 0020E768 F9FF4314 */  bne        $v0, $v1, func_0020E750
    /* 10F6EC 0020E76C 00000000 */   nop
    /* 10F6F0 0020E770 0E3A0808 */  j          func_0020E838
    /* 10F6F4 0020E774 00000000 */   nop
.align 2
  .L0020E778:
    /* 10F6F8 0020E778 100022D8 */  lqc2       $vf2, 0x10($at)
    /* 10F6FC 0020E77C 00000000 */  nop
    /* 10F700 0020E780 30002C90 */  lbu        $t4, 0x30($at)
    /* 10F704 0020E784 00000000 */  nop
    /* 10F708 0020E788 34002A94 */  lhu        $t2, 0x34($at)
    /* 10F70C 0020E78C AC10C14B */  vsub.xyz   $vf2, $vf2, $vf1
    /* 10F710 0020E790 0018AC48 */  qmtc2.ni   $t4, $vf3
    /* 10F714 0020E794 FF000320 */  addi       $v1, $zero, 0xFF /* handwritten instruction */
    /* 10F718 0020E798 31002B90 */  lbu        $t3, 0x31($at)
    /* 10F71C 0020E79C 02004231 */  andi       $v0, $t2, 0x2
    /* 10F720 0020E7A0 EBFF401C */  bgtz       $v0, func_0020E750
    /* 10F724 0020E7A4 3C19034B */   vitof0.x  $vf3, $vf3
    /* 10F728 0020E7A8 0D00601D */  bgtz       $t3, .L0020E7E0
    /* 10F72C 0020E7AC AA10C24B */   vmul.xyz  $vf2, $vf2, $vf2
    /* 10F730 0020E7B0 0B008311 */  beq        $t4, $v1, .L0020E7E0
    /* 10F734 0020E7B4 00000000 */   nop
    /* 10F738 0020E7B8 BE1A034B */  .word      0x4B031ABE    # vmula.x    ACC, $vf3, $vf3
    /* 10F73C 0020E7BC 00000000 */  nop
    /* 10F740 0020E7C0 FC20024B */  .word      0x4B0220FC    # vmsubax.x  ACC, $vf4, $vf2x
    /* 10F744 0020E7C4 FD20024B */  .word      0x4B0220FD    # vmsubay.x  ACC, $vf4, $vf2y
    /* 10F748 0020E7C8 8E20024B */  vmsubz.x   $vf2, $vf4, $vf2z
    /* 10F74C 0020E7CC 00102248 */  qmfc2.ni   $v0, $vf2
    /* 10F750 0020E7D0 3C100200 */  dsll32     $v0, $v0, 0
    /* 10F754 0020E7D4 00000000 */  nop
    /* 10F758 0020E7D8 DDFF4004 */  bltz       $v0, func_0020E750
    /* 10F75C 0020E7DC 00000000 */   nop
.align 2
  .L0020E7E0:
    /* 10F760 0020E7E0 21002D80 */  lb         $t5, 0x21($at)
    /* 10F764 0020E7E4 00104431 */  andi       $a0, $t2, 0x1000
    /* 10F768 0020E7E8 22002E90 */  lbu        $t6, 0x22($at)
    /* 10F76C 0020E7EC 01008428 */  slti       $a0, $a0, 0x1
    /* 10F770 0020E7F0 2010AF01 */  add        $v0, $t5, $t7 /* handwritten instruction */
    /* 10F774 0020E7F4 01000320 */  addi       $v1, $zero, 0x1 /* handwritten instruction */
    /* 10F778 0020E7F8 D5FFA105 */  bgez       $t5, func_0020E750
    /* 10F77C 0020E7FC 800C43A0 */   sb        $v1, 0xC80($v0)
    /* 10F780 0020E800 C0100E00 */  sll        $v0, $t6, 3
    /* 10F784 0020E804 000019A7 */  sh         $t9, 0x0($t8)
    /* 10F788 0020E808 20104F00 */  add        $v0, $v0, $t7 /* handwritten instruction */
    /* 10F78C 0020E80C 01008428 */  slti       $a0, $a0, 0x1
    /* 10F790 0020E810 0400438C */  lw         $v1, 0x4($v0)
    /* 10F794 0020E814 40200400 */  sll        $a0, $a0, 1
    /* 10F798 0020E818 20C00403 */  add        $t8, $t8, $a0 /* handwritten instruction */
    /* 10F79C 0020E81C 00000000 */  nop
    /* 10F7A0 0020E820 03006010 */  beqz       $v1, .L0020E830
    /* 10F7A4 0020E824 040041AC */   sw        $at, 0x4($v0)
    /* 10F7A8 0020E828 D4390808 */  j          func_0020E750
    /* 10F7AC 0020E82C 280061AC */   sw        $at, 0x28($v1)
.align 2
  .L0020E830:
    /* 10F7B0 0020E830 D4390808 */  j          func_0020E750
    /* 10F7B4 0020E834 000041AC */   sw        $at, 0x0($v0)
endlabel func_0020E6B8
