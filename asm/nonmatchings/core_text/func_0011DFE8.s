.align 3
nonmatching func_0011DFE8, 0x6EC

glabel func_0011DFE8
    /* 1EF68 0011DFE8 2D408000 */  daddu      $t0, $a0, $zero
    /* 1EF6C 0011DFEC 2D48A000 */  daddu      $t1, $a1, $zero
    /* 1EF70 0011DFF0 3F500800 */  dsra32     $t2, $t0, 0
    /* 1EF74 0011DFF4 3C200A00 */  dsll32     $a0, $t2, 0
    /* 1EF78 0011DFF8 3F200400 */  dsra32     $a0, $a0, 0
    /* 1EF7C 0011DFFC 16008104 */  bgez       $a0, .L0011E058
    /* 1EF80 0011E000 2D780000 */   daddu     $t7, $zero, $zero
    /* 1EF84 0011E004 3C100800 */  dsll32     $v0, $t0, 0
    /* 1EF88 0011E008 3F100200 */  dsra32     $v0, $v0, 0
    /* 1EF8C 0011E00C FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 1EF90 0011E010 3C180300 */  dsll32     $v1, $v1, 0
    /* 1EF94 0011E014 23100200 */  negu       $v0, $v0
    /* 1EF98 0011E018 2430C300 */  and        $a2, $a2, $v1
    /* 1EF9C 0011E01C 3C100200 */  dsll32     $v0, $v0, 0
    /* 1EFA0 0011E020 23180400 */  negu       $v1, $a0
    /* 1EFA4 0011E024 3E100200 */  dsrl32     $v0, $v0, 0
    /* 1EFA8 0011E028 FFFF043C */  lui        $a0, (0xFFFF0000 >> 16)
    /* 1EFAC 0011E02C 3E200400 */  dsrl32     $a0, $a0, 0
    /* 1EFB0 0011E030 2530C200 */  or         $a2, $a2, $v0
    /* 1EFB4 0011E034 FFFF0F24 */  addiu      $t7, $zero, -0x1
    /* 1EFB8 0011E038 3C100600 */  dsll32     $v0, $a2, 0
    /* 1EFBC 0011E03C 3F100200 */  dsra32     $v0, $v0, 0
    /* 1EFC0 0011E040 2B100200 */  sltu       $v0, $zero, $v0
    /* 1EFC4 0011E044 2430C400 */  and        $a2, $a2, $a0
    /* 1EFC8 0011E048 23186200 */  subu       $v1, $v1, $v0
    /* 1EFCC 0011E04C 3C180300 */  dsll32     $v1, $v1, 0
    /* 1EFD0 0011E050 2540C300 */  or         $t0, $a2, $v1
    /* 1EFD4 0011E054 3F500800 */  dsra32     $t2, $t0, 0
.align 2
  .L0011E058:
    /* 1EFD8 0011E058 3F200900 */  dsra32     $a0, $t1, 0
    /* 1EFDC 0011E05C 15008104 */  bgez       $a0, .L0011E0B4
    /* 1EFE0 0011E060 00000000 */   nop
    /* 1EFE4 0011E064 3C100900 */  dsll32     $v0, $t1, 0
    /* 1EFE8 0011E068 3F100200 */  dsra32     $v0, $v0, 0
    /* 1EFEC 0011E06C FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 1EFF0 0011E070 3C180300 */  dsll32     $v1, $v1, 0
    /* 1EFF4 0011E074 23100200 */  negu       $v0, $v0
    /* 1EFF8 0011E078 2438E300 */  and        $a3, $a3, $v1
    /* 1EFFC 0011E07C 3C100200 */  dsll32     $v0, $v0, 0
    /* 1F000 0011E080 23180400 */  negu       $v1, $a0
    /* 1F004 0011E084 3E100200 */  dsrl32     $v0, $v0, 0
    /* 1F008 0011E088 FFFF043C */  lui        $a0, (0xFFFF0000 >> 16)
    /* 1F00C 0011E08C 3E200400 */  dsrl32     $a0, $a0, 0
    /* 1F010 0011E090 2538E200 */  or         $a3, $a3, $v0
    /* 1F014 0011E094 27780F00 */  nor        $t7, $zero, $t7
    /* 1F018 0011E098 3C100700 */  dsll32     $v0, $a3, 0
    /* 1F01C 0011E09C 3F100200 */  dsra32     $v0, $v0, 0
    /* 1F020 0011E0A0 2B100200 */  sltu       $v0, $zero, $v0
    /* 1F024 0011E0A4 2438E400 */  and        $a3, $a3, $a0
    /* 1F028 0011E0A8 23186200 */  subu       $v1, $v1, $v0
    /* 1F02C 0011E0AC 3C180300 */  dsll32     $v1, $v1, 0
    /* 1F030 0011E0B0 2548E300 */  or         $t1, $a3, $v1
