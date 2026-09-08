.align 3
nonmatching func_0011C208, 0x17C

glabel func_0011C208
    /* 1D188 0011C208 60FFBD27 */  addiu      $sp, $sp, -0xA0
    /* 1D18C 0011C20C 8000B4FF */  sd         $s4, 0x80($sp)
    /* 1D190 0011C210 6000B2FF */  sd         $s2, 0x60($sp)
    /* 1D194 0011C214 1500143C */  lui        $s4, %hi(D_00156980)
    /* 1D198 0011C218 4000B0FF */  sd         $s0, 0x40($sp)
    /* 1D19C 0011C21C 80699226 */  addiu      $s2, $s4, %lo(D_00156980)
    /* 1D1A0 0011C220 9000BFFF */  sd         $ra, 0x90($sp)
    /* 1D1A4 0011C224 7000B3FF */  sd         $s3, 0x70($sp)
    /* 1D1A8 0011C228 FE6D040C */  jal        func_0011B7F8
    /* 1D1AC 0011C22C 5000B1FF */   sd        $s1, 0x50($sp)
    /* 1D1B0 0011C230 2D804000 */  daddu      $s0, $v0, $zero
    /* 1D1B4 0011C234 106F040C */  jal        func_0011BC40
    /* 1D1B8 0011C238 01000424 */   addiu     $a0, $zero, 0x1
    /* 1D1BC 0011C23C 1300033C */  lui        $v1, %hi(D_0012FD94)
    /* 1D1C0 0011C240 94FD628C */  lw         $v0, %lo(D_0012FD94)($v1)
    /* 1D1C4 0011C244 05004014 */  bnez       $v0, .L0011C25C
    /* 1D1C8 0011C248 00000000 */   nop
    /* 1D1CC 0011C24C 1C6F040C */  jal        func_0011BC70
    /* 1D1D0 0011C250 00000000 */   nop
    /* 1D1D4 0011C254 43000010 */  b          .L0011C364
    /* 1D1D8 0011C258 FFFF0224 */   addiu     $v0, $zero, -0x1
.align 2
  .L0011C25C:
    /* 1D1DC 0011C25C 04000012 */  beqz       $s0, .L0011C270
    /* 1D1E0 0011C260 00000000 */   nop
    /* 1D1E4 0011C264 0400028E */  lw         $v0, 0x4($s0)
    /* 1D1E8 0011C268 05004054 */  bnel       $v0, $zero, .L0011C280
    /* 1D1EC 0011C26C 0000038E */   lw        $v1, 0x0($s0)
.align 2
  .L0011C270:
    /* 1D1F0 0011C270 1C6F040C */  jal        func_0011BC70
    /* 1D1F4 0011C274 00000000 */   nop
.align 2
  alabel D_0011C278
    /* 1D1F8 0011C278 3A000010 */  b          .L0011C364
    /* 1D1FC 0011C27C F7FF0224 */   addiu     $v0, $zero, -0x9
