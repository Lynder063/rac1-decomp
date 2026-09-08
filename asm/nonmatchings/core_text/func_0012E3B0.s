.align 3
nonmatching func_0012E3B0, 0x44

glabel func_0012E3B0
    /* 2F330 0012E3B0 1000BD27 */  addiu      $sp, $sp, 0x10
    /* 2F334 0012E3B4 00000000 */  nop
    /* 2F338 0012E3B8 1000BD27 */  addiu      $sp, $sp, 0x10
    /* 2F33C 0012E3BC 00000000 */  nop
.align 2
  alabel func_0012E3C0
    /* 2F340 0012E3C0 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 2F344 0012E3C4 2D380000 */  daddu      $a3, $zero, $zero
    /* 2F348 0012E3C8 0000A4AF */  sw         $a0, 0x0($sp)
    /* 2F34C 0012E3CC 2D30A003 */  daddu      $a2, $sp, $zero
    /* 2F350 0012E3D0 0400A5AF */  sw         $a1, 0x4($sp)
    /* 2F354 0012E3D4 0D000424 */  addiu      $a0, $zero, 0xD
    /* 2F358 0012E3D8 1000BF7F */  sq         $ra, 0x10($sp)
    /* 2F35C 0012E3DC 08000524 */  addiu      $a1, $zero, 0x8
    /* 2F360 0012E3E0 08BA040C */  jal        func_0012E820
    /* 2F364 0012E3E4 2D400000 */   daddu     $t0, $zero, $zero
    /* 2F368 0012E3E8 1000BF7B */  lq         $ra, 0x10($sp)
    /* 2F36C 0012E3EC 0800E003 */  jr         $ra
    /* 2F370 0012E3F0 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_0012E3B0
    /* 2F374 0012E3F4 00000000 */  nop
