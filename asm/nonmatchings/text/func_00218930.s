.align 3
/* Handwritten function */
nonmatching func_00218930, 0x148

glabel func_00218930
    /* 1198B0 00218930 B094988F */  lw         $t8, -0x6B50($gp)
    /* 1198B4 00218934 1D000F3C */  lui        $t7, %hi(D_001CDB00)
    /* 1198B8 00218938 00DBEF25 */  addiu      $t7, $t7, %lo(D_001CDB00)
    /* 1198BC 0021893C B494998F */  lw         $t9, -0x6B4C($gp)
    /* 1198C0 00218940 00F80123 */  addi       $at, $t8, -0x800 /* handwritten instruction */
    /* 1198C4 00218944 00000623 */  addi       $a2, $t8, 0x0 /* handwritten instruction */
    /* 1198C8 00218948 12002004 */  bltz       $at, .L00218994
    /* 1198CC 0021894C AC948E8F */   lw        $t6, -0x6B54($gp)
    /* 1198D0 00218950 9C620808 */  j          func_00218A70
    /* 1198D4 00218954 00000000 */   nop
    /* 1198D8 00218958 FF000120 */  addi       $at, $zero, 0xFF /* handwritten instruction */
    /* 1198DC 0021895C 00080620 */  addi       $a2, $zero, 0x800 /* handwritten instruction */
.align 2
  alabel func_00218960
    /* 1198E0 00218960 43002004 */  bltz       $at, func_00218A70
    /* 1198E4 00218964 20182F00 */   add       $v1, $at, $t7 /* handwritten instruction */
    /* 1198E8 00218968 00016390 */  lbu        $v1, 0x100($v1)
    /* 1198EC 0021896C 80000220 */  addi       $v0, $zero, 0x80 /* handwritten instruction */
.align 2
  .L00218970:
    /* 1198F0 00218970 24506200 */  and        $t2, $v1, $v0
    /* 1198F4 00218974 42100200 */  srl        $v0, $v0, 1
    /* 1198F8 00218978 2B004011 */  beqz       $t2, .L00218A28
    /* 1198FC 0021897C FFFFC620 */   addi      $a2, $a2, -0x1 /* handwritten instruction */
    /* 119900 00218980 00000000 */  nop
    /* 119904 00218984 FAFF4014 */  bnez       $v0, .L00218970
    /* 119908 00218988 00000000 */   nop
    /* 11990C 0021898C 58620808 */  j          func_00218960
    /* 119910 00218990 FFFF2120 */   addi      $at, $at, -0x1 /* handwritten instruction */
.align 2
  .L00218994:
    /* 119914 00218994 C2080600 */  srl        $at, $a2, 3
    /* 119918 00218998 01000220 */  addi       $v0, $zero, 0x1 /* handwritten instruction */
    /* 11991C 0021899C 20082F00 */  add        $at, $at, $t7 /* handwritten instruction */
    /* 119920 002189A0 0700C330 */  andi       $v1, $a2, 0x7
    /* 119924 002189A4 04106200 */  sllv       $v0, $v0, $v1
    /* 119928 002189A8 00002390 */  lbu        $v1, 0x0($at)
    /* 11992C 002189AC 25186200 */  or         $v1, $v1, $v0
    /* 119930 002189B0 000023A0 */  sb         $v1, 0x0($at)
    /* 119934 002189B4 22081903 */  sub        $at, $t8, $t9 /* handwritten instruction */
    /* 119938 002189B8 00000000 */  nop
    /* 11993C 002189BC 1200201C */  bgtz       $at, .L00218A08
    /* 119940 002189C0 01001823 */   addi      $t8, $t8, 0x1 /* handwritten instruction */
    /* 119944 002189C4 C2081800 */  srl        $at, $t8, 3
    /* 119948 002189C8 C0C00100 */  sll        $t8, $at, 3
