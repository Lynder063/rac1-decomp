.align 3
nonmatching func_001EDFF8, 0x3B4

glabel func_001EDFF8
    /* EEF78 001EDFF8 B0FEBD27 */  addiu      $sp, $sp, -0x150
    /* EEF7C 001EDFFC 1800023C */  lui        $v0, %hi(D_00187400)
    /* EEF80 001EE000 8000B17F */  sq         $s1, 0x80($sp)
    /* EEF84 001EE004 01000424 */  addiu      $a0, $zero, 0x1
    /* EEF88 001EE008 7000B07F */  sq         $s0, 0x70($sp)
    /* EEF8C 001EE00C 0001BF7F */  sq         $ra, 0x100($sp)
    /* EEF90 001EE010 00745024 */  addiu      $s0, $v0, %lo(D_00187400)
    /* EEF94 001EE014 F000BE7F */  sq         $fp, 0xF0($sp)
    /* EEF98 001EE018 E000B77F */  sq         $s7, 0xE0($sp)
    /* EEF9C 001EE01C D000B67F */  sq         $s6, 0xD0($sp)
    /* EEFA0 001EE020 C000B57F */  sq         $s5, 0xC0($sp)
    /* EEFA4 001EE024 B000B47F */  sq         $s4, 0xB0($sp)
    /* EEFA8 001EE028 A000B37F */  sq         $s3, 0xA0($sp)
    /* EEFAC 001EE02C 9000B27F */  sq         $s2, 0x90($sp)
    /* EEFB0 001EE030 4001BAE7 */  swc1       $f26, 0x140($sp)
    /* EEFB4 001EE034 3801B9E7 */  swc1       $f25, 0x138($sp)
    /* EEFB8 001EE038 3001B8E7 */  swc1       $f24, 0x130($sp)
    /* EEFBC 001EE03C 2801B7E7 */  swc1       $f23, 0x128($sp)
    /* EEFC0 001EE040 2001B6E7 */  swc1       $f22, 0x120($sp)
    /* EEFC4 001EE044 1801B5E7 */  swc1       $f21, 0x118($sp)
    /* EEFC8 001EE048 1001B4E7 */  swc1       $f20, 0x110($sp)
    /* EEFCC 001EE04C 0400038E */  lw         $v1, 0x4($s0)
    /* EEFD0 001EE050 06006414 */  bne        $v1, $a0, .L001EE06C
    /* EEFD4 001EE054 2D884000 */   daddu     $s1, $v0, $zero
    /* EEFD8 001EE058 0074258E */  lw         $a1, %lo(D_00187400)($s1)
    /* EEFDC 001EE05C 2000A290 */  lbu        $v0, 0x20($a1)
    /* EEFE0 001EE060 80004230 */  andi       $v0, $v0, 0x80
    /* EEFE4 001EE064 03004050 */  beql       $v0, $zero, .L001EE074
    /* EEFE8 001EE068 080000C6 */   lwc1      $f0, 0x8($s0)
.align 2
  .L001EE06C:
    /* EEFEC 001EE06C BC000010 */  b          .L001EE360
    /* EEFF0 001EE070 040000AE */   sw        $zero, 0x4($s0)
