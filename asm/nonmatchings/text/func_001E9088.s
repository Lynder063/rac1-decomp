.align 3
nonmatching func_001E9088, 0x414

glabel func_001E9088
    /* EA008 001E9088 40FFBD27 */  addiu      $sp, $sp, -0xC0
    /* EA00C 001E908C 7000B47F */  sq         $s4, 0x70($sp)
    /* EA010 001E9090 2D18A003 */  daddu      $v1, $sp, $zero
    /* EA014 001E9094 6000B37F */  sq         $s3, 0x60($sp)
    /* EA018 001E9098 1000B427 */  addiu      $s4, $sp, 0x10
    /* EA01C 001E909C 5000B27F */  sq         $s2, 0x50($sp)
    /* EA020 001E90A0 2000B327 */  addiu      $s3, $sp, 0x20
    /* EA024 001E90A4 2D908000 */  daddu      $s2, $a0, $zero
    /* EA028 001E90A8 9000B67F */  sq         $s6, 0x90($sp)
    /* EA02C 001E90AC 8000B57F */  sq         $s5, 0x80($sp)
    /* EA030 001E90B0 1600163C */  lui        $s6, %hi(D_00165580)
    /* EA034 001E90B4 4000B17F */  sq         $s1, 0x40($sp)
    /* EA038 001E90B8 2DA80000 */  daddu      $s5, $zero, $zero
    /* EA03C 001E90BC A000BF7F */  sq         $ra, 0xA0($sp)
    /* EA040 001E90C0 2D286002 */  daddu      $a1, $s3, $zero
    /* EA044 001E90C4 3000B07F */  sq         $s0, 0x30($sp)
    /* EA048 001E90C8 2D208002 */  daddu      $a0, $s4, $zero
    /* EA04C 001E90CC B000B4E7 */  swc1       $f20, 0xB0($sp)
    /* EA050 001E90D0 2D104002 */  daddu      $v0, $s2, $zero
    /* EA054 001E90D4 01001124 */  addiu      $s1, $zero, 0x1
.align 2
  .L001E90D8:
    /* EA058 001E90D8 000060AC */  sw         $zero, 0x0($v1)
    /* EA05C 001E90DC FFFF3126 */  addiu      $s1, $s1, -0x1
    /* EA060 001E90E0 000080AC */  sw         $zero, 0x0($a0)
    /* EA064 001E90E4 04006324 */  addiu      $v1, $v1, 0x4
    /* EA068 001E90E8 000040AC */  sw         $zero, 0x0($v0)
    /* EA06C 001E90EC 04008424 */  addiu      $a0, $a0, 0x4
    /* EA070 001E90F0 0000A0AC */  sw         $zero, 0x0($a1)
    /* EA074 001E90F4 04004224 */  addiu      $v0, $v0, 0x4
    /* EA078 001E90F8 F7FF2106 */  bgez       $s1, .L001E90D8
    /* EA07C 001E90FC 0400A524 */   addiu     $a1, $a1, 0x4
    /* EA080 001E9100 2D880000 */  daddu      $s1, $zero, $zero
    /* EA084 001E9104 8055C626 */  addiu      $a2, $s6, %lo(D_00165580)
.align 2
  .L001E9108:
    /* EA088 001E9108 00291100 */  sll        $a1, $s1, 4
    /* EA08C 001E910C 2180A600 */  addu       $s0, $a1, $a2
    /* EA090 001E9110 00000286 */  lh         $v0, 0x0($s0)
    /* EA094 001E9114 AB004010 */  beqz       $v0, .L001E93C4
    /* EA098 001E9118 0600C224 */   addiu     $v0, $a2, 0x6
    /* EA09C 001E911C 0100B526 */  addiu      $s5, $s5, 0x1
    /* EA0A0 001E9120 2110A200 */  addu       $v0, $a1, $v0
    /* EA0A4 001E9124 00004394 */  lhu        $v1, 0x0($v0)
    /* EA0A8 001E9128 FFFF6424 */  addiu      $a0, $v1, -0x1
    /* EA0AC 001E912C 001C0300 */  sll        $v1, $v1, 16
    /* EA0B0 001E9130 0200601C */  bgtz       $v1, .L001E913C
    /* EA0B4 001E9134 000044A4 */   sh        $a0, 0x0($v0)
    /* EA0B8 001E9138 000000A6 */  sh         $zero, 0x0($s0)
