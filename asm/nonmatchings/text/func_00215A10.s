.align 3
nonmatching func_00215A10, 0x84

glabel func_00215A10
    /* 116990 00215A10 B0FFBD27 */  addiu      $sp, $sp, -0x50
    /* 116994 00215A14 FE42013C */  lui        $at, (0x42FE0000 >> 16)
    /* 116998 00215A18 00008144 */  mtc1       $at, $f0
    /* 11699C 00215A1C A9140070 */  por        $v0, $zero, $zero
    /* 1169A0 00215A20 3000BF7F */  sq         $ra, 0x30($sp)
    /* 1169A4 00215A24 1000A27F */  sq         $v0, 0x10($sp)
    /* 1169A8 00215A28 2000B07F */  sq         $s0, 0x20($sp)
    /* 1169AC 00215A2C 4000B4E7 */  swc1       $f20, 0x40($sp)
    /* 1169B0 00215A30 2D808000 */  daddu      $s0, $a0, $zero
    /* 1169B4 00215A34 1800A0E7 */  swc1       $f0, 0x18($sp)
    /* 1169B8 00215A38 2D20A003 */  daddu      $a0, $sp, $zero
    /* 1169BC 00215A3C 1000A0E7 */  swc1       $f0, 0x10($sp)
    /* 1169C0 00215A40 1400A0E7 */  swc1       $f0, 0x14($sp)
    /* 1169C4 00215A44 C6E7070C */  jal        func_001F9F18
    /* 1169C8 00215A48 0000A58C */   lw        $a1, 0x0($a1)
    /* 1169CC 00215A4C 0C00B4C7 */  lwc1       $f20, 0xC($sp)
    /* 1169D0 00215A50 2D20A003 */  daddu      $a0, $sp, $zero
    /* 1169D4 00215A54 D138013C */  lui        $at, (0x38D1B717 >> 16)
    /* 1169D8 00215A58 17B72134 */  ori        $at, $at, (0x38D1B717 & 0xFFFF)
    /* 1169DC 00215A5C 00008144 */  mtc1       $at, $f0
    /* 1169E0 00215A60 2D28A003 */  daddu      $a1, $sp, $zero
    /* 1169E4 00215A64 1000A627 */  addiu      $a2, $sp, 0x10
    /* 1169E8 00215A68 FCE6070C */  jal        func_001F9BF0
    /* 1169EC 00215A6C 02A50046 */   mul.s     $f20, $f20, $f0
    /* 1169F0 00215A70 2D200002 */  daddu      $a0, $s0, $zero
    /* 1169F4 00215A74 2D28A003 */  daddu      $a1, $sp, $zero
    /* 1169F8 00215A78 0CE7070C */  jal        func_001F9C30
    /* 1169FC 00215A7C 06A30046 */   mov.s     $f12, $f20
    /* 116A00 00215A80 3000BF7B */  lq         $ra, 0x30($sp)
    /* 116A04 00215A84 2000B07B */  lq         $s0, 0x20($sp)
    /* 116A08 00215A88 4000B4C7 */  lwc1       $f20, 0x40($sp)
    /* 116A0C 00215A8C 0800E003 */  jr         $ra
    /* 116A10 00215A90 5000BD27 */   addiu     $sp, $sp, 0x50
endlabel func_00215A10
    /* 116A14 00215A94 00000000 */  nop