.align 2
  .L001EE074:
    /* EEFF4 001EE074 00A88044 */  mtc1       $zero, $f21
    /* EEFF8 001EE078 00000000 */  nop
    /* EEFFC 001EE07C 36001546 */  c.le.s     $f0, $f21
    /* EF000 001EE080 00000000 */  nop
    /* EF004 001EE084 B7000145 */  bc1t       .L001EE364
    /* EF008 001EE088 0001BF7B */   lq        $ra, 0x100($sp)
    /* EF00C 001EE08C 1800043C */  lui        $a0, %hi(D_00187180)
    /* EF010 001EE090 1000A524 */  addiu      $a1, $a1, 0x10
    /* EF014 001EE094 80718424 */  addiu      $a0, $a0, %lo(D_00187180)
    /* EF018 001EE098 44E7070C */  jal        func_001F9D10
    /* EF01C 001EE09C 2DF00002 */   daddu     $fp, $s0, $zero
    /* EF020 001EE0A0 803D013C */  lui        $at, (0x3D800000 >> 16)
    /* EF024 001EE0A4 00A08144 */  mtc1       $at, $f20
    /* EF028 001EE0A8 1400103C */  lui        $s0, %hi(D_0013E600)
    /* EF02C 001EE0AC 86060046 */  mov.s      $f26, $f0
    /* EF030 001EE0B0 00E61026 */  addiu      $s0, $s0, %lo(D_0013E600)
    /* EF034 001EE0B4 803F013C */  lui        $at, (0x3F800000 >> 16)
    /* EF038 001EE0B8 00B88144 */  mtc1       $at, $f23
    /* EF03C 001EE0BC 0800048E */  lw         $a0, 0x8($s0)
    /* EF040 001EE0C0 86AD0046 */  mov.s      $f22, $f21
    /* EF044 001EE0C4 A0C0013C */  lui        $at, (0xC0A00000 >> 16)
    /* EF048 001EE0C8 00C88144 */  mtc1       $at, $f25
    /* EF04C 001EE0CC 22EA070C */  jal        func_001FA888
    /* EF050 001EE0D0 2DA00000 */   daddu     $s4, $zero, $zero
    /* EF054 001EE0D4 B040013C */  lui        $at, (0x40B00000 >> 16)
    /* EF058 001EE0D8 00C08144 */  mtc1       $at, $f24
    /* EF05C 001EE0DC 0C00048E */  lw         $a0, 0xC($s0)
    /* EF060 001EE0E0 D000D627 */  addiu      $s6, $fp, 0xD0
    /* EF064 001EE0E4 2000A0E7 */  swc1       $f0, 0x20($sp)
    /* EF068 001EE0E8 22EA070C */  jal        func_001FA888
    /* EF06C 001EE0EC 6000A0AF */   sw        $zero, 0x60($sp)
    /* EF070 001EE0F0 0074258E */  lw         $a1, %lo(D_00187400)($s1)
    /* EF074 001EE0F4 1000A427 */  addiu      $a0, $sp, 0x10
    /* EF078 001EE0F8 2400A0E7 */  swc1       $f0, 0x24($sp)
    /* EF07C 001EE0FC 06C9070C */  jal        func_001F2418
    /* EF080 001EE100 1000A524 */   addiu     $a1, $a1, 0x10
    /* EF084 001EE104 22EA070C */  jal        func_001FA888
    /* EF088 001EE108 1000048E */   lw        $a0, 0x10($s0)
    /* EF08C 001EE10C 1000A1C7 */  lwc1       $f1, 0x10($sp)
    /* EF090 001EE110 1400048E */  lw         $a0, 0x14($s0)
    /* EF094 001EE114 41080046 */  sub.s      $f1, $f1, $f0
    /* EF098 001EE118 42081446 */  mul.s      $f1, $f1, $f20
    /* EF09C 001EE11C 22EA070C */  jal        func_001FA888
    /* EF0A0 001EE120 1000A1E7 */   swc1      $f1, 0x10($sp)
    /* EF0A4 001EE124 1400A1C7 */  lwc1       $f1, 0x14($sp)
    /* EF0A8 001EE128 2000A2C7 */  lwc1       $f2, 0x20($sp)
    /* EF0AC 001EE12C 41080046 */  sub.s      $f1, $f1, $f0
    /* EF0B0 001EE130 1000A3C7 */  lwc1       $f3, 0x10($sp)
    /* EF0B4 001EE134 2400A0C7 */  lwc1       $f0, 0x24($sp)
    /* EF0B8 001EE138 81100346 */  sub.s      $f2, $f2, $f3
    /* EF0BC 001EE13C 42081446 */  mul.s      $f1, $f1, $f20
    /* EF0C0 001EE140 3000A2E7 */  swc1       $f2, 0x30($sp)
    /* EF0C4 001EE144 01000146 */  sub.s      $f0, $f0, $f1
    /* EF0C8 001EE148 1400A1E7 */  swc1       $f1, 0x14($sp)
    /* EF0CC 001EE14C 3400A0E7 */  swc1       $f0, 0x34($sp)
    /* EF0D0 001EE150 40101400 */  sll        $v0, $s4, 1
    /* EF0D4 001EE154 00000000 */  nop
