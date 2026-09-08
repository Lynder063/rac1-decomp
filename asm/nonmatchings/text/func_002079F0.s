.align 3
nonmatching func_002079F0, 0x90

glabel func_002079F0
    /* 108970 002079F0 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 108974 002079F4 99000624 */  addiu      $a2, $zero, 0x99
    /* 108978 002079F8 1000B17F */  sq         $s1, 0x10($sp)
    /* 10897C 002079FC ED000724 */  addiu      $a3, $zero, 0xED
    /* 108980 00207A00 0000B07F */  sq         $s0, 0x0($sp)
    /* 108984 00207A04 2D88A000 */  daddu      $s1, $a1, $zero
    /* 108988 00207A08 2D808000 */  daddu      $s0, $a0, $zero
    /* 10898C 00207A0C 2000B27F */  sq         $s2, 0x20($sp)
    /* 108990 00207A10 3000BF7F */  sq         $ra, 0x30($sp)
    /* 108994 00207A14 60010824 */  addiu      $t0, $zero, 0x160
    /* 108998 00207A18 1224080C */  jal        func_00209048
    /* 10899C 00207A1C 17010924 */   addiu     $t1, $zero, 0x117
    /* 1089A0 00207A20 2D200002 */  daddu      $a0, $s0, $zero
    /* 1089A4 00207A24 2D904000 */  daddu      $s2, $v0, $zero
    /* 1089A8 00207A28 2D282002 */  daddu      $a1, $s1, $zero
    /* 1089AC 00207A2C 0E010624 */  addiu      $a2, $zero, 0x10E
    /* 1089B0 00207A30 F7000724 */  addiu      $a3, $zero, 0xF7
    /* 1089B4 00207A34 3D010824 */  addiu      $t0, $zero, 0x13D
    /* 1089B8 00207A38 1224080C */  jal        func_00209048
    /* 1089BC 00207A3C 19010924 */   addiu     $t1, $zero, 0x119
    /* 1089C0 00207A40 2D204000 */  daddu      $a0, $v0, $zero
    /* 1089C4 00207A44 1A00023C */  lui        $v0, %hi(D_001A04B4)
    /* 1089C8 00207A48 B404438C */  lw         $v1, %lo(D_001A04B4)($v0)
    /* 1089CC 00207A4C 06006010 */  beqz       $v1, .L00207A68
    /* 1089D0 00207A50 2D100000 */   daddu     $v0, $zero, $zero
    /* 1089D4 00207A54 04004016 */  bnez       $s2, .L00207A68
    /* 1089D8 00207A58 01000224 */   addiu     $v0, $zero, 0x1
    /* 1089DC 00207A5C 02008010 */  beqz       $a0, .L00207A68
    /* 1089E0 00207A60 2D100000 */   daddu     $v0, $zero, $zero
    /* 1089E4 00207A64 01000224 */  addiu      $v0, $zero, 0x1
.align 2
  .L00207A68:
    /* 1089E8 00207A68 3000BF7B */  lq         $ra, 0x30($sp)
    /* 1089EC 00207A6C 2000B27B */  lq         $s2, 0x20($sp)
    /* 1089F0 00207A70 1000B17B */  lq         $s1, 0x10($sp)
    /* 1089F4 00207A74 0000B07B */  lq         $s0, 0x0($sp)
    /* 1089F8 00207A78 0800E003 */  jr         $ra
    /* 1089FC 00207A7C 4000BD27 */   addiu     $sp, $sp, 0x40
endlabel func_002079F0
