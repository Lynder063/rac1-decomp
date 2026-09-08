.align 3
nonmatching func_001EB338, 0x11C

glabel func_001EB338
    /* EC2B8 001EB338 70FFBD27 */  addiu      $sp, $sp, -0x90
    /* EC2BC 001EB33C 1900033C */  lui        $v1, %hi(D_0018CC20)
    /* EC2C0 001EB340 6000B27F */  sq         $s2, 0x60($sp)
    /* EC2C4 001EB344 20CC6324 */  addiu      $v1, $v1, %lo(D_0018CC20)
    /* EC2C8 001EB348 5000B17F */  sq         $s1, 0x50($sp)
    /* EC2CC 001EB34C 1900043C */  lui        $a0, %hi(D_0018CEB0)
    /* EC2D0 001EB350 8000BF7F */  sq         $ra, 0x80($sp)
    /* EC2D4 001EB354 7000B37F */  sq         $s3, 0x70($sp)
    /* EC2D8 001EB358 4000B07F */  sq         $s0, 0x40($sp)
    /* EC2DC 001EB35C 5400708C */  lw         $s0, 0x54($v1)
    /* EC2E0 001EB360 3800628C */  lw         $v0, 0x38($v1)
    /* EC2E4 001EB364 213F013C */  lui        $at, (0x3F2147AE >> 16)
    /* EC2E8 001EB368 AE472134 */  ori        $at, $at, (0x3F2147AE & 0xFFFF)
    /* EC2EC 001EB36C 00008144 */  mtc1       $at, $f0
    /* EC2F0 001EB370 40110200 */  sll        $v0, $v0, 5
    /* EC2F4 001EB374 21800202 */  addu       $s0, $s0, $v0
    /* EC2F8 001EB378 0C001392 */  lbu        $s3, 0xC($s0)
    /* EC2FC 001EB37C 10001226 */  addiu      $s2, $s0, 0x10
    /* EC300 001EB380 50CC070C */  jal        func_001F3140
    /* EC304 001EB384 B0CE80E4 */   swc1      $f0, %lo(D_0018CEB0)($a0)
    /* EC308 001EB388 1800113C */  lui        $s1, %hi(D_00187180)
    /* EC30C 001EB38C 80713126 */  addiu      $s1, $s1, %lo(D_00187180)
    /* EC310 001EB390 0000027A */  lq         $v0, 0x0($s0)
    /* EC314 001EB394 0000227E */  sq         $v0, 0x0($s1)
    /* EC318 001EB398 D694040C */  jal        func_00125358
    /* EC31C 001EB39C 2D20A003 */   daddu     $a0, $sp, $zero
    /* EC320 001EB3A0 10000CC6 */  lwc1       $f12, 0x10($s0)
    /* EC324 001EB3A4 2D20A003 */  daddu      $a0, $sp, $zero
    /* EC328 001EB3A8 2895040C */  jal        func_001254A0
    /* EC32C 001EB3AC 2D28A003 */   daddu     $a1, $sp, $zero
    /* EC330 001EB3B0 04004CC6 */  lwc1       $f12, 0x4($s2)
    /* EC334 001EB3B4 2D20A003 */  daddu      $a0, $sp, $zero
    /* EC338 001EB3B8 5295040C */  jal        func_00125548
    /* EC33C 001EB3BC 2D28A003 */   daddu     $a1, $sp, $zero
    /* EC340 001EB3C0 08004CC6 */  lwc1       $f12, 0x8($s2)
    /* EC344 001EB3C4 2D20A003 */  daddu      $a0, $sp, $zero
    /* EC348 001EB3C8 FE94040C */  jal        func_001253F8
    /* EC34C 001EB3CC 2D28A003 */   daddu     $a1, $sp, $zero
    /* EC350 001EB3D0 2000A4C7 */  lwc1       $f4, 0x20($sp)
    /* EC354 001EB3D4 C0FE3126 */  addiu      $s1, $s1, -0x140
    /* EC358 001EB3D8 0000A5C7 */  lwc1       $f5, 0x0($sp)
    /* EC35C 001EB3DC 2D106002 */  daddu      $v0, $s3, $zero
    /* EC360 001EB3E0 2400A6C7 */  lwc1       $f6, 0x24($sp)
    /* EC364 001EB3E4 07210046 */  neg.s      $f4, $f4
    /* EC368 001EB3E8 0400A2C7 */  lwc1       $f2, 0x4($sp)
    /* EC36C 001EB3EC 47290046 */  neg.s      $f5, $f5
    /* EC370 001EB3F0 2800A3C7 */  lwc1       $f3, 0x28($sp)
    /* EC374 001EB3F4 87310046 */  neg.s      $f6, $f6
    /* EC378 001EB3F8 0800A1C7 */  lwc1       $f1, 0x8($sp)
    /* EC37C 001EB3FC 87100046 */  neg.s      $f2, $f2
    /* EC380 001EB400 C7180046 */  neg.s      $f3, $f3
    /* EC384 001EB404 1000A7C7 */  lwc1       $f7, 0x10($sp)
    /* EC388 001EB408 47080046 */  neg.s      $f1, $f1
    /* EC38C 001EB40C 1400A8C7 */  lwc1       $f8, 0x14($sp)
    /* EC390 001EB410 1800A0C7 */  lwc1       $f0, 0x18($sp)
    /* EC394 001EB414 500324E6 */  swc1       $f4, 0x350($s1)
    /* EC398 001EB418 780320E6 */  swc1       $f0, 0x378($s1)
    /* EC39C 001EB41C 600325E6 */  swc1       $f5, 0x360($s1)
    /* EC3A0 001EB420 700327E6 */  swc1       $f7, 0x370($s1)
    /* EC3A4 001EB424 540326E6 */  swc1       $f6, 0x354($s1)
    /* EC3A8 001EB428 640322E6 */  swc1       $f2, 0x364($s1)
    /* EC3AC 001EB42C 740328E6 */  swc1       $f8, 0x374($s1)
    /* EC3B0 001EB430 580323E6 */  swc1       $f3, 0x358($s1)
    /* EC3B4 001EB434 680321E6 */  swc1       $f1, 0x368($s1)
    /* EC3B8 001EB438 8000BF7B */  lq         $ra, 0x80($sp)
    /* EC3BC 001EB43C 7000B37B */  lq         $s3, 0x70($sp)
    /* EC3C0 001EB440 6000B27B */  lq         $s2, 0x60($sp)
    /* EC3C4 001EB444 5000B17B */  lq         $s1, 0x50($sp)
    /* EC3C8 001EB448 4000B07B */  lq         $s0, 0x40($sp)
    /* EC3CC 001EB44C 0800E003 */  jr         $ra
    /* EC3D0 001EB450 9000BD27 */   addiu     $sp, $sp, 0x90
endlabel func_001EB338
    /* EC3D4 001EB454 00000000 */  nop