.align 2
  .L001E913C:
    /* EA0BC 001E913C 0400C224 */  addiu      $v0, $a2, 0x4
    /* EA0C0 001E9140 2118A200 */  addu       $v1, $a1, $v0
    /* EA0C4 001E9144 00006284 */  lh         $v0, 0x0($v1)
    /* EA0C8 001E9148 04004010 */  beqz       $v0, .L001E915C
    /* EA0CC 001E914C 00006494 */   lhu       $a0, 0x0($v1)
    /* EA0D0 001E9150 FFFF8224 */  addiu      $v0, $a0, -0x1
    /* EA0D4 001E9154 9B000010 */  b          .L001E93C4
    /* EA0D8 001E9158 000062A4 */   sh        $v0, 0x0($v1)
.align 2
  .L001E915C:
    /* EA0DC 001E915C 0800C424 */  addiu      $a0, $a2, 0x8
    /* EA0E0 001E9160 2D400000 */  daddu      $t0, $zero, $zero
    /* EA0E4 001E9164 2120A400 */  addu       $a0, $a1, $a0
    /* EA0E8 001E9168 00008294 */  lhu        $v0, 0x0($a0)
    /* EA0EC 001E916C 01004224 */  addiu      $v0, $v0, 0x1
    /* EA0F0 001E9170 000082A4 */  sh         $v0, 0x0($a0)
    /* EA0F4 001E9174 0A000386 */  lh         $v1, 0xA($s0)
    /* EA0F8 001E9178 0C000486 */  lh         $a0, 0xC($s0)
    /* EA0FC 001E917C 08000286 */  lh         $v0, 0x8($s0)
    /* EA100 001E9180 21186400 */  addu       $v1, $v1, $a0
    /* EA104 001E9184 1A004300 */  div        $zero, $v0, $v1
    /* EA108 001E9188 01006050 */  beql       $v1, $zero, .L001E9190
    /* EA10C 001E918C CD010000 */   break     0, 7
.align 2
  .L001E9190:
    /* EA110 001E9190 00000386 */  lh         $v1, 0x0($s0)
    /* EA114 001E9194 0600622C */  sltiu      $v0, $v1, 0x6
    /* EA118 001E9198 10380000 */  mfhi       $a3
    /* EA11C 001E919C 71004010 */  beqz       $v0, .L001E9364
    /* EA120 001E91A0 2D48E000 */   daddu     $t1, $a3, $zero
    /* EA124 001E91A4 1E00023C */  lui        $v0, %hi(jtbl_001E7940)
    /* EA128 001E91A8 80180300 */  sll        $v1, $v1, 2
    /* EA12C 001E91AC 40794224 */  addiu      $v0, $v0, %lo(jtbl_001E7940)
    /* EA130 001E91B0 21186200 */  addu       $v1, $v1, $v0
    /* EA134 001E91B4 0000648C */  lw         $a0, 0x0($v1)
    /* EA138 001E91B8 08008000 */  jr         $a0
    /* EA13C 001E91BC 00000000 */   nop
    /* EA140 001E91C0 0A000286 */  lh         $v0, 0xA($s0)
    /* EA144 001E91C4 2A10E200 */  slt        $v0, $a3, $v0
    /* EA148 001E91C8 66004050 */  beql       $v0, $zero, .L001E9364
    /* EA14C 001E91CC 0F000892 */   lbu       $t0, 0xF($s0)
    /* EA150 001E91D0 0E000392 */  lbu        $v1, 0xE($s0)
    /* EA154 001E91D4 0F000292 */  lbu        $v0, 0xF($s0)
    /* EA158 001E91D8 62000010 */  b          .L001E9364
    /* EA15C 001E91DC 21406200 */   addu      $t0, $v1, $v0
    /* EA160 001E91E0 0A000586 */  lh         $a1, 0xA($s0)
    /* EA164 001E91E4 2A10E500 */  slt        $v0, $a3, $a1
    /* EA168 001E91E8 09004050 */  beql       $v0, $zero, .L001E9210
    /* EA16C 001E91EC 0C000486 */   lh        $a0, 0xC($s0)
    /* EA170 001E91F0 0E000292 */  lbu        $v0, 0xE($s0)
    /* EA174 001E91F4 0100A050 */  beql       $a1, $zero, .L001E91FC
    /* EA178 001E91F8 CD010000 */   break     0, 7
