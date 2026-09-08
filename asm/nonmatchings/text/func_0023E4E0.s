.align 3
nonmatching func_0023E4E0, 0x30

glabel func_0023E4E0
    /* 13F460 0023E4E0 1600023C */  lui        $v0, %hi(D_0016130C)
    /* 13F464 0023E4E4 0C13428C */  lw         $v0, %lo(D_0016130C)($v0)
    /* 13F468 0023E4E8 0D00043C */  lui        $a0, (0xD9090 >> 16)
    /* 13F46C 0023E4EC F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 13F470 0023E4F0 90908434 */  ori        $a0, $a0, (0xD9090 & 0xFFFF)
    /* 13F474 0023E4F4 0000BF7F */  sq         $ra, 0x0($sp)
    /* 13F478 0023E4F8 94F5080C */  jal        func_0023D650
    /* 13F47C 0023E4FC 21204400 */   addu      $a0, $v0, $a0
    /* 13F480 0023E500 0000BF7B */  lq         $ra, 0x0($sp)
    /* 13F484 0023E504 01000224 */  addiu      $v0, $zero, 0x1
    /* 13F488 0023E508 0800E003 */  jr         $ra
    /* 13F48C 0023E50C 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_0023E4E0