.align 2
  .L0011E0B4:
    /* 1F034 0011E0B4 3C600800 */  dsll32     $t4, $t0, 0
    /* 1F038 0011E0B8 3F600C00 */  dsra32     $t4, $t4, 0
    /* 1F03C 0011E0BC 3F280900 */  dsra32     $a1, $t1, 0
    /* 1F040 0011E0C0 3C500A00 */  dsll32     $t2, $t2, 0
    /* 1F044 0011E0C4 3F500A00 */  dsra32     $t2, $t2, 0
    /* 1F048 0011E0C8 3C400900 */  dsll32     $t0, $t1, 0
    /* 1F04C 0011E0CC 3F400800 */  dsra32     $t0, $t0, 0
    /* 1F050 0011E0D0 F200A014 */  bnez       $a1, .L0011E49C
    /* 1F054 0011E0D4 2B104501 */   sltu      $v0, $t2, $a1
    /* 1F058 0011E0D8 2B104801 */  sltu       $v0, $t2, $t0
    /* 1F05C 0011E0DC 53004010 */  beqz       $v0, .L0011E22C
    /* 1F060 0011E0E0 FFFF0234 */   ori       $v0, $zero, 0xFFFF
    /* 1F064 0011E0E4 2B104800 */  sltu       $v0, $v0, $t0
    /* 1F068 0011E0E8 05004014 */  bnez       $v0, .L0011E100
    /* 1F06C 0011E0EC FF00023C */   lui       $v0, (0xFFFFFF >> 16)
    /* 1F070 0011E0F0 0001022D */  sltiu      $v0, $t0, 0x100
    /* 1F074 0011E0F4 08000524 */  addiu      $a1, $zero, 0x8
    /* 1F078 0011E0F8 07000010 */  b          .L0011E118
    /* 1F07C 0011E0FC 0B280200 */   movn      $a1, $zero, $v0
.align 2
  .L0011E100:
    /* 1F080 0011E100 18000524 */  addiu      $a1, $zero, 0x18
    /* 1F084 0011E104 FFFF4234 */  ori        $v0, $v0, (0xFFFFFF & 0xFFFF)
    /* 1F088 0011E108 10000324 */  addiu      $v1, $zero, 0x10
    /* 1F08C 0011E10C 2B104800 */  sltu       $v0, $v0, $t0
    /* 1F090 0011E110 0A286200 */  movz       $a1, $v1, $v0
    /* 1F094 0011E114 00000000 */  nop
.align 2
  .L0011E118:
    /* 1F098 0011E118 1500023C */  lui        $v0, %hi(D_00152B18)
    /* 1F09C 0011E11C 0620A800 */  srlv       $a0, $t0, $a1
    /* 1F0A0 0011E120 182B4224 */  addiu      $v0, $v0, %lo(D_00152B18)
    /* 1F0A4 0011E124 20000724 */  addiu      $a3, $zero, 0x20
    /* 1F0A8 0011E128 21208200 */  addu       $a0, $a0, $v0
    /* 1F0AC 0011E12C 00008390 */  lbu        $v1, 0x0($a0)
    /* 1F0B0 0011E130 21186500 */  addu       $v1, $v1, $a1
    /* 1F0B4 0011E134 2330E300 */  subu       $a2, $a3, $v1
    /* 1F0B8 0011E138 0600C010 */  beqz       $a2, .L0011E154
    /* 1F0BC 0011E13C 2310E600 */   subu      $v0, $a3, $a2
    /* 1F0C0 0011E140 0418CA00 */  sllv       $v1, $t2, $a2
    /* 1F0C4 0011E144 06104C00 */  srlv       $v0, $t4, $v0
    /* 1F0C8 0011E148 0440C800 */  sllv       $t0, $t0, $a2
    /* 1F0CC 0011E14C 25506200 */  or         $t2, $v1, $v0
    /* 1F0D0 0011E150 0460CC00 */  sllv       $t4, $t4, $a2
.align 2
  .L0011E154:
    /* 1F0D4 0011E154 022C0800 */  srl        $a1, $t0, 16
    /* 1F0D8 0011E158 FFFF0931 */  andi       $t1, $t0, 0xFFFF
    /* 1F0DC 0011E15C 1B004501 */  divu       $zero, $t2, $a1
    /* 1F0E0 0011E160 02240C00 */  srl        $a0, $t4, 16
    /* 1F0E4 0011E164 0100A050 */  beql       $a1, $zero, .L0011E16C
    /* 1F0E8 0011E168 CD010000 */   break     0, 7
.align 2
  .L0011E16C:
    /* 1F0EC 0011E16C 12100000 */  mflo       $v0
    /* 1F0F0 0011E170 10180000 */  mfhi       $v1
    /* 1F0F4 0011E174 2D384000 */  daddu      $a3, $v0, $zero
    /* 1F0F8 0011E178 3C180300 */  dsll32     $v1, $v1, 0
    /* 1F0FC 0011E17C 381C0300 */  dsll       $v1, $v1, 16
    /* 1F100 0011E180 3F180300 */  dsra32     $v1, $v1, 0
    /* 1F104 0011E184 1830E900 */  mult       $a2, $a3, $t1
    /* 1F108 0011E188 25186400 */  or         $v1, $v1, $a0
    /* 1F10C 0011E18C 2B106600 */  sltu       $v0, $v1, $a2
    /* 1F110 0011E190 0C004050 */  beql       $v0, $zero, .L0011E1C4
    /* 1F114 0011E194 23186600 */   subu      $v1, $v1, $a2
    /* 1F118 0011E198 21186800 */  addu       $v1, $v1, $t0
    /* 1F11C 0011E19C 2B106800 */  sltu       $v0, $v1, $t0
    /* 1F120 0011E1A0 07004014 */  bnez       $v0, .L0011E1C0
    /* 1F124 0011E1A4 FFFFE724 */   addiu     $a3, $a3, -0x1
    /* 1F128 0011E1A8 2B106600 */  sltu       $v0, $v1, $a2
    /* 1F12C 0011E1AC 05004050 */  beql       $v0, $zero, .L0011E1C4
    /* 1F130 0011E1B0 23186600 */   subu      $v1, $v1, $a2
    /* 1F134 0011E1B4 FFFFE724 */  addiu      $a3, $a3, -0x1
    /* 1F138 0011E1B8 21186800 */  addu       $v1, $v1, $t0
    /* 1F13C 0011E1BC 00000000 */  nop
