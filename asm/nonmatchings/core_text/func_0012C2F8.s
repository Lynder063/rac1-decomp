.align 3
nonmatching func_0012C2F8, 0x60

glabel func_0012C2F8
    /* 2D278 0012C2F8 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 2D27C 0012C2FC 0000B0FF */  sd         $s0, 0x0($sp)
    /* 2D280 0012C300 2D808000 */  daddu      $s0, $a0, $zero
    /* 2D284 0012C304 1000B1FF */  sd         $s1, 0x10($sp)
    /* 2D288 0012C308 2000BFFF */  sd         $ra, 0x20($sp)
    /* 2D28C 0012C30C DE9C040C */  jal        func_00127378
    /* 2D290 0012C310 01000424 */   addiu     $a0, $zero, 0x1
    /* 2D294 0012C314 0070113C */  lui        $s1, (0x70000000 >> 16)
    /* 2D298 0012C318 0070023C */  lui        $v0, (0x70001800 >> 16)
    /* 2D29C 0012C31C 0070033C */  lui        $v1, (0x70001B00 >> 16)
    /* 2D2A0 0012C320 0070043C */  lui        $a0, (0x70003300 >> 16)
    /* 2D2A4 0012C324 00184234 */  ori        $v0, $v0, (0x70001800 & 0xFFFF)
    /* 2D2A8 0012C328 001B6334 */  ori        $v1, $v1, (0x70001B00 & 0xFFFF)
    /* 2D2AC 0012C32C 00338434 */  ori        $a0, $a0, (0x70003300 & 0xFFFF)
    /* 2D2B0 0012C330 900511AE */  sw         $s1, 0x590($s0)
    /* 2D2B4 0012C334 940502AE */  sw         $v0, 0x594($s0)
    /* 2D2B8 0012C338 D00603AE */  sw         $v1, 0x6D0($s0)
    /* 2D2BC 0012C33C D40604AE */  sw         $a0, 0x6D4($s0)
    /* 2D2C0 0012C340 100800AE */  sw         $zero, 0x810($s0)
    /* 2D2C4 0012C344 2000BFDF */  ld         $ra, 0x20($sp)
    /* 2D2C8 0012C348 1000B1DF */  ld         $s1, 0x10($sp)
    /* 2D2CC 0012C34C 0000B0DF */  ld         $s0, 0x0($sp)
    /* 2D2D0 0012C350 0800E003 */  jr         $ra
    /* 2D2D4 0012C354 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_0012C2F8
