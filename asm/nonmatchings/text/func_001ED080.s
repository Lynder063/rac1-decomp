.align 3
nonmatching func_001ED080, 0x5D8

glabel func_001ED080
    /* EE000 001ED080 30FEBD27 */  addiu      $sp, $sp, -0x1D0
    /* EE004 001ED084 4001B57F */  sq         $s5, 0x140($sp)
    /* EE008 001ED088 3001B47F */  sq         $s4, 0x130($sp)
    /* EE00C 001ED08C 8001BF7F */  sq         $ra, 0x180($sp)
    /* EE010 001ED090 2DA0A000 */  daddu      $s4, $a1, $zero
    /* EE014 001ED094 7001BE7F */  sq         $fp, 0x170($sp)
    /* EE018 001ED098 6001B77F */  sq         $s7, 0x160($sp)
    /* EE01C 001ED09C 5001B67F */  sq         $s6, 0x150($sp)
    /* EE020 001ED0A0 2001B37F */  sq         $s3, 0x120($sp)
    /* EE024 001ED0A4 1001B27F */  sq         $s2, 0x110($sp)
    /* EE028 001ED0A8 0001B17F */  sq         $s1, 0x100($sp)
    /* EE02C 001ED0AC F000B07F */  sq         $s0, 0xF0($sp)
    /* EE030 001ED0B0 C001BAE7 */  swc1       $f26, 0x1C0($sp)
    /* EE034 001ED0B4 B801B9E7 */  swc1       $f25, 0x1B8($sp)
    /* EE038 001ED0B8 B001B8E7 */  swc1       $f24, 0x1B0($sp)
    /* EE03C 001ED0BC A801B7E7 */  swc1       $f23, 0x1A8($sp)
    /* EE040 001ED0C0 A001B6E7 */  swc1       $f22, 0x1A0($sp)
    /* EE044 001ED0C4 9801B5E7 */  swc1       $f21, 0x198($sp)
    /* EE048 001ED0C8 9001B4E7 */  swc1       $f20, 0x190($sp)
    /* EE04C 001ED0CC 0C00828E */  lw         $v0, 0xC($s4)
    /* EE050 001ED0D0 0300401C */  bgtz       $v0, .L001ED0E0
    /* EE054 001ED0D4 2DA88000 */   daddu     $s5, $a0, $zero
    /* EE058 001ED0D8 4C010010 */  b          .L001ED60C
    /* EE05C 001ED0DC 01000224 */   addiu     $v0, $zero, 0x1
