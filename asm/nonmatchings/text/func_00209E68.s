.align 3
nonmatching func_00209E68, 0x1B98

glabel func_00209E68
    /* 10ADE8 00209E68 D0FEBD27 */  addiu      $sp, $sp, -0x130
    /* 10ADEC 00209E6C 1400033C */  lui        $v1, %hi(D_0013D390)
    /* 10ADF0 00209E70 B000B27F */  sq         $s2, 0xB0($sp)
    /* 10ADF4 00209E74 9000B07F */  sq         $s0, 0x90($sp)
    /* 10ADF8 00209E78 2001BF7F */  sq         $ra, 0x120($sp)
    /* 10ADFC 00209E7C 90D37024 */  addiu      $s0, $v1, %lo(D_0013D390)
    /* 10AE00 00209E80 1001BE7F */  sq         $fp, 0x110($sp)
    /* 10AE04 00209E84 0001B77F */  sq         $s7, 0x100($sp)
    /* 10AE08 00209E88 F000B67F */  sq         $s6, 0xF0($sp)
    /* 10AE0C 00209E8C E000B57F */  sq         $s5, 0xE0($sp)
    /* 10AE10 00209E90 D000B47F */  sq         $s4, 0xD0($sp)
    /* 10AE14 00209E94 C000B37F */  sq         $s3, 0xC0($sp)
    /* 10AE18 00209E98 A000B17F */  sq         $s1, 0xA0($sp)
    /* 10AE1C 00209E9C D400028E */  lw         $v0, 0xD4($s0)
    /* 10AE20 00209EA0 08004010 */  beqz       $v0, .L00209EC4
    /* 10AE24 00209EA4 2D906000 */   daddu     $s2, $v1, $zero
    /* 10AE28 00209EA8 01000424 */  addiu      $a0, $zero, 0x1
    /* 10AE2C 00209EAC C0000526 */  addiu      $a1, $s0, 0xC0
    /* 10AE30 00209EB0 CC8F040C */  jal        func_00123F30
    /* 10AE34 00209EB4 C4000626 */   addiu     $a2, $s0, 0xC4
    /* 10AE38 00209EB8 0100422C */  sltiu      $v0, $v0, 0x1
    /* 10AE3C 00209EBC C4060010 */  b          .L0020B9D0
    /* 10AE40 00209EC0 D40002AE */   sw        $v0, 0xD4($s0)
.align 2
  .L00209EC4:
    /* 10AE44 00209EC4 DC00048E */  lw         $a0, 0xDC($s0)
    /* 10AE48 00209EC8 01000224 */  addiu      $v0, $zero, 0x1
    /* 10AE4C 00209ECC 1800832C */  sltiu      $v1, $a0, 0x18
    /* 10AE50 00209ED0 BF066010 */  beqz       $v1, .L0020B9D0
    /* 10AE54 00209ED4 D40002AE */   sw        $v0, 0xD4($s0)
    /* 10AE58 00209ED8 1F00023C */  lui        $v0, %hi(jtbl_001E8530)
    /* 10AE5C 00209EDC 80180400 */  sll        $v1, $a0, 2
    /* 10AE60 00209EE0 30854224 */  addiu      $v0, $v0, %lo(jtbl_001E8530)
    /* 10AE64 00209EE4 21186200 */  addu       $v1, $v1, $v0
    /* 10AE68 00209EE8 0000648C */  lw         $a0, 0x0($v1)
    /* 10AE6C 00209EEC 08008000 */  jr         $a0
    /* 10AE70 00209EF0 00000000 */   nop
    /* 10AE74 00209EF4 90D35026 */  addiu      $s0, $s2, -0x2C70
    /* 10AE78 00209EF8 CC00028E */  lw         $v0, 0xCC($s0)
    /* 10AE7C 00209EFC 01004204 */  bltzl      $v0, .L00209F04
    /* 10AE80 00209F00 CC0000AE */   sw        $zero, 0xCC($s0)
.align 2
  .L00209F04:
    /* 10AE84 00209F04 CC00028E */  lw         $v0, 0xCC($s0)
    /* 10AE88 00209F08 C0000324 */  addiu      $v1, $zero, 0xC0
    /* 10AE8C 00209F0C 08000626 */  addiu      $a2, $s0, 0x8
    /* 10AE90 00209F10 0C000726 */  addiu      $a3, $s0, 0xC
    /* 10AE94 00209F14 18104300 */  mult       $v0, $v0, $v1
    /* 10AE98 00209F18 10000826 */  addiu      $t0, $s0, 0x10
    /* 10AE9C 00209F1C 21185000 */  addu       $v1, $v0, $s0
    /* 10AEA0 00209F20 21480202 */  addu       $t1, $s0, $v0
    /* 10AEA4 00209F24 0000648C */  lw         $a0, 0x0($v1)
    /* 10AEA8 00209F28 21404800 */  addu       $t0, $v0, $t0
    /* 10AEAC 00209F2C 0400258D */  lw         $a1, 0x4($t1)
    /* 10AEB0 00209F30 21304600 */  addu       $a2, $v0, $a2
    /* 10AEB4 00209F34 1A90040C */  jal        func_00124068
    /* 10AEB8 00209F38 21384700 */   addu      $a3, $v0, $a3
    /* 10AEBC 00209F3C A5064014 */  bnez       $v0, .L0020B9D4
    /* 10AEC0 00209F40 2001BF7B */   lq        $ra, 0x120($sp)
    /* 10AEC4 00209F44 01000224 */  addiu      $v0, $zero, 0x1
    /* 10AEC8 00209F48 A2060010 */  b          .L0020B9D4
    /* 10AECC 00209F4C DC0002AE */   sw        $v0, 0xDC($s0)
    /* 10AED0 00209F50 90D34826 */  addiu      $t0, $s2, -0x2C70
    /* 10AED4 00209F54 C400028D */  lw         $v0, 0xC4($t0)
    /* 10AED8 00209F58 22004010 */  beqz       $v0, .L00209FE4
    /* 10AEDC 00209F5C C0000524 */   addiu     $a1, $zero, 0xC0
    /* 10AEE0 00209F60 CC00028D */  lw         $v0, 0xCC($t0)
    /* 10AEE4 00209F64 FCFF0424 */  addiu      $a0, $zero, -0x4
    /* 10AEE8 00209F68 FFFF0924 */  addiu      $t1, $zero, -0x1
    /* 10AEEC 00209F6C 18184500 */  mult       $v1, $v0, $a1
    /* 10AEF0 00209F70 B0000625 */  addiu      $a2, $t0, 0xB0
    /* 10AEF4 00209F74 01000724 */  addiu      $a3, $zero, 0x1
    /* 10AEF8 00209F78 21106800 */  addu       $v0, $v1, $t0
    /* 10AEFC 00209F7C 140044AC */  sw         $a0, 0x14($v0)
    /* 10AF00 00209F80 CC00038D */  lw         $v1, 0xCC($t0)
    /* 10AF04 00209F84 C400048D */  lw         $a0, 0xC4($t0)
    /* 10AF08 00209F88 18106500 */  mult       $v0, $v1, $a1
    /* 10AF0C 00209F8C 21184800 */  addu       $v1, $v0, $t0
    /* 10AF10 00209F90 1C0064AC */  sw         $a0, 0x1C($v1)
    /* 10AF14 00209F94 CC00028D */  lw         $v0, 0xCC($t0)
    /* 10AF18 00209F98 18184500 */  mult       $v1, $v0, $a1
    /* 10AF1C 00209F9C 21106800 */  addu       $v0, $v1, $t0
    /* 10AF20 00209FA0 B40049AC */  sw         $t1, 0xB4($v0)
    /* 10AF24 00209FA4 CC00038D */  lw         $v1, 0xCC($t0)
    /* 10AF28 00209FA8 18106500 */  mult       $v0, $v1, $a1
    /* 10AF2C 00209FAC 21184800 */  addu       $v1, $v0, $t0
    /* 10AF30 00209FB0 AC0060AC */  sw         $zero, 0xAC($v1)
    /* 10AF34 00209FB4 CC00028D */  lw         $v0, 0xCC($t0)
    /* 10AF38 00209FB8 18104500 */  mult       $v0, $v0, $a1
    /* 10AF3C 00209FBC 21284600 */  addu       $a1, $v0, $a2
    /* 10AF40 00209FC0 0000A38C */  lw         $v1, 0x0($a1)
    /* 10AF44 00209FC4 11006714 */  bne        $v1, $a3, .L0020A00C
    /* 10AF48 00209FC8 90D34326 */   addiu     $v1, $s2, -0x2C70
    /* 10AF4C 00209FCC C400028D */  lw         $v0, 0xC4($t0)
    /* 10AF50 00209FD0 0E004954 */  bnel       $v0, $t1, .L0020A00C
    /* 10AF54 00209FD4 0000A0AC */   sw        $zero, 0x0($a1)
    /* 10AF58 00209FD8 02000224 */  addiu      $v0, $zero, 0x2
    /* 10AF5C 00209FDC 0B000010 */  b          .L0020A00C
    /* 10AF60 00209FE0 0000A2AC */   sw        $v0, 0x0($a1)
.align 2
  .L00209FE4:
    /* 10AF64 00209FE4 CC00038D */  lw         $v1, 0xCC($t0)
    /* 10AF68 00209FE8 C0000224 */  addiu      $v0, $zero, 0xC0
    /* 10AF6C 00209FEC B0000425 */  addiu      $a0, $t0, 0xB0
    /* 10AF70 00209FF0 01000524 */  addiu      $a1, $zero, 0x1
    /* 10AF74 00209FF4 18186200 */  mult       $v1, $v1, $v0
    /* 10AF78 00209FF8 21186400 */  addu       $v1, $v1, $a0
    /* 10AF7C 00209FFC 0000628C */  lw         $v0, 0x0($v1)
    /* 10AF80 0020A000 01004550 */  beql       $v0, $a1, .L0020A008
    /* 10AF84 0020A004 000060AC */   sw        $zero, 0x0($v1)
.align 2
  .L0020A008:
    /* 10AF88 0020A008 90D34326 */  addiu      $v1, $s2, -0x2C70
.align 2
  .L0020A00C:
    /* 10AF8C 0020A00C CC00628C */  lw         $v0, 0xCC($v1)
    /* 10AF90 0020A010 01004224 */  addiu      $v0, $v0, 0x1
    /* 10AF94 0020A014 0300401C */  bgtz       $v0, .L0020A024
    /* 10AF98 0020A018 CC0062AC */   sw        $v0, 0xCC($v1)
    /* 10AF9C 0020A01C E2050010 */  b          .L0020B7A8
    /* 10AFA0 0020A020 DC0060AC */   sw        $zero, 0xDC($v1)
.align 2
  .L0020A024:
    /* 10AFA4 0020A024 02000224 */  addiu      $v0, $zero, 0x2
    /* 10AFA8 0020A028 DF050010 */  b          .L0020B7A8
    /* 10AFAC 0020A02C DC0062AC */   sw        $v0, 0xDC($v1)
    /* 10AFB0 0020A030 90D34426 */  addiu      $a0, $s2, -0x2C70
    /* 10AFB4 0020A034 E400858C */  lw         $a1, 0xE4($a0)
    /* 10AFB8 0020A038 1700A004 */  bltz       $a1, .L0020A098
    /* 10AFBC 0020A03C 03000224 */   addiu     $v0, $zero, 0x3
    /* 10AFC0 0020A040 B000838C */  lw         $v1, 0xB0($a0)
    /* 10AFC4 0020A044 15006250 */  beql       $v1, $v0, .L0020A09C
    /* 10AFC8 0020A048 90D34526 */   addiu     $a1, $s2, -0x2C70
    /* 10AFCC 0020A04C 1C00828C */  lw         $v0, 0x1C($a0)
    /* 10AFD0 0020A050 0A004014 */  bnez       $v0, .L0020A07C
    /* 10AFD4 0020A054 07000224 */   addiu     $v0, $zero, 0x7
    /* 10AFD8 0020A058 E800828C */  lw         $v0, 0xE8($a0)
    /* 10AFDC 0020A05C 05004204 */  bltzl      $v0, .L0020A074
    /* 10AFE0 0020A060 1A270224 */   addiu     $v0, $zero, 0x271A
    /* 10AFE4 0020A064 CC0082AC */  sw         $v0, 0xCC($a0)
    /* 10AFE8 0020A068 DC0085AC */  sw         $a1, 0xDC($a0)
    /* 10AFEC 0020A06C 05000010 */  b          .L0020A084
    /* 10AFF0 0020A070 EC0080AC */   sw        $zero, 0xEC($a0)
.align 2
  .L0020A074:
    /* 10AFF4 0020A074 03000010 */  b          .L0020A084
    /* 10AFF8 0020A078 EC0082AC */   sw        $v0, 0xEC($a0)
.align 2
  .L0020A07C:
    /* 10AFFC 0020A07C 0100A250 */  beql       $a1, $v0, .L0020A084
    /* 10B000 0020A080 B00080AC */   sw        $zero, 0xB0($a0)
.align 2
  .L0020A084:
    /* 10B004 0020A084 90D34326 */  addiu      $v1, $s2, -0x2C70
    /* 10B008 0020A088 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 10B00C 0020A08C E80062AC */  sw         $v0, 0xE8($v1)
    /* 10B010 0020A090 C5050010 */  b          .L0020B7A8
    /* 10B014 0020A094 E40062AC */   sw        $v0, 0xE4($v1)
.align 2
  .L0020A098:
    /* 10B018 0020A098 90D34526 */  addiu      $a1, $s2, -0x2C70
.align 2
  .L0020A09C:
    /* 10B01C 0020A09C CC00A38C */  lw         $v1, 0xCC($a1)
    /* 10B020 0020A0A0 B000A48C */  lw         $a0, 0xB0($a1)
    /* 10B024 0020A0A4 01006324 */  addiu      $v1, $v1, 0x1
    /* 10B028 0020A0A8 03008214 */  bne        $a0, $v0, .L0020A0B8
    /* 10B02C 0020A0AC CC00A3AC */   sw        $v1, 0xCC($a1)
    /* 10B030 0020A0B0 01000224 */  addiu      $v0, $zero, 0x1
    /* 10B034 0020A0B4 B000A2AC */  sw         $v0, 0xB0($a1)
.align 2
  .L0020A0B8:
    /* 10B038 0020A0B8 CC00A28C */  lw         $v0, 0xCC($a1)
    /* 10B03C 0020A0BC 0B004228 */  slti       $v0, $v0, 0xB
    /* 10B040 0020A0C0 04004010 */  beqz       $v0, .L0020A0D4
    /* 10B044 0020A0C4 01000224 */   addiu     $v0, $zero, 0x1
    /* 10B048 0020A0C8 B000A38C */  lw         $v1, 0xB0($a1)
    /* 10B04C 0020A0CC B7056214 */  bne        $v1, $v0, .L0020B7AC
    /* 10B050 0020A0D0 90D34226 */   addiu     $v0, $s2, -0x2C70
.align 2
  .L0020A0D4:
    /* 10B054 0020A0D4 DC00A0AC */  sw         $zero, 0xDC($a1)
    /* 10B058 0020A0D8 B3050010 */  b          .L0020B7A8
    /* 10B05C 0020A0DC CC00A0AC */   sw        $zero, 0xCC($a1)
    /* 10B060 0020A0E0 90D35026 */  addiu      $s0, $s2, -0x2C70
    /* 10B064 0020A0E4 C0000424 */  addiu      $a0, $zero, 0xC0
    /* 10B068 0020A0E8 CC00028E */  lw         $v0, 0xCC($s0)
    /* 10B06C 0020A0EC 18204400 */  mult       $a0, $v0, $a0
    /* 10B070 0020A0F0 21180402 */  addu       $v1, $s0, $a0
    /* 10B074 0020A0F4 1000628C */  lw         $v0, 0x10($v1)
    /* 10B078 0020A0F8 9E044014 */  bnez       $v0, .L0020B374
    /* 10B07C 0020A0FC 02000224 */   addiu     $v0, $zero, 0x2
    /* 10B080 0020A100 21109000 */  addu       $v0, $a0, $s0
    /* 10B084 0020A104 0400658C */  lw         $a1, 0x4($v1)
    /* 10B088 0020A108 D090040C */  jal        func_00124340
    /* 10B08C 0020A10C 0000448C */   lw        $a0, 0x0($v0)
    /* 10B090 0020A110 30064014 */  bnez       $v0, .L0020B9D4
    /* 10B094 0020A114 2001BF7B */   lq        $ra, 0x120($sp)
    /* 10B098 0020A118 04000224 */  addiu      $v0, $zero, 0x4
    /* 10B09C 0020A11C 2D060010 */  b          .L0020B9D4
    /* 10B0A0 0020A120 DC0002AE */   sw        $v0, 0xDC($s0)
    /* 10B0A4 0020A124 90D34426 */  addiu      $a0, $s2, -0x2C70
    /* 10B0A8 0020A128 C400828C */  lw         $v0, 0xC4($a0)
    /* 10B0AC 0020A12C 1B004010 */  beqz       $v0, .L0020A19C
    /* 10B0B0 0020A130 01000224 */   addiu     $v0, $zero, 0x1
    /* 10B0B4 0020A134 17000010 */  b          .L0020A194
    /* 10B0B8 0020A138 CC00838C */   lw        $v1, 0xCC($a0)
    /* 10B0BC 0020A13C 90D35026 */  addiu      $s0, $s2, -0x2C70
    /* 10B0C0 0020A140 C0000424 */  addiu      $a0, $zero, 0xC0
    /* 10B0C4 0020A144 CC00028E */  lw         $v0, 0xCC($s0)
    /* 10B0C8 0020A148 18204400 */  mult       $a0, $v0, $a0
    /* 10B0CC 0020A14C 21180402 */  addu       $v1, $s0, $a0
    /* 10B0D0 0020A150 1000628C */  lw         $v0, 0x10($v1)
    /* 10B0D4 0020A154 87044014 */  bnez       $v0, .L0020B374
    /* 10B0D8 0020A158 02000224 */   addiu     $v0, $zero, 0x2
    /* 10B0DC 0020A15C 21109000 */  addu       $v0, $a0, $s0
    /* 10B0E0 0020A160 0400658C */  lw         $a1, 0x4($v1)
    /* 10B0E4 0020A164 4A91040C */  jal        func_00124528
    /* 10B0E8 0020A168 0000448C */   lw        $a0, 0x0($v0)
    /* 10B0EC 0020A16C 19064014 */  bnez       $v0, .L0020B9D4
    /* 10B0F0 0020A170 2001BF7B */   lq        $ra, 0x120($sp)
    /* 10B0F4 0020A174 06000224 */  addiu      $v0, $zero, 0x6
    /* 10B0F8 0020A178 16060010 */  b          .L0020B9D4
    /* 10B0FC 0020A17C DC0002AE */   sw        $v0, 0xDC($s0)
    /* 10B100 0020A180 90D34426 */  addiu      $a0, $s2, -0x2C70
    /* 10B104 0020A184 C400828C */  lw         $v0, 0xC4($a0)
    /* 10B108 0020A188 04004010 */  beqz       $v0, .L0020A19C
    /* 10B10C 0020A18C 02000224 */   addiu     $v0, $zero, 0x2
    /* 10B110 0020A190 CC00838C */  lw         $v1, 0xCC($a0)
.align 2
  .L0020A194:
    /* 10B114 0020A194 EC0082AC */  sw         $v0, 0xEC($a0)
    /* 10B118 0020A198 F00083AC */  sw         $v1, 0xF0($a0)
