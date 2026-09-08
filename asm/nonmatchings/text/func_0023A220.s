.align 3
nonmatching func_0023A220, 0x258

glabel func_0023A220
    /* 13B1A0 0023A220 B0FFBD27 */  addiu      $sp, $sp, -0x50
    /* 13B1A4 0023A224 80000724 */  addiu      $a3, $zero, 0x80
    /* 13B1A8 0023A228 3000B17F */  sq         $s1, 0x30($sp)
    /* 13B1AC 0023A22C 80000924 */  addiu      $t1, $zero, 0x80
    /* 13B1B0 0023A230 2000B07F */  sq         $s0, 0x20($sp)
    /* 13B1B4 0023A234 2D88C000 */  daddu      $s1, $a2, $zero
    /* 13B1B8 0023A238 2D80A000 */  daddu      $s0, $a1, $zero
    /* 13B1BC 0023A23C 4000BF7F */  sq         $ra, 0x40($sp)
    /* 13B1C0 0023A240 2D200000 */  daddu      $a0, $zero, $zero
    /* 13B1C4 0023A244 2D280000 */  daddu      $a1, $zero, $zero
    /* 13B1C8 0023A248 00020624 */  addiu      $a2, $zero, 0x200
    /* 13B1CC 0023A24C 00020824 */  addiu      $t0, $zero, 0x200
    /* 13B1D0 0023A250 AEEE070C */  jal        func_001FBAB8
    /* 13B1D4 0023A254 2D500000 */   daddu     $t2, $zero, $zero
    /* 13B1D8 0023A258 2D20A003 */  daddu      $a0, $sp, $zero
    /* 13B1DC 0023A25C 2D280000 */  daddu      $a1, $zero, $zero
    /* 13B1E0 0023A260 FF54040C */  jal        func_001153FC
    /* 13B1E4 0023A264 18000624 */   addiu     $a2, $zero, 0x18
    /* 13B1E8 0023A268 1E00033C */  lui        $v1, %hi(D_001E66C0)
    /* 13B1EC 0023A26C 43101100 */  sra        $v0, $s1, 1
    /* 13B1F0 0023A270 C0666724 */  addiu      $a3, $v1, %lo(D_001E66C0)
    /* 13B1F4 0023A274 2D486000 */  daddu      $t1, $v1, $zero
    /* 13B1F8 0023A278 5C00E68C */  lw         $a2, 0x5C($a3)
    /* 13B1FC 0023A27C 43201000 */  sra        $a0, $s0, 1
    /* 13B200 0023A280 F9FF4224 */  addiu      $v0, $v0, -0x7
    /* 13B204 0023A284 10000324 */  addiu      $v1, $zero, 0x10
    /* 13B208 0023A288 01000524 */  addiu      $a1, $zero, 0x1
    /* 13B20C 0023A28C 0800A4A7 */  sh         $a0, 0x8($sp)
    /* 13B210 0023A290 0A00A2A7 */  sh         $v0, 0xA($sp)
    /* 13B214 0023A294 1000A3A7 */  sh         $v1, 0x10($sp)
    /* 13B218 0023A298 1200A5A7 */  sh         $a1, 0x12($sp)
    /* 13B21C 0023A29C 0200B1A7 */  sh         $s1, 0x2($sp)
    /* 13B220 0023A2A0 5000C010 */  beqz       $a2, .L0023A3E4
    /* 13B224 0023A2A4 0600B0A7 */   sh        $s0, 0x6($sp)
    /* 13B228 0023A2A8 5800E48C */  lw         $a0, 0x58($a3)
    /* 13B22C 0023A2AC 14000324 */  addiu      $v1, $zero, 0x14
    /* 13B230 0023A2B0 01000524 */  addiu      $a1, $zero, 0x1
    /* 13B234 0023A2B4 18208300 */  mult       $a0, $a0, $v1
    /* 13B238 0023A2B8 2110E400 */  addu       $v0, $a3, $a0
    /* 13B23C 0023A2BC D400438C */  lw         $v1, 0xD4($v0)
    /* 13B240 0023A2C0 12006514 */  bne        $v1, $a1, .L0023A30C
    /* 13B244 0023A2C4 1E00083C */   lui       $t0, %hi(D_001E02B0)
    /* 13B248 0023A2C8 2D204000 */  daddu      $a0, $v0, $zero
    /* 13B24C 0023A2CC B0020525 */  addiu      $a1, $t0, %lo(D_001E02B0)
    /* 13B250 0023A2D0 D000838C */  lw         $v1, 0xD0($a0)
    /* 13B254 0023A2D4 1400023C */  lui        $v0, %hi(D_0013D530)
    /* 13B258 0023A2D8 18000424 */  addiu      $a0, $zero, 0x18
    /* 13B25C 0023A2DC 30D54224 */  addiu      $v0, $v0, %lo(D_0013D530)
    /* 13B260 0023A2E0 18206400 */  mult       $a0, $v1, $a0
    /* 13B264 0023A2E4 80180300 */  sll        $v1, $v1, 2
    /* 13B268 0023A2E8 21186200 */  addu       $v1, $v1, $v0
    /* 13B26C 0023A2EC 0000628C */  lw         $v0, 0x0($v1)
    /* 13B270 0023A2F0 21208500 */  addu       $a0, $a0, $a1
    /* 13B274 0023A2F4 0E008394 */  lhu        $v1, 0xE($a0)
    /* 13B278 0023A2F8 2A104300 */  slt        $v0, $v0, $v1
    /* 13B27C 0023A2FC 04004014 */  bnez       $v0, .L0023A310
    /* 13B280 0023A300 C0662625 */   addiu     $a2, $t1, %lo(D_001E66C0)
    /* 13B284 0023A304 38000010 */  b          .L0023A3E8
    /* 13B288 0023A308 38521024 */   addiu     $s0, $zero, 0x5238