.align 2
  .L001ED0E0:
    /* EE060 001ED0E0 00008244 */  mtc1       $v0, $f0
    /* EE064 001ED0E4 00000000 */  nop
    /* EE068 001ED0E8 20008046 */  cvt.s.w    $f0, $f0
    /* EE06C 001ED0EC 10008EC6 */  lwc1       $f14, 0x10($s4)
    /* EE070 001ED0F0 803F013C */  lui        $at, (0x3F800000 >> 16)
    /* EE074 001ED0F4 00A08144 */  mtc1       $at, $f20
    /* EE078 001ED0F8 14008DC6 */  lwc1       $f13, 0x14($s4)
    /* EE07C 001ED0FC 606B8046 */  cvt.s.w    $f13, $f13
    /* EE080 001ED100 82030E46 */  mul.s      $f14, $f0, $f14
    /* EE084 001ED104 8850080C */  jal        func_00214220
    /* EE088 001ED108 06A30046 */   mov.s     $f12, $f20
    /* EE08C 001ED10C 1800023C */  lui        $v0, %hi(D_001872B2)
    /* EE090 001ED110 B2724490 */  lbu        $a0, %lo(D_001872B2)($v0)
    /* EE094 001ED114 02000324 */  addiu      $v1, $zero, 0x2
    /* EE098 001ED118 1D008314 */  bne        $a0, $v1, .L001ED190
    /* EE09C 001ED11C 03A60046 */   div.s     $f24, $f20, $f0
    /* EE0A0 001ED120 1400033C */  lui        $v1, %hi(D_0013F4D0)
    /* EE0A4 001ED124 4000B327 */  addiu      $s3, $sp, 0x40
    /* EE0A8 001ED128 D0F46324 */  addiu      $v1, $v1, %lo(D_0013F4D0)
    /* EE0AC 001ED12C 00006278 */  lq         $v0, 0x0($v1)
    /* EE0B0 001ED130 0000627E */  sq         $v0, 0x0($s3)
    /* EE0B4 001ED134 1000B227 */  addiu      $s2, $sp, 0x10
    /* EE0B8 001ED138 20008326 */  addiu      $v1, $s4, 0x20
    /* EE0BC 001ED13C 00006278 */  lq         $v0, 0x0($v1)
    /* EE0C0 001ED140 0000427E */  sq         $v0, 0x0($s2)
    /* EE0C4 001ED144 3000B027 */  addiu      $s0, $sp, 0x30
    /* EE0C8 001ED148 30008326 */  addiu      $v1, $s4, 0x30
    /* EE0CC 001ED14C 00006278 */  lq         $v0, 0x0($v1)
    /* EE0D0 001ED150 0000027E */  sq         $v0, 0x0($s0)
    /* EE0D4 001ED154 2000B127 */  addiu      $s1, $sp, 0x20
    /* EE0D8 001ED158 2D284002 */  daddu      $a1, $s2, $zero
    /* EE0DC 001ED15C 2D202002 */  daddu      $a0, $s1, $zero
    /* EE0E0 001ED160 28E7070C */  jal        func_001F9CA0
    /* EE0E4 001ED164 2D300002 */   daddu     $a2, $s0, $zero
    /* EE0E8 001ED168 2DB86002 */  daddu      $s7, $s3, $zero
    /* EE0EC 001ED16C 2D20A003 */  daddu      $a0, $sp, $zero
    /* EE0F0 001ED170 3000A526 */  addiu      $a1, $s5, 0x30
    /* EE0F4 001ED174 2D306002 */  daddu      $a2, $s3, $zero
    /* EE0F8 001ED178 2D384002 */  daddu      $a3, $s2, $zero
    /* EE0FC 001ED17C 2D402002 */  daddu      $t0, $s1, $zero
    /* EE100 001ED180 36B2070C */  jal        func_001EC8D8
    /* EE104 001ED184 2D480002 */   daddu     $t1, $s0, $zero
    /* EE108 001ED188 1D000010 */  b          .L001ED200
    /* EE10C 001ED18C 2DB00002 */   daddu     $s6, $s0, $zero
.align 2
  .L001ED190:
    /* EE110 001ED190 4000A627 */  addiu      $a2, $sp, 0x40
    /* EE114 001ED194 3000A326 */  addiu      $v1, $s5, 0x30
    /* EE118 001ED198 00006278 */  lq         $v0, 0x0($v1)
    /* EE11C 001ED19C 0000C27C */  sq         $v0, 0x0($a2)
    /* EE120 001ED1A0 1400103C */  lui        $s0, %hi(D_0013F450)
    /* EE124 001ED1A4 1000A227 */  addiu      $v0, $sp, 0x10
    /* EE128 001ED1A8 50F41026 */  addiu      $s0, $s0, %lo(D_0013F450)
    /* EE12C 001ED1AC 2D204000 */  daddu      $a0, $v0, $zero
    /* EE130 001ED1B0 8020058E */  lw         $a1, 0x2080($s0)
    /* EE134 001ED1B4 06A30046 */  mov.s      $f12, $f20
    /* EE138 001ED1B8 2DB8C000 */  daddu      $s7, $a2, $zero
    /* EE13C 001ED1BC 2D904000 */  daddu      $s2, $v0, $zero
    /* EE140 001ED1C0 70E7070C */  jal        func_001F9DC0
    /* EE144 001ED1C4 C000A524 */   addiu     $a1, $a1, 0xC0
    /* EE148 001ED1C8 8020058E */  lw         $a1, 0x2080($s0)
    /* EE14C 001ED1CC 3000A227 */  addiu      $v0, $sp, 0x30
    /* EE150 001ED1D0 06A30046 */  mov.s      $f12, $f20
    /* EE154 001ED1D4 2D204000 */  daddu      $a0, $v0, $zero
    /* EE158 001ED1D8 E000A524 */  addiu      $a1, $a1, 0xE0
    /* EE15C 001ED1DC 70E7070C */  jal        func_001F9DC0
    /* EE160 001ED1E0 2DB04000 */   daddu     $s6, $v0, $zero
    /* EE164 001ED1E4 4940013C */  lui        $at, (0x40490FDB >> 16)
    /* EE168 001ED1E8 DB0F2134 */  ori        $at, $at, (0x40490FDB & 0xFFFF)
    /* EE16C 001ED1EC 00008144 */  mtc1       $at, $f0
    /* EE170 001ED1F0 2000B127 */  addiu      $s1, $sp, 0x20
    /* EE174 001ED1F4 0800A0AF */  sw         $zero, 0x8($sp)
    /* EE178 001ED1F8 0000A0E7 */  swc1       $f0, 0x0($sp)
    /* EE17C 001ED1FC 0400A0AF */  sw         $zero, 0x4($sp)
