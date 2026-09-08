.align 3
/* Handwritten function */
nonmatching func_0020E9F0, 0x80

glabel func_0020E9F0
    /* 10F970 0020E9F0 E0FF0220 */  addi       $v0, $zero, -0x20 /* handwritten instruction */
    /* 10F974 0020E9F4 1C00013C */  lui        $at, %hi(D_001C7A60)
    /* 10F978 0020E9F8 607A2124 */  addiu      $at, $at, %lo(D_001C7A60)
    /* 10F97C 0020E9FC 01000820 */  addi       $t0, $zero, 0x1 /* handwritten instruction */
    /* 10F980 0020EA00 00008720 */  addi       $a3, $a0, 0x0 /* handwritten instruction */
    /* 10F984 0020EA04 04408800 */  sllv       $t0, $t0, $a0
    /* 10F988 0020EA08 FFFF0821 */  addi       $t0, $t0, -0x1 /* handwritten instruction */
    /* 10F98C 0020EA0C 00000000 */  nop
.align 2
  .L0020EA10:
    /* 10F990 0020EA10 0000239C */  lwu        $v1, 0x0($at)
    /* 10F994 0020EA14 FFFF0420 */  addi       $a0, $zero, -0x1 /* handwritten instruction */
    /* 10F998 0020EA18 3E200400 */  dsrl32     $a0, $a0, 0
    /* 10F99C 0020EA1C 04002120 */  addi       $at, $at, 0x4 /* handwritten instruction */
    /* 10F9A0 0020EA20 00000000 */  nop
    /* 10F9A4 0020EA24 FAFF6410 */  beq        $v1, $a0, .L0020EA10
    /* 10F9A8 0020EA28 20004220 */   addi      $v0, $v0, 0x20 /* handwritten instruction */
    /* 10F9AC 0020EA2C 00000421 */  addi       $a0, $t0, 0x0 /* handwritten instruction */
    /* 10F9B0 0020EA30 00000620 */  addi       $a2, $zero, 0x0 /* handwritten instruction */
.align 2
  .L0020EA34:
    /* 10F9B4 0020EA34 24286400 */  and        $a1, $v1, $a0
    /* 10F9B8 0020EA38 1420E400 */  dsllv      $a0, $a0, $a3
    /* 10F9BC 0020EA3C 00000000 */  nop
    /* 10F9C0 0020EA40 00000000 */  nop
    /* 10F9C4 0020EA44 00000000 */  nop
    /* 10F9C8 0020EA48 FAFFA014 */  bnez       $a1, .L0020EA34
    /* 10F9CC 0020EA4C 2030C700 */   add       $a2, $a2, $a3 /* handwritten instruction */
    /* 10F9D0 0020EA50 2230C700 */  sub        $a2, $a2, $a3 /* handwritten instruction */
    /* 10F9D4 0020EA54 20000520 */  addi       $a1, $zero, 0x20 /* handwritten instruction */
    /* 10F9D8 0020EA58 EDFFC510 */  beq        $a2, $a1, .L0020EA10
    /* 10F9DC 0020EA5C 1620E400 */   dsrlv     $a0, $a0, $a3
    /* 10F9E0 0020EA60 20104600 */  add        $v0, $v0, $a2 /* handwritten instruction */
    /* 10F9E4 0020EA64 25186400 */  or         $v1, $v1, $a0
    /* 10F9E8 0020EA68 0800E003 */  jr         $ra
    /* 10F9EC 0020EA6C FCFF23AC */   sw        $v1, -0x4($at)
endlabel func_0020E9F0