.align 2
  .L001EE158:
    /* EF0D8 001EE158 40001324 */  addiu      $s3, $zero, 0x40
    /* EF0DC 001EE15C 2D804000 */  daddu      $s0, $v0, $zero
    /* EF0E0 001EE160 2110C203 */  addu       $v0, $fp, $v0
    /* EF0E4 001EE164 30004484 */  lh         $a0, 0x30($v0)
    /* EF0E8 001EE168 1AD2070C */  jal        func_001F4868
    /* EF0EC 001EE16C 06008424 */   addiu     $a0, $a0, 0x6
    /* EF0F0 001EE170 C0FFC0C6 */  lwc1       $f0, -0x40($s6)
    /* EF0F4 001EE174 2DB84000 */  daddu      $s7, $v0, $zero
    /* EF0F8 001EE178 3000A2C7 */  lwc1       $f2, 0x30($sp)
    /* EF0FC 001EE17C 20000224 */  addiu      $v0, $zero, 0x20
    /* EF100 001EE180 3400A3C7 */  lwc1       $f3, 0x34($sp)
    /* EF104 001EE184 0B985400 */  movn       $s3, $v0, $s4
    /* EF108 001EE188 A040013C */  lui        $at, (0x40A00000 >> 16)
    /* EF10C 001EE18C 00208144 */  mtc1       $at, $f4
    /* EF110 001EE190 82100046 */  mul.s      $f2, $f2, $f0
    /* EF114 001EE194 C2180046 */  mul.s      $f3, $f3, $f0
    /* EF118 001EE198 2000A1C7 */  lwc1       $f1, 0x20($sp)
    /* EF11C 001EE19C 41D50446 */  sub.s      $f21, $f26, $f4
    /* EF120 001EE1A0 2400A0C7 */  lwc1       $f0, 0x24($sp)
    /* EF124 001EE1A4 40080246 */  add.s      $f1, $f1, $f2
    /* EF128 001EE1A8 4000A2E7 */  swc1       $f2, 0x40($sp)
    /* EF12C 001EE1AC 00000346 */  add.s      $f0, $f0, $f3
    /* EF130 001EE1B0 4400A3E7 */  swc1       $f3, 0x44($sp)
    /* EF134 001EE1B4 34B81546 */  c.lt.s     $f23, $f21
    /* EF138 001EE1B8 5000A1E7 */  swc1       $f1, 0x50($sp)
    /* EF13C 001EE1BC 05000045 */  bc1f       .L001EE1D4
    /* EF140 001EE1C0 5400A0E7 */   swc1      $f0, 0x54($sp)
    /* EF144 001EE1C4 803F013C */  lui        $at, (0x3F800000 >> 16)
    /* EF148 001EE1C8 00A88144 */  mtc1       $at, $f21
    /* EF14C 001EE1CC 06000010 */  b          .L001EE1E8
    /* EF150 001EE1D0 00000000 */   nop
.align 2
  .L001EE1D4:
    /* EF154 001EE1D4 34A81646 */  c.lt.s     $f21, $f22
    /* EF158 001EE1D8 00000000 */  nop
    /* EF15C 001EE1DC 02000045 */  bc1f       .L001EE1E8
    /* EF160 001EE1E0 00000000 */   nop
    /* EF164 001EE1E4 00A88044 */  mtc1       $zero, $f21
.align 2
  .L001EE1E8:
    /* EF168 001EE1E8 E2E6070C */  jal        func_001F9B88
    /* EF16C 001EE1EC 3000ACC7 */   lwc1      $f12, 0x30($sp)
    /* EF170 001EE1F0 2000A1C7 */  lwc1       $f1, 0x20($sp)
    /* EF174 001EE1F4 03000146 */  div.s      $f0, $f0, $f1
    /* EF178 001EE1F8 02001946 */  mul.s      $f0, $f0, $f25
    /* EF17C 001EE1FC 00051846 */  add.s      $f20, $f0, $f24
    /* EF180 001EE200 34B81446 */  c.lt.s     $f23, $f20
    /* EF184 001EE204 00000000 */  nop
    /* EF188 001EE208 05000045 */  bc1f       .L001EE220
    /* EF18C 001EE20C 00000000 */   nop
    /* EF190 001EE210 803F013C */  lui        $at, (0x3F800000 >> 16)
    /* EF194 001EE214 00A08144 */  mtc1       $at, $f20
    /* EF198 001EE218 06000010 */  b          .L001EE234
    /* EF19C 001EE21C 00000000 */   nop
.align 2
  .L001EE220:
    /* EF1A0 001EE220 34A01646 */  c.lt.s     $f20, $f22
    /* EF1A4 001EE224 00000000 */  nop
    /* EF1A8 001EE228 02000045 */  bc1f       .L001EE234
    /* EF1AC 001EE22C 00000000 */   nop
    /* EF1B0 001EE230 00A08044 */  mtc1       $zero, $f20
