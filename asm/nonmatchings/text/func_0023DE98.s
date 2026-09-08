.align 3
nonmatching func_0023DE98, 0x100

glabel func_0023DE98
    /* 13EE18 0023DE98 90FFBD27 */  addiu      $sp, $sp, -0x70
    /* 13EE1C 0023DE9C 0000B07F */  sq         $s0, 0x0($sp)
    /* 13EE20 0023DEA0 5000B57F */  sq         $s5, 0x50($sp)
    /* 13EE24 0023DEA4 2D808000 */  daddu      $s0, $a0, $zero
    /* 13EE28 0023DEA8 4000B47F */  sq         $s4, 0x40($sp)
    /* 13EE2C 0023DEAC 2DA86001 */  daddu      $s5, $t3, $zero
    /* 13EE30 0023DEB0 3000B37F */  sq         $s3, 0x30($sp)
    /* 13EE34 0023DEB4 2DA04001 */  daddu      $s4, $t2, $zero
    /* 13EE38 0023DEB8 2000B27F */  sq         $s2, 0x20($sp)
    /* 13EE3C 0023DEBC 2D982001 */  daddu      $s3, $t1, $zero
    /* 13EE40 0023DEC0 1000B17F */  sq         $s1, 0x10($sp)
    /* 13EE44 0023DEC4 2D900001 */  daddu      $s2, $t0, $zero
    /* 13EE48 0023DEC8 6000BF7F */  sq         $ra, 0x60($sp)
    /* 13EE4C 0023DECC 46AE040C */  jal        func_0012B918
    /* 13EE50 0023DED0 2D88E000 */   daddu     $s1, $a3, $zero
    /* 13EE54 0023DED4 2400063C */  lui        $a2, %hi(func_0023E450)
    /* 13EE58 0023DED8 2D200002 */  daddu      $a0, $s0, $zero
    /* 13EE5C 0023DEDC 50E4C624 */  addiu      $a2, $a2, %lo(func_0023E450)
    /* 13EE60 0023DEE0 2D280000 */  daddu      $a1, $zero, $zero
    /* 13EE64 0023DEE4 14AF040C */  jal        func_0012BC50
    /* 13EE68 0023DEE8 2D380000 */   daddu     $a3, $zero, $zero
    /* 13EE6C 0023DEEC 2400063C */  lui        $a2, %hi(func_0023E478)
    /* 13EE70 0023DEF0 2D200002 */  daddu      $a0, $s0, $zero
    /* 13EE74 0023DEF4 78E4C624 */  addiu      $a2, $a2, %lo(func_0023E478)
    /* 13EE78 0023DEF8 01000524 */  addiu      $a1, $zero, 0x1
    /* 13EE7C 0023DEFC 14AF040C */  jal        func_0012BC50
    /* 13EE80 0023DF00 2D380000 */   daddu     $a3, $zero, $zero
    /* 13EE84 0023DF04 2400063C */  lui        $a2, %hi(func_0023E4B0)
    /* 13EE88 0023DF08 2D200002 */  daddu      $a0, $s0, $zero
    /* 13EE8C 0023DF0C B0E4C624 */  addiu      $a2, $a2, %lo(func_0023E4B0)
    /* 13EE90 0023DF10 02000524 */  addiu      $a1, $zero, 0x2
    /* 13EE94 0023DF14 14AF040C */  jal        func_0012BC50
    /* 13EE98 0023DF18 2D380000 */   daddu     $a3, $zero, $zero
    /* 13EE9C 0023DF1C 2400063C */  lui        $a2, %hi(func_0023E4E0)
    /* 13EEA0 0023DF20 2D200002 */  daddu      $a0, $s0, $zero
    /* 13EEA4 0023DF24 E0E4C624 */  addiu      $a2, $a2, %lo(func_0023E4E0)
    /* 13EEA8 0023DF28 03000524 */  addiu      $a1, $zero, 0x3
    /* 13EEAC 0023DF2C 14AF040C */  jal        func_0012BC50
    /* 13EEB0 0023DF30 2D380000 */   daddu     $a3, $zero, $zero
    /* 13EEB4 0023DF34 2400063C */  lui        $a2, %hi(func_0023E510)
    /* 13EEB8 0023DF38 05000524 */  addiu      $a1, $zero, 0x5
    /* 13EEBC 0023DF3C 10E5C624 */  addiu      $a2, $a2, %lo(func_0023E510)
    /* 13EEC0 0023DF40 2D380000 */  daddu      $a3, $zero, $zero
    /* 13EEC4 0023DF44 14AF040C */  jal        func_0012BC50
    /* 13EEC8 0023DF48 2D200002 */   daddu     $a0, $s0, $zero
    /* 13EECC 0023DF4C 00F8080C */  jal        func_0023E000
    /* 13EED0 0023DF50 2D200002 */   daddu     $a0, $s0, $zero
    /* 13EED4 0023DF54 48000426 */  addiu      $a0, $s0, 0x48
    /* 13EED8 0023DF58 2D282002 */  daddu      $a1, $s1, $zero
    /* 13EEDC 0023DF5C 2D304002 */  daddu      $a2, $s2, $zero
    /* 13EEE0 0023DF60 2D386002 */  daddu      $a3, $s3, $zero
    /* 13EEE4 0023DF64 2D408002 */  daddu      $t0, $s4, $zero
    /* 13EEE8 0023DF68 06F4080C */  jal        func_0023D018
    /* 13EEEC 0023DF6C 2D48A002 */   daddu     $t1, $s5, $zero
    /* 13EEF0 0023DF70 6000BF7B */  lq         $ra, 0x60($sp)
    /* 13EEF4 0023DF74 01000224 */  addiu      $v0, $zero, 0x1
    /* 13EEF8 0023DF78 5000B57B */  lq         $s5, 0x50($sp)
    /* 13EEFC 0023DF7C 4000B47B */  lq         $s4, 0x40($sp)
    /* 13EF00 0023DF80 3000B37B */  lq         $s3, 0x30($sp)
    /* 13EF04 0023DF84 2000B27B */  lq         $s2, 0x20($sp)
    /* 13EF08 0023DF88 1000B17B */  lq         $s1, 0x10($sp)
    /* 13EF0C 0023DF8C 0000B07B */  lq         $s0, 0x0($sp)
    /* 13EF10 0023DF90 0800E003 */  jr         $ra
    /* 13EF14 0023DF94 7000BD27 */   addiu     $sp, $sp, 0x70
endlabel func_0023DE98