.align 2
  .L0020A19C:
    /* 10B11C 0020A19C D40080AC */  sw         $zero, 0xD4($a0)
    /* 10B120 0020A1A0 DC0080AC */  sw         $zero, 0xDC($a0)
    /* 10B124 0020A1A4 0A060010 */  b          .L0020B9D0
    /* 10B128 0020A1A8 CC0080AC */   sw        $zero, 0xCC($a0)
    /* 10B12C 0020A1AC 90D35026 */  addiu      $s0, $s2, -0x2C70
    /* 10B130 0020A1B0 C0000324 */  addiu      $v1, $zero, 0xC0
    /* 10B134 0020A1B4 CC00028E */  lw         $v0, 0xCC($s0)
    /* 10B138 0020A1B8 1400063C */  lui        $a2, %hi(D_0013D2E8)
    /* 10B13C 0020A1BC 1A00093C */  lui        $t1, %hi(D_001A0980)
    /* 10B140 0020A1C0 E8D2C624 */  addiu      $a2, $a2, %lo(D_0013D2E8)
    /* 10B144 0020A1C4 18104300 */  mult       $v0, $v0, $v1
    /* 10B148 0020A1C8 80092925 */  addiu      $t1, $t1, %lo(D_001A0980)
    /* 10B14C 0020A1CC 2D380000 */  daddu      $a3, $zero, $zero
    /* 10B150 0020A1D0 0B000824 */  addiu      $t0, $zero, 0xB
    /* 10B154 0020A1D4 21180202 */  addu       $v1, $s0, $v0
    /* 10B158 0020A1D8 21105000 */  addu       $v0, $v0, $s0
    /* 10B15C 0020A1DC 0400658C */  lw         $a1, 0x4($v1)
    /* 10B160 0020A1E0 7C90040C */  jal        func_001241F0
    /* 10B164 0020A1E4 0000448C */   lw        $a0, 0x0($v0)
    /* 10B168 0020A1E8 FA054014 */  bnez       $v0, .L0020B9D4
    /* 10B16C 0020A1EC 2001BF7B */   lq        $ra, 0x120($sp)
    /* 10B170 0020A1F0 08000224 */  addiu      $v0, $zero, 0x8
    /* 10B174 0020A1F4 E00000AE */  sw         $zero, 0xE0($s0)
    /* 10B178 0020A1F8 F6050010 */  b          .L0020B9D4
    /* 10B17C 0020A1FC DC0002AE */   sw        $v0, 0xDC($s0)
    /* 10B180 0020A200 90D34226 */  addiu      $v0, $s2, -0x2C70
    /* 10B184 0020A204 E000448C */  lw         $a0, 0xE0($v0)
    /* 10B188 0020A208 0600832C */  sltiu      $v1, $a0, 0x6
    /* 10B18C 0020A20C F0056010 */  beqz       $v1, .L0020B9D0
    /* 10B190 0020A210 1F00023C */   lui       $v0, %hi(jtbl_001E8590)
    /* 10B194 0020A214 80180400 */  sll        $v1, $a0, 2
    /* 10B198 0020A218 90854224 */  addiu      $v0, $v0, %lo(jtbl_001E8590)
    /* 10B19C 0020A21C 21186200 */  addu       $v1, $v1, $v0
    /* 10B1A0 0020A220 0000648C */  lw         $a0, 0x0($v1)
    /* 10B1A4 0020A224 08008000 */  jr         $a0
    /* 10B1A8 0020A228 00000000 */   nop
    /* 10B1AC 0020A22C 90D35026 */  addiu      $s0, $s2, -0x2C70
    /* 10B1B0 0020A230 C400028E */  lw         $v0, 0xC4($s0)
    /* 10B1B4 0020A234 7C004018 */  blez       $v0, .L0020A428
    /* 10B1B8 0020A238 2D20A003 */   daddu     $a0, $sp, $zero
    /* 10B1BC 0020A23C 2D280000 */  daddu      $a1, $zero, $zero
    /* 10B1C0 0020A240 14000624 */  addiu      $a2, $zero, 0x14
    /* 10B1C4 0020A244 FF54040C */  jal        func_001153FC
    /* 10B1C8 0020A248 8000A0AF */   sw        $zero, 0x80($sp)
    /* 10B1CC 0020A24C 2DF00000 */  daddu      $fp, $zero, $zero
    /* 10B1D0 0020A250 C400028E */  lw         $v0, 0xC4($s0)
    /* 10B1D4 0020A254 2DB80000 */  daddu      $s7, $zero, $zero
    /* 10B1D8 0020A258 2DB00000 */  daddu      $s6, $zero, $zero
    /* 10B1DC 0020A25C 3B004018 */  blez       $v0, .L0020A34C
    /* 10B1E0 0020A260 2D880000 */   daddu     $s1, $zero, $zero
    /* 10B1E4 0020A264 1A00023C */  lui        $v0, %hi(D_001A0980)
    /* 10B1E8 0020A268 01001424 */  addiu      $s4, $zero, 0x1
    /* 10B1EC 0020A26C 80094224 */  addiu      $v0, $v0, %lo(D_001A0980)
    /* 10B1F0 0020A270 2D984000 */  daddu      $s3, $v0, $zero
    /* 10B1F4 0020A274 25005524 */  addiu      $s5, $v0, 0x25
    /* 10B1F8 0020A278 20005024 */  addiu      $s0, $v0, 0x20
    /* 10B1FC 0020A27C 00000000 */  nop
.align 2
  .L0020A280:
    /* 10B200 0020A280 1000628E */  lw         $v0, 0x10($s3)
    /* 10B204 0020A284 1400033C */  lui        $v1, %hi(D_0013D315)
    /* 10B208 0020A288 15D36524 */  addiu      $a1, $v1, %lo(D_0013D315)
    /* 10B20C 0020A28C 2D200002 */  daddu      $a0, $s0, $zero
    /* 10B210 0020A290 FF034224 */  addiu      $v0, $v0, 0x3FF
    /* 10B214 0020A294 82120200 */  srl        $v0, $v0, 10
    /* 10B218 0020A298 6E59040C */  jal        func_001165B8
    /* 10B21C 0020A29C 21882202 */   addu      $s1, $s1, $v0
    /* 10B220 0020A2A0 8000A48F */  lw         $a0, 0x80($sp)
    /* 10B224 0020A2A4 1400063C */  lui        $a2, %hi(D_0013D335)
    /* 10B228 0020A2A8 35D3C524 */  addiu      $a1, $a2, %lo(D_0013D335)
    /* 10B22C 0020A2AC 0A208202 */  movz       $a0, $s4, $v0
    /* 10B230 0020A2B0 8000A4AF */  sw         $a0, 0x80($sp)
    /* 10B234 0020A2B4 6E59040C */  jal        func_001165B8
    /* 10B238 0020A2B8 2D200002 */   daddu     $a0, $s0, $zero
    /* 10B23C 0020A2BC 1400073C */  lui        $a3, %hi(D_0013D355)
    /* 10B240 0020A2C0 2D200002 */  daddu      $a0, $s0, $zero
    /* 10B244 0020A2C4 55D3E524 */  addiu      $a1, $a3, %lo(D_0013D355)
    /* 10B248 0020A2C8 6E59040C */  jal        func_001165B8
    /* 10B24C 0020A2CC 0AF08202 */   movz      $fp, $s4, $v0
    /* 10B250 0020A2D0 0AB88202 */  movz       $s7, $s4, $v0
    /* 10B254 0020A2D4 2D200002 */  daddu      $a0, $s0, $zero
    /* 10B258 0020A2D8 1600023C */  lui        $v0, %hi(D_0015FF58)
    /* 10B25C 0020A2DC 04000624 */  addiu      $a2, $zero, 0x4
    /* 10B260 0020A2E0 525A040C */  jal        func_00116948
    /* 10B264 0020A2E4 58FF4524 */   addiu     $a1, $v0, %lo(D_0015FF58)
    /* 10B268 0020A2E8 11004014 */  bnez       $v0, .L0020A330
    /* 10B26C 0020A2EC 90D34326 */   addiu     $v1, $s2, -0x2C70
    /* 10B270 0020A2F0 1600033C */  lui        $v1, %hi(D_0015FF60)
    /* 10B274 0020A2F4 2D20A002 */  daddu      $a0, $s5, $zero
    /* 10B278 0020A2F8 60FF6524 */  addiu      $a1, $v1, %lo(D_0015FF60)
    /* 10B27C 0020A2FC 525A040C */  jal        func_00116948
    /* 10B280 0020A300 04000624 */   addiu     $a2, $zero, 0x4
    /* 10B284 0020A304 0A004014 */  bnez       $v0, .L0020A330
    /* 10B288 0020A308 90D34326 */   addiu     $v1, $s2, -0x2C70
    /* 10B28C 0020A30C 24006292 */  lbu        $v0, 0x24($s3)
    /* 10B290 0020A310 D0FF4324 */  addiu      $v1, $v0, -0x30
    /* 10B294 0020A314 05006004 */  bltz       $v1, .L0020A32C
    /* 10B298 0020A318 05006228 */   slti      $v0, $v1, 0x5
    /* 10B29C 0020A31C 03004010 */  beqz       $v0, .L0020A32C
    /* 10B2A0 0020A320 80100300 */   sll       $v0, $v1, 2
    /* 10B2A4 0020A324 2118A203 */  addu       $v1, $sp, $v0
    /* 10B2A8 0020A328 000074AC */  sw         $s4, 0x0($v1)
.align 2
  .L0020A32C:
    /* 10B2AC 0020A32C 90D34326 */  addiu      $v1, $s2, -0x2C70
.align 2
  .L0020A330:
    /* 10B2B0 0020A330 0100D626 */  addiu      $s6, $s6, 0x1
    /* 10B2B4 0020A334 C400628C */  lw         $v0, 0xC4($v1)
    /* 10B2B8 0020A338 4000B526 */  addiu      $s5, $s5, 0x40
    /* 10B2BC 0020A33C 40001026 */  addiu      $s0, $s0, 0x40
    /* 10B2C0 0020A340 2A10C202 */  slt        $v0, $s6, $v0
    /* 10B2C4 0020A344 CEFF4014 */  bnez       $v0, .L0020A280
    /* 10B2C8 0020A348 40007326 */   addiu     $s3, $s3, 0x40
.align 2
  .L0020A34C:
    /* 10B2CC 0020A34C 90D34726 */  addiu      $a3, $s2, -0x2C70
    /* 10B2D0 0020A350 C400E48C */  lw         $a0, 0xC4($a3)
    /* 10B2D4 0020A354 02008224 */  addiu      $v0, $a0, 0x2
    /* 10B2D8 0020A358 C21F0200 */  srl        $v1, $v0, 31
    /* 10B2DC 0020A35C 21104300 */  addu       $v0, $v0, $v1
    /* 10B2E0 0020A360 43100200 */  sra        $v0, $v0, 1
    /* 10B2E4 0020A364 21882202 */  addu       $s1, $s1, $v0
    /* 10B2E8 0020A368 A2FE2326 */  addiu      $v1, $s1, -0x15E
    /* 10B2EC 0020A36C 0200632C */  sltiu      $v1, $v1, 0x2
    /* 10B2F0 0020A370 21006010 */  beqz       $v1, .L0020A3F8
    /* 10B2F4 0020A374 0A000224 */   addiu     $v0, $zero, 0xA
    /* 10B2F8 0020A378 20008214 */  bne        $a0, $v0, .L0020A3FC
    /* 10B2FC 0020A37C 90D34426 */   addiu     $a0, $s2, -0x2C70
    /* 10B300 0020A380 8000A48F */  lw         $a0, 0x80($sp)
    /* 10B304 0020A384 1D008050 */  beql       $a0, $zero, .L0020A3FC
    /* 10B308 0020A388 90D34426 */   addiu     $a0, $s2, -0x2C70
    /* 10B30C 0020A38C 1B00C053 */  beql       $fp, $zero, .L0020A3FC
    /* 10B310 0020A390 90D34426 */   addiu     $a0, $s2, -0x2C70
    /* 10B314 0020A394 1800E012 */  beqz       $s7, .L0020A3F8
    /* 10B318 0020A398 0000A28F */   lw        $v0, 0x0($sp)
    /* 10B31C 0020A39C 16004010 */  beqz       $v0, .L0020A3F8
    /* 10B320 0020A3A0 0400A28F */   lw        $v0, 0x4($sp)
    /* 10B324 0020A3A4 14004010 */  beqz       $v0, .L0020A3F8
    /* 10B328 0020A3A8 0800A28F */   lw        $v0, 0x8($sp)
    /* 10B32C 0020A3AC 12004010 */  beqz       $v0, .L0020A3F8
    /* 10B330 0020A3B0 0C00A28F */   lw        $v0, 0xC($sp)
    /* 10B334 0020A3B4 10004010 */  beqz       $v0, .L0020A3F8
    /* 10B338 0020A3B8 1000A28F */   lw        $v0, 0x10($sp)
    /* 10B33C 0020A3BC 0E004010 */  beqz       $v0, .L0020A3F8
    /* 10B340 0020A3C0 C0000424 */   addiu     $a0, $zero, 0xC0
    /* 10B344 0020A3C4 CC00E38C */  lw         $v1, 0xCC($a3)
    /* 10B348 0020A3C8 FFFF0524 */  addiu      $a1, $zero, -0x1
    /* 10B34C 0020A3CC 01000624 */  addiu      $a2, $zero, 0x1
    /* 10B350 0020A3D0 18106400 */  mult       $v0, $v1, $a0
    /* 10B354 0020A3D4 21184700 */  addu       $v1, $v0, $a3
    /* 10B358 0020A3D8 AC0060AC */  sw         $zero, 0xAC($v1)
    /* 10B35C 0020A3DC CC00E28C */  lw         $v0, 0xCC($a3)
    /* 10B360 0020A3E0 18184400 */  mult       $v1, $v0, $a0
    /* 10B364 0020A3E4 21106700 */  addu       $v0, $v1, $a3
    /* 10B368 0020A3E8 140045AC */  sw         $a1, 0x14($v0)
    /* 10B36C 0020A3EC E000E6AC */  sw         $a2, 0xE0($a3)
    /* 10B370 0020A3F0 77050010 */  b          .L0020B9D0
    /* 10B374 0020A3F4 D400E0AC */   sw        $zero, 0xD4($a3)
.align 2
  .L0020A3F8:
    /* 10B378 0020A3F8 90D34426 */  addiu      $a0, $s2, -0x2C70
.align 2
  .L0020A3FC:
    /* 10B37C 0020A3FC C0000524 */  addiu      $a1, $zero, 0xC0
    /* 10B380 0020A400 CC00838C */  lw         $v1, 0xCC($a0)
    /* 10B384 0020A404 FEFF0624 */  addiu      $a2, $zero, -0x2
    /* 10B388 0020A408 18106500 */  mult       $v0, $v1, $a1
    /* 10B38C 0020A40C 21184400 */  addu       $v1, $v0, $a0
    /* 10B390 0020A410 AC0071AC */  sw         $s1, 0xAC($v1)
    /* 10B394 0020A414 CC00828C */  lw         $v0, 0xCC($a0)
    /* 10B398 0020A418 18184500 */  mult       $v1, $v0, $a1
    /* 10B39C 0020A41C 21106400 */  addu       $v0, $v1, $a0
    /* 10B3A0 0020A420 C1030010 */  b          .L0020B328
    /* 10B3A4 0020A424 140046AC */   sw        $a2, 0x14($v0)
.align 2
  .L0020A428:
    /* 10B3A8 0020A428 CC00028E */  lw         $v0, 0xCC($s0)
    /* 10B3AC 0020A42C C0000624 */  addiu      $a2, $zero, 0xC0
    /* 10B3B0 0020A430 14000526 */  addiu      $a1, $s0, 0x14
    /* 10B3B4 0020A434 FEFF0424 */  addiu      $a0, $zero, -0x2
    /* 10B3B8 0020A438 18104600 */  mult       $v0, $v0, $a2
    /* 10B3BC 0020A43C 21104500 */  addu       $v0, $v0, $a1
    /* 10B3C0 0020A440 000044AC */  sw         $a0, 0x0($v0)
    /* 10B3C4 0020A444 C400038E */  lw         $v1, 0xC4($s0)
    /* 10B3C8 0020A448 03006414 */  bne        $v1, $a0, .L0020A458
    /* 10B3CC 0020A44C 03000224 */   addiu     $v0, $zero, 0x3
    /* 10B3D0 0020A450 0B000010 */  b          .L0020A480
    /* 10B3D4 0020A454 CC00038E */   lw        $v1, 0xCC($s0)
.align 2
  .L0020A458:
    /* 10B3D8 0020A458 06006004 */  bltz       $v1, .L0020A474
    /* 10B3DC 0020A45C FCFF0224 */   addiu     $v0, $zero, -0x4
    /* 10B3E0 0020A460 CC00028E */  lw         $v0, 0xCC($s0)
    /* 10B3E4 0020A464 18184600 */  mult       $v1, $v0, $a2
    /* 10B3E8 0020A468 21106500 */  addu       $v0, $v1, $a1
    /* 10B3EC 0020A46C AE030010 */  b          .L0020B328
    /* 10B3F0 0020A470 000044AC */   sw        $a0, 0x0($v0)
.align 2
  .L0020A474:
    /* 10B3F4 0020A474 AC036210 */  beq        $v1, $v0, .L0020B328
    /* 10B3F8 0020A478 04000224 */   addiu     $v0, $zero, 0x4
    /* 10B3FC 0020A47C CC00038E */  lw         $v1, 0xCC($s0)
.align 2
  .L0020A480:
    /* 10B400 0020A480 EC0002AE */  sw         $v0, 0xEC($s0)
    /* 10B404 0020A484 A8030010 */  b          .L0020B328
    /* 10B408 0020A488 F00003AE */   sw        $v1, 0xF0($s0)
    /* 10B40C 0020A48C 2000B027 */  addiu      $s0, $sp, 0x20
    /* 10B410 0020A490 1400053C */  lui        $a1, %hi(D_0013D370)
    /* 10B414 0020A494 70D3A524 */  addiu      $a1, $a1, %lo(D_0013D370)
    /* 10B418 0020A498 2D200002 */  daddu      $a0, $s0, $zero
    /* 10B41C 0020A49C 2D300000 */  daddu      $a2, $zero, $zero
    /* 10B420 0020A4A0 9258040C */  jal        func_00116248
    /* 10B424 0020A4A4 90D35126 */   addiu     $s1, $s2, -0x2C70
    /* 10B428 0020A4A8 CC00238E */  lw         $v1, 0xCC($s1)
    /* 10B42C 0020A4AC C0000224 */  addiu      $v0, $zero, 0xC0
    /* 10B430 0020A4B0 2D300002 */  daddu      $a2, $s0, $zero
    /* 10B434 0020A4B4 01000724 */  addiu      $a3, $zero, 0x1
    /* 10B438 0020A4B8 18186200 */  mult       $v1, $v1, $v0
    /* 10B43C 0020A4BC 21402302 */  addu       $t0, $s1, $v1
    /* 10B440 0020A4C0 21187100 */  addu       $v1, $v1, $s1
    /* 10B444 0020A4C4 0400058D */  lw         $a1, 0x4($t0)
    /* 10B448 0020A4C8 2C8E040C */  jal        func_001238B0
    /* 10B44C 0020A4CC 0000648C */   lw        $a0, 0x0($v1)
    /* 10B450 0020A4D0 40054014 */  bnez       $v0, .L0020B9D4
    /* 10B454 0020A4D4 2001BF7B */   lq        $ra, 0x120($sp)
    /* 10B458 0020A4D8 E000228E */  lw         $v0, 0xE0($s1)
    /* 10B45C 0020A4DC 01004224 */  addiu      $v0, $v0, 0x1
    /* 10B460 0020A4E0 3C050010 */  b          .L0020B9D4
    /* 10B464 0020A4E4 E00022AE */   sw        $v0, 0xE0($s1)
    /* 10B468 0020A4E8 90D34526 */  addiu      $a1, $s2, -0x2C70
    /* 10B46C 0020A4EC C400A38C */  lw         $v1, 0xC4($a1)
    /* 10B470 0020A4F0 04006204 */  bltzl      $v1, .L0020A504
    /* 10B474 0020A4F4 CC00A28C */   lw        $v0, 0xCC($a1)
    /* 10B478 0020A4F8 03000224 */  addiu      $v0, $zero, 0x3
    /* 10B47C 0020A4FC B5020010 */  b          .L0020AFD4
    /* 10B480 0020A500 D800A3AC */   sw        $v1, 0xD8($a1)
.align 2
  .L0020A504:
    /* 10B484 0020A504 C0000324 */  addiu      $v1, $zero, 0xC0
    /* 10B488 0020A508 FEFF0624 */  addiu      $a2, $zero, -0x2
    /* 10B48C 0020A50C F9FF0424 */  addiu      $a0, $zero, -0x7
    /* 10B490 0020A510 18384300 */  mult       $a3, $v0, $v1
    /* 10B494 0020A514 2110E500 */  addu       $v0, $a3, $a1
    /* 10B498 0020A518 140046AC */  sw         $a2, 0x14($v0)
    /* 10B49C 0020A51C CC00A28C */  lw         $v0, 0xCC($a1)
    /* 10B4A0 0020A520 C400A38C */  lw         $v1, 0xC4($a1)
    /* 10B4A4 0020A524 F000A2AC */  sw         $v0, 0xF0($a1)
    /* 10B4A8 0020A528 0F006410 */  beq        $v1, $a0, .L0020A568
    /* 10B4AC 0020A52C 10270224 */   addiu     $v0, $zero, 0x2710
    /* 10B4B0 0020A530 FBFF0224 */  addiu      $v0, $zero, -0x5
    /* 10B4B4 0020A534 03006214 */  bne        $v1, $v0, .L0020A544
    /* 10B4B8 0020A538 FCFF0224 */   addiu     $v0, $zero, -0x4
    /* 10B4BC 0020A53C 0A000010 */  b          .L0020A568
    /* 10B4C0 0020A540 11270224 */   addiu     $v0, $zero, 0x2711
.align 2
  .L0020A544:
    /* 10B4C4 0020A544 03006214 */  bne        $v1, $v0, .L0020A554
    /* 10B4C8 0020A548 FDFF0224 */   addiu     $v0, $zero, -0x3
    /* 10B4CC 0020A54C 06000010 */  b          .L0020A568
    /* 10B4D0 0020A550 12270224 */   addiu     $v0, $zero, 0x2712
.align 2
  .L0020A554:
    /* 10B4D4 0020A554 04006210 */  beq        $v1, $v0, .L0020A568
    /* 10B4D8 0020A558 13270224 */   addiu     $v0, $zero, 0x2713
    /* 10B4DC 0020A55C 02006614 */  bne        $v1, $a2, .L0020A568
    /* 10B4E0 0020A560 04000224 */   addiu     $v0, $zero, 0x4
    /* 10B4E4 0020A564 03000224 */  addiu      $v0, $zero, 0x3
