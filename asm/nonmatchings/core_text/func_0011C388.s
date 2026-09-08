.align 3
nonmatching func_0011C388, 0x238

glabel func_0011C388
    /* 1D308 0011C388 40FFBD27 */  addiu      $sp, $sp, -0xC0
    /* 1D30C 0011C38C 8000B4FF */  sd         $s4, 0x80($sp)
    /* 1D310 0011C390 6000B2FF */  sd         $s2, 0x60($sp)
    /* 1D314 0011C394 2DA0C000 */  daddu      $s4, $a2, $zero
    /* 1D318 0011C398 9000B5FF */  sd         $s5, 0x90($sp)
    /* 1D31C 0011C39C 2D90A000 */  daddu      $s2, $a1, $zero
    /* 1D320 0011C3A0 5000B1FF */  sd         $s1, 0x50($sp)
    /* 1D324 0011C3A4 1500153C */  lui        $s5, %hi(D_00156980)
    /* 1D328 0011C3A8 4000B0FF */  sd         $s0, 0x40($sp)
    /* 1D32C 0011C3AC 8069B126 */  addiu      $s1, $s5, %lo(D_00156980)
    /* 1D330 0011C3B0 B000BFFF */  sd         $ra, 0xB0($sp)
    /* 1D334 0011C3B4 A000B6FF */  sd         $s6, 0xA0($sp)
    /* 1D338 0011C3B8 FE6D040C */  jal        func_0011B7F8
    /* 1D33C 0011C3BC 7000B3FF */   sd        $s3, 0x70($sp)
    /* 1D340 0011C3C0 2D804000 */  daddu      $s0, $v0, $zero
    /* 1D344 0011C3C4 106F040C */  jal        func_0011BC40
    /* 1D348 0011C3C8 04000424 */   addiu     $a0, $zero, 0x4
    /* 1D34C 0011C3CC 1300033C */  lui        $v1, %hi(D_0012FD94)
    /* 1D350 0011C3D0 94FD628C */  lw         $v0, %lo(D_0012FD94)($v1)
    /* 1D354 0011C3D4 05004014 */  bnez       $v0, .L0011C3EC
    /* 1D358 0011C3D8 00000000 */   nop
    /* 1D35C 0011C3DC 1C6F040C */  jal        func_0011BC70
    /* 1D360 0011C3E0 00000000 */   nop
    /* 1D364 0011C3E4 6C000010 */  b          .L0011C598
    /* 1D368 0011C3E8 FFFF0224 */   addiu     $v0, $zero, -0x1
.align 2
  .L0011C3EC:
    /* 1D36C 0011C3EC 04000012 */  beqz       $s0, .L0011C400
    /* 1D370 0011C3F0 00000000 */   nop
    /* 1D374 0011C3F4 0400138E */  lw         $s3, 0x4($s0)
    /* 1D378 0011C3F8 05006016 */  bnez       $s3, .L0011C410
    /* 1D37C 0011C3FC 1500023C */   lui       $v0, %hi(D_00157E80)
.align 2
  .L0011C400:
    /* 1D380 0011C400 1C6F040C */  jal        func_0011BC70
    /* 1D384 0011C404 00000000 */   nop
    /* 1D388 0011C408 63000010 */  b          .L0011C598
    /* 1D38C 0011C40C F7FF0224 */   addiu     $v0, $zero, -0x9