.align 2
  .L001ED200:
    /* EE180 001ED200 0000ACC7 */  lwc1       $f12, 0x0($sp)
    /* EE184 001ED204 50009326 */  addiu      $s3, $s4, 0x50
    /* EE188 001ED208 803F013C */  lui        $at, (0x3F800000 >> 16)
    /* EE18C 001ED20C 00D08144 */  mtc1       $at, $f26
    /* EE190 001ED210 E4E9070C */  jal        func_001FA790
    /* EE194 001ED214 00008DC6 */   lwc1      $f13, 0x0($s4)
    /* EE198 001ED218 C6050046 */  mov.s      $f23, $f0
    /* EE19C 001ED21C 00008CC6 */  lwc1       $f12, 0x0($s4)
    /* EE1A0 001ED220 D2E9070C */  jal        func_001FA748
    /* EE1A4 001ED224 42BB1846 */   mul.s     $f13, $f23, $f24
    /* EE1A8 001ED228 0400ACC7 */  lwc1       $f12, 0x4($sp)
    /* EE1AC 001ED22C 04008DC6 */  lwc1       $f13, 0x4($s4)
    /* EE1B0 001ED230 E4E9070C */  jal        func_001FA790
    /* EE1B4 001ED234 000080E6 */   swc1      $f0, 0x0($s4)
    /* EE1B8 001ED238 42031846 */  mul.s      $f13, $f0, $f24
    /* EE1BC 001ED23C D2E9070C */  jal        func_001FA748
    /* EE1C0 001ED240 04008CC6 */   lwc1      $f12, 0x4($s4)
    /* EE1C4 001ED244 0800A1C7 */  lwc1       $f1, 0x8($sp)
    /* EE1C8 001ED248 5000B027 */  addiu      $s0, $sp, 0x50
    /* EE1CC 001ED24C 080082C6 */  lwc1       $f2, 0x8($s4)
    /* EE1D0 001ED250 2D284002 */  daddu      $a1, $s2, $zero
    /* EE1D4 001ED254 040080E6 */  swc1       $f0, 0x4($s4)
    /* EE1D8 001ED258 2D200002 */  daddu      $a0, $s0, $zero
    /* EE1DC 001ED25C 41080246 */  sub.s      $f1, $f1, $f2
    /* EE1E0 001ED260 42081846 */  mul.s      $f1, $f1, $f24
    /* EE1E4 001ED264 80100146 */  add.s      $f2, $f2, $f1
    /* EE1E8 001ED268 06130046 */  mov.s      $f12, $f2
    /* EE1EC 001ED26C 70E7070C */  jal        func_001F9DC0
    /* EE1F0 001ED270 080082E6 */   swc1      $f2, 0x8($s4)
    /* EE1F4 001ED274 00008CC6 */  lwc1       $f12, 0x0($s4)
    /* EE1F8 001ED278 2D200002 */  daddu      $a0, $s0, $zero
    /* EE1FC 001ED27C 2D280002 */  daddu      $a1, $s0, $zero
    /* EE200 001ED280 B855080C */  jal        func_002156E0
    /* EE204 001ED284 2D30C002 */   daddu     $a2, $s6, $zero
    /* EE208 001ED288 2D30C002 */  daddu      $a2, $s6, $zero
    /* EE20C 001ED28C 2D202002 */  daddu      $a0, $s1, $zero
    /* EE210 001ED290 28E7070C */  jal        func_001F9CA0
    /* EE214 001ED294 2D280002 */   daddu     $a1, $s0, $zero
    /* EE218 001ED298 2D202002 */  daddu      $a0, $s1, $zero
    /* EE21C 001ED29C 2D282002 */  daddu      $a1, $s1, $zero
    /* EE220 001ED2A0 70E7070C */  jal        func_001F9DC0
    /* EE224 001ED2A4 06D30046 */   mov.s     $f12, $f26
    /* EE228 001ED2A8 04008CC6 */  lwc1       $f12, 0x4($s4)
    /* EE22C 001ED2AC 2D302002 */  daddu      $a2, $s1, $zero
    /* EE230 001ED2B0 2D200002 */  daddu      $a0, $s0, $zero
    /* EE234 001ED2B4 B855080C */  jal        func_002156E0
    /* EE238 001ED2B8 2D280002 */   daddu     $a1, $s0, $zero
    /* EE23C 001ED2BC 2D28E002 */  daddu      $a1, $s7, $zero
    /* EE240 001ED2C0 2D300002 */  daddu      $a2, $s0, $zero
    /* EE244 001ED2C4 F6E6070C */  jal        func_001F9BD8
    /* EE248 001ED2C8 2D206002 */   daddu     $a0, $s3, $zero
    /* EE24C 001ED2CC 1900023C */  lui        $v0, %hi(D_0018C42C)
    /* EE250 001ED2D0 2CC4438C */  lw         $v1, %lo(D_0018C42C)($v0)
    /* EE254 001ED2D4 06006014 */  bnez       $v1, .L001ED2F0
    /* EE258 001ED2D8 8000B227 */   addiu     $s2, $sp, 0x80
    /* EE25C 001ED2DC 1800033C */  lui        $v1, %hi(D_00187180)
    /* EE260 001ED2E0 80716324 */  addiu      $v1, $v1, %lo(D_00187180)
    /* EE264 001ED2E4 0000627A */  lq         $v0, 0x0($s3)
    /* EE268 001ED2E8 0000627C */  sq         $v0, 0x0($v1)
    /* EE26C 001ED2EC 8000B227 */  addiu      $s2, $sp, 0x80
