.align 3
nonmatching func_0023E510, 0x50

glabel func_0023E510
    /* 13F490 0023E510 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 13F494 0023E514 1600023C */  lui        $v0, %hi(D_0016130C)
    /* 13F498 0023E518 0C13428C */  lw         $v0, %lo(D_0016130C)($v0)
    /* 13F49C 0023E51C 2000B07F */  sq         $s0, 0x20($sp)
    /* 13F4A0 0023E520 0D00043C */  lui        $a0, (0xD9090 >> 16)
    /* 13F4A4 0023E524 2D80A000 */  daddu      $s0, $a1, $zero
    /* 13F4A8 0023E528 90908434 */  ori        $a0, $a0, (0xD9090 & 0xFFFF)
    /* 13F4AC 0023E52C 3000BF7F */  sq         $ra, 0x30($sp)
    /* 13F4B0 0023E530 21204400 */  addu       $a0, $v0, $a0
    /* 13F4B4 0023E534 3CF7080C */  jal        func_0023DCF0
    /* 13F4B8 0023E538 2D28A003 */   daddu     $a1, $sp, $zero
    /* 13F4BC 0023E53C 0000A4DF */  ld         $a0, 0x0($sp)
    /* 13F4C0 0023E540 01000224 */  addiu      $v0, $zero, 0x1
    /* 13F4C4 0023E544 0800A3DF */  ld         $v1, 0x8($sp)
    /* 13F4C8 0023E548 080004FE */  sd         $a0, 0x8($s0)
    /* 13F4CC 0023E54C 100003FE */  sd         $v1, 0x10($s0)
    /* 13F4D0 0023E550 3000BF7B */  lq         $ra, 0x30($sp)
    /* 13F4D4 0023E554 2000B07B */  lq         $s0, 0x20($sp)
    /* 13F4D8 0023E558 0800E003 */  jr         $ra
    /* 13F4DC 0023E55C 4000BD27 */   addiu     $sp, $sp, 0x40
endlabel func_0023E510
