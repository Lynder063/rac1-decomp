.align 3
nonmatching func_0012AB60, 0x4C

glabel func_0012AB60
    /* 2BAE0 0012AB60 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 2BAE4 0012AB64 1000B1FF */  sd         $s1, 0x10($sp)
    /* 2BAE8 0012AB68 0000B0FF */  sd         $s0, 0x0($sp)
    /* 2BAEC 0012AB6C 2D88A000 */  daddu      $s1, $a1, $zero
    /* 2BAF0 0012AB70 2000B2FF */  sd         $s2, 0x20($sp)
    /* 2BAF4 0012AB74 3000BFFF */  sd         $ra, 0x30($sp)
    /* 2BAF8 0012AB78 AAAA040C */  jal        func_0012AAA8
    /* 2BAFC 0012AB7C 2D808000 */   daddu     $s0, $a0, $zero
    /* 2BB00 0012AB80 2D904000 */  daddu      $s2, $v0, $zero
    /* 2BB04 0012AB84 2D200002 */  daddu      $a0, $s0, $zero
    /* 2BB08 0012AB88 B2AA040C */  jal        func_0012AAC8
    /* 2BB0C 0012AB8C 2D282002 */   daddu     $a1, $s1, $zero
    /* 2BB10 0012AB90 2D104002 */  daddu      $v0, $s2, $zero
    /* 2BB14 0012AB94 3000BFDF */  ld         $ra, 0x30($sp)
    /* 2BB18 0012AB98 2000B2DF */  ld         $s2, 0x20($sp)
    /* 2BB1C 0012AB9C 1000B1DF */  ld         $s1, 0x10($sp)
    /* 2BB20 0012ABA0 0000B0DF */  ld         $s0, 0x0($sp)
    /* 2BB24 0012ABA4 0800E003 */  jr         $ra
    /* 2BB28 0012ABA8 4000BD27 */   addiu     $sp, $sp, 0x40
endlabel func_0012AB60
    /* 2BB2C 0012ABAC 00000000 */  nop