.align 2
  .L001ED2F0:
    /* EE270 001ED2F0 40008426 */  addiu      $a0, $s4, 0x40
    /* EE274 001ED2F4 2DF08000 */  daddu      $fp, $a0, $zero
    /* EE278 001ED2F8 92E9070C */  jal        func_001FA648
    /* EE27C 001ED2FC 2D284002 */   daddu     $a1, $s2, $zero
    /* EE280 001ED300 C93F013C */  lui        $at, (0x3FC90FDB >> 16)
    /* EE284 001ED304 DB0F2134 */  ori        $at, $at, (0x3FC90FDB & 0xFFFF)
    /* EE288 001ED308 00C88144 */  mtc1       $at, $f25
    /* EE28C 001ED30C A000B027 */  addiu      $s0, $sp, 0xA0
    /* EE290 001ED310 2D28A002 */  daddu      $a1, $s5, $zero
    /* EE294 001ED314 2D200002 */  daddu      $a0, $s0, $zero
    /* EE298 001ED318 1EE7070C */  jal        func_001F9C78
    /* EE29C 001ED31C 2DB80002 */   daddu     $s7, $s0, $zero
    /* EE2A0 001ED320 00A88044 */  mtc1       $zero, $f21
    /* EE2A4 001ED324 7000B127 */  addiu      $s1, $sp, 0x70
    /* EE2A8 001ED328 06030046 */  mov.s      $f12, $f0
    /* EE2AC 001ED32C 2D280002 */  daddu      $a1, $s0, $zero
    /* EE2B0 001ED330 0CE7070C */  jal        func_001F9C30
    /* EE2B4 001ED334 2D202002 */   daddu     $a0, $s1, $zero
    /* EE2B8 001ED338 2DB04002 */  daddu      $s6, $s2, $zero
    /* EE2BC 001ED33C 6000B027 */  addiu      $s0, $sp, 0x60
    /* EE2C0 001ED340 2D302002 */  daddu      $a2, $s1, $zero
    /* EE2C4 001ED344 2D200002 */  daddu      $a0, $s0, $zero
    /* EE2C8 001ED348 FCE6070C */  jal        func_001F9BF0
    /* EE2CC 001ED34C 2D28A002 */   daddu     $a1, $s5, $zero
    /* EE2D0 001ED350 80BF013C */  lui        $at, (0xBF800000 >> 16)
    /* EE2D4 001ED354 00B08144 */  mtc1       $at, $f22
    /* EE2D8 001ED358 2D280002 */  daddu      $a1, $s0, $zero
    /* EE2DC 001ED35C 1EE7070C */  jal        func_001F9C78
    /* EE2E0 001ED360 2D204002 */   daddu     $a0, $s2, $zero
    /* EE2E4 001ED364 06050046 */  mov.s      $f20, $f0
    /* EE2E8 001ED368 2EE7070C */  jal        func_001F9CB8
    /* EE2EC 001ED36C 2D200002 */   daddu     $a0, $s0, $zero
    /* EE2F0 001ED370 F0E7070C */  jal        func_001F9FC0
    /* EE2F4 001ED374 03A30046 */   div.s     $f12, $f20, $f0
    /* EE2F8 001ED378 9000A527 */  addiu      $a1, $sp, 0x90
    /* EE2FC 001ED37C 01CD0046 */  sub.s      $f20, $f25, $f0
    /* EE300 001ED380 2D98A000 */  daddu      $s3, $a1, $zero
    /* EE304 001ED384 1EE7070C */  jal        func_001F9C78
    /* EE308 001ED388 2D200002 */   daddu     $a0, $s0, $zero
    /* EE30C 001ED38C 36A80046 */  c.le.s     $f21, $f0
    /* EE310 001ED390 00000000 */  nop
    /* EE314 001ED394 01000345 */  bc1tl      .L001ED39C
    /* EE318 001ED398 86D50046 */   mov.s     $f22, $f26