.align 2
  .L0011E1C0:
    /* 1F140 0011E1C0 23186600 */  subu       $v1, $v1, $a2
.align 2
  .L0011E1C4:
    /* 1F144 0011E1C4 0100A050 */  beql       $a1, $zero, .L0011E1CC
    /* 1F148 0011E1C8 CD010000 */   break     0, 7
.align 2
  .L0011E1CC:
    /* 1F14C 0011E1CC 1B006500 */  divu       $zero, $v1, $a1
    /* 1F150 0011E1D0 FFFF8431 */  andi       $a0, $t4, 0xFFFF
    /* 1F154 0011E1D4 12100000 */  mflo       $v0
    /* 1F158 0011E1D8 10180000 */  mfhi       $v1
    /* 1F15C 0011E1DC 2D284000 */  daddu      $a1, $v0, $zero
    /* 1F160 0011E1E0 3C180300 */  dsll32     $v1, $v1, 0
    /* 1F164 0011E1E4 381C0300 */  dsll       $v1, $v1, 16
    /* 1F168 0011E1E8 3F180300 */  dsra32     $v1, $v1, 0
    /* 1F16C 0011E1EC 1830A900 */  mult       $a2, $a1, $t1
    /* 1F170 0011E1F0 25186400 */  or         $v1, $v1, $a0
    /* 1F174 0011E1F4 2B106600 */  sltu       $v0, $v1, $a2
    /* 1F178 0011E1F8 07004010 */  beqz       $v0, .L0011E218
    /* 1F17C 0011E1FC 21186800 */   addu      $v1, $v1, $t0
    /* 1F180 0011E200 2B106800 */  sltu       $v0, $v1, $t0
    /* 1F184 0011E204 04004014 */  bnez       $v0, .L0011E218
    /* 1F188 0011E208 FFFFA524 */   addiu     $a1, $a1, -0x1
    /* 1F18C 0011E20C 2B106600 */  sltu       $v0, $v1, $a2
    /* 1F190 0011E210 01004054 */  bnel       $v0, $zero, .L0011E218
    /* 1F194 0011E214 FFFFA524 */   addiu     $a1, $a1, -0x1
.align 2
  .L0011E218:
    /* 1F198 0011E218 3C100700 */  dsll32     $v0, $a3, 0
    /* 1F19C 0011E21C 38140200 */  dsll       $v0, $v0, 16
    /* 1F1A0 0011E220 3F100200 */  dsra32     $v0, $v0, 0
    /* 1F1A4 0011E224 0E010010 */  b          .L0011E660
    /* 1F1A8 0011E228 25284500 */   or        $a1, $v0, $a1
.align 2
  .L0011E22C:
    /* 1F1AC 0011E22C 0A000015 */  bnez       $t0, .L0011E258
    /* 1F1B0 0011E230 2B104800 */   sltu      $v0, $v0, $t0
    /* 1F1B4 0011E234 01000224 */  addiu      $v0, $zero, 0x1
    /* 1F1B8 0011E238 01000051 */  beql       $t0, $zero, .L0011E240
    /* 1F1BC 0011E23C CD010000 */   break     0, 7
.align 2
  .L0011E240:
    /* 1F1C0 0011E240 1B004500 */  divu       $zero, $v0, $a1
    /* 1F1C4 0011E244 12100000 */  mflo       $v0
    /* 1F1C8 0011E248 2D404000 */  daddu      $t0, $v0, $zero
    /* 1F1CC 0011E24C FFFF0234 */  ori        $v0, $zero, 0xFFFF
    /* 1F1D0 0011E250 2B104800 */  sltu       $v0, $v0, $t0
    /* 1F1D4 0011E254 00000000 */  nop
.align 2
  .L0011E258:
    /* 1F1D8 0011E258 05004014 */  bnez       $v0, .L0011E270
    /* 1F1DC 0011E25C FF00023C */   lui       $v0, (0xFFFFFF >> 16)
    /* 1F1E0 0011E260 0001022D */  sltiu      $v0, $t0, 0x100
    /* 1F1E4 0011E264 08000524 */  addiu      $a1, $zero, 0x8
    /* 1F1E8 0011E268 07000010 */  b          .L0011E288
    /* 1F1EC 0011E26C 0B280200 */   movn      $a1, $zero, $v0
.align 2
  .L0011E270:
    /* 1F1F0 0011E270 18000524 */  addiu      $a1, $zero, 0x18
    /* 1F1F4 0011E274 FFFF4234 */  ori        $v0, $v0, (0xFFFFFF & 0xFFFF)
    /* 1F1F8 0011E278 10000324 */  addiu      $v1, $zero, 0x10
    /* 1F1FC 0011E27C 2B104800 */  sltu       $v0, $v0, $t0
    /* 1F200 0011E280 0A286200 */  movz       $a1, $v1, $v0
    /* 1F204 0011E284 00000000 */  nop
