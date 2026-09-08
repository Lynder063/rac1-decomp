.align 3
nonmatching func_0012F120, 0x3C

glabel func_0012F120
    /* 300A0 0012F120 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 300A4 0012F124 2D400000 */  daddu      $t0, $zero, $zero
    /* 300A8 0012F128 0000A4AF */  sw         $a0, 0x0($sp)
    /* 300AC 0012F12C 0400A5AF */  sw         $a1, 0x4($sp)
    /* 300B0 0012F130 10000424 */  addiu      $a0, $zero, 0x10
    /* 300B4 0012F134 0800A6AF */  sw         $a2, 0x8($sp)
    /* 300B8 0012F138 10000524 */  addiu      $a1, $zero, 0x10
    /* 300BC 0012F13C 0C00A7AF */  sw         $a3, 0xC($sp)
    /* 300C0 0012F140 2D30A003 */  daddu      $a2, $sp, $zero
    /* 300C4 0012F144 1000BF7F */  sq         $ra, 0x10($sp)
    /* 300C8 0012F148 08BA040C */  jal        func_0012E820
    /* 300CC 0012F14C 2D380000 */   daddu     $a3, $zero, $zero
    /* 300D0 0012F150 1000BF7B */  lq         $ra, 0x10($sp)
    /* 300D4 0012F154 0800E003 */  jr         $ra
    /* 300D8 0012F158 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_0012F120
    /* 300DC 0012F15C 00000000 */  nop