.align 2
  .L0020A568:
    /* 10B4E8 0020A568 EC00A2AC */  sw         $v0, 0xEC($a1)
    /* 10B4EC 0020A56C 90D34426 */  addiu      $a0, $s2, -0x2C70
    /* 10B4F0 0020A570 02000324 */  addiu      $v1, $zero, 0x2
    /* 10B4F4 0020A574 B000828C */  lw         $v0, 0xB0($a0)
    /* 10B4F8 0020A578 DC0080AC */  sw         $zero, 0xDC($a0)
    /* 10B4FC 0020A57C 8A044314 */  bne        $v0, $v1, .L0020B7A8
    /* 10B500 0020A580 CC0080AC */   sw        $zero, 0xCC($a0)
    /* 10B504 0020A584 88040010 */  b          .L0020B7A8
    /* 10B508 0020A588 B00080AC */   sw        $zero, 0xB0($a0)
    /* 10B50C 0020A58C 90D35026 */  addiu      $s0, $s2, -0x2C70
    /* 10B510 0020A590 C0000324 */  addiu      $v1, $zero, 0xC0
    /* 10B514 0020A594 CC00058E */  lw         $a1, 0xCC($s0)
    /* 10B518 0020A598 08000224 */  addiu      $v0, $zero, 0x8
    /* 10B51C 0020A59C B8000726 */  addiu      $a3, $s0, 0xB8
    /* 10B520 0020A5A0 D800048E */  lw         $a0, 0xD8($s0)
    /* 10B524 0020A5A4 1828A300 */  mult       $a1, $a1, $v1
    /* 10B528 0020A5A8 F80002AE */  sw         $v0, 0xF8($s0)
    /* 10B52C 0020A5AC 08000624 */  addiu      $a2, $zero, 0x8
    /* 10B530 0020A5B0 0C8F040C */  jal        func_00123C30
    /* 10B534 0020A5B4 2128A700 */   addu      $a1, $a1, $a3
    /* 10B538 0020A5B8 06054014 */  bnez       $v0, .L0020B9D4
    /* 10B53C 0020A5BC 2001BF7B */   lq        $ra, 0x120($sp)
    /* 10B540 0020A5C0 FB010010 */  b          .L0020ADB0
    /* 10B544 0020A5C4 04000224 */   addiu     $v0, $zero, 0x4
    /* 10B548 0020A5C8 90D35126 */  addiu      $s1, $s2, -0x2C70
    /* 10B54C 0020A5CC C400238E */  lw         $v1, 0xC4($s1)
    /* 10B550 0020A5D0 F800228E */  lw         $v0, 0xF8($s1)
    /* 10B554 0020A5D4 2A006214 */  bne        $v1, $v0, .L0020A680
    /* 10B558 0020A5D8 CC00228E */   lw        $v0, 0xCC($s1)
    /* 10B55C 0020A5DC C0001224 */  addiu      $s2, $zero, 0xC0
    /* 10B560 0020A5E0 B4003326 */  addiu      $s3, $s1, 0xB4
    /* 10B564 0020A5E4 B8002326 */  addiu      $v1, $s1, 0xB8
    /* 10B568 0020A5E8 18105200 */  mult       $v0, $v0, $s2
    /* 10B56C 0020A5EC 1A00043C */  lui        $a0, %hi(D_001A05C0)
    /* 10B570 0020A5F0 C0058424 */  addiu      $a0, $a0, %lo(D_001A05C0)
    /* 10B574 0020A5F4 21105300 */  addu       $v0, $v0, $s3
    /* 10B578 0020A5F8 000040AC */  sw         $zero, 0x0($v0)
    /* 10B57C 0020A5FC CC00308E */  lw         $s0, 0xCC($s1)
    /* 10B580 0020A600 18801202 */  mult       $s0, $s0, $s2
    /* 10B584 0020A604 B62E080C */  jal        func_0020BAD8
    /* 10B588 0020A608 21800302 */   addu      $s0, $s0, $v1
    /* 10B58C 0020A60C 0000038E */  lw         $v1, 0x0($s0)
    /* 10B590 0020A610 08006250 */  beql       $v1, $v0, .L0020A634
    /* 10B594 0020A614 CC00308E */   lw        $s0, 0xCC($s1)
    /* 10B598 0020A618 CC00238E */  lw         $v1, 0xCC($s1)
    /* 10B59C 0020A61C 18107200 */  mult       $v0, $v1, $s2
    /* 10B5A0 0020A620 21185300 */  addu       $v1, $v0, $s3
    /* 10B5A4 0020A624 0000628C */  lw         $v0, 0x0($v1)
    /* 10B5A8 0020A628 01004224 */  addiu      $v0, $v0, 0x1
    /* 10B5AC 0020A62C 000062AC */  sw         $v0, 0x0($v1)
    /* 10B5B0 0020A630 CC00308E */  lw         $s0, 0xCC($s1)
.align 2
  .L0020A634:
    /* 10B5B4 0020A634 BC002226 */  addiu      $v0, $s1, 0xBC
    /* 10B5B8 0020A638 1A00043C */  lui        $a0, %hi(D_001A08C0)
    /* 10B5BC 0020A63C 18801202 */  mult       $s0, $s0, $s2
    /* 10B5C0 0020A640 C0088424 */  addiu      $a0, $a0, %lo(D_001A08C0)
    /* 10B5C4 0020A644 B62E080C */  jal        func_0020BAD8
    /* 10B5C8 0020A648 21800202 */   addu      $s0, $s0, $v0
    /* 10B5CC 0020A64C 0000038E */  lw         $v1, 0x0($s0)
    /* 10B5D0 0020A650 08006210 */  beq        $v1, $v0, .L0020A674
    /* 10B5D4 0020A654 05000224 */   addiu     $v0, $zero, 0x5
    /* 10B5D8 0020A658 CC00238E */  lw         $v1, 0xCC($s1)
    /* 10B5DC 0020A65C 18107200 */  mult       $v0, $v1, $s2
    /* 10B5E0 0020A660 21185300 */  addu       $v1, $v0, $s3
    /* 10B5E4 0020A664 0000628C */  lw         $v0, 0x0($v1)
    /* 10B5E8 0020A668 01004224 */  addiu      $v0, $v0, 0x1
    /* 10B5EC 0020A66C 000062AC */  sw         $v0, 0x0($v1)
    /* 10B5F0 0020A670 05000224 */  addiu      $v0, $zero, 0x5
.align 2
  .L0020A674:
    /* 10B5F4 0020A674 D40020AE */  sw         $zero, 0xD4($s1)
    /* 10B5F8 0020A678 D5040010 */  b          .L0020B9D0
    /* 10B5FC 0020A67C E00022AE */   sw        $v0, 0xE0($s1)
.align 2
  .L0020A680:
    /* 10B600 0020A680 C0000324 */  addiu      $v1, $zero, 0xC0
    /* 10B604 0020A684 FEFF0424 */  addiu      $a0, $zero, -0x2
    /* 10B608 0020A688 18284300 */  mult       $a1, $v0, $v1
    /* 10B60C 0020A68C 2110B100 */  addu       $v0, $a1, $s1
    /* 10B610 0020A690 140044AC */  sw         $a0, 0x14($v0)
    /* 10B614 0020A694 CC00228E */  lw         $v0, 0xCC($s1)
    /* 10B618 0020A698 C400238E */  lw         $v1, 0xC4($s1)
    /* 10B61C 0020A69C 0F006004 */  bltz       $v1, .L0020A6DC
    /* 10B620 0020A6A0 F00022AE */   sw        $v0, 0xF0($s1)
    /* 10B624 0020A6A4 16270224 */  addiu      $v0, $zero, 0x2716
    /* 10B628 0020A6A8 D800248E */  lw         $a0, 0xD8($s1)
    /* 10B62C 0020A6AC 848E040C */  jal        func_00123A10
    /* 10B630 0020A6B0 EC0022AE */   sw        $v0, 0xEC($s1)
    /* 10B634 0020A6B4 C7044014 */  bnez       $v0, .L0020B9D4
    /* 10B638 0020A6B8 2001BF7B */   lq        $ra, 0x120($sp)
    /* 10B63C 0020A6BC B000238E */  lw         $v1, 0xB0($s1)
    /* 10B640 0020A6C0 02000224 */  addiu      $v0, $zero, 0x2
    /* 10B644 0020A6C4 DC0020AE */  sw         $zero, 0xDC($s1)
    /* 10B648 0020A6C8 CC0020AE */  sw         $zero, 0xCC($s1)
    /* 10B64C 0020A6CC C1046214 */  bne        $v1, $v0, .L0020B9D4
    /* 10B650 0020A6D0 D40020AE */   sw        $zero, 0xD4($s1)
    /* 10B654 0020A6D4 BF040010 */  b          .L0020B9D4
    /* 10B658 0020A6D8 B00020AE */   sw        $zero, 0xB0($s1)
.align 2
  .L0020A6DC:
    /* 10B65C 0020A6DC FBFF0224 */  addiu      $v0, $zero, -0x5
    /* 10B660 0020A6E0 03006214 */  bne        $v1, $v0, .L0020A6F0
    /* 10B664 0020A6E4 FCFF0224 */   addiu     $v0, $zero, -0x4
    /* 10B668 0020A6E8 0A000010 */  b          .L0020A714
    /* 10B66C 0020A6EC 11270224 */   addiu     $v0, $zero, 0x2711
.align 2
  .L0020A6F0:
    /* 10B670 0020A6F0 03006214 */  bne        $v1, $v0, .L0020A700
    /* 10B674 0020A6F4 FDFF0224 */   addiu     $v0, $zero, -0x3
    /* 10B678 0020A6F8 06000010 */  b          .L0020A714
    /* 10B67C 0020A6FC 14270224 */   addiu     $v0, $zero, 0x2714
.align 2
  .L0020A700:
    /* 10B680 0020A700 04006210 */  beq        $v1, $v0, .L0020A714
    /* 10B684 0020A704 15270224 */   addiu     $v0, $zero, 0x2715
    /* 10B688 0020A708 02006414 */  bne        $v1, $a0, .L0020A714
    /* 10B68C 0020A70C 04000224 */   addiu     $v0, $zero, 0x4
    /* 10B690 0020A710 03000224 */  addiu      $v0, $zero, 0x3
.align 2
  .L0020A714:
    /* 10B694 0020A714 04030010 */  b          .L0020B328
    /* 10B698 0020A718 EC0022AE */   sw        $v0, 0xEC($s1)
    /* 10B69C 0020A71C 90D35026 */  addiu      $s0, $s2, -0x2C70
    /* 10B6A0 0020A720 848E040C */  jal        func_00123A10
    /* 10B6A4 0020A724 D800048E */   lw        $a0, 0xD8($s0)
    /* 10B6A8 0020A728 AA044014 */  bnez       $v0, .L0020B9D4
    /* 10B6AC 0020A72C 2001BF7B */   lq        $ra, 0x120($sp)
    /* 10B6B0 0020A730 10030010 */  b          .L0020B374
    /* 10B6B4 0020A734 15000224 */   addiu     $v0, $zero, 0x15
    /* 10B6B8 0020A738 90D34326 */  addiu      $v1, $s2, -0x2C70
    /* 10B6BC 0020A73C 0A000224 */  addiu      $v0, $zero, 0xA
    /* 10B6C0 0020A740 CC00648C */  lw         $a0, 0xCC($v1)
    /* 10B6C4 0020A744 C0000524 */  addiu      $a1, $zero, 0xC0
    /* 10B6C8 0020A748 DC0062AC */  sw         $v0, 0xDC($v1)
    /* 10B6CC 0020A74C 18108500 */  mult       $v0, $a0, $a1
    /* 10B6D0 0020A750 E00060AC */  sw         $zero, 0xE0($v1)
    /* 10B6D4 0020A754 21204300 */  addu       $a0, $v0, $v1
    /* 10B6D8 0020A758 140080AC */  sw         $zero, 0x14($a0)
    /* 10B6DC 0020A75C 90D34226 */  addiu      $v0, $s2, -0x2C70
    /* 10B6E0 0020A760 E000448C */  lw         $a0, 0xE0($v0)
    /* 10B6E4 0020A764 1600832C */  sltiu      $v1, $a0, 0x16
    /* 10B6E8 0020A768 99046010 */  beqz       $v1, .L0020B9D0
    /* 10B6EC 0020A76C 1F00023C */   lui       $v0, %hi(jtbl_001E85B0)
    /* 10B6F0 0020A770 80180400 */  sll        $v1, $a0, 2
    /* 10B6F4 0020A774 B0854224 */  addiu      $v0, $v0, %lo(jtbl_001E85B0)
    /* 10B6F8 0020A778 21186200 */  addu       $v1, $v1, $v0
    /* 10B6FC 0020A77C 0000648C */  lw         $a0, 0x0($v1)
    /* 10B700 0020A780 08008000 */  jr         $a0
    /* 10B704 0020A784 00000000 */   nop
    /* 10B708 0020A788 90D34626 */  addiu      $a2, $s2, -0x2C70
    /* 10B70C 0020A78C C0000324 */  addiu      $v1, $zero, 0xC0
    /* 10B710 0020A790 CC00C78C */  lw         $a3, 0xCC($a2)
    /* 10B714 0020A794 1818E300 */  mult       $v1, $a3, $v1
    /* 10B718 0020A798 2128C300 */  addu       $a1, $a2, $v1
    /* 10B71C 0020A79C 2D18A000 */  daddu      $v1, $a1, $zero
    /* 10B720 0020A7A0 AC00A48C */  lw         $a0, 0xAC($a1)
    /* 10B724 0020A7A4 0C00628C */  lw         $v0, 0xC($v1)
    /* 10B728 0020A7A8 21104400 */  addu       $v0, $v0, $a0
    /* 10B72C 0020A7AC 5E014228 */  slti       $v0, $v0, 0x15E
    /* 10B730 0020A7B0 04004014 */  bnez       $v0, .L0020A7C4
    /* 10B734 0020A7B4 07000224 */   addiu     $v0, $zero, 0x7
    /* 10B738 0020A7B8 01000224 */  addiu      $v0, $zero, 0x1
    /* 10B73C 0020A7BC FA030010 */  b          .L0020B7A8
    /* 10B740 0020A7C0 E000C2AC */   sw        $v0, 0xE0($a2)
.align 2
  .L0020A7C4:
    /* 10B744 0020A7C4 F000C7AC */  sw         $a3, 0xF0($a2)
    /* 10B748 0020A7C8 EC00C2AC */  sw         $v0, 0xEC($a2)
    /* 10B74C 0020A7CC CC00C0AC */  sw         $zero, 0xCC($a2)
    /* 10B750 0020A7D0 F5030010 */  b          .L0020B7A8
    /* 10B754 0020A7D4 DC00C0AC */   sw        $zero, 0xDC($a2)
    /* 10B758 0020A7D8 90D35026 */  addiu      $s0, $s2, -0x2C70
    /* 10B75C 0020A7DC C0000424 */  addiu      $a0, $zero, 0xC0
    /* 10B760 0020A7E0 CC00028E */  lw         $v0, 0xCC($s0)
    /* 10B764 0020A7E4 1400063C */  lui        $a2, %hi(D_0013D2D0)
    /* 10B768 0020A7E8 D0D2C624 */  addiu      $a2, $a2, %lo(D_0013D2D0)
    /* 10B76C 0020A7EC 18104400 */  mult       $v0, $v0, $a0
    /* 10B770 0020A7F0 21180202 */  addu       $v1, $s0, $v0
    /* 10B774 0020A7F4 21105000 */  addu       $v0, $v0, $s0
    /* 10B778 0020A7F8 0400658C */  lw         $a1, 0x4($v1)
    /* 10B77C 0020A7FC 768E040C */  jal        func_001239D8
    /* 10B780 0020A800 0000448C */   lw        $a0, 0x0($v0)
    /* 10B784 0020A804 2B010010 */  b          .L0020ACB4
    /* 10B788 0020A808 00000000 */   nop
    /* 10B78C 0020A80C 90D34526 */  addiu      $a1, $s2, -0x2C70
    /* 10B790 0020A810 C400A48C */  lw         $a0, 0xC4($a1)
    /* 10B794 0020A814 03008010 */  beqz       $a0, .L0020A824
    /* 10B798 0020A818 FCFF0224 */   addiu     $v0, $zero, -0x4
    /* 10B79C 0020A81C 04008254 */  bnel       $a0, $v0, .L0020A830
    /* 10B7A0 0020A820 CC00A28C */   lw        $v0, 0xCC($a1)
.align 2
  .L0020A824:
    /* 10B7A4 0020A824 03000224 */  addiu      $v0, $zero, 0x3
    /* 10B7A8 0020A828 69040010 */  b          .L0020B9D0
    /* 10B7AC 0020A82C E000A2AC */   sw        $v0, 0xE0($a1)
.align 2
  .L0020A830:
    /* 10B7B0 0020A830 FDFF0324 */  addiu      $v1, $zero, -0x3
    /* 10B7B4 0020A834 F000A2AC */  sw         $v0, 0xF0($a1)
    /* 10B7B8 0020A838 73018310 */  beq        $a0, $v1, .L0020AE08
    /* 10B7BC 0020A83C 07000224 */   addiu     $v0, $zero, 0x7
    /* 10B7C0 0020A840 FEFF0224 */  addiu      $v0, $zero, -0x2
    /* 10B7C4 0020A844 70018214 */  bne        $a0, $v0, .L0020AE08
    /* 10B7C8 0020A848 0D000224 */   addiu     $v0, $zero, 0xD
    /* 10B7CC 0020A84C 6E010010 */  b          .L0020AE08
    /* 10B7D0 0020A850 06000224 */   addiu     $v0, $zero, 0x6
    /* 10B7D4 0020A854 1300103C */  lui        $s0, %hi(D_00137C80)
    /* 10B7D8 0020A858 6000A527 */  addiu      $a1, $sp, 0x60
    /* 10B7DC 0020A85C 807C1026 */  addiu      $s0, $s0, %lo(D_00137C80)
    /* 10B7E0 0020A860 6400A627 */  addiu      $a2, $sp, 0x64
    /* 10B7E4 0020A864 1400048E */  lw         $a0, 0x14($s0)
    /* 10B7E8 0020A868 C4F7070C */  jal        func_001FDF10
    /* 10B7EC 0020A86C C0220400 */   sll       $a0, $a0, 11
    /* 10B7F0 0020A870 1400068E */  lw         $a2, 0x14($s0)
    /* 10B7F4 0020A874 6000A48F */  lw         $a0, 0x60($sp)
    /* 10B7F8 0020A878 8A5D080C */  jal        func_00217628
    /* 10B7FC 0020A87C 1000058E */   lw        $a1, 0x10($s0)
    /* 10B800 0020A880 90D34326 */  addiu      $v1, $s2, -0x2C70
    /* 10B804 0020A884 B4030010 */  b          .L0020B758
    /* 10B808 0020A888 04000224 */   addiu     $v0, $zero, 0x4
    /* 10B80C 0020A88C 1500023C */  lui        $v0, %hi(D_001517D8)
    /* 10B810 0020A890 D8174384 */  lh         $v1, %lo(D_001517D8)($v0)
    /* 10B814 0020A894 C5036014 */  bnez       $v1, .L0020B7AC
    /* 10B818 0020A898 90D34226 */   addiu     $v0, $s2, -0x2C70
    /* 10B81C 0020A89C 90D34326 */  addiu      $v1, $s2, -0x2C70
    /* 10B820 0020A8A0 05000224 */  addiu      $v0, $zero, 0x5
    /* 10B824 0020A8A4 C0030010 */  b          .L0020B7A8
    /* 10B828 0020A8A8 E00062AC */   sw        $v0, 0xE0($v1)
    /* 10B82C 0020A8AC 90D34626 */  addiu      $a2, $s2, -0x2C70
    /* 10B830 0020A8B0 09000224 */  addiu      $v0, $zero, 0x9
    /* 10B834 0020A8B4 E000C38C */  lw         $v1, 0xE0($a2)
    /* 10B838 0020A8B8 14006210 */  beq        $v1, $v0, .L0020A90C
    /* 10B83C 0020A8BC 0A006228 */   slti      $v0, $v1, 0xA
    /* 10B840 0020A8C0 05004010 */  beqz       $v0, .L0020A8D8
    /* 10B844 0020A8C4 05000224 */   addiu     $v0, $zero, 0x5
    /* 10B848 0020A8C8 0A006210 */  beq        $v1, $v0, .L0020A8F4
    /* 10B84C 0020A8CC 90D35026 */   addiu     $s0, $s2, -0x2C70
    /* 10B850 0020A8D0 25000010 */  b          .L0020A968
    /* 10B854 0020A8D4 C0000424 */   addiu     $a0, $zero, 0xC0
.align 2
  .L0020A8D8:
    /* 10B858 0020A8D8 0D000224 */  addiu      $v0, $zero, 0xD
    /* 10B85C 0020A8DC 17006210 */  beq        $v1, $v0, .L0020A93C
    /* 10B860 0020A8E0 12000224 */   addiu     $v0, $zero, 0x12
    /* 10B864 0020A8E4 0F006210 */  beq        $v1, $v0, .L0020A924
    /* 10B868 0020A8E8 90D35026 */   addiu     $s0, $s2, -0x2C70
    /* 10B86C 0020A8EC 1E000010 */  b          .L0020A968
    /* 10B870 0020A8F0 C0000424 */   addiu     $a0, $zero, 0xC0
