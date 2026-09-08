.align 3
nonmatching func_0023E298, 0x1B4

glabel func_0023E298
    /* 13F218 0023E298 50FFBD27 */  addiu      $sp, $sp, -0xB0
    /* 13F21C 0023E29C 01000224 */  addiu      $v0, $zero, 0x1
    /* 13F220 0023E2A0 6000B57F */  sq         $s5, 0x60($sp)
    /* 13F224 0023E2A4 A000BF7F */  sq         $ra, 0xA0($sp)
    /* 13F228 0023E2A8 2DA88000 */  daddu      $s5, $a0, $zero
    /* 13F22C 0023E2AC 9000BE7F */  sq         $fp, 0x90($sp)
    /* 13F230 0023E2B0 8000B77F */  sq         $s7, 0x80($sp)
    /* 13F234 0023E2B4 7000B67F */  sq         $s6, 0x70($sp)
    /* 13F238 0023E2B8 5000B47F */  sq         $s4, 0x50($sp)
    /* 13F23C 0023E2BC 4000B37F */  sq         $s3, 0x40($sp)
    /* 13F240 0023E2C0 3000B27F */  sq         $s2, 0x30($sp)
    /* 13F244 0023E2C4 2000B17F */  sq         $s1, 0x20($sp)
    /* 13F248 0023E2C8 1000B07F */  sq         $s0, 0x10($sp)
    /* 13F24C 0023E2CC 42000010 */  b          .L0023E3D8
    /* 13F250 0023E2D0 0000A2AF */   sw        $v0, 0x0($sp)
    /* 13F254 0023E2D4 00000000 */  nop
.align 2
  .L0023E2D8:
    /* 13F258 0023E2D8 03000010 */  b          .L0023E2E8
    /* 13F25C 0023E2DC 68911036 */   ori       $s0, $s0, (0xD9168 & 0xFFFF)
.align 2
  .L0023E2E0:
    /* 13F260 0023E2E0 D0EE080C */  jal        func_0023BB40
    /* 13F264 0023E2E4 00000000 */   nop
.align 2
  .L0023E2E8:
    /* 13F268 0023E2E8 1600043C */  lui        $a0, %hi(D_0016130C)
    /* 13F26C 0023E2EC 0C13848C */  lw         $a0, %lo(D_0016130C)($a0)
    /* 13F270 0023E2F0 96F9080C */  jal        func_0023E658
    /* 13F274 0023E2F4 21209000 */   addu      $a0, $a0, $s0
    /* 13F278 0023E2F8 F9FF4010 */  beqz       $v0, .L0023E2E0
    /* 13F27C 0023E2FC 2D284000 */   daddu     $a1, $v0, $zero
    /* 13F280 0023E300 2D20A002 */  daddu      $a0, $s5, $zero
    /* 13F284 0023E304 CCAE040C */  jal        func_0012BB30
    /* 13F288 0023E308 40030624 */   addiu     $a2, $zero, 0x340
    /* 13F28C 0023E30C 05004304 */  bgezl      $v0, .L0023E324
    /* 13F290 0023E310 0800A28E */   lw        $v0, 0x8($s5)
    /* 13F294 0023E314 1F00023C */  lui        $v0, %hi(D_001E8E80)
    /* 13F298 0023E318 D2EF080C */  jal        func_0023BF48
    /* 13F29C 0023E31C 808E4424 */   addiu     $a0, $v0, %lo(D_001E8E80)
    /* 13F2A0 0023E320 0800A28E */  lw         $v0, 0x8($s5)
.align 2
  .L0023E324:
    /* 13F2A4 0023E324 26004014 */  bnez       $v0, .L0023E3C0
    /* 13F2A8 0023E328 0CA6828F */   lw        $v0, -0x59F4($gp)
    /* 13F2AC 0023E32C 1600043C */  lui        $a0, %hi(D_0016130C)
    /* 13F2B0 0023E330 0C13848C */  lw         $a0, %lo(D_0016130C)($a0)
    /* 13F2B4 0023E334 0D00023C */  lui        $v0, (0xD8000 >> 16)
    /* 13F2B8 0023E338 00804234 */  ori        $v0, $v0, (0xD8000 & 0xFFFF)
    /* 13F2BC 0023E33C 0000B78E */  lw         $s7, 0x0($s5)
    /* 13F2C0 0023E340 21108200 */  addu       $v0, $a0, $v0
    /* 13F2C4 0023E344 0400B68E */  lw         $s6, 0x4($s5)
    /* 13F2C8 0023E348 7811438C */  lw         $v1, 0x1178($v0)
    /* 13F2CC 0023E34C 1A006018 */  blez       $v1, .L0023E3B8
    /* 13F2D0 0023E350 2D880000 */   daddu     $s1, $zero, $zero
    /* 13F2D4 0023E354 0D00103C */  lui        $s0, (0xD8000 >> 16)
    /* 13F2D8 0023E358 0100123C */  lui        $s2, (0x138C0 >> 16)
    /* 13F2DC 0023E35C 00801036 */  ori        $s0, $s0, (0xD8000 & 0xFFFF)
    /* 13F2E0 0023E360 2DA00000 */  daddu      $s4, $zero, $zero
    /* 13F2E4 0023E364 2D980000 */  daddu      $s3, $zero, $zero
    /* 13F2E8 0023E368 0D001E3C */  lui        $fp, (0xD0000 >> 16)
    /* 13F2EC 0023E36C C0385236 */  ori        $s2, $s2, (0x138C0 & 0xFFFF)
