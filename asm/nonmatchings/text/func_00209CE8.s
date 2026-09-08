.align 3
nonmatching func_00209CE8, 0xD4

glabel func_00209CE8
    /* 10AC68 00209CE8 90FFBD27 */  addiu      $sp, $sp, -0x70
    /* 10AC6C 00209CEC 1A00023C */  lui        $v0, %hi(D_001A05C0)
    /* 10AC70 00209CF0 4000B47F */  sq         $s4, 0x40($sp)
    /* 10AC74 00209CF4 2000B27F */  sq         $s2, 0x20($sp)
    /* 10AC78 00209CF8 C0055424 */  addiu      $s4, $v0, %lo(D_001A05C0)
    /* 10AC7C 00209CFC 2D908000 */  daddu      $s2, $a0, $zero
    /* 10AC80 00209D00 5000B57F */  sq         $s5, 0x50($sp)
    /* 10AC84 00209D04 3000B37F */  sq         $s3, 0x30($sp)
    /* 10AC88 00209D08 2D208002 */  daddu      $a0, $s4, $zero
    /* 10AC8C 00209D0C 1000B17F */  sq         $s1, 0x10($sp)
    /* 10AC90 00209D10 0000B07F */  sq         $s0, 0x0($sp)
    /* 10AC94 00209D14 6000BF7F */  sq         $ra, 0x60($sp)
    /* 10AC98 00209D18 B62E080C */  jal        func_0020BAD8
    /* 10AC9C 00209D1C 1A00103C */   lui       $s0, %hi(D_001A08C0)
    /* 10ACA0 00209D20 2DA80002 */  daddu      $s5, $s0, $zero
    /* 10ACA4 00209D24 C0080426 */  addiu      $a0, $s0, %lo(D_001A08C0)
    /* 10ACA8 00209D28 B62E080C */  jal        func_0020BAD8
    /* 10ACAC 00209D2C 2D884000 */   daddu     $s1, $v0, $zero
    /* 10ACB0 00209D30 0000508E */  lw         $s0, 0x0($s2)
    /* 10ACB4 00209D34 04001116 */  bne        $s0, $s1, .L00209D48
    /* 10ACB8 00209D38 2D984000 */   daddu     $s3, $v0, $zero
    /* 10ACBC 00209D3C 0400428E */  lw         $v0, 0x4($s2)
    /* 10ACC0 00209D40 06005310 */  beq        $v0, $s3, .L00209D5C
    /* 10ACC4 00209D44 08005226 */   addiu     $s2, $s2, 0x8
.align 2
  .L00209D48:
    /* 10ACC8 00209D48 1F00043C */  lui        $a0, %hi(D_001E8500)
    /* 10ACCC 00209D4C CCA5070C */  jal        func_001E9730
    /* 10ACD0 00209D50 00858424 */   addiu     $a0, $a0, %lo(D_001E8500)
    /* 10ACD4 00209D54 11000010 */  b          .L00209D9C
    /* 10ACD8 00209D58 6000BF7B */   lq        $ra, 0x60($sp)
.align 2
  .L00209D5C:
    /* 10ACDC 00209D5C 2D308002 */  daddu      $a2, $s4, $zero
    /* 10ACE0 00209D60 2D204002 */  daddu      $a0, $s2, $zero
    /* 10ACE4 00209D64 2D280000 */  daddu      $a1, $zero, $zero
    /* 10ACE8 00209D68 5C2F080C */  jal        func_0020BD70
    /* 10ACEC 00209D6C 21905002 */   addu      $s2, $s2, $s0
    /* 10ACF0 00209D70 2D800000 */  daddu      $s0, $zero, $zero
    /* 10ACF4 00209D74 00000000 */  nop
.align 2
  .L00209D78:
    /* 10ACF8 00209D78 2D204002 */  daddu      $a0, $s2, $zero
    /* 10ACFC 00209D7C 2D280002 */  daddu      $a1, $s0, $zero
    /* 10AD00 00209D80 C008A626 */  addiu      $a2, $s5, %lo(D_001A08C0)
    /* 10AD04 00209D84 5C2F080C */  jal        func_0020BD70
    /* 10AD08 00209D88 01001026 */   addiu     $s0, $s0, 0x1
    /* 10AD0C 00209D8C 1400022A */  slti       $v0, $s0, 0x14
    /* 10AD10 00209D90 F9FF4014 */  bnez       $v0, .L00209D78
    /* 10AD14 00209D94 21905302 */   addu      $s2, $s2, $s3
    /* 10AD18 00209D98 6000BF7B */  lq         $ra, 0x60($sp)
.align 2
  .L00209D9C:
    /* 10AD1C 00209D9C 5000B57B */  lq         $s5, 0x50($sp)
    /* 10AD20 00209DA0 4000B47B */  lq         $s4, 0x40($sp)
    /* 10AD24 00209DA4 3000B37B */  lq         $s3, 0x30($sp)
    /* 10AD28 00209DA8 2000B27B */  lq         $s2, 0x20($sp)
    /* 10AD2C 00209DAC 1000B17B */  lq         $s1, 0x10($sp)
    /* 10AD30 00209DB0 0000B07B */  lq         $s0, 0x0($sp)
    /* 10AD34 00209DB4 0800E003 */  jr         $ra
    /* 10AD38 00209DB8 7000BD27 */   addiu     $sp, $sp, 0x70
endlabel func_00209CE8
    /* 10AD3C 00209DBC 00000000 */  nop