.align 2
  .L0020A8F4:
    /* 10B874 0020A8F4 1400053C */  lui        $a1, %hi(D_0013D300)
    /* 10B878 0020A8F8 2D20A003 */  daddu      $a0, $sp, $zero
    /* 10B87C 0020A8FC BF59040C */  jal        func_001166FC
    /* 10B880 0020A900 00D3A524 */   addiu     $a1, $a1, %lo(D_0013D300)
    /* 10B884 0020A904 17000010 */  b          .L0020A964
    /* 10B888 0020A908 90D35026 */   addiu     $s0, $s2, -0x2C70
.align 2
  .L0020A90C:
    /* 10B88C 0020A90C 1400053C */  lui        $a1, %hi(D_0013D320)
    /* 10B890 0020A910 2D20A003 */  daddu      $a0, $sp, $zero
    /* 10B894 0020A914 BF59040C */  jal        func_001166FC
    /* 10B898 0020A918 20D3A524 */   addiu     $a1, $a1, %lo(D_0013D320)
    /* 10B89C 0020A91C 11000010 */  b          .L0020A964
    /* 10B8A0 0020A920 90D35026 */   addiu     $s0, $s2, -0x2C70
.align 2
  .L0020A924:
    /* 10B8A4 0020A924 1400053C */  lui        $a1, %hi(D_0013D340)
    /* 10B8A8 0020A928 2D20A003 */  daddu      $a0, $sp, $zero
    /* 10B8AC 0020A92C BF59040C */  jal        func_001166FC
    /* 10B8B0 0020A930 40D3A524 */   addiu     $a1, $a1, %lo(D_0013D340)
    /* 10B8B4 0020A934 0B000010 */  b          .L0020A964
    /* 10B8B8 0020A938 90D35026 */   addiu     $s0, $s2, -0x2C70
.align 2
  .L0020A93C:
    /* 10B8BC 0020A93C CC00C28C */  lw         $v0, 0xCC($a2)
    /* 10B8C0 0020A940 C0000324 */  addiu      $v1, $zero, 0xC0
    /* 10B8C4 0020A944 1400053C */  lui        $a1, %hi(D_0013D370)
    /* 10B8C8 0020A948 2D20A003 */  daddu      $a0, $sp, $zero
    /* 10B8CC 0020A94C 18384300 */  mult       $a3, $v0, $v1
    /* 10B8D0 0020A950 70D3A524 */  addiu      $a1, $a1, %lo(D_0013D370)
    /* 10B8D4 0020A954 2110E600 */  addu       $v0, $a3, $a2
    /* 10B8D8 0020A958 9258040C */  jal        func_00116248
    /* 10B8DC 0020A95C 1400468C */   lw        $a2, 0x14($v0)
    /* 10B8E0 0020A960 90D35026 */  addiu      $s0, $s2, -0x2C70
.align 2
  .L0020A964:
    /* 10B8E4 0020A964 C0000424 */  addiu      $a0, $zero, 0xC0
.align 2
  .L0020A968:
    /* 10B8E8 0020A968 CC00028E */  lw         $v0, 0xCC($s0)
    /* 10B8EC 0020A96C 2D30A003 */  daddu      $a2, $sp, $zero
    /* 10B8F0 0020A970 03020724 */  addiu      $a3, $zero, 0x203
    /* 10B8F4 0020A974 18104400 */  mult       $v0, $v0, $a0
    /* 10B8F8 0020A978 21180202 */  addu       $v1, $s0, $v0
    /* 10B8FC 0020A97C 21105000 */  addu       $v0, $v0, $s0
    /* 10B900 0020A980 0400658C */  lw         $a1, 0x4($v1)
    /* 10B904 0020A984 2C8E040C */  jal        func_001238B0
    /* 10B908 0020A988 0000448C */   lw        $a0, 0x0($v0)
    /* 10B90C 0020A98C 11044014 */  bnez       $v0, .L0020B9D4
    /* 10B910 0020A990 2001BF7B */   lq        $ra, 0x120($sp)
    /* 10B914 0020A994 E000028E */  lw         $v0, 0xE0($s0)
    /* 10B918 0020A998 FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 10B91C 0020A99C 84010010 */  b          .L0020AFB0
    /* 10B920 0020A9A0 D80003AE */   sw        $v1, 0xD8($s0)
    /* 10B924 0020A9A4 90D35126 */  addiu      $s1, $s2, -0x2C70
    /* 10B928 0020A9A8 C400238E */  lw         $v1, 0xC4($s1)
    /* 10B92C 0020A9AC 4A006204 */  bltzl      $v1, .L0020AAD8
    /* 10B930 0020A9B0 CC00238E */   lw        $v1, 0xCC($s1)
    /* 10B934 0020A9B4 D800228E */  lw         $v0, 0xD8($s1)
    /* 10B938 0020A9B8 01004204 */  bltzl      $v0, .L0020A9C0
    /* 10B93C 0020A9BC D80023AE */   sw        $v1, 0xD8($s1)
.align 2
  .L0020A9C0:
    /* 10B940 0020A9C0 1300023C */  lui        $v0, %hi(D_00137C94)
    /* 10B944 0020A9C4 6800A527 */  addiu      $a1, $sp, 0x68
    /* 10B948 0020A9C8 947C448C */  lw         $a0, %lo(D_00137C94)($v0)
    /* 10B94C 0020A9CC 6C00A627 */  addiu      $a2, $sp, 0x6C
    /* 10B950 0020A9D0 C4F7070C */  jal        func_001FDF10
    /* 10B954 0020A9D4 C0220400 */   sll       $a0, $a0, 11
    /* 10B958 0020A9D8 E000238E */  lw         $v1, 0xE0($s1)
    /* 10B95C 0020A9DC 0A000224 */  addiu      $v0, $zero, 0xA
    /* 10B960 0020A9E0 14006210 */  beq        $v1, $v0, .L0020AA34
    /* 10B964 0020A9E4 0B006228 */   slti      $v0, $v1, 0xB
    /* 10B968 0020A9E8 05004010 */  beqz       $v0, .L0020AA00
    /* 10B96C 0020A9EC 06000224 */   addiu     $v0, $zero, 0x6
    /* 10B970 0020A9F0 0A006210 */  beq        $v1, $v0, .L0020AA1C
    /* 10B974 0020A9F4 90D35026 */   addiu     $s0, $s2, -0x2C70
    /* 10B978 0020A9F8 32000010 */  b          .L0020AAC4
    /* 10B97C 0020A9FC D800048E */   lw        $a0, 0xD8($s0)
.align 2
  .L0020AA00:
    /* 10B980 0020AA00 0E000224 */  addiu      $v0, $zero, 0xE
    /* 10B984 0020AA04 1D006210 */  beq        $v1, $v0, .L0020AA7C
    /* 10B988 0020AA08 13000224 */   addiu     $v0, $zero, 0x13
    /* 10B98C 0020AA0C 10006210 */  beq        $v1, $v0, .L0020AA50
    /* 10B990 0020AA10 90D35026 */   addiu     $s0, $s2, -0x2C70
    /* 10B994 0020AA14 2B000010 */  b          .L0020AAC4
    /* 10B998 0020AA18 D800048E */   lw        $a0, 0xD8($s0)
.align 2
  .L0020AA1C:
    /* 10B99C 0020AA1C 6800A38F */  lw         $v1, 0x68($sp)
    /* 10B9A0 0020AA20 C4030224 */  addiu      $v0, $zero, 0x3C4
    /* 10B9A4 0020AA24 F80022AE */  sw         $v0, 0xF8($s1)
    /* 10B9A8 0020AA28 0000648C */  lw         $a0, 0x0($v1)
    /* 10B9AC 0020AA2C 22000010 */  b          .L0020AAB8
    /* 10B9B0 0020AA30 21186400 */   addu      $v1, $v1, $a0
.align 2
  .L0020AA34:
    /* 10B9B4 0020AA34 6800A28F */  lw         $v0, 0x68($sp)
    /* 10B9B8 0020AA38 0C00438C */  lw         $v1, 0xC($v0)
    /* 10B9BC 0020AA3C F80023AE */  sw         $v1, 0xF8($s1)
    /* 10B9C0 0020AA40 0800448C */  lw         $a0, 0x8($v0)
    /* 10B9C4 0020AA44 21104400 */  addu       $v0, $v0, $a0
    /* 10B9C8 0020AA48 1C000010 */  b          .L0020AABC
    /* 10B9CC 0020AA4C F40022AE */   sw        $v0, 0xF4($s1)
.align 2
  .L0020AA50:
    /* 10B9D0 0020AA50 1600023C */  lui        $v0, %hi(D_0015EF90)
    /* 10B9D4 0020AA54 90EF428C */  lw         $v0, %lo(D_0015EF90)($v0)
    /* 10B9D8 0020AA58 02004014 */  bnez       $v0, .L0020AA64
    /* 10B9DC 0020AA5C 003C0224 */   addiu     $v0, $zero, 0x3C00
    /* 10B9E0 0020AA60 043C0224 */  addiu      $v0, $zero, 0x3C04
.align 2
  .L0020AA64:
    /* 10B9E4 0020AA64 F80022AE */  sw         $v0, 0xF8($s1)
    /* 10B9E8 0020AA68 90D34326 */  addiu      $v1, $s2, -0x2C70
    /* 10B9EC 0020AA6C 1600023C */  lui        $v0, %hi(D_0015EE84)
    /* 10B9F0 0020AA70 84EE4224 */  addiu      $v0, $v0, %lo(D_0015EE84)
    /* 10B9F4 0020AA74 11000010 */  b          .L0020AABC
    /* 10B9F8 0020AA78 F40062AC */   sw        $v0, 0xF4($v1)
.align 2
  .L0020AA7C:
    /* 10B9FC 0020AA7C 1A00043C */  lui        $a0, %hi(D_001A05C0)
    /* 10BA00 0020AA80 B62E080C */  jal        func_0020BAD8
    /* 10BA04 0020AA84 C0058424 */   addiu     $a0, $a0, %lo(D_001A05C0)
    /* 10BA08 0020AA88 1A00043C */  lui        $a0, %hi(D_001A08C0)
    /* 10BA0C 0020AA8C 2D804000 */  daddu      $s0, $v0, $zero
    /* 10BA10 0020AA90 B62E080C */  jal        func_0020BAD8
    /* 10BA14 0020AA94 C0088424 */   addiu     $a0, $a0, %lo(D_001A08C0)
    /* 10BA18 0020AA98 14000424 */  addiu      $a0, $zero, 0x14
    /* 10BA1C 0020AA9C 6800A38F */  lw         $v1, 0x68($sp)
    /* 10BA20 0020AAA0 18104400 */  mult       $v0, $v0, $a0
    /* 10BA24 0020AAA4 21800202 */  addu       $s0, $s0, $v0
    /* 10BA28 0020AAA8 08001026 */  addiu      $s0, $s0, 0x8
    /* 10BA2C 0020AAAC F80030AE */  sw         $s0, 0xF8($s1)
    /* 10BA30 0020AAB0 1000628C */  lw         $v0, 0x10($v1)
    /* 10BA34 0020AAB4 21186200 */  addu       $v1, $v1, $v0
.align 2
  .L0020AAB8:
    /* 10BA38 0020AAB8 F40023AE */  sw         $v1, 0xF4($s1)
.align 2
  .L0020AABC:
    /* 10BA3C 0020AABC 90D35026 */  addiu      $s0, $s2, -0x2C70
    /* 10BA40 0020AAC0 D800048E */  lw         $a0, 0xD8($s0)
.align 2
  .L0020AAC4:
    /* 10BA44 0020AAC4 F400058E */  lw         $a1, 0xF4($s0)
    /* 10BA48 0020AAC8 528F040C */  jal        func_00123D48
    /* 10BA4C 0020AACC F800068E */   lw        $a2, 0xF8($s0)
    /* 10BA50 0020AAD0 34010010 */  b          .L0020AFA4
    /* 10BA54 0020AAD4 00000000 */   nop
.align 2
  .L0020AAD8:
    /* 10BA58 0020AAD8 B8030010 */  b          .L0020B9BC
    /* 10BA5C 0020AADC 0A000224 */   addiu     $v0, $zero, 0xA
    /* 10BA60 0020AAE0 90D35026 */  addiu      $s0, $s2, -0x2C70
    /* 10BA64 0020AAE4 C400038E */  lw         $v1, 0xC4($s0)
    /* 10BA68 0020AAE8 F800028E */  lw         $v0, 0xF8($s0)
    /* 10BA6C 0020AAEC 05006254 */  bnel       $v1, $v0, .L0020AB04
    /* 10BA70 0020AAF0 CC00028E */   lw        $v0, 0xCC($s0)
    /* 10BA74 0020AAF4 848E040C */  jal        func_00123A10
    /* 10BA78 0020AAF8 D800048E */   lw        $a0, 0xD8($s0)
    /* 10BA7C 0020AAFC 29010010 */  b          .L0020AFA4
    /* 10BA80 0020AB00 00000000 */   nop
.align 2
  .L0020AB04:
    /* 10BA84 0020AB04 F00002AE */  sw         $v0, 0xF0($s0)
    /* 10BA88 0020AB08 E4026104 */  bgez       $v1, .L0020B69C
    /* 10BA8C 0020AB0C 0B000224 */   addiu     $v0, $zero, 0xB
    /* 10BA90 0020AB10 FCFF0224 */  addiu      $v0, $zero, -0x4
    /* 10BA94 0020AB14 03006214 */  bne        $v1, $v0, .L0020AB24
    /* 10BA98 0020AB18 FDFF0224 */   addiu     $v0, $zero, -0x3
    /* 10BA9C 0020AB1C 08000010 */  b          .L0020AB40
    /* 10BAA0 0020AB20 08000224 */   addiu     $v0, $zero, 0x8
.align 2
  .L0020AB24:
    /* 10BAA4 0020AB24 03006214 */  bne        $v1, $v0, .L0020AB34
    /* 10BAA8 0020AB28 FEFF0224 */   addiu     $v0, $zero, -0x2
    /* 10BAAC 0020AB2C 04000010 */  b          .L0020AB40
    /* 10BAB0 0020AB30 07000224 */   addiu     $v0, $zero, 0x7
.align 2
  .L0020AB34:
    /* 10BAB4 0020AB34 02006214 */  bne        $v1, $v0, .L0020AB40
    /* 10BAB8 0020AB38 0D000224 */   addiu     $v0, $zero, 0xD
    /* 10BABC 0020AB3C 06000224 */  addiu      $v0, $zero, 0x6
.align 2
  .L0020AB40:
    /* 10BAC0 0020AB40 95030010 */  b          .L0020B998
    /* 10BAC4 0020AB44 EC0002AE */   sw        $v0, 0xEC($s0)
    /* 10BAC8 0020AB48 90D34426 */  addiu      $a0, $s2, -0x2C70
    /* 10BACC 0020AB4C C400828C */  lw         $v0, 0xC4($a0)
    /* 10BAD0 0020AB50 05004054 */  bnel       $v0, $zero, .L0020AB68
    /* 10BAD4 0020AB54 CC00838C */   lw        $v1, 0xCC($a0)
    /* 10BAD8 0020AB58 E000828C */  lw         $v0, 0xE0($a0)
    /* 10BADC 0020AB5C 01004224 */  addiu      $v0, $v0, 0x1
    /* 10BAE0 0020AB60 11030010 */  b          .L0020B7A8
    /* 10BAE4 0020AB64 E00082AC */   sw        $v0, 0xE0($a0)
.align 2
  .L0020AB68:
    /* 10BAE8 0020AB68 0C000224 */  addiu      $v0, $zero, 0xC
    /* 10BAEC 0020AB6C EC0082AC */  sw         $v0, 0xEC($a0)
    /* 10BAF0 0020AB70 F00083AC */  sw         $v1, 0xF0($a0)
    /* 10BAF4 0020AB74 CC0080AC */  sw         $zero, 0xCC($a0)
    /* 10BAF8 0020AB78 0B030010 */  b          .L0020B7A8
    /* 10BAFC 0020AB7C DC0080AC */   sw        $zero, 0xDC($a0)
    /* 10BB00 0020AB80 90D34526 */  addiu      $a1, $s2, -0x2C70
    /* 10BB04 0020AB84 C0000224 */  addiu      $v0, $zero, 0xC0
    /* 10BB08 0020AB88 CC00A38C */  lw         $v1, 0xCC($a1)
    /* 10BB0C 0020AB8C 1400A424 */  addiu      $a0, $a1, 0x14
    /* 10BB10 0020AB90 18186200 */  mult       $v1, $v1, $v0
    /* 10BB14 0020AB94 21186400 */  addu       $v1, $v1, $a0
    /* 10BB18 0020AB98 0000628C */  lw         $v0, 0x0($v1)
    /* 10BB1C 0020AB9C 01004224 */  addiu      $v0, $v0, 0x1
    /* 10BB20 0020ABA0 000062AC */  sw         $v0, 0x0($v1)
    /* 10BB24 0020ABA4 05004228 */  slti       $v0, $v0, 0x5
    /* 10BB28 0020ABA8 03004050 */  beql       $v0, $zero, .L0020ABB8
    /* 10BB2C 0020ABAC E000A28C */   lw        $v0, 0xE0($a1)
    /* 10BB30 0020ABB0 08010010 */  b          .L0020AFD4
    /* 10BB34 0020ABB4 0D000224 */   addiu     $v0, $zero, 0xD
.align 2
  .L0020ABB8:
    /* 10BB38 0020ABB8 06010010 */  b          .L0020AFD4
    /* 10BB3C 0020ABBC 01004224 */   addiu     $v0, $v0, 0x1
    /* 10BB40 0020ABC0 90D34226 */  addiu      $v0, $s2, -0x2C70
    /* 10BB44 0020ABC4 FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 10BB48 0020ABC8 140043AC */  sw         $v1, 0x14($v0)
    /* 10BB4C 0020ABCC 74030010 */  b          .L0020B9A0
    /* 10BB50 0020ABD0 B40040AC */   sw        $zero, 0xB4($v0)
    /* 10BB54 0020ABD4 90D34326 */  addiu      $v1, $s2, -0x2C70
    /* 10BB58 0020ABD8 0C000224 */  addiu      $v0, $zero, 0xC
    /* 10BB5C 0020ABDC CC00648C */  lw         $a0, 0xCC($v1)
    /* 10BB60 0020ABE0 C0000624 */  addiu      $a2, $zero, 0xC0
    /* 10BB64 0020ABE4 DC0062AC */  sw         $v0, 0xDC($v1)
    /* 10BB68 0020ABE8 FEFF0524 */  addiu      $a1, $zero, -0x2
    /* 10BB6C 0020ABEC 18108600 */  mult       $v0, $a0, $a2
    /* 10BB70 0020ABF0 E00060AC */  sw         $zero, 0xE0($v1)
    /* 10BB74 0020ABF4 21204300 */  addu       $a0, $v0, $v1
    /* 10BB78 0020ABF8 140085AC */  sw         $a1, 0x14($a0)
    /* 10BB7C 0020ABFC 90D34226 */  addiu      $v0, $s2, -0x2C70
    /* 10BB80 0020AC00 E000448C */  lw         $a0, 0xE0($v0)
    /* 10BB84 0020AC04 0500832C */  sltiu      $v1, $a0, 0x5
    /* 10BB88 0020AC08 71036010 */  beqz       $v1, .L0020B9D0
    /* 10BB8C 0020AC0C 1F00023C */   lui       $v0, %hi(jtbl_001E8610)
    /* 10BB90 0020AC10 80180400 */  sll        $v1, $a0, 2
    /* 10BB94 0020AC14 10864224 */  addiu      $v0, $v0, %lo(jtbl_001E8610)
    /* 10BB98 0020AC18 21186200 */  addu       $v1, $v1, $v0
    /* 10BB9C 0020AC1C 0000648C */  lw         $a0, 0x0($v1)
    /* 10BBA0 0020AC20 08008000 */  jr         $a0
    /* 10BBA4 0020AC24 00000000 */   nop
    /* 10BBA8 0020AC28 90D35026 */  addiu      $s0, $s2, -0x2C70
    /* 10BBAC 0020AC2C C0000324 */  addiu      $v1, $zero, 0xC0
    /* 10BBB0 0020AC30 CC00028E */  lw         $v0, 0xCC($s0)
    /* 10BBB4 0020AC34 1400063C */  lui        $a2, %hi(D_0013D2E8)
    /* 10BBB8 0020AC38 1A00093C */  lui        $t1, %hi(D_001A0980)
    /* 10BBBC 0020AC3C E8D2C624 */  addiu      $a2, $a2, %lo(D_0013D2E8)
    /* 10BBC0 0020AC40 18104300 */  mult       $v0, $v0, $v1
    /* 10BBC4 0020AC44 80092925 */  addiu      $t1, $t1, %lo(D_001A0980)
    /* 10BBC8 0020AC48 3B000010 */  b          .L0020AD38
    /* 10BBCC 0020AC4C 2D380000 */   daddu     $a3, $zero, $zero
    /* 10BBD0 0020AC50 90D35026 */  addiu      $s0, $s2, -0x2C70
    /* 10BBD4 0020AC54 01000224 */  addiu      $v0, $zero, 0x1
    /* 10BBD8 0020AC58 C400048E */  lw         $a0, 0xC4($s0)
    /* 10BBDC 0020AC5C 1A008214 */  bne        $a0, $v0, .L0020ACC8
    /* 10BBE0 0020AC60 1600053C */   lui       $a1, %hi(D_0015FF68)
    /* 10BBE4 0020AC64 1400063C */  lui        $a2, %hi(D_0013D2D0)
    /* 10BBE8 0020AC68 1A00073C */  lui        $a3, %hi(D_001A09A0)
    /* 10BBEC 0020AC6C 2D20A003 */  daddu      $a0, $sp, $zero
    /* 10BBF0 0020AC70 D0D2C624 */  addiu      $a2, $a2, %lo(D_0013D2D0)
    /* 10BBF4 0020AC74 A009E724 */  addiu      $a3, $a3, %lo(D_001A09A0)
    /* 10BBF8 0020AC78 9258040C */  jal        func_00116248
    /* 10BBFC 0020AC7C 68FFA524 */   addiu     $a1, $a1, %lo(D_0015FF68)
    /* 10BC00 0020AC80 1600043C */  lui        $a0, %hi(D_0015FF70)
    /* 10BC04 0020AC84 2D28A003 */  daddu      $a1, $sp, $zero
    /* 10BC08 0020AC88 CCA5070C */  jal        func_001E9730
    /* 10BC0C 0020AC8C 70FF8424 */   addiu     $a0, $a0, %lo(D_0015FF70)
    /* 10BC10 0020AC90 CC00028E */  lw         $v0, 0xCC($s0)
    /* 10BC14 0020AC94 C0000324 */  addiu      $v1, $zero, 0xC0
    /* 10BC18 0020AC98 2D30A003 */  daddu      $a2, $sp, $zero
    /* 10BC1C 0020AC9C 18104300 */  mult       $v0, $v0, $v1
    /* 10BC20 0020ACA0 21380202 */  addu       $a3, $s0, $v0
    /* 10BC24 0020ACA4 21105000 */  addu       $v0, $v0, $s0
    /* 10BC28 0020ACA8 0400E58C */  lw         $a1, 0x4($a3)
    /* 10BC2C 0020ACAC 0491040C */  jal        func_00124410
    /* 10BC30 0020ACB0 0000448C */   lw        $a0, 0x0($v0)