.align 2
  .L001E91FC:
    /* EA17C 001E91FC 18104900 */  mult       $v0, $v0, $t1
    /* EA180 001E9200 1A004500 */  div        $zero, $v0, $a1
    /* EA184 001E9204 12100000 */  mflo       $v0
    /* EA188 001E9208 0A000010 */  b          .L001E9234
    /* EA18C 001E920C 2D404000 */   daddu     $t0, $v0, $zero
.align 2
  .L001E9210:
    /* EA190 001E9210 0E000392 */  lbu        $v1, 0xE($s0)
    /* EA194 001E9214 21108500 */  addu       $v0, $a0, $a1
    /* EA198 001E9218 01008050 */  beql       $a0, $zero, .L001E9220
    /* EA19C 001E921C CD010000 */   break     0, 7
.align 2
  .L001E9220:
    /* EA1A0 001E9220 23104700 */  subu       $v0, $v0, $a3
    /* EA1A4 001E9224 18186200 */  mult       $v1, $v1, $v0
    /* EA1A8 001E9228 1A006400 */  div        $zero, $v1, $a0
    /* EA1AC 001E922C 12180000 */  mflo       $v1
    /* EA1B0 001E9230 2D406000 */  daddu      $t0, $v1, $zero
.align 2
  .L001E9234:
    /* EA1B4 001E9234 0F000292 */  lbu        $v0, 0xF($s0)
    /* EA1B8 001E9238 4A000010 */  b          .L001E9364
    /* EA1BC 001E923C 21400201 */   addu      $t0, $t0, $v0
    /* EA1C0 001E9240 0A000686 */  lh         $a2, 0xA($s0)
    /* EA1C4 001E9244 2A10E600 */  slt        $v0, $a3, $a2
    /* EA1C8 001E9248 47004050 */  beql       $v0, $zero, .L001E9368
    /* EA1CC 001E924C 03000292 */   lbu       $v0, 0x3($s0)
    /* EA1D0 001E9250 0E000292 */  lbu        $v0, 0xE($s0)
    /* EA1D4 001E9254 0100C050 */  beql       $a2, $zero, .L001E925C
    /* EA1D8 001E9258 CD010000 */   break     0, 7
.align 2
  .L001E925C:
    /* EA1DC 001E925C 0F000392 */  lbu        $v1, 0xF($s0)
    /* EA1E0 001E9260 18104900 */  mult       $v0, $v0, $t1
    /* EA1E4 001E9264 1A004600 */  div        $zero, $v0, $a2
    /* EA1E8 001E9268 12100000 */  mflo       $v0
    /* EA1EC 001E926C 3D000010 */  b          .L001E9364
    /* EA1F0 001E9270 21404300 */   addu      $t0, $v0, $v1
    /* EA1F4 001E9274 0A000386 */  lh         $v1, 0xA($s0)
    /* EA1F8 001E9278 2A10E300 */  slt        $v0, $a3, $v1
    /* EA1FC 001E927C 3A004054 */  bnel       $v0, $zero, .L001E9368
    /* EA200 001E9280 03000292 */   lbu       $v0, 0x3($s0)
    /* EA204 001E9284 0C000486 */  lh         $a0, 0xC($s0)
    /* EA208 001E9288 0E000292 */  lbu        $v0, 0xE($s0)
    /* EA20C 001E928C 21188300 */  addu       $v1, $a0, $v1
    /* EA210 001E9290 01008050 */  beql       $a0, $zero, .L001E9298
    /* EA214 001E9294 CD010000 */   break     0, 7