.align 2
  .L0011C280:
    /* 1D200 0011C280 1500023C */  lui        $v0, %hi(D_00157E80)
    /* 1D204 0011C284 807E4224 */  addiu      $v0, $v0, %lo(D_00157E80)
    /* 1D208 0011C288 01000424 */  addiu      $a0, $zero, 0x1
    /* 1D20C 0011C28C 0C0043AE */  sw         $v1, 0xC($s2)
    /* 1D210 0011C290 23100202 */  subu       $v0, $s0, $v0
    /* 1D214 0011C294 1400A4AF */  sw         $a0, 0x14($sp)
    /* 1D218 0011C298 03110200 */  sra        $v0, $v0, 4
    /* 1D21C 0011C29C 100042AE */  sw         $v0, 0x10($s2)
    /* 1D220 0011C2A0 1000A427 */  addiu      $a0, $sp, 0x10
    /* 1D224 0011C2A4 1800A0AF */  sw         $zero, 0x18($sp)
    /* 1D228 0011C2A8 1C63040C */  jal        func_00118C70
    /* 1D22C 0011C2AC 2400A0AF */   sw        $zero, 0x24($sp)
    /* 1D230 0011C2B0 2D884000 */  daddu      $s1, $v0, $zero
    /* 1D234 0011C2B4 3000A327 */  addiu      $v1, $sp, 0x30
    /* 1D238 0011C2B8 1500023C */  lui        $v0, %hi(D_001575C0)
    /* 1D23C 0011C2BC 806991AE */  sw         $s1, %lo(D_00156980)($s4)
    /* 1D240 0011C2C0 C0755324 */  addiu      $s3, $v0, %lo(D_001575C0)
    /* 1D244 0011C2C4 1600043C */  lui        $a0, %hi(D_00158080)
    /* 1D248 0011C2C8 04000224 */  addiu      $v0, $zero, 0x4
    /* 1D24C 0011C2CC 040043AE */  sw         $v1, 0x4($s2)
    /* 1D250 0011C2D0 080042AE */  sw         $v0, 0x8($s2)
    /* 1D254 0011C2D4 80808424 */  addiu      $a0, $a0, %lo(D_00158080)
    /* 1D258 0011C2D8 2D384002 */  daddu      $a3, $s2, $zero
    /* 1D25C 0011C2DC 01000524 */  addiu      $a1, $zero, 0x1
    /* 1D260 0011C2E0 0000A0AF */  sw         $zero, 0x0($sp)
    /* 1D264 0011C2E4 2D300000 */  daddu      $a2, $zero, $zero
    /* 1D268 0011C2E8 14000824 */  addiu      $t0, $zero, 0x14
    /* 1D26C 0011C2EC 2D486002 */  daddu      $t1, $s3, $zero
    /* 1D270 0011C2F0 04000A24 */  addiu      $t2, $zero, 0x4
    /* 1D274 0011C2F4 326D040C */  jal        func_0011B4C8
    /* 1D278 0011C2F8 2D580000 */   daddu     $t3, $zero, $zero
    /* 1D27C 0011C2FC 07004304 */  bgezl      $v0, .L0011C31C
    /* 1D280 0011C300 040000AE */   sw        $zero, 0x4($s0)
    /* 1D284 0011C304 2063040C */  jal        func_00118C80
    /* 1D288 0011C308 2D202002 */   daddu     $a0, $s1, $zero
    /* 1D28C 0011C30C 1C6F040C */  jal        func_0011BC70
    /* 1D290 0011C310 00000000 */   nop
    /* 1D294 0011C314 13000010 */  b          .L0011C364
    /* 1D298 0011C318 F5FF0224 */   addiu     $v0, $zero, -0xB
.align 2
  .L0011C31C:
    /* 1D29C 0011C31C 0020023C */  lui        $v0, (0x20000000 >> 16)
    /* 1D2A0 0011C320 25106202 */  or         $v0, $s3, $v0
    /* 1D2A4 0011C324 1C6F040C */  jal        func_0011BC70
    /* 1D2A8 0011C328 0000508C */   lw        $s0, (0x20000000 & 0xFFFF)($v0)
    /* 1D2AC 0011C32C 05000016 */  bnez       $s0, .L0011C344
    /* 1D2B0 0011C330 00000000 */   nop
    /* 1D2B4 0011C334 2063040C */  jal        func_00118C80
    /* 1D2B8 0011C338 2D202002 */   daddu     $a0, $s1, $zero
    /* 1D2BC 0011C33C 09000010 */  b          .L0011C364
    /* 1D2C0 0011C340 F5FF0224 */   addiu     $v0, $zero, -0xB
.align 2
  .L0011C344:
    /* 1D2C4 0011C344 2C63040C */  jal        func_00118CB0
    /* 1D2C8 0011C348 2D202002 */   daddu     $a0, $s1, $zero
    /* 1D2CC 0011C34C 2063040C */  jal        func_00118C80
    /* 1D2D0 0011C350 2D202002 */   daddu     $a0, $s1, $zero
    /* 1D2D4 0011C354 3000A28F */  lw         $v0, 0x30($sp)
    /* 1D2D8 0011C358 FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 1D2DC 0011C35C 2A186200 */  slt        $v1, $v1, $v0
    /* 1D2E0 0011C360 0B100300 */  movn       $v0, $zero, $v1
.align 2
  .L0011C364:
    /* 1D2E4 0011C364 9000BFDF */  ld         $ra, 0x90($sp)
    /* 1D2E8 0011C368 8000B4DF */  ld         $s4, 0x80($sp)
    /* 1D2EC 0011C36C 7000B3DF */  ld         $s3, 0x70($sp)
    /* 1D2F0 0011C370 6000B2DF */  ld         $s2, 0x60($sp)
    /* 1D2F4 0011C374 5000B1DF */  ld         $s1, 0x50($sp)
    /* 1D2F8 0011C378 4000B0DF */  ld         $s0, 0x40($sp)
    /* 1D2FC 0011C37C 0800E003 */  jr         $ra
    /* 1D300 0011C380 A000BD27 */   addiu     $sp, $sp, 0xA0
endlabel func_0011C208
    /* 1D304 0011C384 00000000 */  nop