.align 2
  .L0023A30C:
    /* 13B28C 0023A30C C0662625 */  addiu      $a2, $t1, %lo(D_001E66C0)
.align 2
  .L0023A310:
    /* 13B290 0023A310 14000424 */  addiu      $a0, $zero, 0x14
    /* 13B294 0023A314 5800C38C */  lw         $v1, 0x58($a2)
    /* 13B298 0023A318 01000524 */  addiu      $a1, $zero, 0x1
    /* 13B29C 0023A31C 18206400 */  mult       $a0, $v1, $a0
    /* 13B2A0 0023A320 2110C400 */  addu       $v0, $a2, $a0
    /* 13B2A4 0023A324 D400438C */  lw         $v1, 0xD4($v0)
    /* 13B2A8 0023A328 18006514 */  bne        $v1, $a1, .L0023A38C
    /* 13B2AC 0023A32C 1400023C */   lui       $v0, %hi(D_0013D5EB)
    /* 13B2B0 0023A330 4000C28C */  lw         $v0, 0x40($a2)
    /* 13B2B4 0023A334 08004010 */  beqz       $v0, .L0023A358
    /* 13B2B8 0023A338 2118C400 */   addu      $v1, $a2, $a0
    /* 13B2BC 0023A33C 18000524 */  addiu      $a1, $zero, 0x18
    /* 13B2C0 0023A340 D000628C */  lw         $v0, 0xD0($v1)
    /* 13B2C4 0023A344 B0020425 */  addiu      $a0, $t0, %lo(D_001E02B0)
    /* 13B2C8 0023A348 18104500 */  mult       $v0, $v0, $a1
    /* 13B2CC 0023A34C 21104400 */  addu       $v0, $v0, $a0
    /* 13B2D0 0023A350 07000010 */  b          .L0023A370
    /* 13B2D4 0023A354 0A004494 */   lhu       $a0, 0xA($v0)
.align 2
  .L0023A358:
    /* 13B2D8 0023A358 18000524 */  addiu      $a1, $zero, 0x18
    /* 13B2DC 0023A35C D000628C */  lw         $v0, 0xD0($v1)
    /* 13B2E0 0023A360 B0020425 */  addiu      $a0, $t0, %lo(D_001E02B0)
    /* 13B2E4 0023A364 18104500 */  mult       $v0, $v0, $a1
    /* 13B2E8 0023A368 21104400 */  addu       $v0, $v0, $a0
    /* 13B2EC 0023A36C 08004494 */  lhu        $a0, 0x8($v0)
.align 2
  .L0023A370:
    /* 13B2F0 0023A370 1600023C */  lui        $v0, %hi(D_0015EE98)
    /* 13B2F4 0023A374 98EE428C */  lw         $v0, %lo(D_0015EE98)($v0)
    /* 13B2F8 0023A378 38521024 */  addiu      $s0, $zero, 0x5238
    /* 13B2FC 0023A37C 39520324 */  addiu      $v1, $zero, 0x5239
    /* 13B300 0023A380 2A104400 */  slt        $v0, $v0, $a0
    /* 13B304 0023A384 18000010 */  b          .L0023A3E8
    /* 13B308 0023A388 0A806200 */   movz      $s0, $v1, $v0
.align 2
  .L0023A38C:
    /* 13B30C 0023A38C EBD54390 */  lbu        $v1, %lo(D_0013D5EB)($v0)
    /* 13B310 0023A390 08006010 */  beqz       $v1, .L0023A3B4
    /* 13B314 0023A394 18000524 */   addiu     $a1, $zero, 0x18
    /* 13B318 0023A398 2120C400 */  addu       $a0, $a2, $a0
    /* 13B31C 0023A39C D000828C */  lw         $v0, 0xD0($a0)
    /* 13B320 0023A3A0 B0020325 */  addiu      $v1, $t0, %lo(D_001E02B0)
    /* 13B324 0023A3A4 18104500 */  mult       $v0, $v0, $a1
    /* 13B328 0023A3A8 21186200 */  addu       $v1, $v1, $v0
    /* 13B32C 0023A3AC 07000010 */  b          .L0023A3CC
    /* 13B330 0023A3B0 0400638C */   lw        $v1, 0x4($v1)