.align 2
  .L0011E288:
    /* 1F208 0011E288 1500023C */  lui        $v0, %hi(D_00152B18)
    /* 1F20C 0011E28C 0620A800 */  srlv       $a0, $t0, $a1
    /* 1F210 0011E290 182B4224 */  addiu      $v0, $v0, %lo(D_00152B18)
    /* 1F214 0011E294 20000724 */  addiu      $a3, $zero, 0x20
    /* 1F218 0011E298 21208200 */  addu       $a0, $a0, $v0
    /* 1F21C 0011E29C 00008390 */  lbu        $v1, 0x0($a0)
    /* 1F220 0011E2A0 21186500 */  addu       $v1, $v1, $a1
    /* 1F224 0011E2A4 2330E300 */  subu       $a2, $a3, $v1
    /* 1F228 0011E2A8 0600C014 */  bnez       $a2, .L0011E2C4
    /* 1F22C 0011E2AC 2338E600 */   subu      $a3, $a3, $a2
    /* 1F230 0011E2B0 23504801 */  subu       $t2, $t2, $t0
    /* 1F234 0011E2B4 01000D24 */  addiu      $t5, $zero, 0x1
    /* 1F238 0011E2B8 024C0800 */  srl        $t1, $t0, 16
    /* 1F23C 0011E2BC 42000010 */  b          .L0011E3C8
    /* 1F240 0011E2C0 FFFF0B31 */   andi      $t3, $t0, 0xFFFF
.align 2
  .L0011E2C4:
    /* 1F244 0011E2C4 0418CA00 */  sllv       $v1, $t2, $a2
    /* 1F248 0011E2C8 0610EC00 */  srlv       $v0, $t4, $a3
    /* 1F24C 0011E2CC 0440C800 */  sllv       $t0, $t0, $a2
    /* 1F250 0011E2D0 0638EA00 */  srlv       $a3, $t2, $a3
    /* 1F254 0011E2D4 0460CC00 */  sllv       $t4, $t4, $a2
    /* 1F258 0011E2D8 25506200 */  or         $t2, $v1, $v0
    /* 1F25C 0011E2DC 024C0800 */  srl        $t1, $t0, 16
    /* 1F260 0011E2E0 1B00E900 */  divu       $zero, $a3, $t1
    /* 1F264 0011E2E4 FFFF0B31 */  andi       $t3, $t0, 0xFFFF
    /* 1F268 0011E2E8 2D282001 */  daddu      $a1, $t1, $zero
    /* 1F26C 0011E2EC 02240A00 */  srl        $a0, $t2, 16
    /* 1F270 0011E2F0 0100A050 */  beql       $a1, $zero, .L0011E2F8
    /* 1F274 0011E2F4 CD010000 */   break     0, 7
.align 2
  .L0011E2F8:
    /* 1F278 0011E2F8 2D686001 */  daddu      $t5, $t3, $zero
    /* 1F27C 0011E2FC 12100000 */  mflo       $v0
    /* 1F280 0011E300 10180000 */  mfhi       $v1
    /* 1F284 0011E304 2D384000 */  daddu      $a3, $v0, $zero
    /* 1F288 0011E308 3C180300 */  dsll32     $v1, $v1, 0
    /* 1F28C 0011E30C 381C0300 */  dsll       $v1, $v1, 16
    /* 1F290 0011E310 3F180300 */  dsra32     $v1, $v1, 0
    /* 1F294 0011E314 1830EB00 */  mult       $a2, $a3, $t3
    /* 1F298 0011E318 25186400 */  or         $v1, $v1, $a0
    /* 1F29C 0011E31C 2B106600 */  sltu       $v0, $v1, $a2
    /* 1F2A0 0011E320 0C004050 */  beql       $v0, $zero, .L0011E354
    /* 1F2A4 0011E324 23186600 */   subu      $v1, $v1, $a2
    /* 1F2A8 0011E328 21186800 */  addu       $v1, $v1, $t0
    /* 1F2AC 0011E32C 2B106800 */  sltu       $v0, $v1, $t0
    /* 1F2B0 0011E330 07004014 */  bnez       $v0, .L0011E350
    /* 1F2B4 0011E334 FFFFE724 */   addiu     $a3, $a3, -0x1
    /* 1F2B8 0011E338 2B106600 */  sltu       $v0, $v1, $a2
    /* 1F2BC 0011E33C 05004050 */  beql       $v0, $zero, .L0011E354
    /* 1F2C0 0011E340 23186600 */   subu      $v1, $v1, $a2
    /* 1F2C4 0011E344 FFFFE724 */  addiu      $a3, $a3, -0x1
    /* 1F2C8 0011E348 21186800 */  addu       $v1, $v1, $t0
    /* 1F2CC 0011E34C 00000000 */  nop
.align 2
  .L0011E350:
    /* 1F2D0 0011E350 23186600 */  subu       $v1, $v1, $a2
.align 2
  .L0011E354:
    /* 1F2D4 0011E354 0100A050 */  beql       $a1, $zero, .L0011E35C
    /* 1F2D8 0011E358 CD010000 */   break     0, 7