.align 2
  .L0020ACB4:
    /* 10BC34 0020ACB4 47034014 */  bnez       $v0, .L0020B9D4
    /* 10BC38 0020ACB8 2001BF7B */   lq        $ra, 0x120($sp)
    /* 10BC3C 0020ACBC 02000224 */  addiu      $v0, $zero, 0x2
    /* 10BC40 0020ACC0 44030010 */  b          .L0020B9D4
    /* 10BC44 0020ACC4 E00002AE */   sw        $v0, 0xE0($s0)
.align 2
  .L0020ACC8:
    /* 10BC48 0020ACC8 04008054 */  bnel       $a0, $zero, .L0020ACDC
    /* 10BC4C 0020ACCC CC00028E */   lw        $v0, 0xCC($s0)
    /* 10BC50 0020ACD0 03000224 */  addiu      $v0, $zero, 0x3
.align 2
  .L0020ACD4:
    /* 10BC54 0020ACD4 B4020010 */  b          .L0020B7A8
    /* 10BC58 0020ACD8 E00002AE */   sw        $v0, 0xE0($s0)
.align 2
  .L0020ACDC:
    /* 10BC5C 0020ACDC FBFF0324 */  addiu      $v1, $zero, -0x5
    /* 10BC60 0020ACE0 F00002AE */  sw         $v0, 0xF0($s0)
    /* 10BC64 0020ACE4 09008310 */  beq        $a0, $v1, .L0020AD0C
    /* 10BC68 0020ACE8 10000224 */   addiu     $v0, $zero, 0x10
    /* 10BC6C 0020ACEC FCFF0224 */  addiu      $v0, $zero, -0x4
    /* 10BC70 0020ACF0 03008214 */  bne        $a0, $v0, .L0020AD00
    /* 10BC74 0020ACF4 FEFF0224 */   addiu     $v0, $zero, -0x2
    /* 10BC78 0020ACF8 04000010 */  b          .L0020AD0C
    /* 10BC7C 0020ACFC 0F000224 */   addiu     $v0, $zero, 0xF
.align 2
  .L0020AD00:
    /* 10BC80 0020AD00 02008214 */  bne        $a0, $v0, .L0020AD0C
    /* 10BC84 0020AD04 12000224 */   addiu     $v0, $zero, 0x12
    /* 10BC88 0020AD08 0E000224 */  addiu      $v0, $zero, 0xE
.align 2
  .L0020AD0C:
    /* 10BC8C 0020AD0C E9010010 */  b          .L0020B4B4
    /* 10BC90 0020AD10 EC0002AE */   sw        $v0, 0xEC($s0)
    /* 10BC94 0020AD14 90D35026 */  addiu      $s0, $s2, -0x2C70
    /* 10BC98 0020AD18 C0000324 */  addiu      $v1, $zero, 0xC0
    /* 10BC9C 0020AD1C CC00028E */  lw         $v0, 0xCC($s0)
    /* 10BCA0 0020AD20 1400063C */  lui        $a2, %hi(D_0013D2E8)
    /* 10BCA4 0020AD24 1A00093C */  lui        $t1, %hi(D_001A0980)
    /* 10BCA8 0020AD28 E8D2C624 */  addiu      $a2, $a2, %lo(D_0013D2E8)
    /* 10BCAC 0020AD2C 18104300 */  mult       $v0, $v0, $v1
    /* 10BCB0 0020AD30 80092925 */  addiu      $t1, $t1, %lo(D_001A0980)
    /* 10BCB4 0020AD34 01000724 */  addiu      $a3, $zero, 0x1
.align 2
  .L0020AD38:
    /* 10BCB8 0020AD38 01000824 */  addiu      $t0, $zero, 0x1
    /* 10BCBC 0020AD3C 21180202 */  addu       $v1, $s0, $v0
    /* 10BCC0 0020AD40 21105000 */  addu       $v0, $v0, $s0
    /* 10BCC4 0020AD44 0400658C */  lw         $a1, 0x4($v1)
    /* 10BCC8 0020AD48 7C90040C */  jal        func_001241F0
    /* 10BCCC 0020AD4C 0000448C */   lw        $a0, 0x0($v0)
    /* 10BCD0 0020AD50 20034014 */  bnez       $v0, .L0020B9D4
    /* 10BCD4 0020AD54 2001BF7B */   lq        $ra, 0x120($sp)
    /* 10BCD8 0020AD58 01000224 */  addiu      $v0, $zero, 0x1
    /* 10BCDC 0020AD5C 1D030010 */  b          .L0020B9D4
    /* 10BCE0 0020AD60 E00002AE */   sw        $v0, 0xE0($s0)
    /* 10BCE4 0020AD64 90D35026 */  addiu      $s0, $s2, -0x2C70
    /* 10BCE8 0020AD68 C0000424 */  addiu      $a0, $zero, 0xC0
    /* 10BCEC 0020AD6C CC00028E */  lw         $v0, 0xCC($s0)
    /* 10BCF0 0020AD70 1400033C */  lui        $v1, %hi(D_0013D2D0)
    /* 10BCF4 0020AD74 D0D27124 */  addiu      $s1, $v1, %lo(D_0013D2D0)
    /* 10BCF8 0020AD78 18104400 */  mult       $v0, $v0, $a0
    /* 10BCFC 0020AD7C 2D302002 */  daddu      $a2, $s1, $zero
    /* 10BD00 0020AD80 21180202 */  addu       $v1, $s0, $v0
    /* 10BD04 0020AD84 21105000 */  addu       $v0, $v0, $s0
    /* 10BD08 0020AD88 0400658C */  lw         $a1, 0x4($v1)
    /* 10BD0C 0020AD8C 0491040C */  jal        func_00124410
    /* 10BD10 0020AD90 0000448C */   lw        $a0, 0x0($v0)
    /* 10BD14 0020AD94 0F034014 */  bnez       $v0, .L0020B9D4
    /* 10BD18 0020AD98 2001BF7B */   lq        $ra, 0x120($sp)
    /* 10BD1C 0020AD9C 1F00043C */  lui        $a0, %hi(D_001E8518)
    /* 10BD20 0020ADA0 2D282002 */  daddu      $a1, $s1, $zero
    /* 10BD24 0020ADA4 CCA5070C */  jal        func_001E9730
    /* 10BD28 0020ADA8 18858424 */   addiu     $a0, $a0, %lo(D_001E8518)
    /* 10BD2C 0020ADAC 04000224 */  addiu      $v0, $zero, 0x4
.align 2
  .L0020ADB0:
    /* 10BD30 0020ADB0 07030010 */  b          .L0020B9D0
    /* 10BD34 0020ADB4 E00002AE */   sw        $v0, 0xE0($s0)
    /* 10BD38 0020ADB8 90D34526 */  addiu      $a1, $s2, -0x2C70
    /* 10BD3C 0020ADBC C400A48C */  lw         $a0, 0xC4($a1)
    /* 10BD40 0020ADC0 F5028010 */  beqz       $a0, .L0020B998
    /* 10BD44 0020ADC4 FAFF0324 */   addiu     $v1, $zero, -0x6
    /* 10BD48 0020ADC8 CC00A28C */  lw         $v0, 0xCC($a1)
    /* 10BD4C 0020ADCC F000A2AC */  sw         $v0, 0xF0($a1)
    /* 10BD50 0020ADD0 0D008310 */  beq        $a0, $v1, .L0020AE08
    /* 10BD54 0020ADD4 11000224 */   addiu     $v0, $zero, 0x11
    /* 10BD58 0020ADD8 FBFF0224 */  addiu      $v0, $zero, -0x5
    /* 10BD5C 0020ADDC 03008214 */  bne        $a0, $v0, .L0020ADEC
    /* 10BD60 0020ADE0 FCFF0224 */   addiu     $v0, $zero, -0x4
    /* 10BD64 0020ADE4 08000010 */  b          .L0020AE08
    /* 10BD68 0020ADE8 10000224 */   addiu     $v0, $zero, 0x10
.align 2
  .L0020ADEC:
    /* 10BD6C 0020ADEC 03008214 */  bne        $a0, $v0, .L0020ADFC
    /* 10BD70 0020ADF0 FEFF0224 */   addiu     $v0, $zero, -0x2
    /* 10BD74 0020ADF4 04000010 */  b          .L0020AE08
    /* 10BD78 0020ADF8 0F000224 */   addiu     $v0, $zero, 0xF
.align 2
  .L0020ADFC:
    /* 10BD7C 0020ADFC 02008214 */  bne        $a0, $v0, .L0020AE08
    /* 10BD80 0020AE00 12000224 */   addiu     $v0, $zero, 0x12
    /* 10BD84 0020AE04 0E000224 */  addiu      $v0, $zero, 0xE
.align 2
  .L0020AE08:
    /* 10BD88 0020AE08 E3020010 */  b          .L0020B998
    /* 10BD8C 0020AE0C EC00A2AC */   sw        $v0, 0xEC($a1)
    /* 10BD90 0020AE10 90D34426 */  addiu      $a0, $s2, -0x2C70
    /* 10BD94 0020AE14 16000224 */  addiu      $v0, $zero, 0x16
    /* 10BD98 0020AE18 CC00838C */  lw         $v1, 0xCC($a0)
    /* 10BD9C 0020AE1C C0000624 */  addiu      $a2, $zero, 0xC0
    /* 10BDA0 0020AE20 DC0082AC */  sw         $v0, 0xDC($a0)
    /* 10BDA4 0020AE24 FFFF0524 */  addiu      $a1, $zero, -0x1
    /* 10BDA8 0020AE28 18106600 */  mult       $v0, $v1, $a2
    /* 10BDAC 0020AE2C 21184400 */  addu       $v1, $v0, $a0
    /* 10BDB0 0020AE30 180065AC */  sw         $a1, 0x18($v1)
    /* 10BDB4 0020AE34 E6020010 */  b          .L0020B9D0
    /* 10BDB8 0020AE38 D00080AC */   sw        $zero, 0xD0($a0)
    /* 10BDBC 0020AE3C 90D34726 */  addiu      $a3, $s2, -0x2C70
    /* 10BDC0 0020AE40 C0000624 */  addiu      $a2, $zero, 0xC0
    /* 10BDC4 0020AE44 CC00E48C */  lw         $a0, 0xCC($a3)
    /* 10BDC8 0020AE48 1800E524 */  addiu      $a1, $a3, 0x18
    /* 10BDCC 0020AE4C 18208600 */  mult       $a0, $a0, $a2
    /* 10BDD0 0020AE50 21208500 */  addu       $a0, $a0, $a1
    /* 10BDD4 0020AE54 0000828C */  lw         $v0, 0x0($a0)
    /* 10BDD8 0020AE58 01004224 */  addiu      $v0, $v0, 0x1
    /* 10BDDC 0020AE5C 000082AC */  sw         $v0, 0x0($a0)
    /* 10BDE0 0020AE60 CC00E38C */  lw         $v1, 0xCC($a3)
    /* 10BDE4 0020AE64 18106600 */  mult       $v0, $v1, $a2
    /* 10BDE8 0020AE68 21184500 */  addu       $v1, $v0, $a1
    /* 10BDEC 0020AE6C 0000628C */  lw         $v0, 0x0($v1)
    /* 10BDF0 0020AE70 05004228 */  slti       $v0, $v0, 0x5
    /* 10BDF4 0020AE74 04004010 */  beqz       $v0, .L0020AE88
    /* 10BDF8 0020AE78 17000224 */   addiu     $v0, $zero, 0x17
    /* 10BDFC 0020AE7C E000E0AC */  sw         $zero, 0xE0($a3)
    /* 10BE00 0020AE80 D3020010 */  b          .L0020B9D0
    /* 10BE04 0020AE84 DC00E2AC */   sw        $v0, 0xDC($a3)
.align 2
  .L0020AE88:
    /* 10BE08 0020AE88 B000E0AC */  sw         $zero, 0xB0($a3)
    /* 10BE0C 0020AE8C DC00E0AC */  sw         $zero, 0xDC($a3)
    /* 10BE10 0020AE90 CC00E0AC */  sw         $zero, 0xCC($a3)
    /* 10BE14 0020AE94 CE020010 */  b          .L0020B9D0
    /* 10BE18 0020AE98 D400E0AC */   sw        $zero, 0xD4($a3)
    /* 10BE1C 0020AE9C 90D34526 */  addiu      $a1, $s2, -0x2C70
    /* 10BE20 0020AEA0 C0000224 */  addiu      $v0, $zero, 0xC0
    /* 10BE24 0020AEA4 CC00A38C */  lw         $v1, 0xCC($a1)
    /* 10BE28 0020AEA8 18206200 */  mult       $a0, $v1, $v0
    /* 10BE2C 0020AEAC 21188500 */  addu       $v1, $a0, $a1
    /* 10BE30 0020AEB0 1400648C */  lw         $a0, 0x14($v1)
    /* 10BE34 0020AEB4 0B008104 */  bgez       $a0, .L0020AEE4
    /* 10BE38 0020AEB8 0E000224 */   addiu     $v0, $zero, 0xE
    /* 10BE3C 0020AEBC 13000224 */  addiu      $v0, $zero, 0x13
    /* 10BE40 0020AEC0 B000A48C */  lw         $a0, 0xB0($a1)
    /* 10BE44 0020AEC4 EC00A2AC */  sw         $v0, 0xEC($a1)
    /* 10BE48 0020AEC8 02000324 */  addiu      $v1, $zero, 0x2
    /* 10BE4C 0020AECC DC00A0AC */  sw         $zero, 0xDC($a1)
    /* 10BE50 0020AED0 CC00A0AC */  sw         $zero, 0xCC($a1)
    /* 10BE54 0020AED4 BE028314 */  bne        $a0, $v1, .L0020B9D0
    /* 10BE58 0020AED8 D400A0AC */   sw        $zero, 0xD4($a1)
    /* 10BE5C 0020AEDC BC020010 */  b          .L0020B9D0
    /* 10BE60 0020AEE0 B000A0AC */   sw        $zero, 0xB0($a1)
.align 2
  .L0020AEE4:
    /* 10BE64 0020AEE4 D000A0AC */  sw         $zero, 0xD0($a1)
    /* 10BE68 0020AEE8 DC00A2AC */  sw         $v0, 0xDC($a1)
    /* 10BE6C 0020AEEC E000A0AC */  sw         $zero, 0xE0($a1)
    /* 10BE70 0020AEF0 90D34226 */  addiu      $v0, $s2, -0x2C70
    /* 10BE74 0020AEF4 E000448C */  lw         $a0, 0xE0($v0)
    /* 10BE78 0020AEF8 0900832C */  sltiu      $v1, $a0, 0x9
    /* 10BE7C 0020AEFC B4026010 */  beqz       $v1, .L0020B9D0
    /* 10BE80 0020AF00 1F00023C */   lui       $v0, %hi(jtbl_001E8630)
    /* 10BE84 0020AF04 80180400 */  sll        $v1, $a0, 2
    /* 10BE88 0020AF08 30864224 */  addiu      $v0, $v0, %lo(jtbl_001E8630)
    /* 10BE8C 0020AF0C 21186200 */  addu       $v1, $v1, $v0
    /* 10BE90 0020AF10 0000648C */  lw         $a0, 0x0($v1)
    /* 10BE94 0020AF14 08008000 */  jr         $a0
    /* 10BE98 0020AF18 00000000 */   nop
    /* 10BE9C 0020AF1C 90D34626 */  addiu      $a2, $s2, -0x2C70
    /* 10BEA0 0020AF20 17000324 */  addiu      $v1, $zero, 0x17
    /* 10BEA4 0020AF24 DC00C28C */  lw         $v0, 0xDC($a2)
    /* 10BEA8 0020AF28 0B004314 */  bne        $v0, $v1, .L0020AF58
    /* 10BEAC 0020AF2C CC00C28C */   lw        $v0, 0xCC($a2)
    /* 10BEB0 0020AF30 C0000324 */  addiu      $v1, $zero, 0xC0
    /* 10BEB4 0020AF34 1400053C */  lui        $a1, %hi(D_0013D370)
    /* 10BEB8 0020AF38 2D20A003 */  daddu      $a0, $sp, $zero
    /* 10BEBC 0020AF3C 18384300 */  mult       $a3, $v0, $v1
    /* 10BEC0 0020AF40 70D3A524 */  addiu      $a1, $a1, %lo(D_0013D370)
    /* 10BEC4 0020AF44 2110E600 */  addu       $v0, $a3, $a2
    /* 10BEC8 0020AF48 9258040C */  jal        func_00116248
    /* 10BECC 0020AF4C 1800468C */   lw        $a2, 0x18($v0)
    /* 10BED0 0020AF50 0A000010 */  b          .L0020AF7C
    /* 10BED4 0020AF54 90D35026 */   addiu     $s0, $s2, -0x2C70
.align 2
  .L0020AF58:
    /* 10BED8 0020AF58 C0000324 */  addiu      $v1, $zero, 0xC0
    /* 10BEDC 0020AF5C 1400053C */  lui        $a1, %hi(D_0013D370)
    /* 10BEE0 0020AF60 2D20A003 */  daddu      $a0, $sp, $zero
    /* 10BEE4 0020AF64 18384300 */  mult       $a3, $v0, $v1
    /* 10BEE8 0020AF68 70D3A524 */  addiu      $a1, $a1, %lo(D_0013D370)
    /* 10BEEC 0020AF6C 2110E600 */  addu       $v0, $a3, $a2
    /* 10BEF0 0020AF70 9258040C */  jal        func_00116248
    /* 10BEF4 0020AF74 1400468C */   lw        $a2, 0x14($v0)
    /* 10BEF8 0020AF78 90D35026 */  addiu      $s0, $s2, -0x2C70
.align 2
  .L0020AF7C:
    /* 10BEFC 0020AF7C C0000424 */  addiu      $a0, $zero, 0xC0
    /* 10BF00 0020AF80 CC00028E */  lw         $v0, 0xCC($s0)
    /* 10BF04 0020AF84 2D30A003 */  daddu      $a2, $sp, $zero
    /* 10BF08 0020AF88 01000724 */  addiu      $a3, $zero, 0x1
    /* 10BF0C 0020AF8C 18104400 */  mult       $v0, $v0, $a0
    /* 10BF10 0020AF90 21180202 */  addu       $v1, $s0, $v0
    /* 10BF14 0020AF94 21105000 */  addu       $v0, $v0, $s0
    /* 10BF18 0020AF98 0400658C */  lw         $a1, 0x4($v1)
    /* 10BF1C 0020AF9C 2C8E040C */  jal        func_001238B0
    /* 10BF20 0020AFA0 0000448C */   lw        $a0, 0x0($v0)
.align 2
  .L0020AFA4:
    /* 10BF24 0020AFA4 8B024014 */  bnez       $v0, .L0020B9D4
    /* 10BF28 0020AFA8 2001BF7B */   lq        $ra, 0x120($sp)
    /* 10BF2C 0020AFAC E000028E */  lw         $v0, 0xE0($s0)
