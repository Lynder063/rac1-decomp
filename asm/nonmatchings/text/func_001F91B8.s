.align 3
/* Handwritten function */
nonmatching func_001F91B8, 0x2BC

glabel func_001F91B8
    /* FA138 001F91B8 00100A3C */  lui        $10, (0x1000D400 >> 16)
    /* FA13C 001F91BC 1A00023C */  lui        $2, %hi(D_0019C2C0)
    /* FA140 001F91C0 C0C24224 */  addiu      $2, $2, %lo(D_0019C2C0)
    /* FA144 001F91C4 00D44A35 */  ori        $10, $10, (0x1000D400 & 0xFFFF)
    /* FA148 001F91C8 100042AD */  sw         $2, 0x10($10)
    /* FA14C 001F91CC 00240220 */  addi       $2, $0, 0x2400 /* handwritten instruction */
    /* FA150 001F91D0 800042AD */  sw         $2, 0x80($10)
    /* FA154 001F91D4 10000220 */  addi       $2, $0, 0x10 /* handwritten instruction */
    /* FA158 001F91D8 200042AD */  sw         $2, 0x20($10)
    /* FA15C 001F91DC 00010234 */  ori        $2, $0, 0x100
    /* FA160 001F91E0 000042AD */  sw         $2, 0x0($10)
    /* FA164 001F91E4 00000000 */  nop
    /* FA168 001F91E8 2D70E003 */  daddu      $14, $31, $0
    /* FA16C 001F91EC 8307C04B */  vaddw.xyz  $vf30, $vf0, $vf0w
    /* FA170 001F91F0 1600013C */  lui        $1, %hi(D_0015EF74)
    /* FA174 001F91F4 74EF2124 */  addiu      $1, $1, %lo(D_0015EF74)
    /* FA178 001F91F8 0000228C */  lw         $2, 0x0($1)
    /* FA17C 001F91FC 00000000 */  nop
    /* FA180 001F9200 02620200 */  srl        $12, $2, 8
    /* FA184 001F9204 00044220 */  addi       $2, $2, 0x400 /* handwritten instruction */
    /* FA188 001F9208 000022AC */  sw         $2, 0x0($1)
    /* FA18C 001F920C 00000000 */  nop
    /* FA190 001F9210 16000D3C */  lui        $13, %hi(D_0015F578)
    /* FA194 001F9214 78F5AD8D */  lw         $13, %lo(D_0015F578)($13)
    /* FA198 001F9218 00000000 */  nop
    /* FA19C 001F921C 1600063C */  lui        $6, %hi(D_0015F57C)
    /* FA1A0 001F9220 7CF5C624 */  addiu      $6, $6, %lo(D_0015F57C)
    /* FA1A4 001F9224 0000C68C */  lw         $6, 0x0($6)
    /* FA1A8 001F9228 00000000 */  nop
    /* FA1AC 001F922C 1600083C */  lui        $8, %hi(D_0015F580)
    /* FA1B0 001F9230 80F5088D */  lw         $8, %lo(D_0015F580)($8)
    /* FA1B4 001F9234 00000000 */  nop
    /* FA1B8 001F9238 1800073C */  lui        $7, %hi(D_00187040)
    /* FA1BC 001F923C 4070E724 */  addiu      $7, $7, %lo(D_00187040)
    /* FA1C0 001F9240 10000234 */  ori        $2, $0, 0x10
    /* FA1C4 001F9244 00188244 */  mtc1       $2, $f3
    /* FA1C8 001F9248 E0188046 */  cvt.s.w    $f3, $f3
    /* FA1CC 001F924C 7F43023C */  lui        $2, (0x437F0000 >> 16)
    /* FA1D0 001F9250 00388244 */  mtc1       $2, $f7
    /* FA1D4 001F9254 83390346 */  div.s      $f6, $f7, $f3
    /* FA1D8 001F9258 19000A3C */  lui        $10, %hi(D_0018E840)
    /* FA1DC 001F925C 40E84A25 */  addiu      $10, $10, %lo(D_0018E840)