.align 2
  .L0011E35C:
    /* 1F2DC 0011E35C 1B006500 */  divu       $zero, $v1, $a1
    /* 1F2E0 0011E360 FFFF4431 */  andi       $a0, $t2, 0xFFFF
    /* 1F2E4 0011E364 12100000 */  mflo       $v0
    /* 1F2E8 0011E368 10180000 */  mfhi       $v1
    /* 1F2EC 0011E36C 2D284000 */  daddu      $a1, $v0, $zero
    /* 1F2F0 0011E370 3C180300 */  dsll32     $v1, $v1, 0
    /* 1F2F4 0011E374 381C0300 */  dsll       $v1, $v1, 16
    /* 1F2F8 0011E378 3F180300 */  dsra32     $v1, $v1, 0
    /* 1F2FC 0011E37C 1830AD00 */  mult       $a2, $a1, $t5
    /* 1F300 0011E380 25186400 */  or         $v1, $v1, $a0
    /* 1F304 0011E384 2B106600 */  sltu       $v0, $v1, $a2
    /* 1F308 0011E388 0B004010 */  beqz       $v0, .L0011E3B8
    /* 1F30C 0011E38C 3C100700 */   dsll32    $v0, $a3, 0
    /* 1F310 0011E390 21186800 */  addu       $v1, $v1, $t0
    /* 1F314 0011E394 2B106800 */  sltu       $v0, $v1, $t0
    /* 1F318 0011E398 06004014 */  bnez       $v0, .L0011E3B4
    /* 1F31C 0011E39C FFFFA524 */   addiu     $a1, $a1, -0x1
    /* 1F320 0011E3A0 2B106600 */  sltu       $v0, $v1, $a2
    /* 1F324 0011E3A4 04004010 */  beqz       $v0, .L0011E3B8
    /* 1F328 0011E3A8 3C100700 */   dsll32    $v0, $a3, 0
    /* 1F32C 0011E3AC FFFFA524 */  addiu      $a1, $a1, -0x1
    /* 1F330 0011E3B0 21186800 */  addu       $v1, $v1, $t0
.align 2
  .L0011E3B4:
    /* 1F334 0011E3B4 3C100700 */  dsll32     $v0, $a3, 0
.align 2
  .L0011E3B8:
    /* 1F338 0011E3B8 23506600 */  subu       $t2, $v1, $a2
    /* 1F33C 0011E3BC 38140200 */  dsll       $v0, $v0, 16
    /* 1F340 0011E3C0 3F100200 */  dsra32     $v0, $v0, 0
    /* 1F344 0011E3C4 25684500 */  or         $t5, $v0, $a1
.align 2
  .L0011E3C8:
    /* 1F348 0011E3C8 2D282001 */  daddu      $a1, $t1, $zero
    /* 1F34C 0011E3CC 02240C00 */  srl        $a0, $t4, 16
    /* 1F350 0011E3D0 1B004501 */  divu       $zero, $t2, $a1
    /* 1F354 0011E3D4 2D486001 */  daddu      $t1, $t3, $zero
    /* 1F358 0011E3D8 0100A050 */  beql       $a1, $zero, .L0011E3E0
    /* 1F35C 0011E3DC CD010000 */   break     0, 7
.align 2
  .L0011E3E0:
    /* 1F360 0011E3E0 12100000 */  mflo       $v0
    /* 1F364 0011E3E4 10180000 */  mfhi       $v1
    /* 1F368 0011E3E8 2D384000 */  daddu      $a3, $v0, $zero
    /* 1F36C 0011E3EC 3C180300 */  dsll32     $v1, $v1, 0
    /* 1F370 0011E3F0 381C0300 */  dsll       $v1, $v1, 16
    /* 1F374 0011E3F4 3F180300 */  dsra32     $v1, $v1, 0
    /* 1F378 0011E3F8 1830E900 */  mult       $a2, $a3, $t1
    /* 1F37C 0011E3FC 25186400 */  or         $v1, $v1, $a0
    /* 1F380 0011E400 2B106600 */  sltu       $v0, $v1, $a2
    /* 1F384 0011E404 0B004050 */  beql       $v0, $zero, .L0011E434
    /* 1F388 0011E408 23186600 */   subu      $v1, $v1, $a2
    /* 1F38C 0011E40C 21186800 */  addu       $v1, $v1, $t0
    /* 1F390 0011E410 2B106800 */  sltu       $v0, $v1, $t0
    /* 1F394 0011E414 06004014 */  bnez       $v0, .L0011E430
    /* 1F398 0011E418 FFFFE724 */   addiu     $a3, $a3, -0x1
    /* 1F39C 0011E41C 2B106600 */  sltu       $v0, $v1, $a2
    /* 1F3A0 0011E420 04004050 */  beql       $v0, $zero, .L0011E434
    /* 1F3A4 0011E424 23186600 */   subu      $v1, $v1, $a2
    /* 1F3A8 0011E428 FFFFE724 */  addiu      $a3, $a3, -0x1
    /* 1F3AC 0011E42C 21186800 */  addu       $v1, $v1, $t0
.align 2
  .L0011E430:
    /* 1F3B0 0011E430 23186600 */  subu       $v1, $v1, $a2
.align 2
  .L0011E434:
    /* 1F3B4 0011E434 0100A050 */  beql       $a1, $zero, .L0011E43C
    /* 1F3B8 0011E438 CD010000 */   break     0, 7