.align 2
  .L0020AFB0:
    /* 10BF30 0020AFB0 01004224 */  addiu      $v0, $v0, 0x1
    /* 10BF34 0020AFB4 86020010 */  b          .L0020B9D0
    /* 10BF38 0020AFB8 E00002AE */   sw        $v0, 0xE0($s0)
    /* 10BF3C 0020AFBC 90D34526 */  addiu      $a1, $s2, -0x2C70
    /* 10BF40 0020AFC0 C400A48C */  lw         $a0, 0xC4($a1)
    /* 10BF44 0020AFC4 05008204 */  bltzl      $a0, .L0020AFDC
    /* 10BF48 0020AFC8 CC00A28C */   lw        $v0, 0xCC($a1)
    /* 10BF4C 0020AFCC 02000224 */  addiu      $v0, $zero, 0x2
.align 2
  .L0020AFD0:
    /* 10BF50 0020AFD0 D800A4AC */  sw         $a0, 0xD8($a1)
.align 2
  .L0020AFD4:
    /* 10BF54 0020AFD4 F4010010 */  b          .L0020B7A8
    /* 10BF58 0020AFD8 E000A2AC */   sw        $v0, 0xE0($a1)
.align 2
  .L0020AFDC:
    /* 10BF5C 0020AFDC F9FF0324 */  addiu      $v1, $zero, -0x7
    /* 10BF60 0020AFE0 F000A2AC */  sw         $v0, 0xF0($a1)
    /* 10BF64 0020AFE4 60FD8310 */  beq        $a0, $v1, .L0020A568
    /* 10BF68 0020AFE8 14000224 */   addiu     $v0, $zero, 0x14
    /* 10BF6C 0020AFEC FBFF0224 */  addiu      $v0, $zero, -0x5
    /* 10BF70 0020AFF0 03008214 */  bne        $a0, $v0, .L0020B000
    /* 10BF74 0020AFF4 FCFF0224 */   addiu     $v0, $zero, -0x4
    /* 10BF78 0020AFF8 5BFD0010 */  b          .L0020A568
    /* 10BF7C 0020AFFC 15000224 */   addiu     $v0, $zero, 0x15
.align 2
  .L0020B000:
    /* 10BF80 0020B000 03008214 */  bne        $a0, $v0, .L0020B010
    /* 10BF84 0020B004 FDFF0224 */   addiu     $v0, $zero, -0x3
    /* 10BF88 0020B008 57FD0010 */  b          .L0020A568
    /* 10BF8C 0020B00C 16000224 */   addiu     $v0, $zero, 0x16
.align 2
  .L0020B010:
    /* 10BF90 0020B010 03008214 */  bne        $a0, $v0, .L0020B020
    /* 10BF94 0020B014 FEFF0224 */   addiu     $v0, $zero, -0x2
    /* 10BF98 0020B018 53FD0010 */  b          .L0020A568
    /* 10BF9C 0020B01C 17000224 */   addiu     $v0, $zero, 0x17
.align 2
  .L0020B020:
    /* 10BFA0 0020B020 51FD8214 */  bne        $a0, $v0, .L0020A568
    /* 10BFA4 0020B024 1C000224 */   addiu     $v0, $zero, 0x1C
    /* 10BFA8 0020B028 4FFD0010 */  b          .L0020A568
    /* 10BFAC 0020B02C 18000224 */   addiu     $v0, $zero, 0x18
    /* 10BFB0 0020B030 90D35026 */  addiu      $s0, $s2, -0x2C70
    /* 10BFB4 0020B034 C0000324 */  addiu      $v1, $zero, 0xC0
    /* 10BFB8 0020B038 CC00058E */  lw         $a1, 0xCC($s0)
    /* 10BFBC 0020B03C 08000224 */  addiu      $v0, $zero, 0x8
    /* 10BFC0 0020B040 B8000726 */  addiu      $a3, $s0, 0xB8
    /* 10BFC4 0020B044 D800048E */  lw         $a0, 0xD8($s0)
    /* 10BFC8 0020B048 1828A300 */  mult       $a1, $a1, $v1
    /* 10BFCC 0020B04C F80002AE */  sw         $v0, 0xF8($s0)
    /* 10BFD0 0020B050 08000624 */  addiu      $a2, $zero, 0x8
    /* 10BFD4 0020B054 0C8F040C */  jal        func_00123C30
    /* 10BFD8 0020B058 2128A700 */   addu      $a1, $a1, $a3
    /* 10BFDC 0020B05C 1E010010 */  b          .L0020B4D8
    /* 10BFE0 0020B060 00000000 */   nop
    /* 10BFE4 0020B064 90D35026 */  addiu      $s0, $s2, -0x2C70
    /* 10BFE8 0020B068 C400038E */  lw         $v1, 0xC4($s0)
    /* 10BFEC 0020B06C F800028E */  lw         $v0, 0xF8($s0)
    /* 10BFF0 0020B070 05006254 */  bnel       $v1, $v0, .L0020B088
    /* 10BFF4 0020B074 CC00028E */   lw        $v0, 0xCC($s0)
    /* 10BFF8 0020B078 04000224 */  addiu      $v0, $zero, 0x4
    /* 10BFFC 0020B07C D40000AE */  sw         $zero, 0xD4($s0)
    /* 10C000 0020B080 53020010 */  b          .L0020B9D0
    /* 10C004 0020B084 E00002AE */   sw        $v0, 0xE0($s0)
.align 2
  .L0020B088:
    /* 10C008 0020B088 88006104 */  bgez       $v1, .L0020B2AC
    /* 10C00C 0020B08C F00002AE */   sw        $v0, 0xF0($s0)
    /* 10C010 0020B090 FBFF0224 */  addiu      $v0, $zero, -0x5
    /* 10C014 0020B094 03006214 */  bne        $v1, $v0, .L0020B0A4
    /* 10C018 0020B098 FCFF0224 */   addiu     $v0, $zero, -0x4
    /* 10C01C 0020B09C A1000010 */  b          .L0020B324
    /* 10C020 0020B0A0 15000224 */   addiu     $v0, $zero, 0x15
.align 2
  .L0020B0A4:
    /* 10C024 0020B0A4 03006214 */  bne        $v1, $v0, .L0020B0B4
    /* 10C028 0020B0A8 FDFF0224 */   addiu     $v0, $zero, -0x3
    /* 10C02C 0020B0AC 9D000010 */  b          .L0020B324
    /* 10C030 0020B0B0 19000224 */   addiu     $v0, $zero, 0x19
.align 2
  .L0020B0B4:
    /* 10C034 0020B0B4 03006214 */  bne        $v1, $v0, .L0020B0C4
    /* 10C038 0020B0B8 FEFF0224 */   addiu     $v0, $zero, -0x2
    /* 10C03C 0020B0BC 99000010 */  b          .L0020B324
    /* 10C040 0020B0C0 1A000224 */   addiu     $v0, $zero, 0x1A
.align 2
  .L0020B0C4:
    /* 10C044 0020B0C4 97006214 */  bne        $v1, $v0, .L0020B324
    /* 10C048 0020B0C8 1C000224 */   addiu     $v0, $zero, 0x1C
    /* 10C04C 0020B0CC 95000010 */  b          .L0020B324
    /* 10C050 0020B0D0 18000224 */   addiu     $v0, $zero, 0x18
    /* 10C054 0020B0D4 90D35026 */  addiu      $s0, $s2, -0x2C70
    /* 10C058 0020B0D8 C0000424 */  addiu      $a0, $zero, 0xC0
    /* 10C05C 0020B0DC CC00028E */  lw         $v0, 0xCC($s0)
    /* 10C060 0020B0E0 18184400 */  mult       $v1, $v0, $a0
    /* 10C064 0020B0E4 21107000 */  addu       $v0, $v1, $s0
    /* 10C068 0020B0E8 B800438C */  lw         $v1, 0xB8($v0)
    /* 10C06C 0020B0EC 01186428 */  slti       $a0, $v1, 0x1801
    /* 10C070 0020B0F0 03008014 */  bnez       $a0, .L0020B100
    /* 10C074 0020B0F4 F80003AE */   sw        $v1, 0xF8($s0)
    /* 10C078 0020B0F8 5EE6070C */  jal        func_001F9978
    /* 10C07C 0020B0FC 00000000 */   nop
.align 2
  .L0020B100:
    /* 10C080 0020B100 1500053C */  lui        $a1, %hi(D_0014EFD0)
    /* 10C084 0020B104 D800048E */  lw         $a0, 0xD8($s0)
    /* 10C088 0020B108 F800068E */  lw         $a2, 0xF8($s0)
    /* 10C08C 0020B10C 0C8F040C */  jal        func_00123C30
    /* 10C090 0020B110 D0EFA524 */   addiu     $a1, $a1, %lo(D_0014EFD0)
    /* 10C094 0020B114 2F024014 */  bnez       $v0, .L0020B9D4
    /* 10C098 0020B118 2001BF7B */   lq        $ra, 0x120($sp)
    /* 10C09C 0020B11C 05000224 */  addiu      $v0, $zero, 0x5
    /* 10C0A0 0020B120 2C020010 */  b          .L0020B9D4
    /* 10C0A4 0020B124 E00002AE */   sw        $v0, 0xE0($s0)
    /* 10C0A8 0020B128 90D35026 */  addiu      $s0, $s2, -0x2C70
    /* 10C0AC 0020B12C C400038E */  lw         $v1, 0xC4($s0)
    /* 10C0B0 0020B130 F800028E */  lw         $v0, 0xF8($s0)
    /* 10C0B4 0020B134 1B006254 */  bnel       $v1, $v0, .L0020B1A4
    /* 10C0B8 0020B138 CC00028E */   lw        $v0, 0xCC($s0)
    /* 10C0BC 0020B13C DC00038E */  lw         $v1, 0xDC($s0)
    /* 10C0C0 0020B140 17000224 */  addiu      $v0, $zero, 0x17
    /* 10C0C4 0020B144 0A006214 */  bne        $v1, $v0, .L0020B170
    /* 10C0C8 0020B148 1500043C */   lui       $a0, %hi(D_0014EFD0)
    /* 10C0CC 0020B14C CC00058E */  lw         $a1, 0xCC($s0)
    /* 10C0D0 0020B150 C0000224 */  addiu      $v0, $zero, 0xC0
    /* 10C0D4 0020B154 1818A200 */  mult       $v1, $a1, $v0
    /* 10C0D8 0020B158 D0EF8424 */  addiu      $a0, $a0, %lo(D_0014EFD0)
    /* 10C0DC 0020B15C 21107000 */  addu       $v0, $v1, $s0
    /* 10C0E0 0020B160 2C2F080C */  jal        func_0020BCB0
    /* 10C0E4 0020B164 1800468C */   lw        $a2, 0x18($v0)
    /* 10C0E8 0020B168 DAFE0010 */  b          .L0020ACD4
    /* 10C0EC 0020B16C 08000224 */   addiu     $v0, $zero, 0x8
.align 2
  .L0020B170:
    /* 10C0F0 0020B170 1A00063C */  lui        $a2, %hi(D_001A05C0)
    /* 10C0F4 0020B174 D0EF8424 */  addiu      $a0, $a0, %lo(D_0014EFD0)
    /* 10C0F8 0020B178 C005C624 */  addiu      $a2, $a2, %lo(D_001A05C0)
    /* 10C0FC 0020B17C 5C2F080C */  jal        func_0020BD70
    /* 10C100 0020B180 2D280000 */   daddu     $a1, $zero, $zero
    /* 10C104 0020B184 CC00038E */  lw         $v1, 0xCC($s0)
    /* 10C108 0020B188 C0000424 */  addiu      $a0, $zero, 0xC0
    /* 10C10C 0020B18C 06000524 */  addiu      $a1, $zero, 0x6
    /* 10C110 0020B190 18306400 */  mult       $a2, $v1, $a0
    /* 10C114 0020B194 2118D000 */  addu       $v1, $a2, $s0
    /* 10C118 0020B198 B40062AC */  sw         $v0, 0xB4($v1)
    /* 10C11C 0020B19C 82010010 */  b          .L0020B7A8
    /* 10C120 0020B1A0 E00005AE */   sw        $a1, 0xE0($s0)
.align 2
  .L0020B1A4:
    /* 10C124 0020B1A4 41006104 */  bgez       $v1, .L0020B2AC
    /* 10C128 0020B1A8 F00002AE */   sw        $v0, 0xF0($s0)
    /* 10C12C 0020B1AC FBFF0224 */  addiu      $v0, $zero, -0x5
    /* 10C130 0020B1B0 03006214 */  bne        $v1, $v0, .L0020B1C0
    /* 10C134 0020B1B4 FCFF0224 */   addiu     $v0, $zero, -0x4
    /* 10C138 0020B1B8 5A000010 */  b          .L0020B324
    /* 10C13C 0020B1BC 15000224 */   addiu     $v0, $zero, 0x15
.align 2
  .L0020B1C0:
    /* 10C140 0020B1C0 03006214 */  bne        $v1, $v0, .L0020B1D0
    /* 10C144 0020B1C4 FDFF0224 */   addiu     $v0, $zero, -0x3
    /* 10C148 0020B1C8 56000010 */  b          .L0020B324
    /* 10C14C 0020B1CC 19000224 */   addiu     $v0, $zero, 0x19
.align 2
  .L0020B1D0:
    /* 10C150 0020B1D0 03006214 */  bne        $v1, $v0, .L0020B1E0
    /* 10C154 0020B1D4 FEFF0224 */   addiu     $v0, $zero, -0x2
    /* 10C158 0020B1D8 52000010 */  b          .L0020B324
    /* 10C15C 0020B1DC 1A000224 */   addiu     $v0, $zero, 0x1A
.align 2
  .L0020B1E0:
    /* 10C160 0020B1E0 50006214 */  bne        $v1, $v0, .L0020B324
    /* 10C164 0020B1E4 1C000224 */   addiu     $v0, $zero, 0x1C
    /* 10C168 0020B1E8 4E000010 */  b          .L0020B324
    /* 10C16C 0020B1EC 18000224 */   addiu     $v0, $zero, 0x18
    /* 10C170 0020B1F0 90D35026 */  addiu      $s0, $s2, -0x2C70
    /* 10C174 0020B1F4 C0000424 */  addiu      $a0, $zero, 0xC0
    /* 10C178 0020B1F8 CC00028E */  lw         $v0, 0xCC($s0)
    /* 10C17C 0020B1FC 18184400 */  mult       $v1, $v0, $a0
    /* 10C180 0020B200 21107000 */  addu       $v0, $v1, $s0
    /* 10C184 0020B204 BC00438C */  lw         $v1, 0xBC($v0)
    /* 10C188 0020B208 01106428 */  slti       $a0, $v1, 0x1001
    /* 10C18C 0020B20C 03008014 */  bnez       $a0, .L0020B21C
    /* 10C190 0020B210 F80003AE */   sw        $v1, 0xF8($s0)
    /* 10C194 0020B214 5EE6070C */  jal        func_001F9978
    /* 10C198 0020B218 00000000 */   nop
.align 2
  .L0020B21C:
    /* 10C19C 0020B21C 1500053C */  lui        $a1, %hi(D_001507D0)
    /* 10C1A0 0020B220 D800048E */  lw         $a0, 0xD8($s0)
    /* 10C1A4 0020B224 F800068E */  lw         $a2, 0xF8($s0)
    /* 10C1A8 0020B228 0C8F040C */  jal        func_00123C30
    /* 10C1AC 0020B22C D007A524 */   addiu     $a1, $a1, %lo(D_001507D0)
    /* 10C1B0 0020B230 EF000010 */  b          .L0020B5F0
    /* 10C1B4 0020B234 00000000 */   nop
    /* 10C1B8 0020B238 90D35026 */  addiu      $s0, $s2, -0x2C70
    /* 10C1BC 0020B23C C400038E */  lw         $v1, 0xC4($s0)
    /* 10C1C0 0020B240 F800028E */  lw         $v0, 0xF8($s0)
    /* 10C1C4 0020B244 17006254 */  bnel       $v1, $v0, .L0020B2A4
    /* 10C1C8 0020B248 CC00028E */   lw        $v0, 0xCC($s0)
    /* 10C1CC 0020B24C D000058E */  lw         $a1, 0xD0($s0)
    /* 10C1D0 0020B250 1500043C */  lui        $a0, %hi(D_001507D0)
    /* 10C1D4 0020B254 1A00063C */  lui        $a2, %hi(D_001A08C0)
    /* 10C1D8 0020B258 D0078424 */  addiu      $a0, $a0, %lo(D_001507D0)
    /* 10C1DC 0020B25C 5C2F080C */  jal        func_0020BD70
    /* 10C1E0 0020B260 C008C624 */   addiu     $a2, $a2, %lo(D_001A08C0)
    /* 10C1E4 0020B264 CC00048E */  lw         $a0, 0xCC($s0)
    /* 10C1E8 0020B268 C0000324 */  addiu      $v1, $zero, 0xC0
    /* 10C1EC 0020B26C B4000526 */  addiu      $a1, $s0, 0xB4
    /* 10C1F0 0020B270 18208300 */  mult       $a0, $a0, $v1
    /* 10C1F4 0020B274 21208500 */  addu       $a0, $a0, $a1
    /* 10C1F8 0020B278 0000838C */  lw         $v1, 0x0($a0)
    /* 10C1FC 0020B27C 21186200 */  addu       $v1, $v1, $v0
    /* 10C200 0020B280 000083AC */  sw         $v1, 0x0($a0)
    /* 10C204 0020B284 D000028E */  lw         $v0, 0xD0($s0)
    /* 10C208 0020B288 01004224 */  addiu      $v0, $v0, 0x1
    /* 10C20C 0020B28C 14004328 */  slti       $v1, $v0, 0x14
    /* 10C210 0020B290 D00002AE */  sw         $v0, 0xD0($s0)
    /* 10C214 0020B294 8FFE6010 */  beqz       $v1, .L0020ACD4
    /* 10C218 0020B298 08000224 */   addiu     $v0, $zero, 0x8
    /* 10C21C 0020B29C 8DFE0010 */  b          .L0020ACD4
    /* 10C220 0020B2A0 06000224 */   addiu     $v0, $zero, 0x6
.align 2
  .L0020B2A4:
    /* 10C224 0020B2A4 0F006004 */  bltz       $v1, .L0020B2E4
    /* 10C228 0020B2A8 F00002AE */   sw        $v0, 0xF0($s0)
.align 2
  .L0020B2AC:
    /* 10C22C 0020B2AC 1B000224 */  addiu      $v0, $zero, 0x1B
    /* 10C230 0020B2B0 D800048E */  lw         $a0, 0xD8($s0)
    /* 10C234 0020B2B4 848E040C */  jal        func_00123A10
    /* 10C238 0020B2B8 EC0002AE */   sw        $v0, 0xEC($s0)
    /* 10C23C 0020B2BC C5014014 */  bnez       $v0, .L0020B9D4
    /* 10C240 0020B2C0 2001BF7B */   lq        $ra, 0x120($sp)
    /* 10C244 0020B2C4 B000038E */  lw         $v1, 0xB0($s0)
    /* 10C248 0020B2C8 02000224 */  addiu      $v0, $zero, 0x2
    /* 10C24C 0020B2CC DC0000AE */  sw         $zero, 0xDC($s0)
    /* 10C250 0020B2D0 CC0000AE */  sw         $zero, 0xCC($s0)
    /* 10C254 0020B2D4 BF016214 */  bne        $v1, $v0, .L0020B9D4
    /* 10C258 0020B2D8 D40000AE */   sw        $zero, 0xD4($s0)
    /* 10C25C 0020B2DC BD010010 */  b          .L0020B9D4
    /* 10C260 0020B2E0 B00000AE */   sw        $zero, 0xB0($s0)
.align 2
  .L0020B2E4:
    /* 10C264 0020B2E4 FBFF0224 */  addiu      $v0, $zero, -0x5
    /* 10C268 0020B2E8 03006214 */  bne        $v1, $v0, .L0020B2F8
    /* 10C26C 0020B2EC FCFF0224 */   addiu     $v0, $zero, -0x4
    /* 10C270 0020B2F0 0C000010 */  b          .L0020B324
    /* 10C274 0020B2F4 15000224 */   addiu     $v0, $zero, 0x15
.align 2
  .L0020B2F8:
    /* 10C278 0020B2F8 03006214 */  bne        $v1, $v0, .L0020B308
    /* 10C27C 0020B2FC FDFF0224 */   addiu     $v0, $zero, -0x3
    /* 10C280 0020B300 08000010 */  b          .L0020B324
    /* 10C284 0020B304 19000224 */   addiu     $v0, $zero, 0x19
.align 2
  .L0020B308:
    /* 10C288 0020B308 03006214 */  bne        $v1, $v0, .L0020B318
    /* 10C28C 0020B30C FEFF0224 */   addiu     $v0, $zero, -0x2
    /* 10C290 0020B310 04000010 */  b          .L0020B324
    /* 10C294 0020B314 1A000224 */   addiu     $v0, $zero, 0x1A
.align 2
  .L0020B318:
    /* 10C298 0020B318 02006214 */  bne        $v1, $v0, .L0020B324
    /* 10C29C 0020B31C 1C000224 */   addiu     $v0, $zero, 0x1C
    /* 10C2A0 0020B320 18000224 */  addiu      $v0, $zero, 0x18
