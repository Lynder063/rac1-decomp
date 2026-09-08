.align 3
nonmatching func_0023D2E8, 0x54

glabel func_0023D2E8
    /* 13E268 0023D2E8 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 13E26C 0023D2EC 2000BF7F */  sq         $ra, 0x20($sp)
    /* 13E270 0023D2F0 1000B17F */  sq         $s1, 0x10($sp)
    /* 13E274 0023D2F4 0000B07F */  sq         $s0, 0x0($sp)
    /* 13E278 0023D2F8 2D88A000 */  daddu      $s1, $a1, $zero
    /* 13E27C 0023D2FC 2D808000 */  daddu      $s0, $a0, $zero
    /* 13E280 0023D300 2C63040C */  jal        func_00118CB0
    /* 13E284 0023D304 4000048E */   lw        $a0, 0x40($s0)
    /* 13E288 0023D308 1400038E */  lw         $v1, 0x14($s0)
    /* 13E28C 0023D30C 480002DE */  ld         $v0, 0x48($s0)
    /* 13E290 0023D310 21187100 */  addu       $v1, $v1, $s1
    /* 13E294 0023D314 4000048E */  lw         $a0, 0x40($s0)
    /* 13E298 0023D318 2D102202 */  daddu      $v0, $s1, $v0
    /* 13E29C 0023D31C 140003AE */  sw         $v1, 0x14($s0)
    /* 13E2A0 0023D320 2463040C */  jal        func_00118C90
    /* 13E2A4 0023D324 480002FE */   sd        $v0, 0x48($s0)
    /* 13E2A8 0023D328 2000BF7B */  lq         $ra, 0x20($sp)
    /* 13E2AC 0023D32C 1000B17B */  lq         $s1, 0x10($sp)
    /* 13E2B0 0023D330 0000B07B */  lq         $s0, 0x0($sp)
    /* 13E2B4 0023D334 0800E003 */  jr         $ra
    /* 13E2B8 0023D338 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_0023D2E8
    /* 13E2BC 0023D33C 00000000 */  nop