.align 2
  .L001F9260:
    /* FA1E0 001F9260 0000098D */  lw         $9, 0x0($8)
    /* FA1E4 001F9264 00000000 */  nop
    /* FA1E8 001F9268 1000C1C4 */  lwc1       $f1, 0x10($6)
    /* FA1EC 001F926C 80080346 */  add.s      $f2, $f1, $f3
    /* FA1F0 001F9270 0C00C8C4 */  lwc1       $f8, 0xC($6)
    /* FA1F4 001F9274 01130846 */  sub.s      $f12, $f2, $f8
    /* FA1F8 001F9278 3CEA070C */  jal        func_001FA8F0
    /* FA1FC 001F927C 2D20C000 */   daddu     $4, $6, $0
    /* FA200 001F9280 1400C0AC */  sw         $0, 0x14($6)
    /* FA204 001F9284 00000000 */  nop
    /* FA208 001F9288 73004004 */  bltz       $2, .L001F9458
    /* FA20C 001F928C 00000000 */   nop
    /* FA210 001F9290 0000C5D8 */  lqc2       $vf5, 0x0($6)
    /* FA214 001F9294 00000000 */  nop
    /* FA218 001F9298 4001E4D8 */  lqc2       $vf4, 0x140($7)
    /* FA21C 001F929C 6C29C44B */  vsub.xyz   $vf5, $vf5, $vf4
    /* FA220 001F92A0 3C03254A */  vmove.w    $vf5, $vf0
    /* FA224 001F92A4 0000E1D8 */  lqc2       $vf1, 0x0($7)
    /* FA228 001F92A8 1000E2D8 */  lqc2       $vf2, 0x10($7)
    /* FA22C 001F92AC 00000000 */  nop
    /* FA230 001F92B0 2000E3D8 */  lqc2       $vf3, 0x20($7)
    /* FA234 001F92B4 BC09E54B */  .word      0x4BE509BC    # vmulax.xyzw ACC, $vf1, $vf5x
    /* FA238 001F92B8 BD10E54B */  .word      0x4BE510BD    # vmadday.xyzw ACC, $vf2, $vf5y
    /* FA23C 001F92BC 00000000 */  nop
    /* FA240 001F92C0 BE18E54B */  .word      0x4BE518BE    # vmaddaz.xyzw ACC, $vf3, $vf5z
    /* FA244 001F92C4 00000000 */  nop
    /* FA248 001F92C8 8B01E54B */  vmaddw.xyzw $vf6, $vf0, $vf5w
    /* FA24C 001F92CC 00000000 */  nop
    /* FA250 001F92D0 00302448 */  qmfc2.ni   $4, $vf6
    /* FA254 001F92D4 00000000 */  nop
    /* FA258 001F92D8 89270470 */  pexew      $4, $4
    /* FA25C 001F92DC 00208444 */  mtc1       $4, $f4
    /* FA260 001F92E0 36200146 */  c.le.s     $f4, $f1
    /* FA264 001F92E4 00000000 */  nop
    /* FA268 001F92E8 03000045 */  bc1f       .L001F92F8
    /* FA26C 001F92EC 00000000 */   nop
    /* FA270 001F92F0 C6E40708 */  j          func_001F9318
    /* FA274 001F92F4 FF00C536 */   ori       $5, $22, 0xFF
.align 2
  .L001F92F8:
    /* FA278 001F92F8 41210146 */  sub.s      $f5, $f4, $f1
    /* FA27C 001F92FC 00000000 */  nop
    /* FA280 001F9300 42290646 */  mul.s      $f5, $f5, $f6
    /* FA284 001F9304 00000000 */  nop
    /* FA288 001F9308 41390546 */  sub.s      $f5, $f7, $f5
    /* FA28C 001F930C 00000000 */  nop
    /* FA290 001F9310 64290046 */  .word      0x46002964                    # cvt.w.s    $f5, $f5 # 00000000 <InstrIdType: CPU_COP1_FPUS>
    /* FA294 001F9314 00280544 */  mfc1       $5, $f5