.align 2
  .L0011E43C:
    /* 1F3BC 0011E43C 1B006500 */  divu       $zero, $v1, $a1
    /* 1F3C0 0011E440 FFFF8431 */  andi       $a0, $t4, 0xFFFF
    /* 1F3C4 0011E444 12100000 */  mflo       $v0
    /* 1F3C8 0011E448 10180000 */  mfhi       $v1
    /* 1F3CC 0011E44C 2D284000 */  daddu      $a1, $v0, $zero
    /* 1F3D0 0011E450 3C180300 */  dsll32     $v1, $v1, 0
    /* 1F3D4 0011E454 381C0300 */  dsll       $v1, $v1, 16
    /* 1F3D8 0011E458 3F180300 */  dsra32     $v1, $v1, 0
    /* 1F3DC 0011E45C 1830A900 */  mult       $a2, $a1, $t1
    /* 1F3E0 0011E460 25186400 */  or         $v1, $v1, $a0
    /* 1F3E4 0011E464 2B106600 */  sltu       $v0, $v1, $a2
    /* 1F3E8 0011E468 07004010 */  beqz       $v0, .L0011E488
    /* 1F3EC 0011E46C 21186800 */   addu      $v1, $v1, $t0
    /* 1F3F0 0011E470 2B106800 */  sltu       $v0, $v1, $t0
    /* 1F3F4 0011E474 04004014 */  bnez       $v0, .L0011E488
    /* 1F3F8 0011E478 FFFFA524 */   addiu     $a1, $a1, -0x1
    /* 1F3FC 0011E47C 2B106600 */  sltu       $v0, $v1, $a2
    /* 1F400 0011E480 01004054 */  bnel       $v0, $zero, .L0011E488
    /* 1F404 0011E484 FFFFA524 */   addiu     $a1, $a1, -0x1
.align 2
  .L0011E488:
    /* 1F408 0011E488 3C100700 */  dsll32     $v0, $a3, 0
    /* 1F40C 0011E48C 38140200 */  dsll       $v0, $v0, 16
    /* 1F410 0011E490 3F100200 */  dsra32     $v0, $v0, 0
    /* 1F414 0011E494 74000010 */  b          .L0011E668
    /* 1F418 0011E498 25284500 */   or        $a1, $v0, $a1
.align 2
  .L0011E49C:
    /* 1F41C 0011E49C 03004010 */  beqz       $v0, .L0011E4AC
    /* 1F420 0011E4A0 FFFF0234 */   ori       $v0, $zero, 0xFFFF
    /* 1F424 0011E4A4 6E000010 */  b          .L0011E660
    /* 1F428 0011E4A8 2D280000 */   daddu     $a1, $zero, $zero
.align 2
  .L0011E4AC:
    /* 1F42C 0011E4AC 2B104500 */  sltu       $v0, $v0, $a1
    /* 1F430 0011E4B0 05004014 */  bnez       $v0, .L0011E4C8
    /* 1F434 0011E4B4 FF00023C */   lui       $v0, (0xFFFFFF >> 16)
    /* 1F438 0011E4B8 0001A22C */  sltiu      $v0, $a1, 0x100
    /* 1F43C 0011E4BC 08000624 */  addiu      $a2, $zero, 0x8
    /* 1F440 0011E4C0 07000010 */  b          .L0011E4E0
    /* 1F444 0011E4C4 0B300200 */   movn      $a2, $zero, $v0
.align 2
  .L0011E4C8:
    /* 1F448 0011E4C8 18000624 */  addiu      $a2, $zero, 0x18
    /* 1F44C 0011E4CC FFFF4234 */  ori        $v0, $v0, (0xFFFFFF & 0xFFFF)
    /* 1F450 0011E4D0 10000324 */  addiu      $v1, $zero, 0x10
    /* 1F454 0011E4D4 2B104500 */  sltu       $v0, $v0, $a1
    /* 1F458 0011E4D8 0A306200 */  movz       $a2, $v1, $v0
    /* 1F45C 0011E4DC 00000000 */  nop
.align 2
  .L0011E4E0:
    /* 1F460 0011E4E0 1500023C */  lui        $v0, %hi(D_00152B18)
    /* 1F464 0011E4E4 0620C500 */  srlv       $a0, $a1, $a2
    /* 1F468 0011E4E8 182B4224 */  addiu      $v0, $v0, %lo(D_00152B18)
    /* 1F46C 0011E4EC 20000724 */  addiu      $a3, $zero, 0x20
    /* 1F470 0011E4F0 21208200 */  addu       $a0, $a0, $v0
    /* 1F474 0011E4F4 00008390 */  lbu        $v1, 0x0($a0)
    /* 1F478 0011E4F8 21186600 */  addu       $v1, $v1, $a2
    /* 1F47C 0011E4FC 2330E300 */  subu       $a2, $a3, $v1
    /* 1F480 0011E500 0900C054 */  bnel       $a2, $zero, .L0011E528
    /* 1F484 0011E504 2338E600 */   subu      $a3, $a3, $a2
    /* 1F488 0011E508 2B10AA00 */  sltu       $v0, $a1, $t2
    /* 1F48C 0011E50C 54004014 */  bnez       $v0, .L0011E660
    /* 1F490 0011E510 01000524 */   addiu     $a1, $zero, 0x1
    /* 1F494 0011E514 2B108801 */  sltu       $v0, $t4, $t0
    /* 1F498 0011E518 51004014 */  bnez       $v0, .L0011E660
    /* 1F49C 0011E51C 2D280000 */   daddu     $a1, $zero, $zero
    /* 1F4A0 0011E520 4F000010 */  b          .L0011E660
    /* 1F4A4 0011E524 01000524 */   addiu     $a1, $zero, 0x1
