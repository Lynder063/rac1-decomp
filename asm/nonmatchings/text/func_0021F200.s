.align 3
nonmatching func_0021F200, 0x38

glabel func_0021F200
    /* 120180 0021F200 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 120184 0021F204 233C013C */  lui        $at, (0x3C23D70A >> 16)
    /* 120188 0021F208 0AD72134 */  ori        $at, $at, (0x3C23D70A & 0xFFFF)
    /* 12018C 0021F20C 00688144 */  mtc1       $at, $f13
    /* 120190 0021F210 1000BF7F */  sq         $ra, 0x10($sp)
    /* 120194 0021F214 0000B07F */  sq         $s0, 0x0($sp)
    /* 120198 0021F218 2D808000 */  daddu      $s0, $a0, $zero
    /* 12019C 0021F21C D2E9070C */  jal        func_001FA748
    /* 1201A0 0021F220 48000CC6 */   lwc1      $f12, 0x48($s0)
    /* 1201A4 0021F224 480000E6 */  swc1       $f0, 0x48($s0)
    /* 1201A8 0021F228 1000BF7B */  lq         $ra, 0x10($sp)
    /* 1201AC 0021F22C 0000B07B */  lq         $s0, 0x0($sp)
    /* 1201B0 0021F230 0800E003 */  jr         $ra
    /* 1201B4 0021F234 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_0021F200
