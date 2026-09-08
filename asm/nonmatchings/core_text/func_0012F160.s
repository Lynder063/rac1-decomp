.align 3
nonmatching func_0012F160, 0x84

glabel func_0012F160
    /* 300E0 0012F160 1000BD27 */  addiu      $sp, $sp, 0x10
    /* 300E4 0012F164 00000000 */  nop
    /* 300E8 0012F168 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 300EC 0012F16C 00000000 */  nop
    /* 300F0 0012F170 1000BD27 */  addiu      $sp, $sp, 0x10
    /* 300F4 0012F174 00000000 */  nop
    /* 300F8 0012F178 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 300FC 0012F17C 00000000 */  nop
    /* 30100 0012F180 2000BD27 */  addiu      $sp, $sp, 0x20
    /* 30104 0012F184 00000000 */  nop
    /* 30108 0012F188 1000BD27 */  addiu      $sp, $sp, 0x10
    /* 3010C 0012F18C 00000000 */  nop
    /* 30110 0012F190 1000BD27 */  addiu      $sp, $sp, 0x10
    /* 30114 0012F194 00000000 */  nop
    /* 30118 0012F198 1000BD27 */  addiu      $sp, $sp, 0x10
    /* 3011C 0012F19C 00000000 */  nop
    /* 30120 0012F1A0 1000BD27 */  addiu      $sp, $sp, 0x10
    /* 30124 0012F1A4 00000000 */  nop
.align 2
  alabel func_0012F1A8
    /* 30128 0012F1A8 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 3012C 0012F1AC 0000A4AF */  sw         $a0, 0x0($sp)
    /* 30130 0012F1B0 0400A5AF */  sw         $a1, 0x4($sp)
    /* 30134 0012F1B4 3B000424 */  addiu      $a0, $zero, 0x3B
    /* 30138 0012F1B8 0800A6AF */  sw         $a2, 0x8($sp)
    /* 3013C 0012F1BC 18000524 */  addiu      $a1, $zero, 0x18
    /* 30140 0012F1C0 2000BF7F */  sq         $ra, 0x20($sp)
    /* 30144 0012F1C4 2D30A003 */  daddu      $a2, $sp, $zero
    /* 30148 0012F1C8 0C00A7AF */  sw         $a3, 0xC($sp)
    /* 3014C 0012F1CC 1000A8AF */  sw         $t0, 0x10($sp)
    /* 30150 0012F1D0 A2B9040C */  jal        func_0012E688
    /* 30154 0012F1D4 1400A9AF */   sw        $t1, 0x14($sp)
    /* 30158 0012F1D8 2000BF7B */  lq         $ra, 0x20($sp)
    /* 3015C 0012F1DC 0800E003 */  jr         $ra
    /* 30160 0012F1E0 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_0012F160
    /* 30164 0012F1E4 00000000 */  nop
