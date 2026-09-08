.align 3
nonmatching func_0021D420, 0x9C

glabel func_0021D420
    /* 11E3A0 0021D420 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 11E3A4 0021D424 0000B07F */  sq         $s0, 0x0($sp)
    /* 11E3A8 0021D428 1000BF7F */  sq         $ra, 0x10($sp)
    /* 11E3AC 0021D42C E831080C */  jal        func_0020C7A0
    /* 11E3B0 0021D430 2D808000 */   daddu     $s0, $a0, $zero
    /* 11E3B4 0021D434 0070063C */  lui        $a2, (0x70000100 >> 16)
    /* 11E3B8 0021D438 0070043C */  lui        $a0, (0x70000000 >> 16)
    /* 11E3BC 0021D43C 2D280000 */  daddu      $a1, $zero, $zero
    /* 11E3C0 0021D440 0001C634 */  ori        $a2, $a2, (0x70000100 & 0xFFFF)
    /* 11E3C4 0021D444 9432080C */  jal        func_0020CA50
    /* 11E3C8 0021D448 01000724 */   addiu     $a3, $zero, 0x1
    /* 11E3CC 0021D44C 7C0002AE */  sw         $v0, 0x7C($s0)
    /* 11E3D0 0021D450 1A00033C */  lui        $v1, %hi(D_001A0414)
    /* 11E3D4 0021D454 30001026 */  addiu      $s0, $s0, 0x30
    /* 11E3D8 0021D458 FFFF0424 */  addiu      $a0, $zero, -0x1
    /* 11E3DC 0021D45C 1404628C */  lw         $v0, %lo(D_001A0414)($v1)
    /* 11E3E0 0021D460 80100200 */  sll        $v0, $v0, 2
    /* 11E3E4 0021D464 21800202 */  addu       $s0, $s0, $v0
    /* 11E3E8 0021D468 0000028E */  lw         $v0, 0x0($s0)
    /* 11E3EC 0021D46C 0E004410 */  beq        $v0, $a0, .L0021D4A8
    /* 11E3F0 0021D470 0070033C */   lui       $v1, (0x70000000 >> 16)
    /* 11E3F4 0021D474 80100200 */  sll        $v0, $v0, 2
    /* 11E3F8 0021D478 21104300 */  addu       $v0, $v0, $v1
    /* 11E3FC 0021D47C 1D00053C */  lui        $a1, %hi(D_001CFBF4)
    /* 11E400 0021D480 0000438C */  lw         $v1, (0x70000000 & 0xFFFF)($v0)
    /* 11E404 0021D484 0070043C */  lui        $a0, (0x70000100 >> 16)
    /* 11E408 0021D488 00018434 */  ori        $a0, $a0, (0x70000100 & 0xFFFF)
    /* 11E40C 0021D48C 1D00063C */  lui        $a2, %hi(D_001CFAD8)
    /* 11E410 0021D490 F4FBA3AC */  sw         $v1, %lo(D_001CFBF4)($a1)
    /* 11E414 0021D494 0000028E */  lw         $v0, 0x0($s0)
    /* 11E418 0021D498 80100200 */  sll        $v0, $v0, 2
    /* 11E41C 0021D49C 21104400 */  addu       $v0, $v0, $a0
    /* 11E420 0021D4A0 0000438C */  lw         $v1, 0x0($v0)
    /* 11E424 0021D4A4 D8FAC3AC */  sw         $v1, %lo(D_001CFAD8)($a2)
.align 2
  .L0021D4A8:
    /* 11E428 0021D4A8 1000BF7B */  lq         $ra, 0x10($sp)
    /* 11E42C 0021D4AC 2D100000 */  daddu      $v0, $zero, $zero
    /* 11E430 0021D4B0 0000B07B */  lq         $s0, 0x0($sp)
    /* 11E434 0021D4B4 0800E003 */  jr         $ra
    /* 11E438 0021D4B8 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_0021D420
    /* 11E43C 0021D4BC 00000000 */  nop
