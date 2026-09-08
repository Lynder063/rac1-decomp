.align 3
nonmatching func_0011B2F8, 0x140

glabel func_0011B2F8
    /* 1C278 0011B2F8 90FFBD27 */  addiu      $sp, $sp, -0x70
    /* 1C27C 0011B2FC 3000B1FF */  sd         $s1, 0x30($sp)
    /* 1C280 0011B300 5000B3FF */  sd         $s3, 0x50($sp)
    /* 1C284 0011B304 2D888000 */  daddu      $s1, $a0, $zero
    /* 1C288 0011B308 4000B2FF */  sd         $s2, 0x40($sp)
    /* 1C28C 0011B30C 1500043C */  lui        $a0, %hi(D_00156900)
    /* 1C290 0011B310 2000B0FF */  sd         $s0, 0x20($sp)
    /* 1C294 0011B314 2D98A000 */  daddu      $s3, $a1, $zero
    /* 1C298 0011B318 6000BFFF */  sd         $ra, 0x60($sp)
    /* 1C29C 0011B31C 2D90C000 */  daddu      $s2, $a2, $zero
    /* 1C2A0 0011B320 100020AE */  sw         $zero, 0x10($s1)
    /* 1C2A4 0011B324 00698424 */  addiu      $a0, $a0, %lo(D_00156900)
    /* 1C2A8 0011B328 FA6B040C */  jal        func_0011AFE8
    /* 1C2AC 0011B32C 240020AE */   sw        $zero, 0x24($s1)
    /* 1C2B0 0011B330 2D804000 */  daddu      $s0, $v0, $zero
    /* 1C2B4 0011B334 39000012 */  beqz       $s0, .L0011B41C
    /* 1C2B8 0011B338 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 1C2BC 0011B33C 1800028E */  lw         $v0, 0x18($s0)
    /* 1C2C0 0011B340 01004332 */  andi       $v1, $s2, 0x1
    /* 1C2C4 0011B344 000030AE */  sw         $s0, 0x0($s1)
    /* 1C2C8 0011B348 040022AE */  sw         $v0, 0x4($s1)
    /* 1C2CC 0011B34C 200013AE */  sw         $s3, 0x20($s0)
    /* 1C2D0 0011B350 140010AE */  sw         $s0, 0x14($s0)
    /* 1C2D4 0011B354 22006014 */  bnez       $v1, .L0011B3E0
    /* 1C2D8 0011B358 1C0011AE */   sw        $s1, 0x1C($s0)
    /* 1C2DC 0011B35C 01000224 */  addiu      $v0, $zero, 0x1
    /* 1C2E0 0011B360 0800A0AF */  sw         $zero, 0x8($sp)
    /* 1C2E4 0011B364 0400A2AF */  sw         $v0, 0x4($sp)
    /* 1C2E8 0011B368 1C63040C */  jal        func_00118C70
    /* 1C2EC 0011B36C 2D20A003 */   daddu     $a0, $sp, $zero
    /* 1C2F0 0011B370 05004104 */  bgez       $v0, .L0011B388
    /* 1C2F4 0011B374 080022AE */   sw        $v0, 0x8($s1)
    /* 1C2F8 0011B378 246C040C */  jal        func_0011B090
    /* 1C2FC 0011B37C 2D200002 */   daddu     $a0, $s0, $zero
    /* 1C300 0011B380 26000010 */  b          .L0011B41C
    /* 1C304 0011B384 FDFF0224 */   addiu     $v0, $zero, -0x3
.align 2
  .L0011B388:
    /* 1C308 0011B388 0080043C */  lui        $a0, (0x80000009 >> 16)
    /* 1C30C 0011B38C 2D280002 */  daddu      $a1, $s0, $zero
    /* 1C310 0011B390 09008434 */  ori        $a0, $a0, (0x80000009 & 0xFFFF)
    /* 1C314 0011B394 40000624 */  addiu      $a2, $zero, 0x40
    /* 1C318 0011B398 2D380000 */  daddu      $a3, $zero, $zero
    /* 1C31C 0011B39C 2D400000 */  daddu      $t0, $zero, $zero
    /* 1C320 0011B3A0 F26A040C */  jal        func_0011ABC8
    /* 1C324 0011B3A4 2D480000 */   daddu     $t1, $zero, $zero
    /* 1C328 0011B3A8 07004014 */  bnez       $v0, .L0011B3C8
    /* 1C32C 0011B3AC 00000000 */   nop
    /* 1C330 0011B3B0 246C040C */  jal        func_0011B090
    /* 1C334 0011B3B4 2D200002 */   daddu     $a0, $s0, $zero
    /* 1C338 0011B3B8 2063040C */  jal        func_00118C80
    /* 1C33C 0011B3BC 0800248E */   lw        $a0, 0x8($s1)
    /* 1C340 0011B3C0 16000010 */  b          .L0011B41C
    /* 1C344 0011B3C4 FEFF0224 */   addiu     $v0, $zero, -0x2
.align 2
  .L0011B3C8:
    /* 1C348 0011B3C8 2C63040C */  jal        func_00118CB0
    /* 1C34C 0011B3CC 0800248E */   lw        $a0, 0x8($s1)
    /* 1C350 0011B3D0 2063040C */  jal        func_00118C80
    /* 1C354 0011B3D4 0800248E */   lw        $a0, 0x8($s1)
    /* 1C358 0011B3D8 10000010 */  b          .L0011B41C
    /* 1C35C 0011B3DC 2D100000 */   daddu     $v0, $zero, $zero
.align 2
  .L0011B3E0:
    /* 1C360 0011B3E0 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 1C364 0011B3E4 0080043C */  lui        $a0, (0x80000009 >> 16)
    /* 1C368 0011B3E8 080022AE */  sw         $v0, 0x8($s1)
    /* 1C36C 0011B3EC 09008434 */  ori        $a0, $a0, (0x80000009 & 0xFFFF)
    /* 1C370 0011B3F0 2D280002 */  daddu      $a1, $s0, $zero
    /* 1C374 0011B3F4 40000624 */  addiu      $a2, $zero, 0x40
    /* 1C378 0011B3F8 2D380000 */  daddu      $a3, $zero, $zero
    /* 1C37C 0011B3FC 2D400000 */  daddu      $t0, $zero, $zero
    /* 1C380 0011B400 F26A040C */  jal        func_0011ABC8
    /* 1C384 0011B404 2D480000 */   daddu     $t1, $zero, $zero
    /* 1C388 0011B408 04004014 */  bnez       $v0, .L0011B41C
    /* 1C38C 0011B40C 2D100000 */   daddu     $v0, $zero, $zero
    /* 1C390 0011B410 246C040C */  jal        func_0011B090
    /* 1C394 0011B414 2D200002 */   daddu     $a0, $s0, $zero
    /* 1C398 0011B418 FEFF0224 */  addiu      $v0, $zero, -0x2
.align 2
  .L0011B41C:
    /* 1C39C 0011B41C 6000BFDF */  ld         $ra, 0x60($sp)
    /* 1C3A0 0011B420 5000B3DF */  ld         $s3, 0x50($sp)
    /* 1C3A4 0011B424 4000B2DF */  ld         $s2, 0x40($sp)
    /* 1C3A8 0011B428 3000B1DF */  ld         $s1, 0x30($sp)
    /* 1C3AC 0011B42C 2000B0DF */  ld         $s0, 0x20($sp)
    /* 1C3B0 0011B430 0800E003 */  jr         $ra
    /* 1C3B4 0011B434 7000BD27 */   addiu     $sp, $sp, 0x70
endlabel func_0011B2F8