.align 2
  .L001E9298:
    /* EA218 001E9298 23186700 */  subu       $v1, $v1, $a3
    /* EA21C 001E929C 0F000592 */  lbu        $a1, 0xF($s0)
    /* EA220 001E92A0 18104300 */  mult       $v0, $v0, $v1
    /* EA224 001E92A4 1A004400 */  div        $zero, $v0, $a0
    /* EA228 001E92A8 12100000 */  mflo       $v0
    /* EA22C 001E92AC 2D000010 */  b          .L001E9364
    /* EA230 001E92B0 21404500 */   addu      $t0, $v0, $a1
    /* EA234 001E92B4 0C000386 */  lh         $v1, 0xC($s0)
    /* EA238 001E92B8 2A10E300 */  slt        $v0, $a3, $v1
    /* EA23C 001E92BC 0D004010 */  beqz       $v0, .L001E92F4
    /* EA240 001E92C0 00000000 */   nop
    /* EA244 001E92C4 22EA070C */  jal        func_001FA888
    /* EA248 001E92C8 2D20E000 */   daddu     $a0, $a3, $zero
    /* EA24C 001E92CC 0C000486 */  lh         $a0, 0xC($s0)
    /* EA250 001E92D0 22EA070C */  jal        func_001FA888
    /* EA254 001E92D4 06050046 */   mov.s     $f20, $f0
    /* EA258 001E92D8 4940013C */  lui        $at, (0x40490FDB >> 16)
    /* EA25C 001E92DC DB0F2134 */  ori        $at, $at, (0x40490FDB & 0xFFFF)
    /* EA260 001E92E0 00088144 */  mtc1       $at, $f1
    /* EA264 001E92E4 00000000 */  nop
    /* EA268 001E92E8 02A50146 */  mul.s      $f20, $f20, $f1
    /* EA26C 001E92EC 0D000010 */  b          .L001E9324
    /* EA270 001E92F0 03A50046 */   div.s     $f20, $f20, $f0
.align 2
  .L001E92F4:
    /* EA274 001E92F4 22EA070C */  jal        func_001FA888
    /* EA278 001E92F8 2320E300 */   subu      $a0, $a3, $v1
    /* EA27C 001E92FC 0A000486 */  lh         $a0, 0xA($s0)
    /* EA280 001E9300 22EA070C */  jal        func_001FA888
    /* EA284 001E9304 06050046 */   mov.s     $f20, $f0
    /* EA288 001E9308 4940013C */  lui        $at, (0x40490FDB >> 16)
    /* EA28C 001E930C DB0F2134 */  ori        $at, $at, (0x40490FDB & 0xFFFF)
    /* EA290 001E9310 00088144 */  mtc1       $at, $f1
    /* EA294 001E9314 00000000 */  nop
    /* EA298 001E9318 02A50146 */  mul.s      $f20, $f20, $f1
    /* EA29C 001E931C 03A50046 */  div.s      $f20, $f20, $f0
    /* EA2A0 001E9320 010D1446 */  sub.s      $f20, $f1, $f20
.align 2
  .L001E9324:
    /* EA2A4 001E9324 E4E7070C */  jal        func_001F9F90
    /* EA2A8 001E9328 06A30046 */   mov.s     $f12, $f20
    /* EA2AC 001E932C 0E000492 */  lbu        $a0, 0xE($s0)
    /* EA2B0 001E9330 22EA070C */  jal        func_001FA888
    /* EA2B4 001E9334 06050046 */   mov.s     $f20, $f0
    /* EA2B8 001E9338 42A00046 */  mul.s      $f1, $f20, $f0
    /* EA2BC 001E933C 003F013C */  lui        $at, (0x3F000000 >> 16)
    /* EA2C0 001E9340 00608144 */  mtc1       $at, $f12
    /* EA2C4 001E9344 40080046 */  add.s      $f1, $f1, $f0
    /* EA2C8 001E9348 26EA070C */  jal        func_001FA898
    /* EA2CC 001E934C 020B0C46 */   mul.s     $f12, $f1, $f12
    /* EA2D0 001E9350 0F000392 */  lbu        $v1, 0xF($s0)
    /* EA2D4 001E9354 FF000424 */  addiu      $a0, $zero, 0xFF
    /* EA2D8 001E9358 21404300 */  addu       $t0, $v0, $v1
    /* EA2DC 001E935C 00010229 */  slti       $v0, $t0, 0x100
    /* EA2E0 001E9360 0A408200 */  movz       $t0, $a0, $v0
