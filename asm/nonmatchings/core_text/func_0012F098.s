.align 3
nonmatching func_0012F098, 0x50

glabel func_0012F098
    /* 30018 0012F098 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 3001C 0012F09C 00000000 */  nop
    /* 30020 0012F0A0 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 30024 0012F0A4 00000000 */  nop
.align 2
  alabel func_0012F0A8
    /* 30028 0012F0A8 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 3002C 0012F0AC 0000A4AF */  sw         $a0, 0x0($sp)
    /* 30030 0012F0B0 1000A8AF */  sw         $t0, 0x10($sp)
    /* 30034 0012F0B4 50000424 */  addiu      $a0, $zero, 0x50
    /* 30038 0012F0B8 0400A5AF */  sw         $a1, 0x4($sp)
    /* 3003C 0012F0BC 2D400000 */  daddu      $t0, $zero, $zero
    /* 30040 0012F0C0 0800A6AF */  sw         $a2, 0x8($sp)
    /* 30044 0012F0C4 14000524 */  addiu      $a1, $zero, 0x14
    /* 30048 0012F0C8 0C00A7AF */  sw         $a3, 0xC($sp)
    /* 3004C 0012F0CC 2D30A003 */  daddu      $a2, $sp, $zero
    /* 30050 0012F0D0 2000BF7F */  sq         $ra, 0x20($sp)
    /* 30054 0012F0D4 08BA040C */  jal        func_0012E820
    /* 30058 0012F0D8 2D380000 */   daddu     $a3, $zero, $zero
    /* 3005C 0012F0DC 2000BF7B */  lq         $ra, 0x20($sp)
    /* 30060 0012F0E0 0800E003 */  jr         $ra
    /* 30064 0012F0E4 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_0012F098