.align 2
  .L0023E370:
    /* 13F2F0 0023E370 21109000 */  addu       $v0, $a0, $s0
    /* 13F2F4 0023E374 2D30E002 */  daddu      $a2, $s7, $zero
    /* 13F2F8 0023E378 6C11448C */  lw         $a0, 0x116C($v0)
    /* 13F2FC 0023E37C 2D38C002 */  daddu      $a3, $s6, $zero
    /* 13F300 0023E380 6811458C */  lw         $a1, 0x1168($v0)
    /* 13F304 0023E384 01003126 */  addiu      $s1, $s1, 0x1
    /* 13F308 0023E388 21209300 */  addu       $a0, $a0, $s3
    /* 13F30C 0023E38C 2128B400 */  addu       $a1, $a1, $s4
    /* 13F310 0023E390 78F1080C */  jal        func_0023C5E0
    /* 13F314 0023E394 40008424 */   addiu     $a0, $a0, 0x40
    /* 13F318 0023E398 21A09E02 */  addu       $s4, $s4, $fp
    /* 13F31C 0023E39C 1600043C */  lui        $a0, %hi(D_0016130C)
    /* 13F320 0023E3A0 0C13848C */  lw         $a0, %lo(D_0016130C)($a0)
    /* 13F324 0023E3A4 21189000 */  addu       $v1, $a0, $s0
    /* 13F328 0023E3A8 7811628C */  lw         $v0, 0x1178($v1)
    /* 13F32C 0023E3AC 2A102202 */  slt        $v0, $s1, $v0
    /* 13F330 0023E3B0 EFFF4014 */  bnez       $v0, .L0023E370
    /* 13F334 0023E3B4 21987202 */   addu      $s3, $s3, $s2
.align 2
  .L0023E3B8:
    /* 13F338 0023E3B8 1600023C */  lui        $v0, %hi(D_0016130C)
    /* 13F33C 0023E3BC 0C13428C */  lw         $v0, %lo(D_0016130C)($v0)
.align 2
  .L0023E3C0:
    /* 13F340 0023E3C0 0D00043C */  lui        $a0, (0xD9168 >> 16)
    /* 13F344 0023E3C4 68918434 */  ori        $a0, $a0, (0xD9168 & 0xFFFF)
    /* 13F348 0023E3C8 78F9080C */  jal        func_0023E5E0
    /* 13F34C 0023E3CC 21204400 */   addu      $a0, $v0, $a0
    /* 13F350 0023E3D0 D0EE080C */  jal        func_0023BB40
    /* 13F354 0023E3D4 00000000 */   nop
.align 2
  .L0023E3D8:
    /* 13F358 0023E3D8 E2AE040C */  jal        func_0012BB88
    /* 13F35C 0023E3DC 2D20A002 */   daddu     $a0, $s5, $zero
    /* 13F360 0023E3E0 0B004014 */  bnez       $v0, .L0023E410
    /* 13F364 0023E3E4 00000000 */   nop
    /* 13F368 0023E3E8 14F8080C */  jal        func_0023E050
    /* 13F36C 0023E3EC 2D20A002 */   daddu     $a0, $s5, $zero
    /* 13F370 0023E3F0 01000324 */  addiu      $v1, $zero, 0x1
    /* 13F374 0023E3F4 B8FF4314 */  bne        $v0, $v1, .L0023E2D8
    /* 13F378 0023E3F8 0D00103C */   lui       $s0, (0xD9168 >> 16)
    /* 13F37C 0023E3FC 1F00023C */  lui        $v0, %hi(D_001E8E68)
    /* 13F380 0023E400 688E4424 */  addiu      $a0, $v0, %lo(D_001E8E68)
    /* 13F384 0023E404 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 13F388 0023E408 CCA5070C */  jal        func_001E9730
    /* 13F38C 0023E40C 0000A2AF */   sw        $v0, 0x0($sp)
.align 2
  .L0023E410:
    /* 13F390 0023E410 EAAE040C */  jal        func_0012BBA8
    /* 13F394 0023E414 2D20A002 */   daddu     $a0, $s5, $zero
    /* 13F398 0023E418 0000A28F */  lw         $v0, 0x0($sp)
    /* 13F39C 0023E41C A000BF7B */  lq         $ra, 0xA0($sp)
    /* 13F3A0 0023E420 9000BE7B */  lq         $fp, 0x90($sp)
    /* 13F3A4 0023E424 8000B77B */  lq         $s7, 0x80($sp)
    /* 13F3A8 0023E428 7000B67B */  lq         $s6, 0x70($sp)
    /* 13F3AC 0023E42C 6000B57B */  lq         $s5, 0x60($sp)
    /* 13F3B0 0023E430 5000B47B */  lq         $s4, 0x50($sp)
    /* 13F3B4 0023E434 4000B37B */  lq         $s3, 0x40($sp)
    /* 13F3B8 0023E438 3000B27B */  lq         $s2, 0x30($sp)
    /* 13F3BC 0023E43C 2000B17B */  lq         $s1, 0x20($sp)
    /* 13F3C0 0023E440 1000B07B */  lq         $s0, 0x10($sp)
    /* 13F3C4 0023E444 0800E003 */  jr         $ra
    /* 13F3C8 0023E448 B000BD27 */   addiu     $sp, $sp, 0xB0
endlabel func_0023E298
    /* 13F3CC 0023E44C 00000000 */  nop