.align 2
  .L001E9364:
    /* EA2E4 001E9364 03000292 */  lbu        $v0, 0x3($s0)
.align 2
  .L001E9368:
    /* EA2E8 001E9368 0B004050 */  beql       $v0, $zero, .L001E9398
    /* EA2EC 001E936C 02000392 */   lbu       $v1, 0x2($s0)
    /* EA2F0 001E9370 02000292 */  lbu        $v0, 0x2($s0)
    /* EA2F4 001E9374 2D204000 */  daddu      $a0, $v0, $zero
    /* EA2F8 001E9378 80100200 */  sll        $v0, $v0, 2
    /* EA2FC 001E937C 80200400 */  sll        $a0, $a0, 2
    /* EA300 001E9380 2128A203 */  addu       $a1, $sp, $v0
    /* EA304 001E9384 21208402 */  addu       $a0, $s4, $a0
    /* EA308 001E9388 0000A38C */  lw         $v1, 0x0($a1)
    /* EA30C 001E938C 21186800 */  addu       $v1, $v1, $t0
    /* EA310 001E9390 09000010 */  b          .L001E93B8
    /* EA314 001E9394 0000A3AC */   sw        $v1, 0x0($a1)
.align 2
  .L001E9398:
    /* EA318 001E9398 80180300 */  sll        $v1, $v1, 2
    /* EA31C 001E939C 21187200 */  addu       $v1, $v1, $s2
    /* EA320 001E93A0 0000628C */  lw         $v0, 0x0($v1)
    /* EA324 001E93A4 21104800 */  addu       $v0, $v0, $t0
    /* EA328 001E93A8 000062AC */  sw         $v0, 0x0($v1)
    /* EA32C 001E93AC 02000492 */  lbu        $a0, 0x2($s0)
    /* EA330 001E93B0 80200400 */  sll        $a0, $a0, 2
    /* EA334 001E93B4 21206402 */  addu       $a0, $s3, $a0
.align 2
  .L001E93B8:
    /* EA338 001E93B8 0000828C */  lw         $v0, 0x0($a0)
    /* EA33C 001E93BC 01004224 */  addiu      $v0, $v0, 0x1
    /* EA340 001E93C0 000082AC */  sw         $v0, 0x0($a0)
.align 2
  .L001E93C4:
    /* EA344 001E93C4 01003126 */  addiu      $s1, $s1, 0x1
    /* EA348 001E93C8 0800222A */  slti       $v0, $s1, 0x8
    /* EA34C 001E93CC 4EFF4014 */  bnez       $v0, .L001E9108
    /* EA350 001E93D0 8055C626 */   addiu     $a2, $s6, %lo(D_00165580)
    /* EA354 001E93D4 2D204002 */  daddu      $a0, $s2, $zero
    /* EA358 001E93D8 2D408002 */  daddu      $t0, $s4, $zero
    /* EA35C 001E93DC 2D386002 */  daddu      $a3, $s3, $zero
    /* EA360 001E93E0 2D500000 */  daddu      $t2, $zero, $zero
    /* EA364 001E93E4 FF000924 */  addiu      $t1, $zero, 0xFF
    /* EA368 001E93E8 2D30A003 */  daddu      $a2, $sp, $zero
    /* EA36C 001E93EC 01001124 */  addiu      $s1, $zero, 0x1
