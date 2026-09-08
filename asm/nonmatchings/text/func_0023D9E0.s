.align 3
nonmatching func_0023D9E0, 0x4C

glabel func_0023D9E0
    /* 13E960 0023D9E0 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 13E964 0023D9E4 2000BF7F */  sq         $ra, 0x20($sp)
    /* 13E968 0023D9E8 1000B17F */  sq         $s1, 0x10($sp)
    /* 13E96C 0023D9EC 0000B07F */  sq         $s0, 0x0($sp)
    /* 13E970 0023D9F0 2D808000 */  daddu      $s0, $a0, $zero
    /* 13E974 0023D9F4 2C63040C */  jal        func_00118CB0
    /* 13E978 0023D9F8 4000048E */   lw        $a0, 0x40($s0)
    /* 13E97C 0023D9FC 1000118E */  lw         $s1, 0x10($s0)
    /* 13E980 0023DA00 1400028E */  lw         $v0, 0x14($s0)
    /* 13E984 0023DA04 4000048E */  lw         $a0, 0x40($s0)
    /* 13E988 0023DA08 C08A1100 */  sll        $s1, $s1, 11
    /* 13E98C 0023DA0C 2463040C */  jal        func_00118C90
    /* 13E990 0023DA10 21882202 */   addu      $s1, $s1, $v0
    /* 13E994 0023DA14 2D102002 */  daddu      $v0, $s1, $zero
    /* 13E998 0023DA18 2000BF7B */  lq         $ra, 0x20($sp)
    /* 13E99C 0023DA1C 1000B17B */  lq         $s1, 0x10($sp)
    /* 13E9A0 0023DA20 0000B07B */  lq         $s0, 0x0($sp)
    /* 13E9A4 0023DA24 0800E003 */  jr         $ra
    /* 13E9A8 0023DA28 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_0023D9E0
    /* 13E9AC 0023DA2C 00000000 */  nop