.align 2
  .L001ED39C:
    /* EE31C 001ED39C 06BB0046 */  mov.s      $f12, $f23
    /* EE320 001ED3A0 E2E6070C */  jal        func_001F9B88
    /* EE324 001ED3A4 02A51646 */   mul.s     $f20, $f20, $f22
    /* EE328 001ED3A8 34C80046 */  c.lt.s     $f25, $f0
    /* EE32C 001ED3AC 00000000 */  nop
    /* EE330 001ED3B0 22000245 */  bc1fl      .L001ED43C
    /* EE334 001ED3B4 42A51846 */   mul.s     $f21, $f20, $f24
    /* EE338 001ED3B8 36A81746 */  c.le.s     $f21, $f23
    /* EE33C 001ED3BC 00000000 */  nop
    /* EE340 001ED3C0 05000045 */  bc1f       .L001ED3D8
    /* EE344 001ED3C4 00000000 */   nop
    /* EE348 001ED3C8 34B01546 */  c.lt.s     $f22, $f21
    /* EE34C 001ED3CC 00000000 */  nop
    /* EE350 001ED3D0 09000145 */  bc1t       .L001ED3F8
    /* EE354 001ED3D4 00000000 */   nop
.align 2
  .L001ED3D8:
    /* EE358 001ED3D8 34B81546 */  c.lt.s     $f23, $f21
    /* EE35C 001ED3DC 00000000 */  nop
    /* EE360 001ED3E0 16000245 */  bc1fl      .L001ED43C
    /* EE364 001ED3E4 42A51846 */   mul.s     $f21, $f20, $f24
    /* EE368 001ED3E8 36A81646 */  c.le.s     $f21, $f22
    /* EE36C 001ED3EC 00000000 */  nop
    /* EE370 001ED3F0 12000245 */  bc1fl      .L001ED43C
    /* EE374 001ED3F4 42A51846 */   mul.s     $f21, $f20, $f24
.align 2
  .L001ED3F8:
    /* EE378 001ED3F8 00008044 */  mtc1       $zero, $f0
    /* EE37C 001ED3FC 00000000 */  nop
    /* EE380 001ED400 34A00046 */  c.lt.s     $f20, $f0
    /* EE384 001ED404 00000000 */  nop
    /* EE388 001ED408 06000045 */  bc1f       .L001ED424
    /* EE38C 001ED40C 00000000 */   nop
    /* EE390 001ED410 C940013C */  lui        $at, (0x40C90FDB >> 16)
    /* EE394 001ED414 DB0F2134 */  ori        $at, $at, (0x40C90FDB & 0xFFFF)
    /* EE398 001ED418 00008144 */  mtc1       $at, $f0
    /* EE39C 001ED41C 06000010 */  b          .L001ED438
    /* EE3A0 001ED420 00A50046 */   add.s     $f20, $f20, $f0
