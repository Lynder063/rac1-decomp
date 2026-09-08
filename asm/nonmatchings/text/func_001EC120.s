.align 3
nonmatching func_001EC120, 0xE4

glabel func_001EC120
    /* ED0A0 001EC120 D0FFBD27 */  addiu      $29, $29, -0x30
    /* ED0A4 001EC124 00008044 */  mtc1       $0, $f0
    /* ED0A8 001EC128 2800B5E7 */  swc1       $f21, 0x28($29)
    /* ED0AC 001EC12C 0000B07F */  sq         $16, 0x0($29)
    /* ED0B0 001EC130 46650046 */  mov.s      $f21, $f12
    /* ED0B4 001EC134 2000B4E7 */  swc1       $f20, 0x20($29)
    /* ED0B8 001EC138 2D808000 */  daddu      $16, $4, $0
    /* ED0BC 001EC13C 1000BF7F */  sq         $31, 0x10($29)
    /* ED0C0 001EC140 016D1546 */  sub.s      $f20, $f13, $f21
    /* ED0C4 001EC144 32800046 */  c.eq.s     $f16, $f0
    /* ED0C8 001EC148 000001C6 */  lwc1       $f1, 0x0($16)
    /* ED0CC 001EC14C 82731446 */  mul.s      $f14, $f14, $f20
    /* ED0D0 001EC150 C27B0146 */  mul.s      $f15, $f15, $f1
    /* ED0D4 001EC154 81730F46 */  sub.s      $f14, $f14, $f15
    /* ED0D8 001EC158 40080E46 */  add.s      $f1, $f1, $f14
    /* ED0DC 001EC15C 0A000145 */  bc1t       .L001EC188
    /* ED0E0 001EC160 000001E6 */   swc1      $f1, 0x0($16)
    /* ED0E4 001EC164 34800146 */  c.lt.s     $f16, $f1
    /* ED0E8 001EC168 00000000 */  nop
    /* ED0EC 001EC16C 06000345 */  bc1tl      .L001EC188
    /* ED0F0 001EC170 000010E6 */   swc1      $f16, 0x0($16)
    /* ED0F4 001EC174 07840046 */  neg.s      $f16, $f16
    /* ED0F8 001EC178 34081046 */  c.lt.s     $f1, $f16
    /* ED0FC 001EC17C 00000000 */  nop
    /* ED100 001EC180 01000345 */  bc1tl      .L001EC188
    /* ED104 001EC184 000010E6 */   swc1      $f16, 0x0($16)
.align 2
  .L001EC188:
    /* ED108 001EC188 E2E6070C */  jal        func_001F9B88
    /* ED10C 001EC18C 06A30046 */   mov.s     $f12, $f20
    /* ED110 001EC190 000001C6 */  lwc1       $f1, 0x0($16)
    /* ED114 001EC194 34000146 */  c.lt.s     $f0, $f1
    /* ED118 001EC198 00000000 */  nop
    /* ED11C 001EC19C 05000045 */  bc1f       .L001EC1B4
    /* ED120 001EC1A0 00000000 */   nop
    /* ED124 001EC1A4 E2E6070C */  jal        func_001F9B88
    /* ED128 001EC1A8 06A30046 */   mov.s     $f12, $f20
    /* ED12C 001EC1AC 0D000010 */  b          .L001EC1E4
    /* ED130 001EC1B0 000000E6 */   swc1      $f0, 0x0($16)
.align 2
  .L001EC1B4:
    /* ED134 001EC1B4 E2E6070C */  jal        func_001F9B88
    /* ED138 001EC1B8 06A30046 */   mov.s     $f12, $f20
    /* ED13C 001EC1BC 07000046 */  neg.s      $f0, $f0
    /* ED140 001EC1C0 000001C6 */  lwc1       $f1, 0x0($16)
    /* ED144 001EC1C4 34080046 */  c.lt.s     $f1, $f0
    /* ED148 001EC1C8 00000000 */  nop
    /* ED14C 001EC1CC 06000245 */  bc1fl      .L001EC1E8
    /* ED150 001EC1D0 000000C6 */   lwc1      $f0, 0x0($16)
    /* ED154 001EC1D4 E2E6070C */  jal        func_001F9B88
    /* ED158 001EC1D8 06A30046 */   mov.s     $f12, $f20
    /* ED15C 001EC1DC 07000046 */  neg.s      $f0, $f0
    /* ED160 001EC1E0 000000E6 */  swc1       $f0, 0x0($16)
.align 2
  .L001EC1E4:
    /* ED164 001EC1E4 000000C6 */  lwc1       $f0, 0x0($16)
.align 2
  .L001EC1E8:
    /* ED168 001EC1E8 1000BF7B */  lq         $31, 0x10($29)
    /* ED16C 001EC1EC 00A80046 */  add.s      $f0, $f21, $f0
    /* ED170 001EC1F0 0000B07B */  lq         $16, 0x0($29)
    /* ED174 001EC1F4 2800B5C7 */  lwc1       $f21, 0x28($29)
    /* ED178 001EC1F8 2000B4C7 */  lwc1       $f20, 0x20($29)
    /* ED17C 001EC1FC 0800E003 */  jr         $31
    /* ED180 001EC200 3000BD27 */   addiu     $29, $29, 0x30
endlabel func_001EC120
    /* ED184 001EC204 00000000 */  nop
