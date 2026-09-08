.align 3
nonmatching func_0011D3C8, 0xC4

glabel func_0011D3C8
    /* 1E348 0011D3C8 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 1E34C 0011D3CC 1300023C */  lui        $v0, %hi(D_00130138)
    /* 1E350 0011D3D0 2000B2FF */  sd         $s2, 0x20($sp)
    /* 1E354 0011D3D4 1000B1FF */  sd         $s1, 0x10($sp)
    /* 1E358 0011D3D8 03001224 */  addiu      $s2, $zero, 0x3
    /* 1E35C 0011D3DC 0000B0FF */  sd         $s0, 0x0($sp)
    /* 1E360 0011D3E0 3000BFFF */  sd         $ra, 0x30($sp)
    /* 1E364 0011D3E4 38015024 */  addiu      $s0, $v0, %lo(D_00130138)
    /* 1E368 0011D3E8 3801448C */  lw         $a0, %lo(D_00130138)($v0)
    /* 1E36C 0011D3EC 18001126 */  addiu      $s1, $s0, 0x18
    /* 1E370 0011D3F0 EE74040C */  jal        func_0011D3B8
    /* 1E374 0011D3F4 0400058E */   lw        $a1, 0x4($s0)
    /* 1E378 0011D3F8 1300053C */  lui        $a1, %hi(D_0012FDB8)
    /* 1E37C 0011D3FC 0780043C */  lui        $a0, (0x80075000 >> 16)
    /* 1E380 0011D400 30030624 */  addiu      $a2, $zero, 0x330
    /* 1E384 0011D404 B8FDA524 */  addiu      $a1, $a1, %lo(D_0012FDB8)
    /* 1E388 0011D408 D874040C */  jal        func_0011D360
    /* 1E38C 0011D40C 00508434 */   ori       $a0, $a0, (0x80075000 & 0xFFFF)
    /* 1E390 0011D410 6063040C */  jal        func_00118D80
    /* 1E394 0011D414 2D200000 */   daddu     $a0, $zero, $zero
    /* 1E398 0011D418 6063040C */  jal        func_00118D80
    /* 1E39C 0011D41C 02000424 */   addiu     $a0, $zero, 0x2
    /* 1E3A0 0011D420 0800048E */  lw         $a0, 0x8($s0)
    /* 1E3A4 0011D424 EE74040C */  jal        func_0011D3B8
    /* 1E3A8 0011D428 0C00058E */   lw        $a1, 0xC($s0)
    /* 1E3AC 0011D42C 1000048E */  lw         $a0, 0x10($s0)
    /* 1E3B0 0011D430 EE74040C */  jal        func_0011D3B8
    /* 1E3B4 0011D434 1400058E */   lw        $a1, 0x14($s0)
    /* 1E3B8 0011D438 0000248E */  lw         $a0, 0x0($s1)
    /* 1E3BC 0011D43C 00000000 */  nop
.align 2
  .L0011D440:
    /* 1E3C0 0011D440 EA74040C */  jal        func_0011D3A8
    /* 1E3C4 0011D444 01005226 */   addiu     $s2, $s2, 0x1
    /* 1E3C8 0011D448 0000248E */  lw         $a0, 0x0($s1)
    /* 1E3CC 0011D44C 2D284000 */  daddu      $a1, $v0, $zero
    /* 1E3D0 0011D450 EE74040C */  jal        func_0011D3B8
    /* 1E3D4 0011D454 08003126 */   addiu     $s1, $s1, 0x8
    /* 1E3D8 0011D458 0800422E */  sltiu      $v0, $s2, 0x8
    /* 1E3DC 0011D45C F8FF4054 */  bnel       $v0, $zero, .L0011D440
    /* 1E3E0 0011D460 0000248E */   lw        $a0, 0x0($s1)
    /* 1E3E4 0011D464 EA74040C */  jal        func_0011D3A8
    /* 1E3E8 0011D468 03000424 */   addiu     $a0, $zero, 0x3
    /* 1E3EC 0011D46C 1300033C */  lui        $v1, %hi(D_00130130)
    /* 1E3F0 0011D470 3000BFDF */  ld         $ra, 0x30($sp)
    /* 1E3F4 0011D474 2000B2DF */  ld         $s2, 0x20($sp)
    /* 1E3F8 0011D478 1000B1DF */  ld         $s1, 0x10($sp)
    /* 1E3FC 0011D47C 0000B0DF */  ld         $s0, 0x0($sp)
    /* 1E400 0011D480 300162AC */  sw         $v0, %lo(D_00130130)($v1)
    /* 1E404 0011D484 0800E003 */  jr         $ra
    /* 1E408 0011D488 4000BD27 */   addiu     $sp, $sp, 0x40
endlabel func_0011D3C8
    /* 1E40C 0011D48C 00000000 */  nop