.align 2
  .L0011C410:
    /* 1D390 0011C410 0000038E */  lw         $v1, 0x0($s0)
    /* 1D394 0011C414 807E4224 */  addiu      $v0, $v0, %lo(D_00157E80)
    /* 1D398 0011C418 100032AE */  sw         $s2, 0x10($s1)
    /* 1D39C 0011C41C 23100202 */  subu       $v0, $s0, $v0
    /* 1D3A0 0011C420 0C0023AE */  sw         $v1, 0xC($s1)
    /* 1D3A4 0011C424 03110200 */  sra        $v0, $v0, 4
    /* 1D3A8 0011C428 140034AE */  sw         $s4, 0x14($s1)
    /* 1D3AC 0011C42C 180022AE */  sw         $v0, 0x18($s1)
    /* 1D3B0 0011C430 01000524 */  addiu      $a1, $zero, 0x1
    /* 1D3B4 0011C434 1000A427 */  addiu      $a0, $sp, 0x10
    /* 1D3B8 0011C438 1400A5AF */  sw         $a1, 0x14($sp)
    /* 1D3BC 0011C43C 1800A0AF */  sw         $zero, 0x18($sp)
    /* 1D3C0 0011C440 1C63040C */  jal        func_00118C70
    /* 1D3C4 0011C444 2400A0AF */   sw        $zero, 0x24($sp)
    /* 1D3C8 0011C448 2D904000 */  daddu      $s2, $v0, $zero
    /* 1D3CC 0011C44C 04000324 */  addiu      $v1, $zero, 0x4
    /* 1D3D0 0011C450 3000A227 */  addiu      $v0, $sp, 0x30
    /* 1D3D4 0011C454 080023AE */  sw         $v1, 0x8($s1)
    /* 1D3D8 0011C458 040022AE */  sw         $v0, 0x4($s1)
    /* 1D3DC 0011C45C 00806232 */  andi       $v0, $s3, 0x8000
    /* 1D3E0 0011C460 24004010 */  beqz       $v0, .L0011C4F4
    /* 1D3E4 0011C464 8069B2AE */   sw        $s2, %lo(D_00156980)($s5)
    /* 1D3E8 0011C468 1300143C */  lui        $s4, %hi(D_0012FDA4)
    /* 1D3EC 0011C46C 2C63040C */  jal        func_00118CB0
    /* 1D3F0 0011C470 A4FD848E */   lw        $a0, %lo(D_0012FDA4)($s4)
    /* 1D3F4 0011C474 1300073C */  lui        $a3, %hi(D_0012FD10)
    /* 1D3F8 0011C478 2D300000 */  daddu      $a2, $zero, $zero
    /* 1D3FC 0011C47C 10FDE38C */  lw         $v1, %lo(D_0012FD10)($a3)
    /* 1D400 0011C480 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 1D404 0011C484 08006214 */  bne        $v1, $v0, .L0011C4A8
    /* 1D408 0011C488 1600163C */   lui       $s6, %hi(D_00158080)
    /* 1D40C 0011C48C 8069A38E */  lw         $v1, %lo(D_00156980)($s5)
    /* 1D410 0011C490 1500103C */  lui        $s0, (0x150000 >> 16)
    /* 1D414 0011C494 23100300 */  negu       $v0, $v1
    /* 1D418 0011C498 10FDE3AC */  sw         $v1, %lo(D_0012FD10)($a3)
    /* 1D41C 0011C49C 11000010 */  b          .L0011C4E4
    /* 1D420 0011C4A0 8069A2AE */   sw        $v0, %lo(D_00156980)($s5)
    /* 1D424 0011C4A4 00000000 */  nop
.align 2
  .L0011C4A8:
    /* 1D428 0011C4A8 1500103C */  lui        $s0, %hi(D_001575C0)
    /* 1D42C 0011C4AC 0100C624 */  addiu      $a2, $a2, 0x1
.align 2
  .L0011C4B0:
    /* 1D430 0011C4B0 2000C228 */  slti       $v0, $a2, 0x20
    /* 1D434 0011C4B4 0B004010 */  beqz       $v0, .L0011C4E4
    /* 1D438 0011C4B8 80100600 */   sll       $v0, $a2, 2
    /* 1D43C 0011C4BC 10FDE324 */  addiu      $v1, $a3, %lo(D_0012FD10)
    /* 1D440 0011C4C0 21284300 */  addu       $a1, $v0, $v1
    /* 1D444 0011C4C4 FFFF0424 */  addiu      $a0, $zero, -0x1
    /* 1D448 0011C4C8 0000A28C */  lw         $v0, 0x0($a1)
    /* 1D44C 0011C4CC F8FF4414 */  bne        $v0, $a0, .L0011C4B0
    /* 1D450 0011C4D0 0100C624 */   addiu     $a2, $a2, 0x1
    /* 1D454 0011C4D4 0000228E */  lw         $v0, 0x0($s1)
    /* 1D458 0011C4D8 23180200 */  negu       $v1, $v0
    /* 1D45C 0011C4DC 0000A2AC */  sw         $v0, 0x0($a1)
    /* 1D460 0011C4E0 000023AE */  sw         $v1, 0x0($s1)
.align 2
  .L0011C4E4:
    /* 1D464 0011C4E4 2463040C */  jal        func_00118C90
    /* 1D468 0011C4E8 A4FD848E */   lw        $a0, %lo(D_0012FDA4)($s4)
    /* 1D46C 0011C4EC 04000010 */  b          .L0011C500
    /* 1D470 0011C4F0 C0751026 */   addiu     $s0, $s0, %lo(D_001575C0)
.align 2
  .L0011C4F4:
    /* 1D474 0011C4F4 1600163C */  lui        $s6, %hi(D_00158080)
    /* 1D478 0011C4F8 1500103C */  lui        $s0, %hi(D_001575C0)
    /* 1D47C 0011C4FC C0751026 */  addiu      $s0, $s0, %lo(D_001575C0)
