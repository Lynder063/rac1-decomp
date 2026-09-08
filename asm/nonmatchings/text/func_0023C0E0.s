.align 3
nonmatching func_0023C0E0, 0x44

glabel func_0023C0E0
    /* 13D060 0023C0E0 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 13D064 0023C0E4 0000B07F */  sq         $s0, 0x0($sp)
    /* 13D068 0023C0E8 1000BF7F */  sq         $ra, 0x10($sp)
    /* 13D06C 0023C0EC 7ABC040C */  jal        func_0012F1E8
    /* 13D070 0023C0F0 2D808000 */   daddu     $s0, $a0, $zero
    /* 13D074 0023C0F4 5C0000AE */  sw         $zero, 0x5C($s0)
    /* 13D078 0023C0F8 000000AE */  sw         $zero, 0x0($s0)
    /* 13D07C 0023C0FC 300000AE */  sw         $zero, 0x30($s0)
    /* 13D080 0023C100 380000AE */  sw         $zero, 0x38($s0)
    /* 13D084 0023C104 3C0000AE */  sw         $zero, 0x3C($s0)
    /* 13D088 0023C108 440000AE */  sw         $zero, 0x44($s0)
    /* 13D08C 0023C10C 500000AE */  sw         $zero, 0x50($s0)
    /* 13D090 0023C110 580000AE */  sw         $zero, 0x58($s0)
    /* 13D094 0023C114 1000BF7B */  lq         $ra, 0x10($sp)
    /* 13D098 0023C118 0000B07B */  lq         $s0, 0x0($sp)
    /* 13D09C 0023C11C 0800E003 */  jr         $ra
    /* 13D0A0 0023C120 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_0023C0E0
    /* 13D0A4 0023C124 00000000 */  nop