.align 2
  .L0011E528:
    /* 1F4A8 0011E528 0428C500 */  sllv       $a1, $a1, $a2
    /* 1F4AC 0011E52C 0620EC00 */  srlv       $a0, $t4, $a3
    /* 1F4B0 0011E530 0618E800 */  srlv       $v1, $t0, $a3
    /* 1F4B4 0011E534 0638EA00 */  srlv       $a3, $t2, $a3
    /* 1F4B8 0011E538 0410CA00 */  sllv       $v0, $t2, $a2
    /* 1F4BC 0011E53C 25504400 */  or         $t2, $v0, $a0
    /* 1F4C0 0011E540 2528A300 */  or         $a1, $a1, $v1
    /* 1F4C4 0011E544 0460CC00 */  sllv       $t4, $t4, $a2
    /* 1F4C8 0011E548 0440C800 */  sllv       $t0, $t0, $a2
    /* 1F4CC 0011E54C 02340500 */  srl        $a2, $a1, 16
    /* 1F4D0 0011E550 1B00E600 */  divu       $zero, $a3, $a2
    /* 1F4D4 0011E554 FFFFAB30 */  andi       $t3, $a1, 0xFFFF
    /* 1F4D8 0011E558 02240A00 */  srl        $a0, $t2, 16
    /* 1F4DC 0011E55C 0100C050 */  beql       $a2, $zero, .L0011E564
    /* 1F4E0 0011E560 CD010000 */   break     0, 7
.align 2
  .L0011E564:
    /* 1F4E4 0011E564 12100000 */  mflo       $v0
    /* 1F4E8 0011E568 10180000 */  mfhi       $v1
    /* 1F4EC 0011E56C 2D484000 */  daddu      $t1, $v0, $zero
    /* 1F4F0 0011E570 3C180300 */  dsll32     $v1, $v1, 0
    /* 1F4F4 0011E574 381C0300 */  dsll       $v1, $v1, 16
    /* 1F4F8 0011E578 3F180300 */  dsra32     $v1, $v1, 0
    /* 1F4FC 0011E57C 18382B01 */  mult       $a3, $t1, $t3
    /* 1F500 0011E580 25186400 */  or         $v1, $v1, $a0
    /* 1F504 0011E584 2B106700 */  sltu       $v0, $v1, $a3
    /* 1F508 0011E588 0C004050 */  beql       $v0, $zero, .L0011E5BC
    /* 1F50C 0011E58C 23186700 */   subu      $v1, $v1, $a3
    /* 1F510 0011E590 21186500 */  addu       $v1, $v1, $a1
    /* 1F514 0011E594 2B106500 */  sltu       $v0, $v1, $a1
    /* 1F518 0011E598 07004014 */  bnez       $v0, .L0011E5B8
    /* 1F51C 0011E59C FFFF2925 */   addiu     $t1, $t1, -0x1
    /* 1F520 0011E5A0 2B106700 */  sltu       $v0, $v1, $a3
    /* 1F524 0011E5A4 05004050 */  beql       $v0, $zero, .L0011E5BC
    /* 1F528 0011E5A8 23186700 */   subu      $v1, $v1, $a3
    /* 1F52C 0011E5AC FFFF2925 */  addiu      $t1, $t1, -0x1
    /* 1F530 0011E5B0 21186500 */  addu       $v1, $v1, $a1
    /* 1F534 0011E5B4 00000000 */  nop
.align 2
  .L0011E5B8:
    /* 1F538 0011E5B8 23186700 */  subu       $v1, $v1, $a3
.align 2
  .L0011E5BC:
    /* 1F53C 0011E5BC 0100C050 */  beql       $a2, $zero, .L0011E5C4
    /* 1F540 0011E5C0 CD010000 */   break     0, 7
.align 2
  .L0011E5C4:
    /* 1F544 0011E5C4 1B006600 */  divu       $zero, $v1, $a2
    /* 1F548 0011E5C8 FFFF4431 */  andi       $a0, $t2, 0xFFFF
    /* 1F54C 0011E5CC 12100000 */  mflo       $v0
    /* 1F550 0011E5D0 10180000 */  mfhi       $v1
    /* 1F554 0011E5D4 2D304000 */  daddu      $a2, $v0, $zero
    /* 1F558 0011E5D8 3C180300 */  dsll32     $v1, $v1, 0
    /* 1F55C 0011E5DC 381C0300 */  dsll       $v1, $v1, 16
    /* 1F560 0011E5E0 3F180300 */  dsra32     $v1, $v1, 0
    /* 1F564 0011E5E4 1838CB00 */  mult       $a3, $a2, $t3
    /* 1F568 0011E5E8 25186400 */  or         $v1, $v1, $a0
    /* 1F56C 0011E5EC 2B106700 */  sltu       $v0, $v1, $a3
    /* 1F570 0011E5F0 0B004010 */  beqz       $v0, .L0011E620
    /* 1F574 0011E5F4 3C100900 */   dsll32    $v0, $t1, 0
    /* 1F578 0011E5F8 21186500 */  addu       $v1, $v1, $a1
    /* 1F57C 0011E5FC 2B106500 */  sltu       $v0, $v1, $a1
    /* 1F580 0011E600 06004014 */  bnez       $v0, .L0011E61C
    /* 1F584 0011E604 FFFFC624 */   addiu     $a2, $a2, -0x1
    /* 1F588 0011E608 2B106700 */  sltu       $v0, $v1, $a3
    /* 1F58C 0011E60C 04004010 */  beqz       $v0, .L0011E620
    /* 1F590 0011E610 3C100900 */   dsll32    $v0, $t1, 0
    /* 1F594 0011E614 21186500 */  addu       $v1, $v1, $a1
    /* 1F598 0011E618 FFFFC624 */  addiu      $a2, $a2, -0x1