.align 2
  .L0011C500:
    /* 1D480 0011C500 8080C426 */  addiu      $a0, $s6, %lo(D_00158080)
    /* 1D484 0011C504 8069A726 */  addiu      $a3, $s5, %lo(D_00156980)
    /* 1D488 0011C508 0000A0AF */  sw         $zero, 0x0($sp)
    /* 1D48C 0011C50C 04000524 */  addiu      $a1, $zero, 0x4
    /* 1D490 0011C510 2D300000 */  daddu      $a2, $zero, $zero
    /* 1D494 0011C514 1C000824 */  addiu      $t0, $zero, 0x1C
    /* 1D498 0011C518 2D480002 */  daddu      $t1, $s0, $zero
    /* 1D49C 0011C51C 04000A24 */  addiu      $t2, $zero, 0x4
    /* 1D4A0 0011C520 326D040C */  jal        func_0011B4C8
    /* 1D4A4 0011C524 2D580000 */   daddu     $t3, $zero, $zero
    /* 1D4A8 0011C528 07004104 */  bgez       $v0, .L0011C548
    /* 1D4AC 0011C52C 0020023C */   lui       $v0, (0x20000000 >> 16)
    /* 1D4B0 0011C530 2063040C */  jal        func_00118C80
    /* 1D4B4 0011C534 2D204002 */   daddu     $a0, $s2, $zero
    /* 1D4B8 0011C538 1C6F040C */  jal        func_0011BC70
    /* 1D4BC 0011C53C 00000000 */   nop
    /* 1D4C0 0011C540 15000010 */  b          .L0011C598
    /* 1D4C4 0011C544 F5FF0224 */   addiu     $v0, $zero, -0xB
.align 2
  .L0011C548:
    /* 1D4C8 0011C548 25100202 */  or         $v0, $s0, $v0
    /* 1D4CC 0011C54C 1C6F040C */  jal        func_0011BC70
    /* 1D4D0 0011C550 0000508C */   lw        $s0, (0x20000000 & 0xFFFF)($v0)
    /* 1D4D4 0011C554 05000016 */  bnez       $s0, .L0011C56C
    /* 1D4D8 0011C558 00806232 */   andi      $v0, $s3, 0x8000
    /* 1D4DC 0011C55C 2063040C */  jal        func_00118C80
    /* 1D4E0 0011C560 2D204002 */   daddu     $a0, $s2, $zero
    /* 1D4E4 0011C564 0C000010 */  b          .L0011C598
    /* 1D4E8 0011C568 F5FF0224 */   addiu     $v0, $zero, -0xB
.align 2
  .L0011C56C:
    /* 1D4EC 0011C56C 05004010 */  beqz       $v0, .L0011C584
    /* 1D4F0 0011C570 00000000 */   nop
    /* 1D4F4 0011C574 2063040C */  jal        func_00118C80
    /* 1D4F8 0011C578 2D204002 */   daddu     $a0, $s2, $zero
    /* 1D4FC 0011C57C 06000010 */  b          .L0011C598
    /* 1D500 0011C580 2D100000 */   daddu     $v0, $zero, $zero
.align 2
  .L0011C584:
    /* 1D504 0011C584 2C63040C */  jal        func_00118CB0
    /* 1D508 0011C588 2D204002 */   daddu     $a0, $s2, $zero
    /* 1D50C 0011C58C 2063040C */  jal        func_00118C80
    /* 1D510 0011C590 2D204002 */   daddu     $a0, $s2, $zero
    /* 1D514 0011C594 3000A28F */  lw         $v0, 0x30($sp)
.align 2
  .L0011C598:
    /* 1D518 0011C598 B000BFDF */  ld         $ra, 0xB0($sp)
    /* 1D51C 0011C59C A000B6DF */  ld         $s6, 0xA0($sp)
    /* 1D520 0011C5A0 9000B5DF */  ld         $s5, 0x90($sp)
    /* 1D524 0011C5A4 8000B4DF */  ld         $s4, 0x80($sp)
    /* 1D528 0011C5A8 7000B3DF */  ld         $s3, 0x70($sp)
    /* 1D52C 0011C5AC 6000B2DF */  ld         $s2, 0x60($sp)
    /* 1D530 0011C5B0 5000B1DF */  ld         $s1, 0x50($sp)
    /* 1D534 0011C5B4 4000B0DF */  ld         $s0, 0x40($sp)
    /* 1D538 0011C5B8 0800E003 */  jr         $ra
    /* 1D53C 0011C5BC C000BD27 */   addiu     $sp, $sp, 0xC0
endlabel func_0011C388