.align 2
  .L001EE234:
    /* EF1B4 001EE234 E2E6070C */  jal        func_001F9B88
    /* EF1B8 001EE238 3400ACC7 */   lwc1      $f12, 0x34($sp)
    /* EF1BC 001EE23C 2400A1C7 */  lwc1       $f1, 0x24($sp)
    /* EF1C0 001EE240 03000146 */  div.s      $f0, $f0, $f1
    /* EF1C4 001EE244 02001946 */  mul.s      $f0, $f0, $f25
    /* EF1C8 001EE248 00001846 */  add.s      $f0, $f0, $f24
    /* EF1CC 001EE24C 34B80046 */  c.lt.s     $f23, $f0
    /* EF1D0 001EE250 00000000 */  nop
    /* EF1D4 001EE254 05000045 */  bc1f       .L001EE26C
    /* EF1D8 001EE258 1000D527 */   addiu     $s5, $fp, 0x10
    /* EF1DC 001EE25C 803F013C */  lui        $at, (0x3F800000 >> 16)
    /* EF1E0 001EE260 00008144 */  mtc1       $at, $f0
    /* EF1E4 001EE264 08000010 */  b          .L001EE288
    /* EF1E8 001EE268 02A00046 */   mul.s     $f0, $f20, $f0
.align 2
  .L001EE26C:
    /* EF1EC 001EE26C 34001646 */  c.lt.s     $f0, $f22
    /* EF1F0 001EE270 00000000 */  nop
    /* EF1F4 001EE274 04000245 */  bc1fl      .L001EE288
    /* EF1F8 001EE278 02A00046 */   mul.s     $f0, $f20, $f0
    /* EF1FC 001EE27C 00008044 */  mtc1       $zero, $f0
    /* EF200 001EE280 1000D527 */  addiu      $s5, $fp, 0x10
    /* EF204 001EE284 02A00046 */  mul.s      $f0, $f20, $f0
.align 2
  .L001EE288:
    /* EF208 001EE288 21101502 */  addu       $v0, $s0, $s5
    /* EF20C 001EE28C 01009426 */  addiu      $s4, $s4, 0x1
    /* EF210 001EE290 00004384 */  lh         $v1, 0x0($v0)
    /* EF214 001EE294 42AD0046 */  mul.s      $f21, $f21, $f0
    /* EF218 001EE298 00608344 */  mtc1       $v1, $f12
    /* EF21C 001EE29C 00000000 */  nop
    /* EF220 001EE2A0 20638046 */  cvt.s.w    $f12, $f12
    /* EF224 001EE2A4 26EA070C */  jal        func_001FA898
    /* EF228 001EE2A8 02AB0C46 */   mul.s     $f12, $f21, $f12
    /* EF22C 001EE2AC 6000A38F */  lw         $v1, 0x60($sp)
    /* EF230 001EE2B0 00009344 */  mtc1       $s3, $f0
    /* EF234 001EE2B4 00000000 */  nop
    /* EF238 001EE2B8 20008046 */  cvt.s.w    $f0, $f0
    /* EF23C 001EE2BC 0000CCC6 */  lwc1       $f12, 0x0($s6)
    /* EF240 001EE2C0 00860200 */  sll        $s0, $v0, 24
    /* EF244 001EE2C4 2120C303 */  addu       $a0, $fp, $v1
    /* EF248 001EE2C8 6000A28F */  lw         $v0, 0x60($sp)
    /* EF24C 001EE2CC 5000858C */  lw         $a1, 0x50($a0)
    /* EF250 001EE2D0 FF00033C */  lui        $v1, (0xFFFFFF >> 16)
    /* EF254 001EE2D4 02030C46 */  mul.s      $f12, $f0, $f12
    /* EF258 001EE2D8 FFFF6334 */  ori        $v1, $v1, (0xFFFFFF & 0xFFFF)
    /* EF25C 001EE2DC 2428A300 */  and        $a1, $a1, $v1
    /* EF260 001EE2E0 04004224 */  addiu      $v0, $v0, 0x4
    /* EF264 001EE2E4 25800502 */  or         $s0, $s0, $a1
    /* EF268 001EE2E8 26EA070C */  jal        func_001FA898
    /* EF26C 001EE2EC 6000A2AF */   sw        $v0, 0x60($sp)
    /* EF270 001EE2F0 0400D626 */  addiu      $s6, $s6, 0x4
    /* EF274 001EE2F4 2D904000 */  daddu      $s2, $v0, $zero
    /* EF278 001EE2F8 5000ACC7 */  lwc1       $f12, 0x50($sp)
    /* EF27C 001EE2FC 43101200 */  sra        $v0, $s2, 1
    /* EF280 001EE300 00A08244 */  mtc1       $v0, $f20
    /* EF284 001EE304 00000000 */  nop
    /* EF288 001EE308 20A58046 */  cvt.s.w    $f20, $f20
    /* EF28C 001EE30C 26EA070C */  jal        func_001FA898
    /* EF290 001EE310 01631446 */   sub.s     $f12, $f12, $f20
    /* EF294 001EE314 5400ACC7 */  lwc1       $f12, 0x54($sp)
    /* EF298 001EE318 2D884000 */  daddu      $s1, $v0, $zero
    /* EF29C 001EE31C 26EA070C */  jal        func_001FA898
    /* EF2A0 001EE320 01631446 */   sub.s     $f12, $f12, $f20
    /* EF2A4 001EE324 2D304002 */  daddu      $a2, $s2, $zero
    /* EF2A8 001EE328 2D506002 */  daddu      $t2, $s3, $zero
    /* EF2AC 001EE32C 2D284000 */  daddu      $a1, $v0, $zero
    /* EF2B0 001EE330 0000B0FF */  sd         $s0, 0x0($sp)
    /* EF2B4 001EE334 2D202002 */  daddu      $a0, $s1, $zero
    /* EF2B8 001EE338 0800B7FF */  sd         $s7, 0x8($sp)
    /* EF2BC 001EE33C 2D38C000 */  daddu      $a3, $a2, $zero
    /* EF2C0 001EE340 2D400000 */  daddu      $t0, $zero, $zero
    /* EF2C4 001EE344 2D480000 */  daddu      $t1, $zero, $zero
    /* EF2C8 001EE348 00D6070C */  jal        func_001F5800
    /* EF2CC 001EE34C 2D584001 */   daddu     $t3, $t2, $zero
    /* EF2D0 001EE350 1000822A */  slti       $v0, $s4, 0x10
    /* EF2D4 001EE354 80FF4014 */  bnez       $v0, .L001EE158
    /* EF2D8 001EE358 40101400 */   sll       $v0, $s4, 1
    /* EF2DC 001EE35C F8FFA0AE */  sw         $zero, -0x8($s5)