.align 2
  .L0023A3B4:
    /* 13B334 0023A3B4 2118C400 */  addu       $v1, $a2, $a0
    /* 13B338 0023A3B8 D000628C */  lw         $v0, 0xD0($v1)
    /* 13B33C 0023A3BC B0020425 */  addiu      $a0, $t0, %lo(D_001E02B0)
    /* 13B340 0023A3C0 18104500 */  mult       $v0, $v0, $a1
    /* 13B344 0023A3C4 21104400 */  addu       $v0, $v0, $a0
    /* 13B348 0023A3C8 0000438C */  lw         $v1, 0x0($v0)
.align 2
  .L0023A3CC:
    /* 13B34C 0023A3CC 1600023C */  lui        $v0, %hi(D_0015EE98)
    /* 13B350 0023A3D0 98EE428C */  lw         $v0, %lo(D_0015EE98)($v0)
    /* 13B354 0023A3D4 38521024 */  addiu      $s0, $zero, 0x5238
    /* 13B358 0023A3D8 2A104300 */  slt        $v0, $v0, $v1
    /* 13B35C 0023A3DC 02000010 */  b          .L0023A3E8
    /* 13B360 0023A3E0 0A800200 */   movz      $s0, $zero, $v0
.align 2
  .L0023A3E4:
    /* 13B364 0023A3E4 39521024 */  addiu      $s0, $zero, 0x5239
.align 2
  .L0023A3E8:
    /* 13B368 0023A3E8 1E000012 */  beqz       $s0, .L0023A464
    /* 13B36C 0023A3EC 1200A297 */   lhu       $v0, 0x12($sp)
    /* 13B370 0023A3F0 2D200002 */  daddu      $a0, $s0, $zero
    /* 13B374 0023A3F4 04004234 */  ori        $v0, $v0, 0x4
    /* 13B378 0023A3F8 50F9070C */  jal        func_001FE540
    /* 13B37C 0023A3FC 1200A2A7 */   sh        $v0, 0x12($sp)
    /* 13B380 0023A400 2D304000 */  daddu      $a2, $v0, $zero
    /* 13B384 0023A404 2D20A003 */  daddu      $a0, $sp, $zero
    /* 13B388 0023A408 F0800534 */  ori        $a1, $zero, 0x80F0
    /* 13B38C 0023A40C 382C0500 */  dsll       $a1, $a1, 16
    /* 13B390 0023A410 F0F0A534 */  ori        $a1, $a1, 0xF0F0
    /* 13B394 0023A414 74DD070C */  jal        func_001F75D0
    /* 13B398 0023A418 FFFF0724 */   addiu     $a3, $zero, -0x1
    /* 13B39C 0023A41C 0E00A297 */  lhu        $v0, 0xE($sp)
    /* 13B3A0 0023A420 2D200002 */  daddu      $a0, $s0, $zero
    /* 13B3A4 0023A424 1200A397 */  lhu        $v1, 0x12($sp)
    /* 13B3A8 0023A428 00140200 */  sll        $v0, $v0, 16
    /* 13B3AC 0023A42C 03140200 */  sra        $v0, $v0, 16
    /* 13B3B0 0023A430 04006338 */  xori       $v1, $v1, 0x4
    /* 13B3B4 0023A434 23102202 */  subu       $v0, $s1, $v0
    /* 13B3B8 0023A438 1200A3A7 */  sh         $v1, 0x12($sp)
    /* 13B3BC 0023A43C 43100200 */  sra        $v0, $v0, 1
    /* 13B3C0 0023A440 50F9070C */  jal        func_001FE540
    /* 13B3C4 0023A444 0A00A2A7 */   sh        $v0, 0xA($sp)
    /* 13B3C8 0023A448 2D304000 */  daddu      $a2, $v0, $zero
    /* 13B3CC 0023A44C 2D20A003 */  daddu      $a0, $sp, $zero
    /* 13B3D0 0023A450 F0800534 */  ori        $a1, $zero, 0x80F0
    /* 13B3D4 0023A454 382C0500 */  dsll       $a1, $a1, 16
    /* 13B3D8 0023A458 F0F0A534 */  ori        $a1, $a1, 0xF0F0
    /* 13B3DC 0023A45C 74DD070C */  jal        func_001F75D0
    /* 13B3E0 0023A460 FFFF0724 */   addiu     $a3, $zero, -0x1
.align 2
  .L0023A464:
    /* 13B3E4 0023A464 4000BF7B */  lq         $ra, 0x40($sp)
    /* 13B3E8 0023A468 3000B17B */  lq         $s1, 0x30($sp)
    /* 13B3EC 0023A46C 2000B07B */  lq         $s0, 0x20($sp)
    /* 13B3F0 0023A470 0800E003 */  jr         $ra
    /* 13B3F4 0023A474 5000BD27 */   addiu     $sp, $sp, 0x50
endlabel func_0023A220