.align 2
  .L0011E61C:
    /* 1F59C 0011E61C 3C100900 */  dsll32     $v0, $t1, 0
.align 2
  .L0011E620:
    /* 1F5A0 0011E620 23186700 */  subu       $v1, $v1, $a3
    /* 1F5A4 0011E624 38140200 */  dsll       $v0, $v0, 16
    /* 1F5A8 0011E628 3F100200 */  dsra32     $v0, $v0, 0
    /* 1F5AC 0011E62C 25284600 */  or         $a1, $v0, $a2
    /* 1F5B0 0011E630 1900A800 */  multu      $a1, $t0
    /* 1F5B4 0011E634 10300000 */  mfhi       $a2
    /* 1F5B8 0011E638 12200000 */  mflo       $a0
    /* 1F5BC 0011E63C 2B106600 */  sltu       $v0, $v1, $a2
    /* 1F5C0 0011E640 07004054 */  bnel       $v0, $zero, .L0011E660
    /* 1F5C4 0011E644 FFFFA524 */   addiu     $a1, $a1, -0x1
    /* 1F5C8 0011E648 0700C314 */  bne        $a2, $v1, .L0011E668
    /* 1F5CC 0011E64C 2D680000 */   daddu     $t5, $zero, $zero
    /* 1F5D0 0011E650 2B108401 */  sltu       $v0, $t4, $a0
    /* 1F5D4 0011E654 05004010 */  beqz       $v0, .L0011E66C
    /* 1F5D8 0011E658 3C100500 */   dsll32    $v0, $a1, 0
    /* 1F5DC 0011E65C FFFFA524 */  addiu      $a1, $a1, -0x1
.align 2
  .L0011E660:
    /* 1F5E0 0011E660 2D680000 */  daddu      $t5, $zero, $zero
    /* 1F5E4 0011E664 00000000 */  nop
.align 2
  .L0011E668:
    /* 1F5E8 0011E668 3C100500 */  dsll32     $v0, $a1, 0
.align 2
  .L0011E66C:
    /* 1F5EC 0011E66C 3C180D00 */  dsll32     $v1, $t5, 0
    /* 1F5F0 0011E670 3EC00200 */  dsrl32     $t8, $v0, 0
    /* 1F5F4 0011E674 FFFF053C */  lui        $a1, (0xFFFF0000 >> 16)
    /* 1F5F8 0011E678 3E280500 */  dsrl32     $a1, $a1, 0
    /* 1F5FC 0011E67C 1300E011 */  beqz       $t7, .L0011E6CC
    /* 1F600 0011E680 25200303 */   or        $a0, $t8, $v1
    /* 1F604 0011E684 3C100400 */  dsll32     $v0, $a0, 0
    /* 1F608 0011E688 3F100200 */  dsra32     $v0, $v0, 0
    /* 1F60C 0011E68C FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 1F610 0011E690 3C180300 */  dsll32     $v1, $v1, 0
    /* 1F614 0011E694 23100200 */  negu       $v0, $v0
    /* 1F618 0011E698 2470C301 */  and        $t6, $t6, $v1
    /* 1F61C 0011E69C 3C100200 */  dsll32     $v0, $v0, 0
    /* 1F620 0011E6A0 3F200400 */  dsra32     $a0, $a0, 0
    /* 1F624 0011E6A4 3E100200 */  dsrl32     $v0, $v0, 0
    /* 1F628 0011E6A8 23200400 */  negu       $a0, $a0
    /* 1F62C 0011E6AC 2570C201 */  or         $t6, $t6, $v0
    /* 1F630 0011E6B0 3C180E00 */  dsll32     $v1, $t6, 0
    /* 1F634 0011E6B4 3F180300 */  dsra32     $v1, $v1, 0
    /* 1F638 0011E6B8 2B180300 */  sltu       $v1, $zero, $v1
    /* 1F63C 0011E6BC 2470C501 */  and        $t6, $t6, $a1
    /* 1F640 0011E6C0 23208300 */  subu       $a0, $a0, $v1
    /* 1F644 0011E6C4 3C200400 */  dsll32     $a0, $a0, 0
    /* 1F648 0011E6C8 2520C401 */  or         $a0, $t6, $a0
.align 2
  .L0011E6CC:
    /* 1F64C 0011E6CC 0800E003 */  jr         $ra
    /* 1F650 0011E6D0 2D108000 */   daddu     $v0, $a0, $zero
endlabel func_0011DFE8