.align 2
  .L001EE360:
    /* EF2E0 001EE360 0001BF7B */  lq         $ra, 0x100($sp)
.align 2
  .L001EE364:
    /* EF2E4 001EE364 F000BE7B */  lq         $fp, 0xF0($sp)
    /* EF2E8 001EE368 E000B77B */  lq         $s7, 0xE0($sp)
    /* EF2EC 001EE36C D000B67B */  lq         $s6, 0xD0($sp)
    /* EF2F0 001EE370 C000B57B */  lq         $s5, 0xC0($sp)
    /* EF2F4 001EE374 B000B47B */  lq         $s4, 0xB0($sp)
    /* EF2F8 001EE378 A000B37B */  lq         $s3, 0xA0($sp)
    /* EF2FC 001EE37C 9000B27B */  lq         $s2, 0x90($sp)
    /* EF300 001EE380 8000B17B */  lq         $s1, 0x80($sp)
    /* EF304 001EE384 7000B07B */  lq         $s0, 0x70($sp)
    /* EF308 001EE388 4001BAC7 */  lwc1       $f26, 0x140($sp)
    /* EF30C 001EE38C 3801B9C7 */  lwc1       $f25, 0x138($sp)
    /* EF310 001EE390 3001B8C7 */  lwc1       $f24, 0x130($sp)
    /* EF314 001EE394 2801B7C7 */  lwc1       $f23, 0x128($sp)
    /* EF318 001EE398 2001B6C7 */  lwc1       $f22, 0x120($sp)
    /* EF31C 001EE39C 1801B5C7 */  lwc1       $f21, 0x118($sp)
    /* EF320 001EE3A0 1001B4C7 */  lwc1       $f20, 0x110($sp)
    /* EF324 001EE3A4 0800E003 */  jr         $ra
    /* EF328 001EE3A8 5001BD27 */   addiu     $sp, $sp, 0x150
endlabel func_001EDFF8
    /* EF32C 001EE3AC 00000000 */  nop
