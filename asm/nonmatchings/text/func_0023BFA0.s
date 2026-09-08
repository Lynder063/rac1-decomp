.align 3
nonmatching func_0023BFA0, 0xBC

glabel func_0023BFA0
    /* 13CF20 0023BFA0 B0FFBD27 */  addiu      $sp, $sp, -0x50
    /* 13CF24 0023BFA4 1000B17F */  sq         $s1, 0x10($sp)
    /* 13CF28 0023BFA8 0000B07F */  sq         $s0, 0x0($sp)
    /* 13CF2C 0023BFAC 2D88A000 */  daddu      $s1, $a1, $zero
    /* 13CF30 0023BFB0 2D808000 */  daddu      $s0, $a0, $zero
    /* 13CF34 0023BFB4 3000B37F */  sq         $s3, 0x30($sp)
    /* 13CF38 0023BFB8 2000B27F */  sq         $s2, 0x20($sp)
    /* 13CF3C 0023BFBC 2D98E000 */  daddu      $s3, $a3, $zero
    /* 13CF40 0023BFC0 4000BF7F */  sq         $ra, 0x40($sp)
    /* 13CF44 0023BFC4 2D90C000 */  daddu      $s2, $a2, $zero
    /* 13CF48 0023BFC8 08000426 */  addiu      $a0, $s0, 0x8
    /* 13CF4C 0023BFCC 76E6070C */  jal        func_001F99D8
    /* 13CF50 0023BFD0 20000524 */   addiu     $a1, $zero, 0x20
    /* 13CF54 0023BFD4 03000224 */  addiu      $v0, $zero, 0x3
    /* 13CF58 0023BFD8 340011AE */  sw         $s1, 0x34($s0)
    /* 13CF5C 0023BFDC 400012AE */  sw         $s2, 0x40($s0)
    /* 13CF60 0023BFE0 00040324 */  addiu      $v1, $zero, 0x400
    /* 13CF64 0023BFE4 040002AE */  sw         $v0, 0x4($s0)
    /* 13CF68 0023BFE8 00040424 */  addiu      $a0, $zero, 0x400
    /* 13CF6C 0023BFEC 000000AE */  sw         $zero, 0x0($s0)
    /* 13CF70 0023BFF0 00100524 */  addiu      $a1, $zero, 0x1000
    /* 13CF74 0023BFF4 300000AE */  sw         $zero, 0x30($s0)
    /* 13CF78 0023BFF8 00040624 */  addiu      $a2, $zero, 0x400
    /* 13CF7C 0023BFFC 380000AE */  sw         $zero, 0x38($s0)
    /* 13CF80 0023C000 2D380000 */  daddu      $a3, $zero, $zero
    /* 13CF84 0023C004 3C0000AE */  sw         $zero, 0x3C($s0)
    /* 13CF88 0023C008 05000824 */  addiu      $t0, $zero, 0x5
    /* 13CF8C 0023C00C 440000AE */  sw         $zero, 0x44($s0)
    /* 13CF90 0023C010 03000924 */  addiu      $t1, $zero, 0x3
    /* 13CF94 0023C014 500000AE */  sw         $zero, 0x50($s0)
    /* 13CF98 0023C018 580000AE */  sw         $zero, 0x58($s0)
    /* 13CF9C 0023C01C 5C0000AE */  sw         $zero, 0x5C($s0)
    /* 13CFA0 0023C020 600000AE */  sw         $zero, 0x60($s0)
    /* 13CFA4 0023C024 1600013C */  lui        $at, %hi(D_001613B8)
    /* 13CFA8 0023C028 B81333AC */  sw         $s3, %lo(D_001613B8)($at)
    /* 13CFAC 0023C02C 6ABC040C */  jal        func_0012F1A8
    /* 13CFB0 0023C030 4C0003AE */   sw        $v1, 0x4C($s0)
    /* 13CFB4 0023C034 480002AE */  sw         $v0, 0x48($s0)
    /* 13CFB8 0023C038 00004328 */  slti       $v1, $v0, 0x0
    /* 13CFBC 0023C03C 4000BF7B */  lq         $ra, 0x40($sp)
    /* 13CFC0 0023C040 01006238 */  xori       $v0, $v1, 0x1
    /* 13CFC4 0023C044 3000B37B */  lq         $s3, 0x30($sp)
    /* 13CFC8 0023C048 2000B27B */  lq         $s2, 0x20($sp)
    /* 13CFCC 0023C04C 1000B17B */  lq         $s1, 0x10($sp)
    /* 13CFD0 0023C050 0000B07B */  lq         $s0, 0x0($sp)
    /* 13CFD4 0023C054 0800E003 */  jr         $ra
    /* 13CFD8 0023C058 5000BD27 */   addiu     $sp, $sp, 0x50
endlabel func_0023BFA0
    /* 13CFDC 0023C05C 00000000 */  nop