.align 2
  alabel func_001F9318
    /* FA298 001F9318 03004014 */  bnez       $2, .L001F9328
    /* FA29C 001F931C 0080013C */   lui       $1, (0x80000000 >> 16)
    /* FA2A0 001F9320 25282500 */  or         $5, $1, $5
    /* FA2A4 001F9324 00000000 */  nop
.align 2
  .L001F9328:
    /* FA2A8 001F9328 1400C5AC */  sw         $5, 0x14($6)
    /* FA2AC 001F932C 00000000 */  nop
    /* FA2B0 001F9330 1600113C */  lui        $17, %hi(D_0015EF74)
    /* FA2B4 001F9334 74EF3126 */  addiu      $17, $17, %lo(D_0015EF74)
    /* FA2B8 001F9338 0000228E */  lw         $2, 0x0($17)
    /* FA2BC 001F933C 00000000 */  nop
    /* FA2C0 001F9340 025A0200 */  srl        $11, $2, 8
    /* FA2C4 001F9344 04002F8D */  lw         $15, 0x4($9)
    /* FA2C8 001F9348 0000E38D */  lw         $3, 0x0($15)
    /* FA2CC 001F934C 00000000 */  nop
    /* FA2D0 001F9350 0400E48D */  lw         $4, 0x4($15)
    /* FA2D4 001F9354 00000000 */  nop
    /* FA2D8 001F9358 20208300 */  add        $4, $4, $3 /* handwritten instruction */
    /* FA2DC 001F935C 01000134 */  ori        $1, $0, 0x1
    /* FA2E0 001F9360 04088100 */  sllv       $1, $1, $4
    /* FA2E4 001F9364 20104100 */  add        $2, $2, $1 /* handwritten instruction */
    /* FA2E8 001F9368 000022AE */  sw         $2, 0x0($17)
    /* FA2EC 001F936C FAFF6320 */  addi       $3, $3, -0x6 /* handwritten instruction */
    /* FA2F0 001F9370 01006104 */  bgez       $3, .L001F9378
    /* FA2F4 001F9374 2D180000 */   daddu     $3, $0, $0
