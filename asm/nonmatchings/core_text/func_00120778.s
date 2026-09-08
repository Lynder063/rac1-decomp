.align 3
nonmatching func_00120778, 0x40

glabel func_00120778
    /* 216F8 00120778 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 216FC 0012077C 2000BFFF */  sd         $ra, 0x20($sp)
    /* 21700 00120780 1000A427 */  addiu      $a0, $sp, 0x10
    /* 21704 00120784 1000ACE7 */  swc1       $f12, 0x10($sp)
    /* 21708 00120788 AC81040C */  jal        func_001206B0
    /* 2170C 0012078C 2D28A003 */   daddu     $a1, $sp, $zero
    /* 21710 00120790 0C00A78F */  lw         $a3, 0xC($sp)
    /* 21714 00120794 0000A48F */  lw         $a0, 0x0($sp)
    /* 21718 00120798 3C380700 */  dsll32     $a3, $a3, 0
    /* 2171C 0012079C 0400A58F */  lw         $a1, 0x4($sp)
    /* 21720 001207A0 0800A68F */  lw         $a2, 0x8($sp)
    /* 21724 001207A4 9C81040C */  jal        func_00120670
    /* 21728 001207A8 BA380700 */   dsrl      $a3, $a3, 2
    /* 2172C 001207AC 2000BFDF */  ld         $ra, 0x20($sp)
    /* 21730 001207B0 0800E003 */  jr         $ra
    /* 21734 001207B4 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_00120778
