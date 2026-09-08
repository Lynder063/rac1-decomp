.align 3
nonmatching func_0012E438, 0x58

glabel func_0012E438
    /* 2F3B8 0012E438 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 2F3BC 0012E43C 00000000 */  nop
    /* 2F3C0 0012E440 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 2F3C4 0012E444 00000000 */  nop
.align 2
  alabel func_0012E448
    /* 2F3C8 0012E448 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 2F3CC 0012E44C 2D10E000 */  daddu      $v0, $a3, $zero
    /* 2F3D0 0012E450 0000A4AF */  sw         $a0, 0x0($sp)
    /* 2F3D4 0012E454 2D384001 */  daddu      $a3, $t2, $zero
    /* 2F3D8 0012E458 1000A8AF */  sw         $t0, 0x10($sp)
    /* 2F3DC 0012E45C 11000424 */  addiu      $a0, $zero, 0x11
    /* 2F3E0 0012E460 0400A5AF */  sw         $a1, 0x4($sp)
    /* 2F3E4 0012E464 2D406001 */  daddu      $t0, $t3, $zero
    /* 2F3E8 0012E468 0800A6AF */  sw         $a2, 0x8($sp)
    /* 2F3EC 0012E46C 18000524 */  addiu      $a1, $zero, 0x18
    /* 2F3F0 0012E470 2000BF7F */  sq         $ra, 0x20($sp)
    /* 2F3F4 0012E474 2D30A003 */  daddu      $a2, $sp, $zero
    /* 2F3F8 0012E478 0C00A2AF */  sw         $v0, 0xC($sp)
    /* 2F3FC 0012E47C 08BA040C */  jal        func_0012E820
    /* 2F400 0012E480 1400A9AF */   sw        $t1, 0x14($sp)
    /* 2F404 0012E484 2000BF7B */  lq         $ra, 0x20($sp)
    /* 2F408 0012E488 0800E003 */  jr         $ra
    /* 2F40C 0012E48C 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_0012E438
