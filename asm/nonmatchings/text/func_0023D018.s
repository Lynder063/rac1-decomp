.align 3
nonmatching func_0023D018, 0x78

glabel func_0023D018
    /* 13DF98 0023D018 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 13DF9C 0023D01C FF0F023C */  lui        $v0, (0xFFFFFFF >> 16)
    /* 13DFA0 0023D020 2000B07F */  sq         $s0, 0x20($sp)
    /* 13DFA4 0023D024 FFFF4234 */  ori        $v0, $v0, (0xFFFFFFF & 0xFFFF)
    /* 13DFA8 0023D028 2D808000 */  daddu      $s0, $a0, $zero
    /* 13DFAC 0023D02C 3000BF7F */  sq         $ra, 0x30($sp)
    /* 13DFB0 0023D030 2430C200 */  and        $a2, $a2, $v0
    /* 13DFB4 0023D034 000005AE */  sw         $a1, 0x0($s0)
    /* 13DFB8 0023D038 500008AE */  sw         $t0, 0x50($s0)
    /* 13DFBC 0023D03C 0020033C */  lui        $v1, (0x20000000 >> 16)
    /* 13DFC0 0023D040 540009AE */  sw         $t1, 0x54($s0)
    /* 13DFC4 0023D044 01000224 */  addiu      $v0, $zero, 0x1
    /* 13DFC8 0023D048 0400A2AF */  sw         $v0, 0x4($sp)
    /* 13DFCC 0023D04C 2530C300 */  or         $a2, $a2, $v1
    /* 13DFD0 0023D050 C0520700 */  sll        $t2, $a3, 11
    /* 13DFD4 0023D054 040006AE */  sw         $a2, 0x4($s0)
    /* 13DFD8 0023D058 18000AAE */  sw         $t2, 0x18($s0)
    /* 13DFDC 0023D05C 2D20A003 */  daddu      $a0, $sp, $zero
    /* 13DFE0 0023D060 0800A2AF */  sw         $v0, 0x8($sp)
    /* 13DFE4 0023D064 1C63040C */  jal        func_00118C70
    /* 13DFE8 0023D068 080007AE */   sw        $a3, 0x8($s0)
    /* 13DFEC 0023D06C 2D200002 */  daddu      $a0, $s0, $zero
    /* 13DFF0 0023D070 24F4080C */  jal        func_0023D090
    /* 13DFF4 0023D074 400002AE */   sw        $v0, 0x40($s0)
    /* 13DFF8 0023D078 480000FE */  sd         $zero, 0x48($s0)
    /* 13DFFC 0023D07C 01000224 */  addiu      $v0, $zero, 0x1
    /* 13E000 0023D080 3000BF7B */  lq         $ra, 0x30($sp)
    /* 13E004 0023D084 2000B07B */  lq         $s0, 0x20($sp)
    /* 13E008 0023D088 0800E003 */  jr         $ra
    /* 13E00C 0023D08C 4000BD27 */   addiu     $sp, $sp, 0x40
endlabel func_0023D018
