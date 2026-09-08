.align 3
nonmatching func_0023E478, 0x38

glabel func_0023E478
    /* 13F3F8 0023E478 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 13F3FC 0023E47C 0000BF7F */  sq         $ra, 0x0($sp)
    /* 13F400 0023E480 D0EE080C */  jal        func_0023BB40
    /* 13F404 0023E484 00000000 */   nop
    /* 13F408 0023E488 1600023C */  lui        $v0, %hi(D_0016130C)
    /* 13F40C 0023E48C 0C13428C */  lw         $v0, %lo(D_0016130C)($v0)
    /* 13F410 0023E490 0D00043C */  lui        $a0, (0xD9090 >> 16)
    /* 13F414 0023E494 90908434 */  ori        $a0, $a0, (0xD9090 & 0xFFFF)
    /* 13F418 0023E498 D0F4080C */  jal        func_0023D340
    /* 13F41C 0023E49C 21204400 */   addu      $a0, $v0, $a0
    /* 13F420 0023E4A0 0000BF7B */  lq         $ra, 0x0($sp)
    /* 13F424 0023E4A4 01000224 */  addiu      $v0, $zero, 0x1
    /* 13F428 0023E4A8 0800E003 */  jr         $ra
    /* 13F42C 0023E4AC 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_0023E478
