.align 3
nonmatching func_0022EA20, 0x84

glabel func_0022EA20
    /* 12F9A0 0022EA20 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 12F9A4 0022EA24 1400023C */  lui        $v0, %hi(D_0013E650)
    /* 12F9A8 0022EA28 2000B27F */  sq         $s2, 0x20($sp)
    /* 12F9AC 0022EA2C 1000B17F */  sq         $s1, 0x10($sp)
    /* 12F9B0 0022EA30 2D900000 */  daddu      $s2, $zero, $zero
    /* 12F9B4 0022EA34 0000B07F */  sq         $s0, 0x0($sp)
    /* 12F9B8 0022EA38 3000BF7F */  sq         $ra, 0x30($sp)
    /* 12F9BC 0022EA3C 50E65024 */  addiu      $s0, $v0, %lo(D_0013E650)
    /* 12F9C0 0022EA40 4400028E */  lw         $v0, 0x44($s0)
    /* 12F9C4 0022EA44 10004014 */  bnez       $v0, .L0022EA88
    /* 12F9C8 0022EA48 2D888000 */   daddu     $s1, $a0, $zero
    /* 12F9CC 0022EA4C 01000224 */  addiu      $v0, $zero, 0x1
    /* 12F9D0 0022EA50 2D200000 */  daddu      $a0, $zero, $zero
    /* 12F9D4 0022EA54 CC83040C */  jal        func_00120F30
    /* 12F9D8 0022EA58 440002AE */   sw        $v0, 0x44($s0)
    /* 12F9DC 0022EA5C 2D280000 */  daddu      $a1, $zero, $zero
    /* 12F9E0 0022EA60 18B8040C */  jal        func_0012E060
    /* 12F9E4 0022EA64 2D202002 */   daddu     $a0, $s1, $zero
    /* 12F9E8 0022EA68 01000424 */  addiu      $a0, $zero, 0x1
    /* 12F9EC 0022EA6C 9CBB040C */  jal        func_0012EE70
    /* 12F9F0 0022EA70 2D904000 */   daddu     $s2, $v0, $zero
    /* 12F9F4 0022EA74 D2BB040C */  jal        func_0012EF48
    /* 12F9F8 0022EA78 2D200000 */   daddu     $a0, $zero, $zero
    /* 12F9FC 0022EA7C BAB8040C */  jal        func_0012E2E8
    /* 12FA00 0022EA80 00000000 */   nop
    /* 12FA04 0022EA84 440000AE */  sw         $zero, 0x44($s0)
.align 2
  .L0022EA88:
    /* 12FA08 0022EA88 2D104002 */  daddu      $v0, $s2, $zero
    /* 12FA0C 0022EA8C 3000BF7B */  lq         $ra, 0x30($sp)
    /* 12FA10 0022EA90 2000B27B */  lq         $s2, 0x20($sp)
    /* 12FA14 0022EA94 1000B17B */  lq         $s1, 0x10($sp)
    /* 12FA18 0022EA98 0000B07B */  lq         $s0, 0x0($sp)
    /* 12FA1C 0022EA9C 0800E003 */  jr         $ra
    /* 12FA20 0022EAA0 4000BD27 */   addiu     $sp, $sp, 0x40
endlabel func_0022EA20
    /* 12FA24 0022EAA4 00000000 */  nop
    /* 12FA28 0022EAA8 00000000 */  nop
    /* 12FA2C 0022EAAC 00000000 */  nop
