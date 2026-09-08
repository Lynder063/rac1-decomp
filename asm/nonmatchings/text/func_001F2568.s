.align 3
nonmatching func_001F2568, 0x9C

glabel func_001F2568
    /* F34E8 001F2568 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* F34EC 001F256C 01000224 */  addiu      $v0, $zero, 0x1
    /* F34F0 001F2570 1000BF7F */  sq         $ra, 0x10($sp)
    /* F34F4 001F2574 0000B07F */  sq         $s0, 0x0($sp)
    /* F34F8 001F2578 1600013C */  lui        $at, %hi(D_0015F6FC)
    /* F34FC 001F257C FCF622AC */  sw         $v0, %lo(D_0015F6FC)($at)
    /* F3500 001F2580 1600013C */  lui        $at, %hi(D_00160FE0)
    /* F3504 001F2584 E00F20AC */  sw         $zero, %lo(D_00160FE0)($at)
    /* F3508 001F2588 2AD4080C */  jal        func_002350A8
    /* F350C 001F258C 00000000 */   nop
    /* F3510 001F2590 C28C040C */  jal        func_00123308
    /* F3514 001F2594 01000424 */   addiu     $a0, $zero, 0x1
    /* F3518 001F2598 9A30080C */  jal        func_0020C268
    /* F351C 001F259C 00000000 */   nop
    /* F3520 001F25A0 1600033C */  lui        $v1, %hi(D_0015EE80)
    /* F3524 001F25A4 80EE638C */  lw         $v1, %lo(D_0015EE80)($v1)
    /* F3528 001F25A8 02000224 */  addiu      $v0, $zero, 0x2
    /* F352C 001F25AC 03000624 */  addiu      $a2, $zero, 0x3
    /* F3530 001F25B0 01000524 */  addiu      $a1, $zero, 0x1
    /* F3534 001F25B4 2D380000 */  daddu      $a3, $zero, $zero
    /* F3538 001F25B8 2D200000 */  daddu      $a0, $zero, $zero
    /* F353C 001F25BC DE86040C */  jal        func_00121B78
    /* F3540 001F25C0 0A304300 */   movz      $a2, $v0, $v1
    /* F3544 001F25C4 EE81040C */  jal        func_001207B8
    /* F3548 001F25C8 00000000 */   nop
    /* F354C 001F25CC 3AD2080C */  jal        func_002348E8
    /* F3550 001F25D0 00000000 */   nop
    /* F3554 001F25D4 1600103C */  lui        $s0, %hi(D_0015EF78)
    /* F3558 001F25D8 78EF108E */  lw         $s0, %lo(D_0015EF78)($s0)
    /* F355C 001F25DC 24CE070C */  jal        func_001F3890
    /* F3560 001F25E0 00A380AF */   sw        $zero, -0x5D00($gp)
    /* F3564 001F25E4 3AD2080C */  jal        func_002348E8
    /* F3568 001F25E8 788290AF */   sw        $s0, -0x7D88($gp)
    /* F356C 001F25EC 06D4080C */  jal        func_00235018
    /* F3570 001F25F0 00000000 */   nop
    /* F3574 001F25F4 1000BF7B */  lq         $ra, 0x10($sp)
    /* F3578 001F25F8 0000B07B */  lq         $s0, 0x0($sp)
    /* F357C 001F25FC 0800E003 */  jr         $ra
    /* F3580 001F2600 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_001F2568
    /* F3584 001F2604 00000000 */  nop