.align 2
  .L0020B324:
    /* 10C2A4 0020B324 EC0002AE */  sw         $v0, 0xEC($s0)
.align 2
  .L0020B328:
    /* 10C2A8 0020B328 90D34426 */  addiu      $a0, $s2, -0x2C70
    /* 10C2AC 0020B32C 02000324 */  addiu      $v1, $zero, 0x2
    /* 10C2B0 0020B330 B000828C */  lw         $v0, 0xB0($a0)
    /* 10C2B4 0020B334 DC0080AC */  sw         $zero, 0xDC($a0)
    /* 10C2B8 0020B338 CC0080AC */  sw         $zero, 0xCC($a0)
    /* 10C2BC 0020B33C A4014314 */  bne        $v0, $v1, .L0020B9D0
    /* 10C2C0 0020B340 D40080AC */   sw        $zero, 0xD4($a0)
    /* 10C2C4 0020B344 A2010010 */  b          .L0020B9D0
    /* 10C2C8 0020B348 B00080AC */   sw        $zero, 0xB0($a0)
    /* 10C2CC 0020B34C 90D35026 */  addiu      $s0, $s2, -0x2C70
    /* 10C2D0 0020B350 848E040C */  jal        func_00123A10
    /* 10C2D4 0020B354 D800048E */   lw        $a0, 0xD8($s0)
    /* 10C2D8 0020B358 9E014014 */  bnez       $v0, .L0020B9D4
    /* 10C2DC 0020B35C 2001BF7B */   lq        $ra, 0x120($sp)
    /* 10C2E0 0020B360 DC00038E */  lw         $v1, 0xDC($s0)
    /* 10C2E4 0020B364 17000224 */  addiu      $v0, $zero, 0x17
    /* 10C2E8 0020B368 D2006254 */  bnel       $v1, $v0, .L0020B6B4
    /* 10C2EC 0020B36C B00000AE */   sw        $zero, 0xB0($s0)
    /* 10C2F0 0020B370 16000224 */  addiu      $v0, $zero, 0x16
.align 2
  .L0020B374:
    /* 10C2F4 0020B374 D40000AE */  sw         $zero, 0xD4($s0)
    /* 10C2F8 0020B378 95010010 */  b          .L0020B9D0
    /* 10C2FC 0020B37C DC0002AE */   sw        $v0, 0xDC($s0)
    /* 10C300 0020B380 90D34526 */  addiu      $a1, $s2, -0x2C70
    /* 10C304 0020B384 C0000424 */  addiu      $a0, $zero, 0xC0
    /* 10C308 0020B388 CC00A28C */  lw         $v0, 0xCC($a1)
    /* 10C30C 0020B38C 18204400 */  mult       $a0, $v0, $a0
    /* 10C310 0020B390 2118A400 */  addu       $v1, $a1, $a0
    /* 10C314 0020B394 B400628C */  lw         $v0, 0xB4($v1)
    /* 10C318 0020B398 03004010 */  beqz       $v0, .L0020B3A8
    /* 10C31C 0020B39C 2110A400 */   addu      $v0, $a1, $a0
    /* 10C320 0020B3A0 11010010 */  b          .L0020B7E8
    /* 10C324 0020B3A4 17270224 */   addiu     $v0, $zero, 0x2717
.align 2
  .L0020B3A8:
    /* 10C328 0020B3A8 1400438C */  lw         $v1, 0x14($v0)
    /* 10C32C 0020B3AC 0E016004 */  bltz       $v1, .L0020B7E8
    /* 10C330 0020B3B0 1D000224 */   addiu     $v0, $zero, 0x1D
    /* 10C334 0020B3B4 10000224 */  addiu      $v0, $zero, 0x10
    /* 10C338 0020B3B8 E000A0AC */  sw         $zero, 0xE0($a1)
    /* 10C33C 0020B3BC DC00A2AC */  sw         $v0, 0xDC($a1)
    /* 10C340 0020B3C0 90D34226 */  addiu      $v0, $s2, -0x2C70
    /* 10C344 0020B3C4 E000448C */  lw         $a0, 0xE0($v0)
    /* 10C348 0020B3C8 0B00832C */  sltiu      $v1, $a0, 0xB
    /* 10C34C 0020B3CC 80016010 */  beqz       $v1, .L0020B9D0
    /* 10C350 0020B3D0 1F00023C */   lui       $v0, %hi(jtbl_001E8660)
    /* 10C354 0020B3D4 80180400 */  sll        $v1, $a0, 2
    /* 10C358 0020B3D8 60864224 */  addiu      $v0, $v0, %lo(jtbl_001E8660)
    /* 10C35C 0020B3DC 21186200 */  addu       $v1, $v1, $v0
    /* 10C360 0020B3E0 0000648C */  lw         $a0, 0x0($v1)
    /* 10C364 0020B3E4 08008000 */  jr         $a0
    /* 10C368 0020B3E8 00000000 */   nop
    /* 10C36C 0020B3EC 90D35126 */  addiu      $s1, $s2, -0x2C70
    /* 10C370 0020B3F0 C0001024 */  addiu      $s0, $zero, 0xC0
    /* 10C374 0020B3F4 CC00228E */  lw         $v0, 0xCC($s1)
    /* 10C378 0020B3F8 1400053C */  lui        $a1, %hi(D_0013D370)
    /* 10C37C 0020B3FC 70D3A524 */  addiu      $a1, $a1, %lo(D_0013D370)
    /* 10C380 0020B400 2D20A003 */  daddu      $a0, $sp, $zero
    /* 10C384 0020B404 18185000 */  mult       $v1, $v0, $s0
    /* 10C388 0020B408 21107100 */  addu       $v0, $v1, $s1
    /* 10C38C 0020B40C 9258040C */  jal        func_00116248
    /* 10C390 0020B410 1400468C */   lw        $a2, 0x14($v0)
    /* 10C394 0020B414 CC00238E */  lw         $v1, 0xCC($s1)
    /* 10C398 0020B418 2D30A003 */  daddu      $a2, $sp, $zero
    /* 10C39C 0020B41C 02000724 */  addiu      $a3, $zero, 0x2
    /* 10C3A0 0020B420 18187000 */  mult       $v1, $v1, $s0
    /* 10C3A4 0020B424 21102302 */  addu       $v0, $s1, $v1
    /* 10C3A8 0020B428 21187100 */  addu       $v1, $v1, $s1
    /* 10C3AC 0020B42C 0400458C */  lw         $a1, 0x4($v0)
    /* 10C3B0 0020B430 2C8E040C */  jal        func_001238B0
    /* 10C3B4 0020B434 0000648C */   lw        $a0, 0x0($v1)
    /* 10C3B8 0020B438 66014014 */  bnez       $v0, .L0020B9D4
    /* 10C3BC 0020B43C 2001BF7B */   lq        $ra, 0x120($sp)
    /* 10C3C0 0020B440 01000224 */  addiu      $v0, $zero, 0x1
    /* 10C3C4 0020B444 63010010 */  b          .L0020B9D4
    /* 10C3C8 0020B448 E00022AE */   sw        $v0, 0xE0($s1)
    /* 10C3CC 0020B44C 90D34526 */  addiu      $a1, $s2, -0x2C70
    /* 10C3D0 0020B450 C400A48C */  lw         $a0, 0xC4($a1)
    /* 10C3D4 0020B454 DEFE8304 */  bgezl      $a0, .L0020AFD0
    /* 10C3D8 0020B458 02000224 */   addiu     $v0, $zero, 0x2
    /* 10C3DC 0020B45C CC00A28C */  lw         $v0, 0xCC($a1)
    /* 10C3E0 0020B460 F9FF0324 */  addiu      $v1, $zero, -0x7
    /* 10C3E4 0020B464 F000A2AC */  sw         $v0, 0xF0($a1)
    /* 10C3E8 0020B468 11008310 */  beq        $a0, $v1, .L0020B4B0
    /* 10C3EC 0020B46C 1E000224 */   addiu     $v0, $zero, 0x1E
    /* 10C3F0 0020B470 FBFF0224 */  addiu      $v0, $zero, -0x5
    /* 10C3F4 0020B474 03008214 */  bne        $a0, $v0, .L0020B484
    /* 10C3F8 0020B478 FCFF0224 */   addiu     $v0, $zero, -0x4
    /* 10C3FC 0020B47C 0C000010 */  b          .L0020B4B0
    /* 10C400 0020B480 1F000224 */   addiu     $v0, $zero, 0x1F
.align 2
  .L0020B484:
    /* 10C404 0020B484 03008214 */  bne        $a0, $v0, .L0020B494
    /* 10C408 0020B488 FDFF0224 */   addiu     $v0, $zero, -0x3
    /* 10C40C 0020B48C 08000010 */  b          .L0020B4B0
    /* 10C410 0020B490 20000224 */   addiu     $v0, $zero, 0x20
.align 2
  .L0020B494:
    /* 10C414 0020B494 03008214 */  bne        $a0, $v0, .L0020B4A4
    /* 10C418 0020B498 FEFF0224 */   addiu     $v0, $zero, -0x2
    /* 10C41C 0020B49C 04000010 */  b          .L0020B4B0
    /* 10C420 0020B4A0 21000224 */   addiu     $v0, $zero, 0x21
.align 2
  .L0020B4A4:
    /* 10C424 0020B4A4 02008214 */  bne        $a0, $v0, .L0020B4B0
    /* 10C428 0020B4A8 26000224 */   addiu     $v0, $zero, 0x26
    /* 10C42C 0020B4AC 22000224 */  addiu      $v0, $zero, 0x22
.align 2
  .L0020B4B0:
    /* 10C430 0020B4B0 EC00A2AC */  sw         $v0, 0xEC($a1)
.align 2
  .L0020B4B4:
    /* 10C434 0020B4B4 90D34226 */  addiu      $v0, $s2, -0x2C70
    /* 10C438 0020B4B8 CC0040AC */  sw         $zero, 0xCC($v0)
    /* 10C43C 0020B4BC BB000010 */  b          .L0020B7AC
    /* 10C440 0020B4C0 DC0040AC */   sw        $zero, 0xDC($v0)
    /* 10C444 0020B4C4 90D35026 */  addiu      $s0, $s2, -0x2C70
    /* 10C448 0020B4C8 08000524 */  addiu      $a1, $zero, 0x8
    /* 10C44C 0020B4CC D800048E */  lw         $a0, 0xD8($s0)
    /* 10C450 0020B4D0 B28E040C */  jal        func_00123AC8
    /* 10C454 0020B4D4 2D300000 */   daddu     $a2, $zero, $zero
.align 2
  .L0020B4D8:
    /* 10C458 0020B4D8 3E014014 */  bnez       $v0, .L0020B9D4
    /* 10C45C 0020B4DC 2001BF7B */   lq        $ra, 0x120($sp)
    /* 10C460 0020B4E0 03000224 */  addiu      $v0, $zero, 0x3
    /* 10C464 0020B4E4 3B010010 */  b          .L0020B9D4
    /* 10C468 0020B4E8 E00002AE */   sw        $v0, 0xE0($s0)
    /* 10C46C 0020B4EC 90D34326 */  addiu      $v1, $s2, -0x2C70
    /* 10C470 0020B4F0 C400628C */  lw         $v0, 0xC4($v1)
    /* 10C474 0020B4F4 49004004 */  bltz       $v0, .L0020B61C
    /* 10C478 0020B4F8 04000224 */   addiu     $v0, $zero, 0x4
    /* 10C47C 0020B4FC 34010010 */  b          .L0020B9D0
    /* 10C480 0020B500 E00062AC */   sw        $v0, 0xE0($v1)
    /* 10C484 0020B504 1500103C */  lui        $s0, %hi(D_0014EFD0)
    /* 10C488 0020B508 1A00043C */  lui        $a0, %hi(D_001A05C0)
    /* 10C48C 0020B50C D0EF1026 */  addiu      $s0, $s0, %lo(D_0014EFD0)
    /* 10C490 0020B510 B62E080C */  jal        func_0020BAD8
    /* 10C494 0020B514 C0058424 */   addiu     $a0, $a0, %lo(D_001A05C0)
    /* 10C498 0020B518 90D35126 */  addiu      $s1, $s2, -0x2C70
    /* 10C49C 0020B51C D800248E */  lw         $a0, 0xD8($s1)
    /* 10C4A0 0020B520 2D280002 */  daddu      $a1, $s0, $zero
    /* 10C4A4 0020B524 528F040C */  jal        func_00123D48
    /* 10C4A8 0020B528 2D304000 */   daddu     $a2, $v0, $zero
    /* 10C4AC 0020B52C 29014014 */  bnez       $v0, .L0020B9D4
    /* 10C4B0 0020B530 2001BF7B */   lq        $ra, 0x120($sp)
    /* 10C4B4 0020B534 05000224 */  addiu      $v0, $zero, 0x5
    /* 10C4B8 0020B538 26010010 */  b          .L0020B9D4
    /* 10C4BC 0020B53C E00022AE */   sw        $v0, 0xE0($s1)
    /* 10C4C0 0020B540 1A00043C */  lui        $a0, %hi(D_001A05C0)
    /* 10C4C4 0020B544 90D35026 */  addiu      $s0, $s2, -0x2C70
    /* 10C4C8 0020B548 B62E080C */  jal        func_0020BAD8
    /* 10C4CC 0020B54C C0058424 */   addiu     $a0, $a0, %lo(D_001A05C0)
    /* 10C4D0 0020B550 C400038E */  lw         $v1, 0xC4($s0)
    /* 10C4D4 0020B554 04006254 */  bnel       $v1, $v0, .L0020B568
    /* 10C4D8 0020B558 CC00028E */   lw        $v0, 0xCC($s0)
    /* 10C4DC 0020B55C 06000224 */  addiu      $v0, $zero, 0x6
    /* 10C4E0 0020B560 1B010010 */  b          .L0020B9D0
    /* 10C4E4 0020B564 E00002AE */   sw        $v0, 0xE0($s0)
.align 2
  .L0020B568:
    /* 10C4E8 0020B568 4B006104 */  bgez       $v1, .L0020B698
    /* 10C4EC 0020B56C F00002AE */   sw        $v0, 0xF0($s0)
    /* 10C4F0 0020B570 FBFF0224 */  addiu      $v0, $zero, -0x5
    /* 10C4F4 0020B574 03006214 */  bne        $v1, $v0, .L0020B584
    /* 10C4F8 0020B578 FCFF0224 */   addiu     $v0, $zero, -0x4
    /* 10C4FC 0020B57C 70FD0010 */  b          .L0020AB40
    /* 10C500 0020B580 1F000224 */   addiu     $v0, $zero, 0x1F
.align 2
  .L0020B584:
    /* 10C504 0020B584 03006214 */  bne        $v1, $v0, .L0020B594
    /* 10C508 0020B588 FDFF0224 */   addiu     $v0, $zero, -0x3
    /* 10C50C 0020B58C 6CFD0010 */  b          .L0020AB40
    /* 10C510 0020B590 23000224 */   addiu     $v0, $zero, 0x23
.align 2
  .L0020B594:
    /* 10C514 0020B594 03006214 */  bne        $v1, $v0, .L0020B5A4
    /* 10C518 0020B598 FEFF0224 */   addiu     $v0, $zero, -0x2
    /* 10C51C 0020B59C 68FD0010 */  b          .L0020AB40
    /* 10C520 0020B5A0 24000224 */   addiu     $v0, $zero, 0x24
.align 2
  .L0020B5A4:
    /* 10C524 0020B5A4 66FD6214 */  bne        $v1, $v0, .L0020AB40
    /* 10C528 0020B5A8 26000224 */   addiu     $v0, $zero, 0x26
    /* 10C52C 0020B5AC 64FD0010 */  b          .L0020AB40
    /* 10C530 0020B5B0 22000224 */   addiu     $v0, $zero, 0x22
    /* 10C534 0020B5B4 90D35026 */  addiu      $s0, $s2, -0x2C70
    /* 10C538 0020B5B8 D000028E */  lw         $v0, 0xD0($s0)
    /* 10C53C 0020B5BC 04004014 */  bnez       $v0, .L0020B5D0
    /* 10C540 0020B5C0 1A00043C */   lui       $a0, %hi(D_001A08C0)
    /* 10C544 0020B5C4 08000224 */  addiu      $v0, $zero, 0x8
    /* 10C548 0020B5C8 01010010 */  b          .L0020B9D0
    /* 10C54C 0020B5CC E00002AE */   sw        $v0, 0xE0($s0)
.align 2
  .L0020B5D0:
    /* 10C550 0020B5D0 B62E080C */  jal        func_0020BAD8
    /* 10C554 0020B5D4 C0088424 */   addiu     $a0, $a0, %lo(D_001A08C0)
    /* 10C558 0020B5D8 D000058E */  lw         $a1, 0xD0($s0)
    /* 10C55C 0020B5DC 01000624 */  addiu      $a2, $zero, 0x1
    /* 10C560 0020B5E0 1800A200 */  mult       $zero, $a1, $v0
    /* 10C564 0020B5E4 12280000 */  mflo       $a1
    /* 10C568 0020B5E8 B28E040C */  jal        func_00123AC8
    /* 10C56C 0020B5EC D800048E */   lw        $a0, 0xD8($s0)
.align 2
  .L0020B5F0:
    /* 10C570 0020B5F0 F8004014 */  bnez       $v0, .L0020B9D4
    /* 10C574 0020B5F4 2001BF7B */   lq        $ra, 0x120($sp)
    /* 10C578 0020B5F8 07000224 */  addiu      $v0, $zero, 0x7
    /* 10C57C 0020B5FC F5000010 */  b          .L0020B9D4
    /* 10C580 0020B600 E00002AE */   sw        $v0, 0xE0($s0)
    /* 10C584 0020B604 90D34326 */  addiu      $v1, $s2, -0x2C70
    /* 10C588 0020B608 C400628C */  lw         $v0, 0xC4($v1)
    /* 10C58C 0020B60C 03004004 */  bltz       $v0, .L0020B61C
    /* 10C590 0020B610 08000224 */   addiu     $v0, $zero, 0x8
    /* 10C594 0020B614 EE000010 */  b          .L0020B9D0
    /* 10C598 0020B618 E00062AC */   sw        $v0, 0xE0($v1)
.align 2
  .L0020B61C:
    /* 10C59C 0020B61C D40060AC */  sw         $zero, 0xD4($v1)
    /* 10C5A0 0020B620 DC0060AC */  sw         $zero, 0xDC($v1)
    /* 10C5A4 0020B624 EA000010 */  b          .L0020B9D0
    /* 10C5A8 0020B628 CC0060AC */   sw        $zero, 0xCC($v1)
    /* 10C5AC 0020B62C 1500103C */  lui        $s0, %hi(D_001507D0)
    /* 10C5B0 0020B630 1A00043C */  lui        $a0, %hi(D_001A08C0)
    /* 10C5B4 0020B634 D0071026 */  addiu      $s0, $s0, %lo(D_001507D0)
    /* 10C5B8 0020B638 B62E080C */  jal        func_0020BAD8
    /* 10C5BC 0020B63C C0088424 */   addiu     $a0, $a0, %lo(D_001A08C0)
    /* 10C5C0 0020B640 90D35126 */  addiu      $s1, $s2, -0x2C70
    /* 10C5C4 0020B644 D800248E */  lw         $a0, 0xD8($s1)
    /* 10C5C8 0020B648 2D280002 */  daddu      $a1, $s0, $zero
    /* 10C5CC 0020B64C 528F040C */  jal        func_00123D48
    /* 10C5D0 0020B650 2D304000 */   daddu     $a2, $v0, $zero
    /* 10C5D4 0020B654 DF004014 */  bnez       $v0, .L0020B9D4
    /* 10C5D8 0020B658 2001BF7B */   lq        $ra, 0x120($sp)
    /* 10C5DC 0020B65C 09000224 */  addiu      $v0, $zero, 0x9
    /* 10C5E0 0020B660 DC000010 */  b          .L0020B9D4
    /* 10C5E4 0020B664 E00022AE */   sw        $v0, 0xE0($s1)
    /* 10C5E8 0020B668 1A00043C */  lui        $a0, %hi(D_001A08C0)
    /* 10C5EC 0020B66C 90D35026 */  addiu      $s0, $s2, -0x2C70
    /* 10C5F0 0020B670 B62E080C */  jal        func_0020BAD8
    /* 10C5F4 0020B674 C0088424 */   addiu     $a0, $a0, %lo(D_001A08C0)
    /* 10C5F8 0020B678 C400038E */  lw         $v1, 0xC4($s0)
    /* 10C5FC 0020B67C 04006254 */  bnel       $v1, $v0, .L0020B690
    /* 10C600 0020B680 CC00028E */   lw        $v0, 0xCC($s0)
    /* 10C604 0020B684 0A000224 */  addiu      $v0, $zero, 0xA
    /* 10C608 0020B688 D1000010 */  b          .L0020B9D0
    /* 10C60C 0020B68C E00002AE */   sw        $v0, 0xE0($s0)
.align 2
  .L0020B690:
    /* 10C610 0020B690 0B006004 */  bltz       $v1, .L0020B6C0
    /* 10C614 0020B694 F00002AE */   sw        $v0, 0xF0($s0)
.align 2
  .L0020B698:
    /* 10C618 0020B698 25000224 */  addiu      $v0, $zero, 0x25
