.align 3
nonmatching func_00223FD0, 0x3C

glabel func_00223FD0
    /* 124F50 00223FD0 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 124F54 00223FD4 0000B07F */  sq         $s0, 0x0($sp)
    /* 124F58 00223FD8 2D808000 */  daddu      $s0, $a0, $zero
    /* 124F5C 00223FDC 1000BF7F */  sq         $ra, 0x10($sp)
    /* 124F60 00223FE0 549B080C */  jal        func_00226D50
    /* 124F64 00223FE4 01000424 */   addiu     $a0, $zero, 0x1
    /* 124F68 00223FE8 AA9B080C */  jal        func_00226EA8
    /* 124F6C 00223FEC 2D200000 */   daddu     $a0, $zero, $zero
    /* 124F70 00223FF0 480002AE */  sw         $v0, 0x48($s0)
    /* 124F74 00223FF4 4C0000AE */  sw         $zero, 0x4C($s0)
    /* 124F78 00223FF8 2D100000 */  daddu      $v0, $zero, $zero
    /* 124F7C 00223FFC 1000BF7B */  lq         $ra, 0x10($sp)
    /* 124F80 00224000 0000B07B */  lq         $s0, 0x0($sp)
    /* 124F84 00224004 0800E003 */  jr         $ra
    /* 124F88 00224008 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_00223FD0
    /* 124F8C 0022400C 00000000 */  nop
