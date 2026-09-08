.align 3
nonmatching func_0023C088, 0x58

glabel func_0023C088
    /* 13D008 0023C088 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 13D00C 0023C08C FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 13D010 0023C090 1000BF7F */  sq         $ra, 0x10($sp)
    /* 13D014 0023C094 0000B07F */  sq         $s0, 0x0($sp)
    /* 13D018 0023C098 2D808000 */  daddu      $s0, $a0, $zero
    /* 13D01C 0023C09C 4C00028E */  lw         $v0, 0x4C($s0)
    /* 13D020 0023C0A0 4800048E */  lw         $a0, 0x48($s0)
    /* 13D024 0023C0A4 2A186200 */  slt        $v1, $v1, $v0
    /* 13D028 0023C0A8 FF034524 */  addiu      $a1, $v0, 0x3FF
    /* 13D02C 0023C0AC 0B284300 */  movn       $a1, $v0, $v1
    /* 13D030 0023C0B0 5C00068E */  lw         $a2, 0x5C($s0)
    /* 13D034 0023C0B4 1400078E */  lw         $a3, 0x14($s0)
    /* 13D038 0023C0B8 832A0500 */  sra        $a1, $a1, 10
    /* 13D03C 0023C0BC 1800088E */  lw         $t0, 0x18($s0)
    /* 13D040 0023C0C0 92BC040C */  jal        func_0012F248
    /* 13D044 0023C0C4 802A0500 */   sll       $a1, $a1, 10
    /* 13D048 0023C0C8 02000224 */  addiu      $v0, $zero, 0x2
    /* 13D04C 0023C0CC 1000BF7B */  lq         $ra, 0x10($sp)
    /* 13D050 0023C0D0 000002AE */  sw         $v0, 0x0($s0)
    /* 13D054 0023C0D4 0000B07B */  lq         $s0, 0x0($sp)
    /* 13D058 0023C0D8 0800E003 */  jr         $ra
    /* 13D05C 0023C0DC 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_0023C088