.align 2
  .L001ED424:
    /* EE3A4 001ED424 C940013C */  lui        $at, (0x40C90FDB >> 16)
    /* EE3A8 001ED428 DB0F2134 */  ori        $at, $at, (0x40C90FDB & 0xFFFF)
    /* EE3AC 001ED42C 00008144 */  mtc1       $at, $f0
    /* EE3B0 001ED430 00000000 */  nop
    /* EE3B4 001ED434 01A50046 */  sub.s      $f20, $f20, $f0
.align 2
  .L001ED438:
    /* EE3B8 001ED438 42A51846 */  mul.s      $f21, $f20, $f24
.align 2
  .L001ED43C:
    /* EE3BC 001ED43C E2E6070C */  jal        func_001F9B88
    /* EE3C0 001ED440 06AB0046 */   mov.s     $f12, $f21
    /* EE3C4 001ED444 2737013C */  lui        $at, (0x3727C5AC >> 16)
    /* EE3C8 001ED448 ACC52134 */  ori        $at, $at, (0x3727C5AC & 0xFFFF)
    /* EE3CC 001ED44C 00088144 */  mtc1       $at, $f1
    /* EE3D0 001ED450 00000000 */  nop
    /* EE3D4 001ED454 34000146 */  c.lt.s     $f0, $f1
    /* EE3D8 001ED458 00000000 */  nop
    /* EE3DC 001ED45C 0A000045 */  bc1f       .L001ED488
    /* EE3E0 001ED460 B000A427 */   addiu     $a0, $sp, 0xB0
    /* EE3E4 001ED464 0000C27A */  lq         $v0, 0x0($s6)
    /* EE3E8 001ED468 0000827C */  sq         $v0, 0x0($a0)
    /* EE3EC 001ED46C C000A327 */  addiu      $v1, $sp, 0xC0
    /* EE3F0 001ED470 0000627A */  lq         $v0, 0x0($s3)
    /* EE3F4 001ED474 0000627C */  sq         $v0, 0x0($v1)
    /* EE3F8 001ED478 2D888000 */  daddu      $s1, $a0, $zero
    /* EE3FC 001ED47C 2D906000 */  daddu      $s2, $v1, $zero
    /* EE400 001ED480 11000010 */  b          .L001ED4C8
    /* EE404 001ED484 D000B327 */   addiu     $s3, $sp, 0xD0
.align 2
  .L001ED488:
    /* EE408 001ED488 D000B027 */  addiu      $s0, $sp, 0xD0
    /* EE40C 001ED48C 06AB0046 */  mov.s      $f12, $f21
    /* EE410 001ED490 2D200002 */  daddu      $a0, $s0, $zero
    /* EE414 001ED494 E054080C */  jal        func_00215380
    /* EE418 001ED498 2D28E002 */   daddu     $a1, $s7, $zero
    /* EE41C 001ED49C B000B127 */  addiu      $s1, $sp, 0xB0
    /* EE420 001ED4A0 2D28C002 */  daddu      $a1, $s6, $zero
    /* EE424 001ED4A4 2D202002 */  daddu      $a0, $s1, $zero
    /* EE428 001ED4A8 9455080C */  jal        func_00215650
    /* EE42C 001ED4AC 2D300002 */   daddu     $a2, $s0, $zero
    /* EE430 001ED4B0 C000B227 */  addiu      $s2, $sp, 0xC0
    /* EE434 001ED4B4 2D286002 */  daddu      $a1, $s3, $zero
    /* EE438 001ED4B8 2D204002 */  daddu      $a0, $s2, $zero
    /* EE43C 001ED4BC 9455080C */  jal        func_00215650
    /* EE440 001ED4C0 2D300002 */   daddu     $a2, $s0, $zero
    /* EE444 001ED4C4 2D980002 */  daddu      $s3, $s0, $zero