.align 2
  .L001F9378:
    /* FA2F8 001F9378 01000434 */  ori        $4, $0, 0x1
    /* FA2FC 001F937C 04186400 */  sllv       $3, $4, $3
    /* FA300 001F9380 2D106001 */  daddu      $2, $11, $0
    /* FA304 001F9384 B81B0300 */  dsll       $3, $3, 14
    /* FA308 001F9388 2C104300 */  dadd       $2, $2, $3
    /* FA30C 001F938C 13000334 */  ori        $3, $0, 0x13
    /* FA310 001F9390 381D0300 */  dsll       $3, $3, 20
    /* FA314 001F9394 2C104300 */  dadd       $2, $2, $3
    /* FA318 001F9398 0000E38D */  lw         $3, 0x0($15)
    /* FA31C 001F939C 00000000 */  nop
    /* FA320 001F93A0 B81E0300 */  dsll       $3, $3, 26
    /* FA324 001F93A4 2C104300 */  dadd       $2, $2, $3
    /* FA328 001F93A8 0400E38D */  lw         $3, 0x4($15)
    /* FA32C 001F93AC 00000000 */  nop
    /* FA330 001F93B0 B81F0300 */  dsll       $3, $3, 30
    /* FA334 001F93B4 2C104300 */  dadd       $2, $2, $3
    /* FA338 001F93B8 01000334 */  ori        $3, $0, 0x1
    /* FA33C 001F93BC BC180300 */  dsll32     $3, $3, 2
    /* FA340 001F93C0 2C104300 */  dadd       $2, $2, $3
    /* FA344 001F93C4 7C190C00 */  dsll32     $3, $12, 5
    /* FA348 001F93C8 2C104300 */  dadd       $2, $2, $3
    /* FA34C 001F93CC 00100334 */  ori        $3, $0, 0x1000
    /* FA350 001F93D0 FC1C0300 */  dsll32     $3, $3, 19
    /* FA354 001F93D4 2C104300 */  dadd       $2, $2, $3
    /* FA358 001F93D8 1800C2FC */  sd         $2, 0x18($6)
    /* FA35C 001F93DC 00000000 */  nop
    /* FA360 001F93E0 1600023C */  lui        $2, %hi(D_0015F558)
    /* FA364 001F93E4 58F54224 */  addiu      $2, $2, %lo(D_0015F558)
    /* FA368 001F93E8 0000518C */  lw         $17, 0x0($2)
    /* FA36C 001F93EC 2D202002 */  daddu      $4, $17, $0
    /* FA370 001F93F0 40008420 */  addi       $4, $4, 0x40 /* handwritten instruction */
    /* FA374 001F93F4 00000000 */  nop
    /* FA378 001F93F8 17008004 */  bltz       $4, .L001F9458
    /* FA37C 001F93FC 00211100 */   sll       $4, $17, 4
    /* FA380 001F9400 1900033C */  lui        $3, %hi(D_0018D140)
    /* FA384 001F9404 40D16324 */  addiu      $3, $3, %lo(D_0018D140)
    /* FA388 001F9408 20186400 */  add        $3, $3, $4 /* handwritten instruction */
    /* FA38C 001F940C 00006AAC */  sw         $10, 0x0($3)
    /* FA390 001F9410 00000134 */  ori        $1, $0, 0x0
    /* FA394 001F9414 040061A4 */  sh         $1, 0x4($3)
    /* FA398 001F9418 06006CA4 */  sh         $12, 0x6($3)
    /* FA39C 001F941C 1000E125 */  addiu      $1, $15, 0x10
    /* FA3A0 001F9420 080061AC */  sw         $1, 0x8($3)
    /* FA3A4 001F9424 00000000 */  nop
    /* FA3A8 001F9428 0000E18D */  lw         $1, 0x0($15)
    /* FA3AC 001F942C 00000000 */  nop
    /* FA3B0 001F9430 0C0061A0 */  sb         $1, 0xC($3)
    /* FA3B4 001F9434 00000000 */  nop
    /* FA3B8 001F9438 0400E18D */  lw         $1, 0x4($15)
    /* FA3BC 001F943C 00000000 */  nop
    /* FA3C0 001F9440 0D0061A0 */  sb         $1, 0xD($3)
    /* FA3C4 001F9444 00000000 */  nop
    /* FA3C8 001F9448 0E006BA4 */  sh         $11, 0xE($3)
    /* FA3CC 001F944C 00000000 */  nop
    /* FA3D0 001F9450 01003122 */  addi       $17, $17, 0x1 /* handwritten instruction */
    /* FA3D4 001F9454 000051AC */  sw         $17, 0x0($2)
.align 2
  .L001F9458:
    /* FA3D8 001F9458 2000C620 */  addi       $6, $6, 0x20 /* handwritten instruction */
    /* FA3DC 001F945C FFFFAD21 */  addi       $13, $13, -0x1 /* handwritten instruction */
    /* FA3E0 001F9460 7FFFA015 */  bnez       $13, .L001F9260
    /* FA3E4 001F9464 04000821 */   addi      $8, $8, 0x4 /* handwritten instruction */
    /* FA3E8 001F9468 0800C001 */  jr         $14
    /* FA3EC 001F946C 00000000 */   nop
    /* FA3F0 001F9470 4000BD27 */  addiu      $29, $29, 0x40
endlabel func_001F91B8
    /* FA3F4 001F9474 00000000 */  nop