.align 2
  .L001E93F0:
    /* EA370 001E93F0 0000E38C */  lw         $v1, 0x0($a3)
    /* EA374 001E93F4 08006050 */  beql       $v1, $zero, .L001E9418
    /* EA378 001E93F8 0000058D */   lw        $a1, 0x0($t0)
    /* EA37C 001E93FC 0000828C */  lw         $v0, 0x0($a0)
    /* EA380 001E9400 01006A50 */  beql       $v1, $t2, .L001E9408
    /* EA384 001E9404 CD010000 */   break     0, 7
.align 2
  .L001E9408:
    /* EA388 001E9408 1A004300 */  div        $zero, $v0, $v1
    /* EA38C 001E940C 12100000 */  mflo       $v0
    /* EA390 001E9410 000082AC */  sw         $v0, 0x0($a0)
    /* EA394 001E9414 0000058D */  lw         $a1, 0x0($t0)
.align 2
  .L001E9418:
    /* EA398 001E9418 0F00A050 */  beql       $a1, $zero, .L001E9458
    /* EA39C 001E941C 04008424 */   addiu     $a0, $a0, 0x4
    /* EA3A0 001E9420 0000C28C */  lw         $v0, 0x0($a2)
    /* EA3A4 001E9424 0100AA50 */  beql       $a1, $t2, .L001E942C
    /* EA3A8 001E9428 CD010000 */   break     0, 7
.align 2
  .L001E942C:
    /* EA3AC 001E942C 0000838C */  lw         $v1, 0x0($a0)
    /* EA3B0 001E9430 1A004500 */  div        $zero, $v0, $a1
    /* EA3B4 001E9434 12100000 */  mflo       $v0
    /* EA3B8 001E9438 18186200 */  mult       $v1, $v1, $v0
    /* EA3BC 001E943C 0000C2AC */  sw         $v0, 0x0($a2)
    /* EA3C0 001E9440 01002A51 */  beql       $t1, $t2, .L001E9448
    /* EA3C4 001E9444 CD010000 */   break     0, 7
.align 2
  .L001E9448:
    /* EA3C8 001E9448 1A006900 */  div        $zero, $v1, $t1
    /* EA3CC 001E944C 12180000 */  mflo       $v1
    /* EA3D0 001E9450 000083AC */  sw         $v1, 0x0($a0)
    /* EA3D4 001E9454 04008424 */  addiu      $a0, $a0, 0x4
.align 2
  .L001E9458:
    /* EA3D8 001E9458 0400C624 */  addiu      $a2, $a2, 0x4
    /* EA3DC 001E945C 04000825 */  addiu      $t0, $t0, 0x4
    /* EA3E0 001E9460 FFFF3126 */  addiu      $s1, $s1, -0x1
    /* EA3E4 001E9464 E2FF2106 */  bgez       $s1, .L001E93F0
    /* EA3E8 001E9468 0400E724 */   addiu     $a3, $a3, 0x4
    /* EA3EC 001E946C 2D10A002 */  daddu      $v0, $s5, $zero
    /* EA3F0 001E9470 A000BF7B */  lq         $ra, 0xA0($sp)
    /* EA3F4 001E9474 9000B67B */  lq         $s6, 0x90($sp)
    /* EA3F8 001E9478 8000B57B */  lq         $s5, 0x80($sp)
    /* EA3FC 001E947C 7000B47B */  lq         $s4, 0x70($sp)
    /* EA400 001E9480 6000B37B */  lq         $s3, 0x60($sp)
    /* EA404 001E9484 5000B27B */  lq         $s2, 0x50($sp)
    /* EA408 001E9488 4000B17B */  lq         $s1, 0x40($sp)
    /* EA40C 001E948C 3000B07B */  lq         $s0, 0x30($sp)
    /* EA410 001E9490 B000B4C7 */  lwc1       $f20, 0xB0($sp)
    /* EA414 001E9494 0800E003 */  jr         $ra
    /* EA418 001E9498 C000BD27 */   addiu     $sp, $sp, 0xC0
endlabel func_001E9088
    /* EA41C 001E949C 00000000 */  nop