.align 2
  .L0020B69C:
    /* 10C61C 0020B69C D800048E */  lw         $a0, 0xD8($s0)
    /* 10C620 0020B6A0 848E040C */  jal        func_00123A10
    /* 10C624 0020B6A4 EC0002AE */   sw        $v0, 0xEC($s0)
    /* 10C628 0020B6A8 CA004014 */  bnez       $v0, .L0020B9D4
    /* 10C62C 0020B6AC 2001BF7B */   lq        $ra, 0x120($sp)
    /* 10C630 0020B6B0 D40000AE */  sw         $zero, 0xD4($s0)
.align 2
  .L0020B6B4:
    /* 10C634 0020B6B4 DC0000AE */  sw         $zero, 0xDC($s0)
    /* 10C638 0020B6B8 C5000010 */  b          .L0020B9D0
    /* 10C63C 0020B6BC CC0000AE */   sw        $zero, 0xCC($s0)
.align 2
  .L0020B6C0:
    /* 10C640 0020B6C0 FBFF0224 */  addiu      $v0, $zero, -0x5
    /* 10C644 0020B6C4 03006214 */  bne        $v1, $v0, .L0020B6D4
    /* 10C648 0020B6C8 FCFF0224 */   addiu     $v0, $zero, -0x4
    /* 10C64C 0020B6CC 1CFD0010 */  b          .L0020AB40
    /* 10C650 0020B6D0 1F000224 */   addiu     $v0, $zero, 0x1F
.align 2
  .L0020B6D4:
    /* 10C654 0020B6D4 03006214 */  bne        $v1, $v0, .L0020B6E4
    /* 10C658 0020B6D8 FDFF0224 */   addiu     $v0, $zero, -0x3
    /* 10C65C 0020B6DC 18FD0010 */  b          .L0020AB40
    /* 10C660 0020B6E0 23000224 */   addiu     $v0, $zero, 0x23
.align 2
  .L0020B6E4:
    /* 10C664 0020B6E4 03006214 */  bne        $v1, $v0, .L0020B6F4
    /* 10C668 0020B6E8 FEFF0224 */   addiu     $v0, $zero, -0x2
    /* 10C66C 0020B6EC 14FD0010 */  b          .L0020AB40
    /* 10C670 0020B6F0 24000224 */   addiu     $v0, $zero, 0x24
.align 2
  .L0020B6F4:
    /* 10C674 0020B6F4 12FD6214 */  bne        $v1, $v0, .L0020AB40
    /* 10C678 0020B6F8 1C000224 */   addiu     $v0, $zero, 0x1C
    /* 10C67C 0020B6FC 10FD0010 */  b          .L0020AB40
    /* 10C680 0020B700 18000224 */   addiu     $v0, $zero, 0x18
    /* 10C684 0020B704 90D35026 */  addiu      $s0, $s2, -0x2C70
    /* 10C688 0020B708 848E040C */  jal        func_00123A10
    /* 10C68C 0020B70C D800048E */   lw        $a0, 0xD8($s0)
    /* 10C690 0020B710 B0004014 */  bnez       $v0, .L0020B9D4
    /* 10C694 0020B714 2001BF7B */   lq        $ra, 0x120($sp)
    /* 10C698 0020B718 CC0000AE */  sw         $zero, 0xCC($s0)
    /* 10C69C 0020B71C AD000010 */  b          .L0020B9D4
    /* 10C6A0 0020B720 DC0000AE */   sw        $zero, 0xDC($s0)
    /* 10C6A4 0020B724 1300103C */  lui        $s0, %hi(D_00137C80)
    /* 10C6A8 0020B728 7000A527 */  addiu      $a1, $sp, 0x70
    /* 10C6AC 0020B72C 807C1026 */  addiu      $s0, $s0, %lo(D_00137C80)
    /* 10C6B0 0020B730 7400A627 */  addiu      $a2, $sp, 0x74
    /* 10C6B4 0020B734 1400048E */  lw         $a0, 0x14($s0)
    /* 10C6B8 0020B738 C4F7070C */  jal        func_001FDF10
    /* 10C6BC 0020B73C C0220400 */   sll       $a0, $a0, 11
    /* 10C6C0 0020B740 1400068E */  lw         $a2, 0x14($s0)
    /* 10C6C4 0020B744 7000A48F */  lw         $a0, 0x70($sp)
    /* 10C6C8 0020B748 8A5D080C */  jal        func_00217628
    /* 10C6CC 0020B74C 1000058E */   lw        $a1, 0x10($s0)
    /* 10C6D0 0020B750 90D34326 */  addiu      $v1, $s2, -0x2C70
    /* 10C6D4 0020B754 12000224 */  addiu      $v0, $zero, 0x12
.align 2
  .L0020B758:
    /* 10C6D8 0020B758 E00062AC */  sw         $v0, 0xE0($v1)
    /* 10C6DC 0020B75C 9C000010 */  b          .L0020B9D0
    /* 10C6E0 0020B760 D40060AC */   sw        $zero, 0xD4($v1)
    /* 10C6E4 0020B764 1500023C */  lui        $v0, %hi(D_001517D8)
    /* 10C6E8 0020B768 D8174384 */  lh         $v1, %lo(D_001517D8)($v0)
    /* 10C6EC 0020B76C 0F006014 */  bnez       $v1, .L0020B7AC
    /* 10C6F0 0020B770 90D34226 */   addiu     $v0, $s2, -0x2C70
    /* 10C6F4 0020B774 1300023C */  lui        $v0, %hi(D_00137C94)
    /* 10C6F8 0020B778 7800A527 */  addiu      $a1, $sp, 0x78
    /* 10C6FC 0020B77C 947C448C */  lw         $a0, %lo(D_00137C94)($v0)
    /* 10C700 0020B780 7C00A627 */  addiu      $a2, $sp, 0x7C
    /* 10C704 0020B784 C4F7070C */  jal        func_001FDF10
    /* 10C708 0020B788 C0220400 */   sll       $a0, $a0, 11
    /* 10C70C 0020B78C 90D34426 */  addiu      $a0, $s2, -0x2C70
    /* 10C710 0020B790 13000324 */  addiu      $v1, $zero, 0x13
    /* 10C714 0020B794 E00083AC */  sw         $v1, 0xE0($a0)
    /* 10C718 0020B798 7800A28F */  lw         $v0, 0x78($sp)
    /* 10C71C 0020B79C 1000438C */  lw         $v1, 0x10($v0)
    /* 10C720 0020B7A0 21104300 */  addu       $v0, $v0, $v1
    /* 10C724 0020B7A4 F40082AC */  sw         $v0, 0xF4($a0)
.align 2
  .L0020B7A8:
    /* 10C728 0020B7A8 90D34226 */  addiu      $v0, $s2, -0x2C70
.align 2
  .L0020B7AC:
    /* 10C72C 0020B7AC 88000010 */  b          .L0020B9D0
    /* 10C730 0020B7B0 D40040AC */   sw        $zero, 0xD4($v0)
    /* 10C734 0020B7B4 90D34526 */  addiu      $a1, $s2, -0x2C70
    /* 10C738 0020B7B8 C0000424 */  addiu      $a0, $zero, 0xC0
    /* 10C73C 0020B7BC CC00A28C */  lw         $v0, 0xCC($a1)
    /* 10C740 0020B7C0 18204400 */  mult       $a0, $v0, $a0
    /* 10C744 0020B7C4 2118A400 */  addu       $v1, $a1, $a0
    /* 10C748 0020B7C8 B400628C */  lw         $v0, 0xB4($v1)
    /* 10C74C 0020B7CC 06004014 */  bnez       $v0, .L0020B7E8
    /* 10C750 0020B7D0 18270224 */   addiu     $v0, $zero, 0x2718
    /* 10C754 0020B7D4 2110A400 */  addu       $v0, $a1, $a0
    /* 10C758 0020B7D8 1400438C */  lw         $v1, 0x14($v0)
    /* 10C75C 0020B7DC 07006104 */  bgez       $v1, .L0020B7FC
    /* 10C760 0020B7E0 14000224 */   addiu     $v0, $zero, 0x14
    /* 10C764 0020B7E4 27000224 */  addiu      $v0, $zero, 0x27
.align 2
  .L0020B7E8:
    /* 10C768 0020B7E8 D400A0AC */  sw         $zero, 0xD4($a1)
    /* 10C76C 0020B7EC EC00A2AC */  sw         $v0, 0xEC($a1)
    /* 10C770 0020B7F0 DC00A0AC */  sw         $zero, 0xDC($a1)
    /* 10C774 0020B7F4 76000010 */  b          .L0020B9D0
    /* 10C778 0020B7F8 CC00A0AC */   sw        $zero, 0xCC($a1)
.align 2
  .L0020B7FC:
    /* 10C77C 0020B7FC D000A0AC */  sw         $zero, 0xD0($a1)
    /* 10C780 0020B800 DC00A2AC */  sw         $v0, 0xDC($a1)
    /* 10C784 0020B804 E000A0AC */  sw         $zero, 0xE0($a1)
    /* 10C788 0020B808 90D35126 */  addiu      $s1, $s2, -0x2C70
    /* 10C78C 0020B80C 01001324 */  addiu      $s3, $zero, 0x1
    /* 10C790 0020B810 E000238E */  lw         $v1, 0xE0($s1)
    /* 10C794 0020B814 23007310 */  beq        $v1, $s3, .L0020B8A4
    /* 10C798 0020B818 02006228 */   slti      $v0, $v1, 0x2
    /* 10C79C 0020B81C 05004050 */  beql       $v0, $zero, .L0020B834
    /* 10C7A0 0020B820 02000224 */   addiu     $v0, $zero, 0x2
    /* 10C7A4 0020B824 09006010 */  beqz       $v1, .L0020B84C
    /* 10C7A8 0020B828 2001BF7B */   lq        $ra, 0x120($sp)
    /* 10C7AC 0020B82C 6A000010 */  b          .L0020B9D8
    /* 10C7B0 0020B830 1001BE7B */   lq        $fp, 0x110($sp)
.align 2
  .L0020B834:
    /* 10C7B4 0020B834 36006210 */  beq        $v1, $v0, .L0020B910
    /* 10C7B8 0020B838 03000224 */   addiu     $v0, $zero, 0x3
    /* 10C7BC 0020B83C 5B006210 */  beq        $v1, $v0, .L0020B9AC
    /* 10C7C0 0020B840 2001BF7B */   lq        $ra, 0x120($sp)
    /* 10C7C4 0020B844 64000010 */  b          .L0020B9D8
    /* 10C7C8 0020B848 1001BE7B */   lq        $fp, 0x110($sp)
.align 2
  .L0020B84C:
    /* 10C7CC 0020B84C CC00228E */  lw         $v0, 0xCC($s1)
    /* 10C7D0 0020B850 C0001024 */  addiu      $s0, $zero, 0xC0
    /* 10C7D4 0020B854 1400053C */  lui        $a1, %hi(D_0013D370)
    /* 10C7D8 0020B858 2D20A003 */  daddu      $a0, $sp, $zero
    /* 10C7DC 0020B85C 18185000 */  mult       $v1, $v0, $s0
    /* 10C7E0 0020B860 70D3A524 */  addiu      $a1, $a1, %lo(D_0013D370)
    /* 10C7E4 0020B864 21107100 */  addu       $v0, $v1, $s1
    /* 10C7E8 0020B868 9258040C */  jal        func_00116248
    /* 10C7EC 0020B86C 1400468C */   lw        $a2, 0x14($v0)
    /* 10C7F0 0020B870 CC00238E */  lw         $v1, 0xCC($s1)
    /* 10C7F4 0020B874 2D30A003 */  daddu      $a2, $sp, $zero
    /* 10C7F8 0020B878 02000724 */  addiu      $a3, $zero, 0x2
    /* 10C7FC 0020B87C 18187000 */  mult       $v1, $v1, $s0
    /* 10C800 0020B880 21102302 */  addu       $v0, $s1, $v1
    /* 10C804 0020B884 21187100 */  addu       $v1, $v1, $s1
    /* 10C808 0020B888 0400458C */  lw         $a1, 0x4($v0)
    /* 10C80C 0020B88C 2C8E040C */  jal        func_001238B0
    /* 10C810 0020B890 0000648C */   lw        $a0, 0x0($v1)
    /* 10C814 0020B894 4E004050 */  beql       $v0, $zero, .L0020B9D0
    /* 10C818 0020B898 E00033AE */   sw        $s3, 0xE0($s1)
    /* 10C81C 0020B89C 4D000010 */  b          .L0020B9D4
    /* 10C820 0020B8A0 2001BF7B */   lq        $ra, 0x120($sp)
.align 2
  .L0020B8A4:
    /* 10C824 0020B8A4 C400228E */  lw         $v0, 0xC4($s1)
    /* 10C828 0020B8A8 16004004 */  bltz       $v0, .L0020B904
    /* 10C82C 0020B8AC 1A00043C */   lui       $a0, %hi(D_001A05C0)
    /* 10C830 0020B8B0 D80022AE */  sw         $v0, 0xD8($s1)
    /* 10C834 0020B8B4 B62E080C */  jal        func_0020BAD8
    /* 10C838 0020B8B8 C0058424 */   addiu     $a0, $a0, %lo(D_001A05C0)
    /* 10C83C 0020B8BC 1A00043C */  lui        $a0, %hi(D_001A08C0)
    /* 10C840 0020B8C0 2D804000 */  daddu      $s0, $v0, $zero
    /* 10C844 0020B8C4 B62E080C */  jal        func_0020BAD8
    /* 10C848 0020B8C8 C0088424 */   addiu     $a0, $a0, %lo(D_001A08C0)
    /* 10C84C 0020B8CC 14000324 */  addiu      $v1, $zero, 0x14
    /* 10C850 0020B8D0 D800248E */  lw         $a0, 0xD8($s1)
    /* 10C854 0020B8D4 18104300 */  mult       $v0, $v0, $v1
    /* 10C858 0020B8D8 F400258E */  lw         $a1, 0xF4($s1)
    /* 10C85C 0020B8DC 21800202 */  addu       $s0, $s0, $v0
    /* 10C860 0020B8E0 08001026 */  addiu      $s0, $s0, 0x8
    /* 10C864 0020B8E4 2D300002 */  daddu      $a2, $s0, $zero
    /* 10C868 0020B8E8 528F040C */  jal        func_00123D48
    /* 10C86C 0020B8EC F80030AE */   sw        $s0, 0xF8($s1)
    /* 10C870 0020B8F0 38004014 */  bnez       $v0, .L0020B9D4
    /* 10C874 0020B8F4 2001BF7B */   lq        $ra, 0x120($sp)
    /* 10C878 0020B8F8 02000224 */  addiu      $v0, $zero, 0x2
    /* 10C87C 0020B8FC 35000010 */  b          .L0020B9D4
    /* 10C880 0020B900 E00022AE */   sw        $v0, 0xE0($s1)
.align 2
  .L0020B904:
    /* 10C884 0020B904 CC00238E */  lw         $v1, 0xCC($s1)
    /* 10C888 0020B908 2C000010 */  b          .L0020B9BC
    /* 10C88C 0020B90C 2B000224 */   addiu     $v0, $zero, 0x2B
.align 2
  .L0020B910:
    /* 10C890 0020B910 C400238E */  lw         $v1, 0xC4($s1)
    /* 10C894 0020B914 F800228E */  lw         $v0, 0xF8($s1)
    /* 10C898 0020B918 08006254 */  bnel       $v1, $v0, .L0020B93C
    /* 10C89C 0020B91C CC00228E */   lw        $v0, 0xCC($s1)
    /* 10C8A0 0020B920 848E040C */  jal        func_00123A10
    /* 10C8A4 0020B924 D800248E */   lw        $a0, 0xD8($s1)
    /* 10C8A8 0020B928 2A004014 */  bnez       $v0, .L0020B9D4
    /* 10C8AC 0020B92C 2001BF7B */   lq        $ra, 0x120($sp)
    /* 10C8B0 0020B930 03000224 */  addiu      $v0, $zero, 0x3
    /* 10C8B4 0020B934 27000010 */  b          .L0020B9D4
    /* 10C8B8 0020B938 E00022AE */   sw        $v0, 0xE0($s1)
.align 2
  .L0020B93C:
    /* 10C8BC 0020B93C 09006004 */  bltz       $v1, .L0020B964
    /* 10C8C0 0020B940 F00022AE */   sw        $v0, 0xF0($s1)
    /* 10C8C4 0020B944 0B000224 */  addiu      $v0, $zero, 0xB
    /* 10C8C8 0020B948 D800248E */  lw         $a0, 0xD8($s1)
    /* 10C8CC 0020B94C 848E040C */  jal        func_00123A10
    /* 10C8D0 0020B950 EC0022AE */   sw        $v0, 0xEC($s1)
    /* 10C8D4 0020B954 1F004014 */  bnez       $v0, .L0020B9D4
    /* 10C8D8 0020B958 2001BF7B */   lq        $ra, 0x120($sp)
    /* 10C8DC 0020B95C 1A000010 */  b          .L0020B9C8
    /* 10C8E0 0020B960 D40020AE */   sw        $zero, 0xD4($s1)
.align 2
  .L0020B964:
    /* 10C8E4 0020B964 FCFF0224 */  addiu      $v0, $zero, -0x4
    /* 10C8E8 0020B968 03006214 */  bne        $v1, $v0, .L0020B978
    /* 10C8EC 0020B96C FDFF0224 */   addiu     $v0, $zero, -0x3
    /* 10C8F0 0020B970 08000010 */  b          .L0020B994
    /* 10C8F4 0020B974 28000224 */   addiu     $v0, $zero, 0x28
.align 2
  .L0020B978:
    /* 10C8F8 0020B978 03006214 */  bne        $v1, $v0, .L0020B988
    /* 10C8FC 0020B97C FEFF0224 */   addiu     $v0, $zero, -0x2
    /* 10C900 0020B980 04000010 */  b          .L0020B994
    /* 10C904 0020B984 29000224 */   addiu     $v0, $zero, 0x29
.align 2
  .L0020B988:
    /* 10C908 0020B988 02006214 */  bne        $v1, $v0, .L0020B994
    /* 10C90C 0020B98C 2D000224 */   addiu     $v0, $zero, 0x2D
    /* 10C910 0020B990 2A000224 */  addiu      $v0, $zero, 0x2A
.align 2
  .L0020B994:
    /* 10C914 0020B994 EC0022AE */  sw         $v0, 0xEC($s1)
.align 2
  .L0020B998:
    /* 10C918 0020B998 90D34226 */  addiu      $v0, $s2, -0x2C70
    /* 10C91C 0020B99C D40040AC */  sw         $zero, 0xD4($v0)
.align 2
  .L0020B9A0:
    /* 10C920 0020B9A0 DC0040AC */  sw         $zero, 0xDC($v0)
    /* 10C924 0020B9A4 0A000010 */  b          .L0020B9D0
    /* 10C928 0020B9A8 CC0040AC */   sw        $zero, 0xCC($v0)
.align 2
  .L0020B9AC:
    /* 10C92C 0020B9AC C400228E */  lw         $v0, 0xC4($s1)
    /* 10C930 0020B9B0 04004010 */  beqz       $v0, .L0020B9C4
    /* 10C934 0020B9B4 2C000224 */   addiu     $v0, $zero, 0x2C
    /* 10C938 0020B9B8 CC00238E */  lw         $v1, 0xCC($s1)
.align 2
  .L0020B9BC:
    /* 10C93C 0020B9BC EC0022AE */  sw         $v0, 0xEC($s1)
    /* 10C940 0020B9C0 F00023AE */  sw         $v1, 0xF0($s1)
.align 2
  .L0020B9C4:
    /* 10C944 0020B9C4 D40020AE */  sw         $zero, 0xD4($s1)
.align 2
  .L0020B9C8:
    /* 10C948 0020B9C8 DC0020AE */  sw         $zero, 0xDC($s1)
    /* 10C94C 0020B9CC CC0020AE */  sw         $zero, 0xCC($s1)
.align 2
  .L0020B9D0:
    /* 10C950 0020B9D0 2001BF7B */  lq         $ra, 0x120($sp)
.align 2
  .L0020B9D4:
    /* 10C954 0020B9D4 1001BE7B */  lq         $fp, 0x110($sp)
.align 2
  .L0020B9D8:
    /* 10C958 0020B9D8 0001B77B */  lq         $s7, 0x100($sp)
    /* 10C95C 0020B9DC F000B67B */  lq         $s6, 0xF0($sp)
    /* 10C960 0020B9E0 E000B57B */  lq         $s5, 0xE0($sp)
    /* 10C964 0020B9E4 D000B47B */  lq         $s4, 0xD0($sp)
    /* 10C968 0020B9E8 C000B37B */  lq         $s3, 0xC0($sp)
    /* 10C96C 0020B9EC B000B27B */  lq         $s2, 0xB0($sp)
    /* 10C970 0020B9F0 A000B17B */  lq         $s1, 0xA0($sp)
    /* 10C974 0020B9F4 9000B07B */  lq         $s0, 0x90($sp)
    /* 10C978 0020B9F8 0800E003 */  jr         $ra
    /* 10C97C 0020B9FC 3001BD27 */   addiu     $sp, $sp, 0x130
endlabel func_00209E68