.align 2
  .L001ED4C8:
    /* EE448 001ED4C8 E2E6070C */  jal        func_001F9B88
    /* EE44C 001ED4CC 06A30046 */   mov.s     $f12, $f20
    /* EE450 001ED4D0 2737013C */  lui        $at, (0x3727C5AC >> 16)
    /* EE454 001ED4D4 ACC52134 */  ori        $at, $at, (0x3727C5AC & 0xFFFF)
    /* EE458 001ED4D8 00088144 */  mtc1       $at, $f1
    /* EE45C 001ED4DC 00000000 */  nop
    /* EE460 001ED4E0 34000146 */  c.lt.s     $f0, $f1
    /* EE464 001ED4E4 00000000 */  nop
    /* EE468 001ED4E8 05000045 */  bc1f       .L001ED500
    /* EE46C 001ED4EC E000B027 */   addiu     $s0, $sp, 0xE0
    /* EE470 001ED4F0 0000C27A */  lq         $v0, 0x0($s6)
    /* EE474 001ED4F4 0000627E */  sq         $v0, 0x0($s3)
    /* EE478 001ED4F8 0A000010 */  b          .L001ED524
    /* EE47C 001ED4FC 2D206002 */   daddu     $a0, $s3, $zero
.align 2
  .L001ED500:
    /* EE480 001ED500 2D28E002 */  daddu      $a1, $s7, $zero
    /* EE484 001ED504 2D200002 */  daddu      $a0, $s0, $zero
    /* EE488 001ED508 E054080C */  jal        func_00215380
    /* EE48C 001ED50C 06A30046 */   mov.s     $f12, $f20
    /* EE490 001ED510 2D28C002 */  daddu      $a1, $s6, $zero
    /* EE494 001ED514 2D300002 */  daddu      $a2, $s0, $zero
    /* EE498 001ED518 9455080C */  jal        func_00215650
    /* EE49C 001ED51C 2D206002 */   daddu     $a0, $s3, $zero
    /* EE4A0 001ED520 2D206002 */  daddu      $a0, $s3, $zero
.align 2
  .L001ED524:
    /* EE4A4 001ED524 1EE7070C */  jal        func_001F9C78
    /* EE4A8 001ED528 2D28A002 */   daddu     $a1, $s5, $zero
    /* EE4AC 001ED52C F0E7070C */  jal        func_001F9FC0
    /* EE4B0 001ED530 06030046 */   mov.s     $f12, $f0
    /* EE4B4 001ED534 C93F013C */  lui        $at, (0x3FC90FDB >> 16)
    /* EE4B8 001ED538 DB0F2134 */  ori        $at, $at, (0x3FC90FDB & 0xFFFF)
    /* EE4BC 001ED53C 00088144 */  mtc1       $at, $f1
    /* EE4C0 001ED540 2D206002 */  daddu      $a0, $s3, $zero
    /* EE4C4 001ED544 2000A526 */  addiu      $a1, $s5, 0x20
    /* EE4C8 001ED548 1EE7070C */  jal        func_001F9C78
    /* EE4CC 001ED54C 010D0046 */   sub.s     $f20, $f1, $f0
    /* EE4D0 001ED550 00088044 */  mtc1       $zero, $f1
    /* EE4D4 001ED554 80BF013C */  lui        $at, (0xBF800000 >> 16)
    /* EE4D8 001ED558 00108144 */  mtc1       $at, $f2
    /* EE4DC 001ED55C 36080046 */  c.le.s     $f1, $f0
    /* EE4E0 001ED560 00000000 */  nop
    /* EE4E4 001ED564 05000245 */  bc1fl      .L001ED57C
    /* EE4E8 001ED568 02A50246 */   mul.s     $f20, $f20, $f2
    /* EE4EC 001ED56C 803F013C */  lui        $at, (0x3F800000 >> 16)
    /* EE4F0 001ED570 00108144 */  mtc1       $at, $f2
    /* EE4F4 001ED574 00000000 */  nop
    /* EE4F8 001ED578 02A50246 */  mul.s      $f20, $f20, $f2
