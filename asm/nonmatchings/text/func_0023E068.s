.align 3
nonmatching func_0023E068, 0x48

glabel func_0023E068
    /* 13EFE8 0023E068 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 13EFEC 0023E06C 1600033C */  lui        $v1, %hi(D_0016130C)
    /* 13EFF0 0023E070 0C13638C */  lw         $v1, %lo(D_0016130C)($v1)
    /* 13EFF4 0023E074 2000BF7F */  sq         $ra, 0x20($sp)
    /* 13EFF8 0023E078 0D00023C */  lui        $v0, (0xD9090 >> 16)
    /* 13EFFC 0023E07C 0000A5FF */  sd         $a1, 0x0($sp)
    /* 13F000 0023E080 90904234 */  ori        $v0, $v0, (0xD9090 & 0xFFFF)
    /* 13F004 0023E084 0800A6FF */  sd         $a2, 0x8($sp)
    /* 13F008 0023E088 2D28A003 */  daddu      $a1, $sp, $zero
    /* 13F00C 0023E08C 4800868C */  lw         $a2, 0x48($a0)
    /* 13F010 0023E090 21206200 */  addu       $a0, $v1, $v0
    /* 13F014 0023E094 1400A8AF */  sw         $t0, 0x14($sp)
    /* 13F018 0023E098 2338E600 */  subu       $a3, $a3, $a2
    /* 13F01C 0023E09C F8F6080C */  jal        func_0023DBE0
    /* 13F020 0023E0A0 1000A7AF */   sw        $a3, 0x10($sp)
    /* 13F024 0023E0A4 2000BF7B */  lq         $ra, 0x20($sp)
    /* 13F028 0023E0A8 0800E003 */  jr         $ra
    /* 13F02C 0023E0AC 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_0023E068
