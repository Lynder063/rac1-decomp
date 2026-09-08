.align 3
nonmatching func_001F2418, 0x134

glabel func_001F2418
    /* F3398 001F2418 00FFBD27 */  addiu      $sp, $sp, -0x100
    /* F339C 001F241C B000B17F */  sq         $s1, 0xB0($sp)
    /* F33A0 001F2420 D000B37F */  sq         $s3, 0xD0($sp)
    /* F33A4 001F2424 2D888000 */  daddu      $s1, $a0, $zero
    /* F33A8 001F2428 E000BF7F */  sq         $ra, 0xE0($sp)
    /* F33AC 001F242C 2D20A003 */  daddu      $a0, $sp, $zero
    /* F33B0 001F2430 C000B27F */  sq         $s2, 0xC0($sp)
    /* F33B4 001F2434 2D98A000 */  daddu      $s3, $a1, $zero
    /* F33B8 001F2438 A000B07F */  sq         $s0, 0xA0($sp)
    /* F33BC 001F243C 64E8070C */  jal        func_001FA190
    /* F33C0 001F2440 F000B4E7 */   swc1      $f20, 0xF0($sp)
    /* F33C4 001F2444 8044013C */  lui        $at, (0x44800000 >> 16)
    /* F33C8 001F2448 00A08144 */  mtc1       $at, $f20
    /* F33CC 001F244C 1800023C */  lui        $v0, %hi(D_00187040)
    /* F33D0 001F2450 4000B227 */  addiu      $s2, $sp, 0x40
    /* F33D4 001F2454 40704224 */  addiu      $v0, $v0, %lo(D_00187040)
    /* F33D8 001F2458 2D30A003 */  daddu      $a2, $sp, $zero
    /* F33DC 001F245C 400142C4 */  lwc1       $f2, 0x140($v0)
    /* F33E0 001F2460 40004524 */  addiu      $a1, $v0, 0x40
    /* F33E4 001F2464 440141C4 */  lwc1       $f1, 0x144($v0)
    /* F33E8 001F2468 2D204002 */  daddu      $a0, $s2, $zero
    /* F33EC 001F246C 480140C4 */  lwc1       $f0, 0x148($v0)
    /* F33F0 001F2470 87100046 */  neg.s      $f2, $f2
    /* F33F4 001F2474 47080046 */  neg.s      $f1, $f1
    /* F33F8 001F2478 07000046 */  neg.s      $f0, $f0
    /* F33FC 001F247C 82101446 */  mul.s      $f2, $f2, $f20
    /* F3400 001F2480 42081446 */  mul.s      $f1, $f1, $f20
    /* F3404 001F2484 02001446 */  mul.s      $f0, $f0, $f20
    /* F3408 001F2488 3000A2E7 */  swc1       $f2, 0x30($sp)
    /* F340C 001F248C 3400A1E7 */  swc1       $f1, 0x34($sp)
    /* F3410 001F2490 50E9070C */  jal        func_001FA540
    /* F3414 001F2494 3800A0E7 */   swc1      $f0, 0x38($sp)
    /* F3418 001F2498 8000B027 */  addiu      $s0, $sp, 0x80
    /* F341C 001F249C 06A30046 */  mov.s      $f12, $f20
    /* F3420 001F24A0 2D286002 */  daddu      $a1, $s3, $zero
    /* F3424 001F24A4 0CE7070C */  jal        func_001F9C30
    /* F3428 001F24A8 2D200002 */   daddu     $a0, $s0, $zero
    /* F342C 001F24AC 803F013C */  lui        $at, (0x3F800000 >> 16)
    /* F3430 001F24B0 00008144 */  mtc1       $at, $f0
    /* F3434 001F24B4 2D280002 */  daddu      $a1, $s0, $zero
    /* F3438 001F24B8 2D304002 */  daddu      $a2, $s2, $zero
    /* F343C 001F24BC 9000A427 */  addiu      $a0, $sp, 0x90
    /* F3440 001F24C0 BAE7070C */  jal        func_001F9EE8
    /* F3444 001F24C4 8C00A0E7 */   swc1      $f0, 0x8C($sp)
    /* F3448 001F24C8 1900023C */  lui        $v0, %hi(D_0018D010)
    /* F344C 001F24CC 9C00A1C7 */  lwc1       $f1, 0x9C($sp)
    /* F3450 001F24D0 10D042C4 */  lwc1       $f2, %lo(D_0018D010)($v0)
    /* F3454 001F24D4 9400A0C7 */  lwc1       $f0, 0x94($sp)
    /* F3458 001F24D8 83100146 */  div.s      $f2, $f2, $f1
    /* F345C 001F24DC 9000A3C7 */  lwc1       $f3, 0x90($sp)
    /* F3460 001F24E0 0045013C */  lui        $at, (0x45000000 >> 16)
    /* F3464 001F24E4 00308144 */  mtc1       $at, $f6
    /* F3468 001F24E8 9800A1C7 */  lwc1       $f1, 0x98($sp)
    /* F346C 001F24EC 803A013C */  lui        $at, (0x3A800000 >> 16)
    /* F3470 001F24F0 00288144 */  mtc1       $at, $f5
    /* F3474 001F24F4 8041013C */  lui        $at, (0x41800000 >> 16)
    /* F3478 001F24F8 00208144 */  mtc1       $at, $f4
    /* F347C 001F24FC 42080546 */  mul.s      $f1, $f1, $f5
    /* F3480 001F2500 E000BF7B */  lq         $ra, 0xE0($sp)
    /* F3484 001F2504 02000246 */  mul.s      $f0, $f0, $f2
    /* F3488 001F2508 D000B37B */  lq         $s3, 0xD0($sp)
    /* F348C 001F250C C2180246 */  mul.s      $f3, $f3, $f2
    /* F3490 001F2510 C000B27B */  lq         $s2, 0xC0($sp)
    /* F3494 001F2514 080021E6 */  swc1       $f1, 0x8($s1)
    /* F3498 001F2518 00000646 */  add.s      $f0, $f0, $f6
    /* F349C 001F251C A000B07B */  lq         $s0, 0xA0($sp)
    /* F34A0 001F2520 C0180646 */  add.s      $f3, $f3, $f6
    /* F34A4 001F2524 F000B4C7 */  lwc1       $f20, 0xF0($sp)
    /* F34A8 001F2528 82000446 */  mul.s      $f2, $f0, $f4
    /* F34AC 001F252C 9400A0E7 */  swc1       $f0, 0x94($sp)
    /* F34B0 001F2530 02190446 */  mul.s      $f4, $f3, $f4
    /* F34B4 001F2534 9000A3E7 */  swc1       $f3, 0x90($sp)
    /* F34B8 001F2538 040022E6 */  swc1       $f2, 0x4($s1)
    /* F34BC 001F253C 000024E6 */  swc1       $f4, 0x0($s1)
    /* F34C0 001F2540 B000B17B */  lq         $s1, 0xB0($sp)
    /* F34C4 001F2544 0800E003 */  jr         $ra
    /* F34C8 001F2548 0001BD27 */   addiu     $sp, $sp, 0x100
endlabel func_001F2418
    /* F34CC 001F254C 00000000 */  nop