.align 2
  .L001ED57C:
    /* EE4FC 001ED57C 2D304002 */  daddu      $a2, $s2, $zero
    /* EE500 001ED580 2D202002 */  daddu      $a0, $s1, $zero
    /* EE504 001ED584 2D282002 */  daddu      $a1, $s1, $zero
    /* EE508 001ED588 B855080C */  jal        func_002156E0
    /* EE50C 001ED58C 02A31846 */   mul.s     $f12, $f20, $f24
    /* EE510 001ED590 1800103C */  lui        $s0, %hi(D_00187390)
    /* EE514 001ED594 803F013C */  lui        $at, (0x3F800000 >> 16)
    /* EE518 001ED598 00608144 */  mtc1       $at, $f12
    /* EE51C 001ED59C 90731026 */  addiu      $s0, $s0, %lo(D_00187390)
    /* EE520 001ED5A0 2D282002 */  daddu      $a1, $s1, $zero
    /* EE524 001ED5A4 2D200002 */  daddu      $a0, $s0, $zero
    /* EE528 001ED5A8 70E7070C */  jal        func_001F9DC0
    /* EE52C 001ED5AC 10001126 */   addiu     $s1, $s0, 0x10
    /* EE530 001ED5B0 1400063C */  lui        $a2, %hi(D_0013F6E0)
    /* EE534 001ED5B4 2D202002 */  daddu      $a0, $s1, $zero
    /* EE538 001ED5B8 E0F6C624 */  addiu      $a2, $a2, %lo(D_0013F6E0)
    /* EE53C 001ED5BC 28E7070C */  jal        func_001F9CA0
    /* EE540 001ED5C0 2D280002 */   daddu     $a1, $s0, $zero
    /* EE544 001ED5C4 80BF013C */  lui        $at, (0xBF800000 >> 16)
    /* EE548 001ED5C8 00608144 */  mtc1       $at, $f12
    /* EE54C 001ED5CC 2D202002 */  daddu      $a0, $s1, $zero
    /* EE550 001ED5D0 70E7070C */  jal        func_001F9DC0
    /* EE554 001ED5D4 2D282002 */   daddu     $a1, $s1, $zero
    /* EE558 001ED5D8 2D300002 */  daddu      $a2, $s0, $zero
    /* EE55C 001ED5DC 2D282002 */  daddu      $a1, $s1, $zero
    /* EE560 001ED5E0 28E7070C */  jal        func_001F9CA0
    /* EE564 001ED5E4 20000426 */   addiu     $a0, $s0, 0x20
    /* EE568 001ED5E8 60008426 */  addiu      $a0, $s4, 0x60
    /* EE56C 001ED5EC CA54080C */  jal        func_00215328
    /* EE570 001ED5F0 2D280002 */   daddu     $a1, $s0, $zero
    /* EE574 001ED5F4 2D20C003 */  daddu      $a0, $fp, $zero
    /* EE578 001ED5F8 CA54080C */  jal        func_00215328
    /* EE57C 001ED5FC 2D280002 */   daddu     $a1, $s0, $zero
    /* EE580 001ED600 42E6070C */  jal        func_001F9908
    /* EE584 001ED604 0C008426 */   addiu     $a0, $s4, 0xC
    /* EE588 001ED608 2D100000 */  daddu      $v0, $zero, $zero
.align 2
  .L001ED60C:
    /* EE58C 001ED60C 8001BF7B */  lq         $ra, 0x180($sp)
    /* EE590 001ED610 7001BE7B */  lq         $fp, 0x170($sp)
    /* EE594 001ED614 6001B77B */  lq         $s7, 0x160($sp)
    /* EE598 001ED618 5001B67B */  lq         $s6, 0x150($sp)
    /* EE59C 001ED61C 4001B57B */  lq         $s5, 0x140($sp)
    /* EE5A0 001ED620 3001B47B */  lq         $s4, 0x130($sp)
    /* EE5A4 001ED624 2001B37B */  lq         $s3, 0x120($sp)
    /* EE5A8 001ED628 1001B27B */  lq         $s2, 0x110($sp)
    /* EE5AC 001ED62C 0001B17B */  lq         $s1, 0x100($sp)
    /* EE5B0 001ED630 F000B07B */  lq         $s0, 0xF0($sp)
    /* EE5B4 001ED634 C001BAC7 */  lwc1       $f26, 0x1C0($sp)
    /* EE5B8 001ED638 B801B9C7 */  lwc1       $f25, 0x1B8($sp)
    /* EE5BC 001ED63C B001B8C7 */  lwc1       $f24, 0x1B0($sp)
    /* EE5C0 001ED640 A801B7C7 */  lwc1       $f23, 0x1A8($sp)
    /* EE5C4 001ED644 A001B6C7 */  lwc1       $f22, 0x1A0($sp)
    /* EE5C8 001ED648 9801B5C7 */  lwc1       $f21, 0x198($sp)
    /* EE5CC 001ED64C 9001B4C7 */  lwc1       $f20, 0x190($sp)
    /* EE5D0 001ED650 0800E003 */  jr         $ra
    /* EE5D4 001ED654 D001BD27 */   addiu     $sp, $sp, 0x1D0
endlabel func_001ED080