.align 2
  alabel func_002189CC
    /* 11994C 002189CC 00F80A23 */  addi       $t2, $t8, -0x800 /* handwritten instruction */
    /* 119950 002189D0 20182F00 */  add        $v1, $at, $t7 /* handwritten instruction */
    /* 119954 002189D4 0C004105 */  bgez       $t2, .L00218A08
    /* 119958 002189D8 00006390 */   lbu       $v1, 0x0($v1)
    /* 11995C 002189DC 01000220 */  addi       $v0, $zero, 0x1 /* handwritten instruction */
    /* 119960 002189E0 00000000 */  nop
.align 2
  .L002189E4:
    /* 119964 002189E4 24506200 */  and        $t2, $v1, $v0
    /* 119968 002189E8 40100200 */  sll        $v0, $v0, 1
    /* 11996C 002189EC 06004011 */  beqz       $t2, .L00218A08
    /* 119970 002189F0 FF004A30 */   andi      $t2, $v0, 0xFF
    /* 119974 002189F4 00000000 */  nop
    /* 119978 002189F8 FAFF4015 */  bnez       $t2, .L002189E4
    /* 11997C 002189FC 01001823 */   addi      $t8, $t8, 0x1 /* handwritten instruction */
    /* 119980 00218A00 73620808 */  j          func_002189CC
    /* 119984 00218A04 01002120 */   addi      $at, $at, 0x1 /* handwritten instruction */
.align 2
  .L00218A08:
    /* 119988 00218A08 B09498AF */  sw         $t8, -0x6B50($gp)
    /* 11998C 00218A0C 00000000 */  nop
    /* 119990 00218A10 C8C82673 */  pmaxw      $t9, $t9, $a2
    /* 119994 00218A14 B894818F */  lw         $at, -0x6B48($gp)
    /* 119998 00218A18 B49499AF */  sw         $t9, -0x6B4C($gp)
    /* 11999C 00218A1C 01002120 */  addi       $at, $at, 0x1 /* handwritten instruction */
    /* 1199A0 00218A20 B89481AF */  sw         $at, -0x6B48($gp)
    /* 1199A4 00218A24 00000000 */  nop
.align 2
  .L00218A28:
    /* 1199A8 00218A28 94620808 */  j          func_00218A50
    /* 1199AC 00218A2C C2080600 */   srl       $at, $a2, 3
    /* 1199B0 00218A30 20082F00 */  add        $at, $at, $t7 /* handwritten instruction */
    /* 1199B4 00218A34 01000220 */  addi       $v0, $zero, 0x1 /* handwritten instruction */
    /* 1199B8 00218A38 00012590 */  lbu        $a1, 0x100($at)
    /* 1199BC 00218A3C 0700C330 */  andi       $v1, $a2, 0x7
    /* 1199C0 00218A40 04106200 */  sllv       $v0, $v0, $v1
    /* 1199C4 00218A44 2528A200 */  or         $a1, $a1, $v0
    /* 1199C8 00218A48 000125A0 */  sb         $a1, 0x100($at)
    /* 1199CC 00218A4C 00000000 */  nop
.align 2
  alabel func_00218A50
    /* 1199D0 00218A50 80110600 */  sll        $v0, $a2, 6
    /* 1199D4 00218A54 20104E00 */  add        $v0, $v0, $t6 /* handwritten instruction */
    /* 1199D8 00218A58 0000407C */  sq         $zero, 0x0($v0)
    /* 1199DC 00218A5C 1000407C */  sq         $zero, 0x10($v0)
    /* 1199E0 00218A60 1000407C */  sq         $zero, 0x10($v0)
    /* 1199E4 00218A64 1000407C */  sq         $zero, 0x10($v0)
    /* 1199E8 00218A68 0800E003 */  jr         $ra
    /* 1199EC 00218A6C 000044A0 */   sb        $a0, 0x0($v0)
.align 2
  alabel func_00218A70
    /* 1199F0 00218A70 0800E003 */  jr         $ra
    /* 1199F4 00218A74 00000220 */   addi      $v0, $zero, 0x0 /* handwritten instruction */
endlabel func_00218930
