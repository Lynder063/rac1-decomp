.align 3
nonmatching func_0022DD68, 0xCB4

glabel func_0022DD68
    /* 12ECE8 0022DD68 1800023C */  lui        $v0, %hi(D_001873D4)
    /* 12ECEC 0022DD6C 00FDBD27 */  addiu      $sp, $sp, -0x300
    /* 12ECF0 0022DD70 D473428C */  lw         $v0, %lo(D_001873D4)($v0)
    /* 12ECF4 0022DD74 F802B5E7 */  swc1       $f21, 0x2F8($sp)
    /* 12ECF8 0022DD78 E002BF7F */  sq         $ra, 0x2E0($sp)
    /* 12ECFC 0022DD7C D002BE7F */  sq         $fp, 0x2D0($sp)
    /* 12ED00 0022DD80 C002B77F */  sq         $s7, 0x2C0($sp)
    /* 12ED04 0022DD84 B002B67F */  sq         $s6, 0x2B0($sp)
    /* 12ED08 0022DD88 A002B57F */  sq         $s5, 0x2A0($sp)
    /* 12ED0C 0022DD8C 9002B47F */  sq         $s4, 0x290($sp)
    /* 12ED10 0022DD90 8002B37F */  sq         $s3, 0x280($sp)
    /* 12ED14 0022DD94 7002B27F */  sq         $s2, 0x270($sp)
    /* 12ED18 0022DD98 6002B17F */  sq         $s1, 0x260($sp)
    /* 12ED1C 0022DD9C 5002B07F */  sq         $s0, 0x250($sp)
    /* 12ED20 0022DDA0 F002B4E7 */  swc1       $f20, 0x2F0($sp)
    /* 12ED24 0022DDA4 00A88044 */  mtc1       $zero, $f21
    /* 12ED28 0022DDA8 03004010 */  beqz       $v0, .L0022DDB8
    /* 12ED2C 0022DDAC 0402A2AF */   sw        $v0, 0x204($sp)
    /* 12ED30 0022DDB0 1400023C */  lui        $v0, %hi(D_0013F740)
    /* 12ED34 0022DDB4 40F755C4 */  lwc1       $f21, %lo(D_0013F740)($v0)
.align 2
  .L0022DDB8:
    /* 12ED38 0022DDB8 70B7040C */  jal        func_0012DDC0
    /* 12ED3C 0022DDBC 00000000 */   nop
    /* 12ED40 0022DDC0 1400033C */  lui        $v1, %hi(D_0013E650)
    /* 12ED44 0022DDC4 50E66324 */  addiu      $v1, $v1, %lo(D_0013E650)
    /* 12ED48 0022DDC8 6B006490 */  lbu        $a0, 0x6B($v1)
    /* 12ED4C 0022DDCC 08008230 */  andi       $v0, $a0, 0x8
    /* 12ED50 0022DDD0 08004010 */  beqz       $v0, .L0022DDF4
    /* 12ED54 0022DDD4 2D280000 */   daddu     $a1, $zero, $zero
    /* 12ED58 0022DDD8 02000424 */  addiu      $a0, $zero, 0x2
    /* 12ED5C 0022DDDC 2D300000 */  daddu      $a2, $zero, $zero
    /* 12ED60 0022DDE0 2D380000 */  daddu      $a3, $zero, $zero
    /* 12ED64 0022DDE4 2ABC040C */  jal        func_0012F0A8
    /* 12ED68 0022DDE8 2D400000 */   daddu     $t0, $zero, $zero
    /* 12ED6C 0022DDEC 13000010 */  b          .L0022DE3C
    /* 12ED70 0022DDF0 1400033C */   lui       $v1, %hi(D_0013E650)
.align 2
  .L0022DDF4:
    /* 12ED74 0022DDF4 13008230 */  andi       $v0, $a0, 0x13
    /* 12ED78 0022DDF8 09004010 */  beqz       $v0, .L0022DE20
    /* 12ED7C 0022DDFC 04008230 */   andi      $v0, $a0, 0x4
    /* 12ED80 0022DE00 6A006890 */  lbu        $t0, 0x6A($v1)
    /* 12ED84 0022DE04 02000424 */  addiu      $a0, $zero, 0x2
    /* 12ED88 0022DE08 68006590 */  lbu        $a1, 0x68($v1)
    /* 12ED8C 0022DE0C 6400668C */  lw         $a2, 0x64($v1)
    /* 12ED90 0022DE10 2ABC040C */  jal        func_0012F0A8
    /* 12ED94 0022DE14 69006790 */   lbu       $a3, 0x69($v1)
    /* 12ED98 0022DE18 08000010 */  b          .L0022DE3C
    /* 12ED9C 0022DE1C 1400033C */   lui       $v1, %hi(D_0013E650)
.align 2
  .L0022DE20:
    /* 12EDA0 0022DE20 05004010 */  beqz       $v0, .L0022DE38
    /* 12EDA4 0022DE24 02000424 */   addiu     $a0, $zero, 0x2
    /* 12EDA8 0022DE28 6400658C */  lw         $a1, 0x64($v1)
    /* 12EDAC 0022DE2C 0C000624 */  addiu      $a2, $zero, 0xC
    /* 12EDB0 0022DE30 48BC040C */  jal        func_0012F120
    /* 12EDB4 0022DE34 03000724 */   addiu     $a3, $zero, 0x3
.align 2
  .L0022DE38:
    /* 12EDB8 0022DE38 1400033C */  lui        $v1, %hi(D_0013E650)
.align 2
  .L0022DE3C:
    /* 12EDBC 0022DE3C 50E66224 */  addiu      $v0, $v1, %lo(D_0013E650)
    /* 12EDC0 0022DE40 1600033C */  lui        $v1, %hi(D_0015F6E8)
    /* 12EDC4 0022DE44 E8F6638C */  lw         $v1, %lo(D_0015F6E8)($v1)
    /* 12EDC8 0022DE48 04006010 */  beqz       $v1, .L0022DE5C
    /* 12EDCC 0022DE4C 6B0040A0 */   sb        $zero, 0x6B($v0)
    /* 12EDD0 0022DE50 02000224 */  addiu      $v0, $zero, 0x2
    /* 12EDD4 0022DE54 08006214 */  bne        $v1, $v0, .L0022DE78
    /* 12EDD8 0022DE58 1000A227 */   addiu     $v0, $sp, 0x10
.align 2
  .L0022DE5C:
    /* 12EDDC 0022DE5C 1600023C */  lui        $v0, %hi(D_0015F6C8)
    /* 12EDE0 0022DE60 C8F6428C */  lw         $v0, %lo(D_0015F6C8)($v0)
    /* 12EDE4 0022DE64 04004014 */  bnez       $v0, .L0022DE78
    /* 12EDE8 0022DE68 1000A227 */   addiu     $v0, $sp, 0x10
    /* 12EDEC 0022DE6C 30B6080C */  jal        func_0022D8C0
    /* 12EDF0 0022DE70 2D20A003 */   daddu     $a0, $sp, $zero
    /* 12EDF4 0022DE74 1000A227 */  addiu      $v0, $sp, 0x10
.align 2
  .L0022DE78:
    /* 12EDF8 0022DE78 0000407C */  sq         $zero, 0x0($v0)
    /* 12EDFC 0022DE7C 1400043C */  lui        $a0, %hi(D_0013E650)
    /* 12EE00 0022DE80 FFFF0624 */  addiu      $a2, $zero, -0x1
    /* 12EE04 0022DE84 50E68824 */  addiu      $t0, $a0, %lo(D_0013E650)
    /* 12EE08 0022DE88 1800053C */  lui        $a1, %hi(D_00187180)
    /* 12EE0C 0022DE8C 4000028D */  lw         $v0, 0x40($t0)
    /* 12EE10 0022DE90 8071A724 */  addiu      $a3, $a1, %lo(D_00187180)
    /* 12EE14 0022DE94 01004424 */  addiu      $a0, $v0, 0x1
    /* 12EE18 0022DE98 2A18C400 */  slt        $v1, $a2, $a0
    /* 12EE1C 0022DE9C 04004224 */  addiu      $v0, $v0, 0x4
    /* 12EE20 0022DEA0 0B108300 */  movn       $v0, $a0, $v1
    /* 12EE24 0022DEA4 83100200 */  sra        $v0, $v0, 2
    /* 12EE28 0022DEA8 80100200 */  sll        $v0, $v0, 2
    /* 12EE2C 0022DEAC 23208200 */  subu       $a0, $a0, $v0
    /* 12EE30 0022DEB0 00190400 */  sll        $v1, $a0, 4
    /* 12EE34 0022DEB4 400004AD */  sw         $a0, 0x40($t0)
    /* 12EE38 0022DEB8 21186800 */  addu       $v1, $v1, $t0
    /* 12EE3C 0022DEBC 0000E278 */  lq         $v0, 0x0($a3)
    /* 12EE40 0022DEC0 0000627C */  sq         $v0, 0x0($v1)
    /* 12EE44 0022DEC4 1000A527 */  addiu      $a1, $sp, 0x10
    /* 12EE48 0022DEC8 3000A227 */  addiu      $v0, $sp, 0x30
    /* 12EE4C 0022DECC 0C02A5AF */  sw         $a1, 0x20C($sp)
    /* 12EE50 0022DED0 2D388000 */  daddu      $a3, $a0, $zero
    /* 12EE54 0022DED4 3001A527 */  addiu      $a1, $sp, 0x130
    /* 12EE58 0022DED8 1402A2AF */  sw         $v0, 0x214($sp)
    /* 12EE5C 0022DEDC C001A227 */  addiu      $v0, $sp, 0x1C0
    /* 12EE60 0022DEE0 0802A5AF */  sw         $a1, 0x208($sp)
    /* 12EE64 0022DEE4 0300E524 */  addiu      $a1, $a3, 0x3
    /* 12EE68 0022DEE8 1002A2AF */  sw         $v0, 0x210($sp)
    /* 12EE6C 0022DEEC 0600E224 */  addiu      $v0, $a3, 0x6
    /* 12EE70 0022DEF0 2A30C500 */  slt        $a2, $a2, $a1
    /* 12EE74 0022DEF4 B000A327 */  addiu      $v1, $sp, 0xB0
    /* 12EE78 0022DEF8 0B10A600 */  movn       $v0, $a1, $a2
    /* 12EE7C 0022DEFC 83800200 */  sra        $s0, $v0, 2
    /* 12EE80 0022DF00 1802A3AF */  sw         $v1, 0x218($sp)
    /* 12EE84 0022DF04 80181000 */  sll        $v1, $s0, 2
    /* 12EE88 0022DF08 2380A300 */  subu       $s0, $a1, $v1
    /* 12EE8C 0022DF0C 25000712 */  beq        $s0, $a3, .L0022DFA4
    /* 12EE90 0022DF10 2DA00000 */   daddu     $s4, $zero, $zero
    /* 12EE94 0022DF14 7042013C */  lui        $at, (0x42700000 >> 16)
    /* 12EE98 0022DF18 00A08144 */  mtc1       $at, $f20
    /* 12EE9C 0022DF1C 2D900001 */  daddu      $s2, $t0, $zero
    /* 12EEA0 0022DF20 0C02B38F */  lw         $s3, 0x20C($sp)
    /* 12EEA4 0022DF24 2000B127 */  addiu      $s1, $sp, 0x20
    /* 12EEA8 0022DF28 FFFF1524 */  addiu      $s5, $zero, -0x1
    /* 12EEAC 0022DF2C 00290700 */  sll        $a1, $a3, 4
.align 2
  .L0022DF30:
    /* 12EEB0 0022DF30 00311000 */  sll        $a2, $s0, 4
    /* 12EEB4 0022DF34 2128B200 */  addu       $a1, $a1, $s2
    /* 12EEB8 0022DF38 2130D200 */  addu       $a2, $a2, $s2
    /* 12EEBC 0022DF3C FCE6070C */  jal        func_001F9BF0
    /* 12EEC0 0022DF40 2D202002 */   daddu     $a0, $s1, $zero
    /* 12EEC4 0022DF44 2EE7070C */  jal        func_001F9CB8
    /* 12EEC8 0022DF48 2D202002 */   daddu     $a0, $s1, $zero
    /* 12EECC 0022DF4C 1600013C */  lui        $at, %hi(D_0015EE6C)
    /* 12EED0 0022DF50 6CEE21C4 */  lwc1       $f1, %lo(D_0015EE6C)($at)
    /* 12EED4 0022DF54 42081446 */  mul.s      $f1, $f1, $f20
    /* 12EED8 0022DF58 34000146 */  c.lt.s     $f0, $f1
    /* 12EEDC 0022DF5C 00000000 */  nop
    /* 12EEE0 0022DF60 10000045 */  bc1f       .L0022DFA4
    /* 12EEE4 0022DF64 2D206002 */   daddu     $a0, $s3, $zero
    /* 12EEE8 0022DF68 2D286002 */  daddu      $a1, $s3, $zero
    /* 12EEEC 0022DF6C 2D302002 */  daddu      $a2, $s1, $zero
    /* 12EEF0 0022DF70 F6E6070C */  jal        func_001F9BD8
    /* 12EEF4 0022DF74 01009426 */   addiu     $s4, $s4, 0x1
    /* 12EEF8 0022DF78 2D380002 */  daddu      $a3, $s0, $zero
    /* 12EEFC 0022DF7C 4000458E */  lw         $a1, 0x40($s2)
    /* 12EF00 0022DF80 0300E424 */  addiu      $a0, $a3, 0x3
    /* 12EF04 0022DF84 0600E224 */  addiu      $v0, $a3, 0x6
    /* 12EF08 0022DF88 2A18A402 */  slt        $v1, $s5, $a0
    /* 12EF0C 0022DF8C 0B108300 */  movn       $v0, $a0, $v1
    /* 12EF10 0022DF90 83800200 */  sra        $s0, $v0, 2
    /* 12EF14 0022DF94 80181000 */  sll        $v1, $s0, 2
    /* 12EF18 0022DF98 23808300 */  subu       $s0, $a0, $v1
    /* 12EF1C 0022DF9C E4FF0516 */  bne        $s0, $a1, .L0022DF30
    /* 12EF20 0022DFA0 00290700 */   sll       $a1, $a3, 4
.align 2
  .L0022DFA4:
    /* 12EF24 0022DFA4 0200822A */  slti       $v0, $s4, 0x2
    /* 12EF28 0022DFA8 0B004014 */  bnez       $v0, .L0022DFD8
    /* 12EF2C 0022DFAC E889838F */   lw        $v1, -0x7618($gp)
    /* 12EF30 0022DFB0 22EA070C */  jal        func_001FA888
    /* 12EF34 0022DFB4 2D208002 */   daddu     $a0, $s4, $zero
    /* 12EF38 0022DFB8 803F013C */  lui        $at, (0x3F800000 >> 16)
    /* 12EF3C 0022DFBC 00608144 */  mtc1       $at, $f12
    /* 12EF40 0022DFC0 0C02A48F */  lw         $a0, 0x20C($sp)
    /* 12EF44 0022DFC4 03630046 */  div.s      $f12, $f12, $f0
    /* 12EF48 0022DFC8 0CE7070C */  jal        func_001F9C30
    /* 12EF4C 0022DFCC 2D288000 */   daddu     $a1, $a0, $zero
    /* 12EF50 0022DFD0 1600033C */  lui        $v1, %hi(D_0015F6E8)
    /* 12EF54 0022DFD4 E8F6638C */  lw         $v1, %lo(D_0015F6E8)($v1)
.align 2
  .L0022DFD8:
    /* 12EF58 0022DFD8 02000224 */  addiu      $v0, $zero, 0x2
    /* 12EF5C 0022DFDC 14006254 */  bnel       $v1, $v0, .L0022E030
    /* 12EF60 0022DFE0 1400043C */   lui       $a0, %hi(D_0013E650)
    /* 12EF64 0022DFE4 2D280000 */  daddu      $a1, $zero, $zero
    /* 12EF68 0022DFE8 D2B8040C */  jal        func_0012E348
    /* 12EF6C 0022DFEC 01000424 */   addiu     $a0, $zero, 0x1
    /* 12EF70 0022DFF0 1400033C */  lui        $v1, %hi(D_0013E650)
    /* 12EF74 0022DFF4 2D200000 */  daddu      $a0, $zero, $zero
    /* 12EF78 0022DFF8 50E67024 */  addiu      $s0, $v1, %lo(D_0013E650)
    /* 12EF7C 0022DFFC 4800058E */  lw         $a1, 0x48($s0)
    /* 12EF80 0022E000 C2170500 */  srl        $v0, $a1, 31
    /* 12EF84 0022E004 2128A200 */  addu       $a1, $a1, $v0
    /* 12EF88 0022E008 D2B8040C */  jal        func_0012E348
    /* 12EF8C 0022E00C 43280500 */   sra       $a1, $a1, 1
    /* 12EF90 0022E010 5400058E */  lw         $a1, 0x54($s0)
    /* 12EF94 0022E014 03000424 */  addiu      $a0, $zero, 0x3
    /* 12EF98 0022E018 C2170500 */  srl        $v0, $a1, 31
    /* 12EF9C 0022E01C 2128A200 */  addu       $a1, $a1, $v0
    /* 12EFA0 0022E020 D2B8040C */  jal        func_0012E348
    /* 12EFA4 0022E024 43280500 */   sra       $a1, $a1, 1
    /* 12EFA8 0022E028 16000010 */  b          .L0022E084
    /* 12EFAC 0022E02C 1400023C */   lui       $v0, %hi(D_0013E650)
.align 2
  .L0022E030:
    /* 12EFB0 0022E030 0402A88F */  lw         $t0, 0x204($sp)
    /* 12EFB4 0022E034 50E69024 */  addiu      $s0, $a0, %lo(D_0013E650)
    /* 12EFB8 0022E038 09000011 */  beqz       $t0, .L0022E060
    /* 12EFBC 0022E03C 4C00058E */   lw        $a1, 0x4C($s0)
    /* 12EFC0 0022E040 40100500 */  sll        $v0, $a1, 1
    /* 12EFC4 0022E044 05000324 */  addiu      $v1, $zero, 0x5
    /* 12EFC8 0022E048 21104500 */  addu       $v0, $v0, $a1
    /* 12EFCC 0022E04C 01006050 */  beql       $v1, $zero, .L0022E054
    /* 12EFD0 0022E050 CD010000 */   break     0, 7
.align 2
  .L0022E054:
    /* 12EFD4 0022E054 1A004300 */  div        $zero, $v0, $v1
    /* 12EFD8 0022E058 12100000 */  mflo       $v0
    /* 12EFDC 0022E05C 2D284000 */  daddu      $a1, $v0, $zero
.align 2
  .L0022E060:
    /* 12EFE0 0022E060 D2B8040C */  jal        func_0012E348
    /* 12EFE4 0022E064 01000424 */   addiu     $a0, $zero, 0x1
    /* 12EFE8 0022E068 4800058E */  lw         $a1, 0x48($s0)
    /* 12EFEC 0022E06C D2B8040C */  jal        func_0012E348
    /* 12EFF0 0022E070 2D200000 */   daddu     $a0, $zero, $zero
    /* 12EFF4 0022E074 5400058E */  lw         $a1, 0x54($s0)
    /* 12EFF8 0022E078 D2B8040C */  jal        func_0012E348
    /* 12EFFC 0022E07C 03000424 */   addiu     $a0, $zero, 0x3
    /* 12F000 0022E080 1400023C */  lui        $v0, %hi(D_0013E650)
.align 2
  .L0022E084:
    /* 12F004 0022E084 1402B48F */  lw         $s4, 0x214($sp)
    /* 12F008 0022E088 50E65024 */  addiu      $s0, $v0, %lo(D_0013E650)
    /* 12F00C 0022E08C 02000424 */  addiu      $a0, $zero, 0x2
    /* 12F010 0022E090 5000058E */  lw         $a1, 0x50($s0)
    /* 12F014 0022E094 2DB00000 */  daddu      $s6, $zero, $zero
    /* 12F018 0022E098 0002A0AF */  sw         $zero, 0x200($sp)
    /* 12F01C 0022E09C D2B8040C */  jal        func_0012E348
    /* 12F020 0022E0A0 2D980002 */   daddu     $s3, $s0, $zero
    /* 12F024 0022E0A4 803F013C */  lui        $at, (0x3F800000 >> 16)
    /* 12F028 0022E0A8 00A08144 */  mtc1       $at, $f20
    /* 12F02C 0022E0AC 5800058E */  lw         $a1, 0x58($s0)
    /* 12F030 0022E0B0 04000424 */  addiu      $a0, $zero, 0x4
    /* 12F034 0022E0B4 1802BE8F */  lw         $fp, 0x218($sp)
    /* 12F038 0022E0B8 1400173C */  lui        $s7, %hi(D_0013E6E0)
    /* 12F03C 0022E0BC E0E6F726 */  addiu      $s7, $s7, %lo(D_0013E6E0)
    /* 12F040 0022E0C0 D2B8040C */  jal        func_0012E348
    /* 12F044 0022E0C4 2C02A0AF */   sw        $zero, 0x22C($sp)
    /* 12F048 0022E0C8 5C00058E */  lw         $a1, 0x5C($s0)
    /* 12F04C 0022E0CC D2B8040C */  jal        func_0012E348
    /* 12F050 0022E0D0 05000424 */   addiu     $a0, $zero, 0x5
    /* 12F054 0022E0D4 1402A48F */  lw         $a0, 0x214($sp)
    /* 12F058 0022E0D8 2D280000 */  daddu      $a1, $zero, $zero
    /* 12F05C 0022E0DC 6CE6070C */  jal        func_001F99B0
    /* 12F060 0022E0E0 78000624 */   addiu     $a2, $zero, 0x78
    /* 12F064 0022E0E4 1802A48F */  lw         $a0, 0x218($sp)
    /* 12F068 0022E0E8 2D280000 */  daddu      $a1, $zero, $zero
    /* 12F06C 0022E0EC 6CE6070C */  jal        func_001F99B0
    /* 12F070 0022E0F0 78000624 */   addiu     $a2, $zero, 0x78
    /* 12F074 0022E0F4 0802A48F */  lw         $a0, 0x208($sp)
    /* 12F078 0022E0F8 2D280000 */  daddu      $a1, $zero, $zero
    /* 12F07C 0022E0FC 6CE6070C */  jal        func_001F99B0
    /* 12F080 0022E100 78000624 */   addiu     $a2, $zero, 0x78
    /* 12F084 0022E104 B001B527 */  addiu      $s5, $sp, 0x1B0
.align 2
  .L0022E108:
    /* 12F088 0022E108 74006292 */  lbu        $v0, 0x74($s3)
    /* 12F08C 0022E10C 07000324 */  addiu      $v1, $zero, 0x7
    /* 12F090 0022E110 09004350 */  beql       $v0, $v1, .L0022E138
    /* 12F094 0022E114 8800708E */   lw        $s0, 0x88($s3)
    /* 12F098 0022E118 7000638E */  lw         $v1, 0x70($s3)
    /* 12F09C 0022E11C C8006010 */  beqz       $v1, .L0022E440
    /* 12F0A0 0022E120 2C02A28F */   lw        $v0, 0x22C($sp)
    /* 12F0A4 0022E124 FFFF023C */  lui        $v0, (0xFFFFFFFF >> 16)
    /* 12F0A8 0022E128 FFFF4234 */  ori        $v0, $v0, (0xFFFFFFFF & 0xFFFF)
    /* 12F0AC 0022E12C C4006210 */  beq        $v1, $v0, .L0022E440
    /* 12F0B0 0022E130 2C02A28F */   lw        $v0, 0x22C($sp)
    /* 12F0B4 0022E134 8800708E */  lw         $s0, 0x88($s3)
.align 2
  .L0022E138:
    /* 12F0B8 0022E138 08000012 */  beqz       $s0, .L0022E15C
    /* 12F0BC 0022E13C 2D200000 */   daddu     $a0, $zero, $zero
    /* 12F0C0 0022E140 20000392 */  lbu        $v1, 0x20($s0)
    /* 12F0C4 0022E144 FE000224 */  addiu      $v0, $zero, 0xFE
    /* 12F0C8 0022E148 03006210 */  beq        $v1, $v0, .L0022E158
    /* 12F0CC 0022E14C FD000224 */   addiu     $v0, $zero, 0xFD
    /* 12F0D0 0022E150 02006214 */  bne        $v1, $v0, .L0022E15C
    /* 12F0D4 0022E154 00000000 */   nop
.align 2
  .L0022E158:
    /* 12F0D8 0022E158 01000424 */  addiu      $a0, $zero, 0x1
.align 2
  .L0022E15C:
    /* 12F0DC 0022E15C 01008054 */  bnel       $a0, $zero, .L0022E164
    /* 12F0E0 0022E160 880060AE */   sw        $zero, 0x88($s3)
.align 2
  .L0022E164:
    /* 12F0E4 0022E164 74006392 */  lbu        $v1, 0x74($s3)
    /* 12F0E8 0022E168 04000224 */  addiu      $v0, $zero, 0x4
    /* 12F0EC 0022E16C 09006210 */  beq        $v1, $v0, .L0022E194
    /* 12F0F0 0022E170 06000524 */   addiu     $a1, $zero, 0x6
    /* 12F0F4 0022E174 0A006510 */  beq        $v1, $a1, .L0022E1A0
    /* 12F0F8 0022E178 E889838F */   lw        $v1, -0x7618($gp)
    /* 12F0FC 0022E17C 08008010 */  beqz       $a0, .L0022E1A0
    /* 12F100 0022E180 00000000 */   nop
    /* 12F104 0022E184 7800628E */  lw         $v0, 0x78($s3)
    /* 12F108 0022E188 18004390 */  lbu        $v1, 0x18($v0)
    /* 12F10C 0022E18C 04006010 */  beqz       $v1, .L0022E1A0
    /* 12F110 0022E190 E889838F */   lw        $v1, -0x7618($gp)
.align 2
  .L0022E194:
    /* 12F114 0022E194 20000824 */  addiu      $t0, $zero, 0x20
    /* 12F118 0022E198 A8000010 */  b          .L0022E43C
    /* 12F11C 0022E19C 000088AE */   sw        $t0, 0x0($s4)
.align 2
  .L0022E1A0:
    /* 12F120 0022E1A0 08006010 */  beqz       $v1, .L0022E1C4
    /* 12F124 0022E1A4 02000224 */   addiu     $v0, $zero, 0x2
    /* 12F128 0022E1A8 06006210 */  beq        $v1, $v0, .L0022E1C4
    /* 12F12C 0022E1AC 06000224 */   addiu     $v0, $zero, 0x6
    /* 12F130 0022E1B0 04006210 */  beq        $v1, $v0, .L0022E1C4
    /* 12F134 0022E1B4 07000324 */   addiu     $v1, $zero, 0x7
    /* 12F138 0022E1B8 74006292 */  lbu        $v0, 0x74($s3)
    /* 12F13C 0022E1BC 9E004314 */  bne        $v0, $v1, .L0022E438
    /* 12F140 0022E1C0 10000224 */   addiu     $v0, $zero, 0x10
.align 2
  .L0022E1C4:
    /* 12F144 0022E1C4 1400053C */  lui        $a1, %hi(D_0013E650)
    /* 12F148 0022E1C8 50E6A424 */  addiu      $a0, $a1, %lo(D_0013E650)
    /* 12F14C 0022E1CC 2188C402 */  addu       $s1, $s6, $a0
    /* 12F150 0022E1D0 8800258E */  lw         $a1, 0x88($s1)
    /* 12F154 0022E1D4 2D00A010 */  beqz       $a1, .L0022E28C
    /* 12F158 0022E1D8 2000A227 */   addiu     $v0, $sp, 0x20
    /* 12F15C 0022E1DC 75002392 */  lbu        $v1, 0x75($s1)
    /* 12F160 0022E1E0 08006230 */  andi       $v0, $v1, 0x8
    /* 12F164 0022E1E4 29004014 */  bnez       $v0, .L0022E28C
    /* 12F168 0022E1E8 2000A227 */   addiu     $v0, $sp, 0x20
    /* 12F16C 0022E1EC 40006230 */  andi       $v0, $v1, 0x40
    /* 12F170 0022E1F0 12004010 */  beqz       $v0, .L0022E23C
    /* 12F174 0022E1F4 C0000626 */   addiu     $a2, $s0, 0xC0
    /* 12F178 0022E1F8 A0008524 */  addiu      $a1, $a0, 0xA0
    /* 12F17C 0022E1FC 2D20A002 */  daddu      $a0, $s5, $zero
    /* 12F180 0022E200 B0E7070C */  jal        func_001F9EC0
    /* 12F184 0022E204 2128C502 */   addu      $a1, $s6, $a1
    /* 12F188 0022E208 10000626 */  addiu      $a2, $s0, 0x10
    /* 12F18C 0022E20C 2D20A002 */  daddu      $a0, $s5, $zero
    /* 12F190 0022E210 F6E6070C */  jal        func_001F9BD8
    /* 12F194 0022E214 2D28A002 */   daddu     $a1, $s5, $zero
    /* 12F198 0022E218 2000A427 */  addiu      $a0, $sp, 0x20
    /* 12F19C 0022E21C 2D28A002 */  daddu      $a1, $s5, $zero
    /* 12F1A0 0022E220 FCE6070C */  jal        func_001F9BF0
    /* 12F1A4 0022E224 2D30E002 */   daddu     $a2, $s7, $zero
    /* 12F1A8 0022E228 0000A27A */  lq         $v0, 0x0($s5)
    /* 12F1AC 0022E22C 0000E27E */  sq         $v0, 0x0($s7)
    /* 12F1B0 0022E230 2000B227 */  addiu      $s2, $sp, 0x20
    /* 12F1B4 0022E234 18000010 */  b          .L0022E298
    /* 12F1B8 0022E238 2D80A002 */   daddu     $s0, $s5, $zero
.align 2
  .L0022E23C:
    /* 12F1BC 0022E23C 980020C6 */  lwc1       $f0, 0x98($s1)
    /* 12F1C0 0022E240 1400083C */  lui        $t0, %hi(D_0013E6E0)
    /* 12F1C4 0022E244 E0E60825 */  addiu      $t0, $t0, %lo(D_0013E6E0)
    /* 12F1C8 0022E248 1000A524 */  addiu      $a1, $a1, 0x10
    /* 12F1CC 0022E24C 01001446 */  sub.s      $f0, $f0, $f20
    /* 12F1D0 0022E250 2180C802 */  addu       $s0, $s6, $t0
    /* 12F1D4 0022E254 2000A427 */  addiu      $a0, $sp, 0x20
    /* 12F1D8 0022E258 2D300002 */  daddu      $a2, $s0, $zero
    /* 12F1DC 0022E25C FCE6070C */  jal        func_001F9BF0
    /* 12F1E0 0022E260 980020E6 */   swc1      $f0, 0x98($s1)
    /* 12F1E4 0022E264 8800238E */  lw         $v1, 0x88($s1)
    /* 12F1E8 0022E268 10006324 */  addiu      $v1, $v1, 0x10
    /* 12F1EC 0022E26C 00006278 */  lq         $v0, 0x0($v1)
    /* 12F1F0 0022E270 0000027E */  sq         $v0, 0x0($s0)
    /* 12F1F4 0022E274 980020C6 */  lwc1       $f0, 0x98($s1)
    /* 12F1F8 0022E278 2000B227 */  addiu      $s2, $sp, 0x20
    /* 12F1FC 0022E27C B001B027 */  addiu      $s0, $sp, 0x1B0
    /* 12F200 0022E280 00001446 */  add.s      $f0, $f0, $f20
    /* 12F204 0022E284 04000010 */  b          .L0022E298
    /* 12F208 0022E288 980020E6 */   swc1      $f0, 0x98($s1)
.align 2
  .L0022E28C:
    /* 12F20C 0022E28C 0000407C */  sq         $zero, 0x0($v0)
    /* 12F210 0022E290 2000B227 */  addiu      $s2, $sp, 0x20
    /* 12F214 0022E294 B001B027 */  addiu      $s0, $sp, 0x1B0
.align 2
  .L0022E298:
    /* 12F218 0022E298 0C02A68F */  lw         $a2, 0x20C($sp)
    /* 12F21C 0022E29C 2D204002 */  daddu      $a0, $s2, $zero
    /* 12F220 0022E2A0 FCE6070C */  jal        func_001F9BF0
    /* 12F224 0022E2A4 2D284002 */   daddu     $a1, $s2, $zero
    /* 12F228 0022E2A8 1800023C */  lui        $v0, %hi(D_00187180)
    /* 12F22C 0022E2AC 2D30E002 */  daddu      $a2, $s7, $zero
    /* 12F230 0022E2B0 80714524 */  addiu      $a1, $v0, %lo(D_00187180)
    /* 12F234 0022E2B4 FCE6070C */  jal        func_001F9BF0
    /* 12F238 0022E2B8 2D200002 */   daddu     $a0, $s0, $zero
    /* 12F23C 0022E2BC 803F013C */  lui        $at, (0x3F800000 >> 16)
    /* 12F240 0022E2C0 00608144 */  mtc1       $at, $f12
    /* 12F244 0022E2C4 2D200002 */  daddu      $a0, $s0, $zero
    /* 12F248 0022E2C8 70E7070C */  jal        func_001F9DC0
    /* 12F24C 0022E2CC 2D280002 */   daddu     $a1, $s0, $zero
    /* 12F250 0022E2D0 2D200002 */  daddu      $a0, $s0, $zero
    /* 12F254 0022E2D4 1EE7070C */  jal        func_001F9C78
    /* 12F258 0022E2D8 2D284002 */   daddu     $a1, $s2, $zero
    /* 12F25C 0022E2DC 1400033C */  lui        $v1, %hi(D_0013E6E0)
    /* 12F260 0022E2E0 0802A48F */  lw         $a0, 0x208($sp)
    /* 12F264 0022E2E4 E0E66324 */  addiu      $v1, $v1, %lo(D_0013E6E0)
    /* 12F268 0022E2E8 2C02B18F */  lw         $s1, 0x22C($sp)
    /* 12F26C 0022E2EC 70FF6224 */  addiu      $v0, $v1, -0x90
    /* 12F270 0022E2F0 21189100 */  addu       $v1, $a0, $s1
    /* 12F274 0022E2F4 2180C202 */  addu       $s0, $s6, $v0
    /* 12F278 0022E2F8 000060E4 */  swc1       $f0, 0x0($v1)
    /* 12F27C 0022E2FC 75000292 */  lbu        $v0, 0x75($s0)
    /* 12F280 0022E300 10004230 */  andi       $v0, $v0, 0x10
    /* 12F284 0022E304 19004014 */  bnez       $v0, .L0022E36C
    /* 12F288 0022E308 1802A88F */   lw        $t0, 0x218($sp)
    /* 12F28C 0022E30C 1400053C */  lui        $a1, %hi(D_0013E6E0)
    /* 12F290 0022E310 E0E6A524 */  addiu      $a1, $a1, %lo(D_0013E6E0)
    /* 12F294 0022E314 E0FFA424 */  addiu      $a0, $a1, -0x20
    /* 12F298 0022E318 2D28E002 */  daddu      $a1, $s7, $zero
    /* 12F29C 0022E31C C0B6080C */  jal        func_0022DB00
    /* 12F2A0 0022E320 2120C402 */   addu      $a0, $s6, $a0
    /* 12F2A4 0022E324 8000038E */  lw         $v1, 0x80($s0)
    /* 12F2A8 0022E328 2D304000 */  daddu      $a2, $v0, $zero
    /* 12F2AC 0022E32C FFFF0424 */  addiu      $a0, $zero, -0x1
    /* 12F2B0 0022E330 7800058E */  lw         $a1, 0x78($s0)
    /* 12F2B4 0022E334 1818C300 */  mult       $v1, $a2, $v1
    /* 12F2B8 0022E338 2A208300 */  slt        $a0, $a0, $v1
    /* 12F2BC 0022E33C FF036224 */  addiu      $v0, $v1, 0x3FF
    /* 12F2C0 0022E340 0B106400 */  movn       $v0, $v1, $a0
    /* 12F2C4 0022E344 83120200 */  sra        $v0, $v0, 10
    /* 12F2C8 0022E348 0000C2AF */  sw         $v0, 0x0($fp)
    /* 12F2CC 0022E34C 1900A390 */  lbu        $v1, 0x19($a1)
    /* 12F2D0 0022E350 02006330 */  andi       $v1, $v1, 0x2
    /* 12F2D4 0022E354 0A006014 */  bnez       $v1, .L0022E380
    /* 12F2D8 0022E358 0402A28F */   lw        $v0, 0x204($sp)
    /* 12F2DC 0022E35C 0000828E */  lw         $v0, 0x0($s4)
    /* 12F2E0 0022E360 08004234 */  ori        $v0, $v0, 0x8
    /* 12F2E4 0022E364 05000010 */  b          .L0022E37C
    /* 12F2E8 0022E368 000082AE */   sw        $v0, 0x0($s4)
.align 2
  .L0022E36C:
    /* 12F2EC 0022E36C 00040624 */  addiu      $a2, $zero, 0x400
    /* 12F2F0 0022E370 8000038E */  lw         $v1, 0x80($s0)
    /* 12F2F4 0022E374 21101101 */  addu       $v0, $t0, $s1
    /* 12F2F8 0022E378 000043AC */  sw         $v1, 0x0($v0)
.align 2
  .L0022E37C:
    /* 12F2FC 0022E37C 0402A28F */  lw         $v0, 0x204($sp)
.align 2
  .L0022E380:
    /* 12F300 0022E380 11004050 */  beql       $v0, $zero, .L0022E3C8
    /* 12F304 0022E384 0000828E */   lw        $v0, 0x0($s4)
    /* 12F308 0022E388 7800638E */  lw         $v1, 0x78($s3)
    /* 12F30C 0022E38C 19006290 */  lbu        $v0, 0x19($v1)
    /* 12F310 0022E390 04004230 */  andi       $v0, $v0, 0x4
    /* 12F314 0022E394 0C004054 */  bnel       $v0, $zero, .L0022E3C8
    /* 12F318 0022E398 0000828E */   lw        $v0, 0x0($s4)
    /* 12F31C 0022E39C 980060C6 */  lwc1       $f0, 0x98($s3)
    /* 12F320 0022E3A0 34A80046 */  c.lt.s     $f21, $f0
    /* 12F324 0022E3A4 00000000 */  nop
    /* 12F328 0022E3A8 07000245 */  bc1fl      .L0022E3C8
    /* 12F32C 0022E3AC 0000828E */   lw        $v0, 0x0($s4)
    /* 12F330 0022E3B0 0000C28F */  lw         $v0, 0x0($fp)
    /* 12F334 0022E3B4 C21F0200 */  srl        $v1, $v0, 31
    /* 12F338 0022E3B8 21104300 */  addu       $v0, $v0, $v1
    /* 12F33C 0022E3BC 43100200 */  sra        $v0, $v0, 1
    /* 12F340 0022E3C0 0000C2AF */  sw         $v0, 0x0($fp)
    /* 12F344 0022E3C4 0000828E */  lw         $v0, 0x0($s4)
.align 2
  .L0022E3C8:
    /* 12F348 0022E3C8 2000C328 */  slti       $v1, $a2, 0x20
    /* 12F34C 0022E3CC 01004234 */  ori        $v0, $v0, 0x1
    /* 12F350 0022E3D0 0D006010 */  beqz       $v1, .L0022E408
    /* 12F354 0022E3D4 000082AE */   sw        $v0, 0x0($s4)
    /* 12F358 0022E3D8 1802A48F */  lw         $a0, 0x218($sp)
    /* 12F35C 0022E3DC 21189100 */  addu       $v1, $a0, $s1
    /* 12F360 0022E3E0 0000628C */  lw         $v0, 0x0($v1)
    /* 12F364 0022E3E4 20004228 */  slti       $v0, $v0, 0x20
    /* 12F368 0022E3E8 08004050 */  beql       $v0, $zero, .L0022E40C
    /* 12F36C 0022E3EC 75006292 */   lbu       $v0, 0x75($s3)
    /* 12F370 0022E3F0 75006292 */  lbu        $v0, 0x75($s3)
    /* 12F374 0022E3F4 04004230 */  andi       $v0, $v0, 0x4
    /* 12F378 0022E3F8 03004010 */  beqz       $v0, .L0022E408
    /* 12F37C 0022E3FC 20000524 */   addiu     $a1, $zero, 0x20
    /* 12F380 0022E400 0E000010 */  b          .L0022E43C
    /* 12F384 0022E404 000085AE */   sw        $a1, 0x0($s4)
.align 2
  .L0022E408:
    /* 12F388 0022E408 75006292 */  lbu        $v0, 0x75($s3)
.align 2
  .L0022E40C:
    /* 12F38C 0022E40C 01004238 */  xori       $v0, $v0, 0x1
    /* 12F390 0022E410 01004230 */  andi       $v0, $v0, 0x1
    /* 12F394 0022E414 0A004010 */  beqz       $v0, .L0022E440
    /* 12F398 0022E418 2C02A28F */   lw        $v0, 0x22C($sp)
    /* 12F39C 0022E41C 0000848E */  lw         $a0, 0x0($s4)
    /* 12F3A0 0022E420 75006392 */  lbu        $v1, 0x75($s3)
    /* 12F3A4 0022E424 02008234 */  ori        $v0, $a0, 0x2
    /* 12F3A8 0022E428 20006330 */  andi       $v1, $v1, 0x20
    /* 12F3AC 0022E42C 03006014 */  bnez       $v1, .L0022E43C
    /* 12F3B0 0022E430 000082AE */   sw        $v0, 0x0($s4)
    /* 12F3B4 0022E434 06008234 */  ori        $v0, $a0, 0x6
.align 2
  .L0022E438:
    /* 12F3B8 0022E438 000082AE */  sw         $v0, 0x0($s4)
.align 2
  .L0022E43C:
    /* 12F3BC 0022E43C 2C02A28F */  lw         $v0, 0x22C($sp)
.align 2
  .L0022E440:
    /* 12F3C0 0022E440 04009426 */  addiu      $s4, $s4, 0x4
    /* 12F3C4 0022E444 0002A88F */  lw         $t0, 0x200($sp)
    /* 12F3C8 0022E448 70007326 */  addiu      $s3, $s3, 0x70
    /* 12F3CC 0022E44C 04004224 */  addiu      $v0, $v0, 0x4
    /* 12F3D0 0022E450 0400DE27 */  addiu      $fp, $fp, 0x4
    /* 12F3D4 0022E454 01000825 */  addiu      $t0, $t0, 0x1
    /* 12F3D8 0022E458 2C02A2AF */  sw         $v0, 0x22C($sp)
    /* 12F3DC 0022E45C 0002A8AF */  sw         $t0, 0x200($sp)
    /* 12F3E0 0022E460 7000F726 */  addiu      $s7, $s7, 0x70
    /* 12F3E4 0022E464 1E000229 */  slti       $v0, $t0, 0x1E
    /* 12F3E8 0022E468 27FF4014 */  bnez       $v0, .L0022E108
    /* 12F3EC 0022E46C 7000D626 */   addiu     $s6, $s6, 0x70
    /* 12F3F0 0022E470 1402A48F */  lw         $a0, 0x214($sp)
    /* 12F3F4 0022E474 1400033C */  lui        $v1, %hi(D_0013E704)
    /* 12F3F8 0022E478 04E76324 */  addiu      $v1, $v1, %lo(D_0013E704)
    /* 12F3FC 0022E47C 0002A0AF */  sw         $zero, 0x200($sp)
    /* 12F400 0022E480 1802B48F */  lw         $s4, 0x218($sp)
    /* 12F404 0022E484 2402A3AF */  sw         $v1, 0x224($sp)
    /* 12F408 0022E488 2802A0AF */  sw         $zero, 0x228($sp)
    /* 12F40C 0022E48C 3002A4AF */  sw         $a0, 0x230($sp)
.align 2
  .L0022E490:
    /* 12F410 0022E490 3002A58F */  lw         $a1, 0x230($sp)
    /* 12F414 0022E494 0000A28C */  lw         $v0, 0x0($a1)
    /* 12F418 0022E498 08004230 */  andi       $v0, $v0, 0x8
    /* 12F41C 0022E49C A9004010 */  beqz       $v0, .L0022E744
    /* 12F420 0022E4A0 2802A28F */   lw        $v0, 0x228($sp)
    /* 12F424 0022E4A4 1400083C */  lui        $t0, %hi(D_0013E650)
    /* 12F428 0022E4A8 50E60725 */  addiu      $a3, $t0, %lo(D_0013E650)
    /* 12F42C 0022E4AC 07000324 */  addiu      $v1, $zero, 0x7
    /* 12F430 0022E4B0 21804700 */  addu       $s0, $v0, $a3
    /* 12F434 0022E4B4 74000292 */  lbu        $v0, 0x74($s0)
    /* 12F438 0022E4B8 55004314 */  bne        $v0, $v1, .L0022E610
    /* 12F43C 0022E4BC E889828F */   lw        $v0, -0x7618($gp)
    /* 12F440 0022E4C0 03004010 */  beqz       $v0, .L0022E4D0
    /* 12F444 0022E4C4 02000324 */   addiu     $v1, $zero, 0x2
    /* 12F448 0022E4C8 9F004314 */  bne        $v0, $v1, .L0022E748
    /* 12F44C 0022E4CC 0002A28F */   lw        $v0, 0x200($sp)
.align 2
  .L0022E4D0:
    /* 12F450 0022E4D0 1600023C */  lui        $v0, %hi(D_0015F6C8)
    /* 12F454 0022E4D4 C8F6428C */  lw         $v0, %lo(D_0015F6C8)($v0)
    /* 12F458 0022E4D8 9B004014 */  bnez       $v0, .L0022E748
    /* 12F45C 0022E4DC 0002A28F */   lw        $v0, 0x200($sp)
    /* 12F460 0022E4E0 1600033C */  lui        $v1, %hi(D_0015F6F0)
    /* 12F464 0022E4E4 F0F6638C */  lw         $v1, %lo(D_0015F6F0)($v1)
    /* 12F468 0022E4E8 980DE28C */  lw         $v0, 0xD98($a3)
    /* 12F46C 0022E4EC 10006210 */  beq        $v1, $v0, .L0022E530
    /* 12F470 0022E4F0 2D980000 */   daddu     $s3, $zero, $zero
    /* 12F474 0022E4F4 A00DF124 */  addiu      $s1, $a3, 0xDA0
    /* 12F478 0022E4F8 05001024 */  addiu      $s0, $zero, 0x5
    /* 12F47C 0022E4FC 00000000 */  nop
.align 2
  .L0022E500:
    /* 12F480 0022E500 2D202002 */  daddu      $a0, $s1, $zero
    /* 12F484 0022E504 30B6080C */  jal        func_0022D8C0
    /* 12F488 0022E508 FFFF1026 */   addiu     $s0, $s0, -0x1
    /* 12F48C 0022E50C 00000000 */  nop
    /* 12F490 0022E510 00000000 */  nop
    /* 12F494 0022E514 FAFF0106 */  bgez       $s0, .L0022E500
    /* 12F498 0022E518 10003126 */   addiu     $s1, $s1, 0x10
    /* 12F49C 0022E51C 1600033C */  lui        $v1, %hi(D_0015F6F0)
    /* 12F4A0 0022E520 F0F6638C */  lw         $v1, %lo(D_0015F6F0)($v1)
    /* 12F4A4 0022E524 1400043C */  lui        $a0, %hi(D_0013E650)
    /* 12F4A8 0022E528 50E68224 */  addiu      $v0, $a0, %lo(D_0013E650)
    /* 12F4AC 0022E52C 980D43AC */  sw         $v1, 0xD98($v0)
.align 2
  .L0022E530:
    /* 12F4B0 0022E530 0002A58F */  lw         $a1, 0x200($sp)
    /* 12F4B4 0022E534 70000224 */  addiu      $v0, $zero, 0x70
    /* 12F4B8 0022E538 1400033C */  lui        $v1, %hi(D_0013E6C0)
    /* 12F4BC 0022E53C 2D800000 */  daddu      $s0, $zero, $zero
    /* 12F4C0 0022E540 1890A200 */  mult       $s2, $a1, $v0
    /* 12F4C4 0022E544 C0E67524 */  addiu      $s5, $v1, %lo(D_0013E6C0)
    /* 12F4C8 0022E548 90FFBE26 */  addiu      $fp, $s5, -0x70
    /* 12F4CC 0022E54C 4400B626 */  addiu      $s6, $s5, 0x44
    /* 12F4D0 0022E550 A00DC927 */  addiu      $t1, $fp, 0xDA0
    /* 12F4D4 0022E554 2D880000 */  daddu      $s1, $zero, $zero
    /* 12F4D8 0022E558 B4005726 */  addiu      $s7, $s2, 0xB4
    /* 12F4DC 0022E55C 00000000 */  nop
.align 2
  .L0022E560:
    /* 12F4E0 0022E560 00291100 */  sll        $a1, $s1, 4
    /* 12F4E4 0022E564 21205502 */  addu       $a0, $s2, $s5
    /* 12F4E8 0022E568 2128A900 */  addu       $a1, $a1, $t1
    /* 12F4EC 0022E56C 5CB6080C */  jal        func_0022D970
    /* 12F4F0 0022E570 4002A97F */   sq        $t1, 0x240($sp)
    /* 12F4F4 0022E574 21181202 */  addu       $v1, $s0, $s2
    /* 12F4F8 0022E578 21201702 */  addu       $a0, $s0, $s7
    /* 12F4FC 0022E57C 21187600 */  addu       $v1, $v1, $s6
    /* 12F500 0022E580 21209E00 */  addu       $a0, $a0, $fp
    /* 12F504 0022E584 000062A0 */  sb         $v0, 0x0($v1)
    /* 12F508 0022E588 2D306000 */  daddu      $a2, $v1, $zero
    /* 12F50C 0022E58C 01002526 */  addiu      $a1, $s1, 0x1
    /* 12F510 0022E590 06006826 */  addiu      $t0, $s3, 0x6
    /* 12F514 0022E594 4002A97B */  lq         $t1, 0x240($sp)
    /* 12F518 0022E598 06000726 */  addiu      $a3, $s0, 0x6
    /* 12F51C 0022E59C 01008424 */  addiu      $a0, $a0, 0x1
    /* 12F520 0022E5A0 04000324 */  addiu      $v1, $zero, 0x4
    /* 12F524 0022E5A4 00000000 */  nop
.align 2
  .L0022E5A8:
    /* 12F528 0022E5A8 0000C290 */  lbu        $v0, 0x0($a2)
    /* 12F52C 0022E5AC FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 12F530 0022E5B0 000082A0 */  sb         $v0, 0x0($a0)
    /* 12F534 0022E5B4 00000000 */  nop
    /* 12F538 0022E5B8 00000000 */  nop
    /* 12F53C 0022E5BC FAFF6104 */  bgez       $v1, .L0022E5A8
    /* 12F540 0022E5C0 01008424 */   addiu     $a0, $a0, 0x1
    /* 12F544 0022E5C4 21101202 */  addu       $v0, $s0, $s2
    /* 12F548 0022E5C8 2D88A000 */  daddu      $s1, $a1, $zero
    /* 12F54C 0022E5CC 21105600 */  addu       $v0, $v0, $s6
    /* 12F550 0022E5D0 2D80E000 */  daddu      $s0, $a3, $zero
    /* 12F554 0022E5D4 00004390 */  lbu        $v1, 0x0($v0)
    /* 12F558 0022E5D8 2400042A */  slti       $a0, $s0, 0x24
    /* 12F55C 0022E5DC E0FF8014 */  bnez       $a0, .L0022E560
    /* 12F560 0022E5E0 0B980301 */   movn      $s3, $t0, $v1
    /* 12F564 0022E5E4 2400622A */  slti       $v0, $s3, 0x24
    /* 12F568 0022E5E8 48004010 */  beqz       $v0, .L0022E70C
    /* 12F56C 0022E5EC 1300622A */   slti      $v0, $s3, 0x13
    /* 12F570 0022E5F0 55004054 */  bnel       $v0, $zero, .L0022E748
    /* 12F574 0022E5F4 0002A28F */   lw        $v0, 0x200($sp)
    /* 12F578 0022E5F8 0000838E */  lw         $v1, 0x0($s4)
    /* 12F57C 0022E5FC 24000824 */  addiu      $t0, $zero, 0x24
    /* 12F580 0022E600 23101301 */  subu       $v0, $t0, $s3
    /* 12F584 0022E604 12000424 */  addiu      $a0, $zero, 0x12
    /* 12F588 0022E608 49000010 */  b          .L0022E730
    /* 12F58C 0022E60C 18104300 */   mult      $v0, $v0, $v1
.align 2
  .L0022E610:
    /* 12F590 0022E610 03004010 */  beqz       $v0, .L0022E620
    /* 12F594 0022E614 02000324 */   addiu     $v1, $zero, 0x2
    /* 12F598 0022E618 36004314 */  bne        $v0, $v1, .L0022E6F4
    /* 12F59C 0022E61C 2402A48F */   lw        $a0, 0x224($sp)
.align 2
  .L0022E620:
    /* 12F5A0 0022E620 1600023C */  lui        $v0, %hi(D_0015F6C8)
    /* 12F5A4 0022E624 C8F6428C */  lw         $v0, %lo(D_0015F6C8)($v0)
    /* 12F5A8 0022E628 32004014 */  bnez       $v0, .L0022E6F4
    /* 12F5AC 0022E62C 2402A48F */   lw        $a0, 0x224($sp)
    /* 12F5B0 0022E630 B000028E */  lw         $v0, 0xB0($s0)
    /* 12F5B4 0022E634 24000624 */  addiu      $a2, $zero, 0x24
    /* 12F5B8 0022E638 0100C050 */  beql       $a2, $zero, .L0022E640
    /* 12F5BC 0022E63C CD010000 */   break     0, 7
.align 2
  .L0022E640:
    /* 12F5C0 0022E640 01004224 */  addiu      $v0, $v0, 0x1
    /* 12F5C4 0022E644 1600053C */  lui        $a1, %hi(D_0015F6F0)
    /* 12F5C8 0022E648 F0F6A58C */  lw         $a1, %lo(D_0015F6F0)($a1)
    /* 12F5CC 0022E64C 1B004600 */  divu       $zero, $v0, $a2
    /* 12F5D0 0022E650 0002A88F */  lw         $t0, 0x200($sp)
    /* 12F5D4 0022E654 75000392 */  lbu        $v1, 0x75($s0)
    /* 12F5D8 0022E658 26100501 */  xor        $v0, $t0, $a1
    /* 12F5DC 0022E65C 01004230 */  andi       $v0, $v0, 0x1
    /* 12F5E0 0022E660 04006330 */  andi       $v1, $v1, 0x4
    /* 12F5E4 0022E664 10200000 */  mfhi       $a0
    /* 12F5E8 0022E668 04006014 */  bnez       $v1, .L0022E67C
    /* 12F5EC 0022E66C B00004AE */   sw        $a0, 0xB0($s0)
    /* 12F5F0 0022E670 2610A800 */  xor        $v0, $a1, $t0
    /* 12F5F4 0022E674 03004230 */  andi       $v0, $v0, 0x3
    /* 12F5F8 0022E678 0100422C */  sltiu      $v0, $v0, 0x1
.align 2
  .L0022E67C:
    /* 12F5FC 0022E67C 0D004010 */  beqz       $v0, .L0022E6B4
    /* 12F600 0022E680 2802A28F */   lw        $v0, 0x228($sp)
    /* 12F604 0022E684 7000E424 */  addiu      $a0, $a3, 0x70
    /* 12F608 0022E688 2D28A003 */  daddu      $a1, $sp, $zero
    /* 12F60C 0022E68C 5CB6080C */  jal        func_0022D970
    /* 12F610 0022E690 21204400 */   addu      $a0, $v0, $a0
    /* 12F614 0022E694 B000038E */  lw         $v1, 0xB0($s0)
    /* 12F618 0022E698 1400053C */  lui        $a1, %hi(D_0013E704)
    /* 12F61C 0022E69C 2802A48F */  lw         $a0, 0x228($sp)
    /* 12F620 0022E6A0 04E7A524 */  addiu      $a1, $a1, %lo(D_0013E704)
    /* 12F624 0022E6A4 21186400 */  addu       $v1, $v1, $a0
    /* 12F628 0022E6A8 21186500 */  addu       $v1, $v1, $a1
    /* 12F62C 0022E6AC 10000010 */  b          .L0022E6F0
    /* 12F630 0022E6B0 000062A0 */   sb        $v0, 0x0($v1)
.align 2
  .L0022E6B4:
    /* 12F634 0022E6B4 23008224 */  addiu      $v0, $a0, 0x23
    /* 12F638 0022E6B8 24000824 */  addiu      $t0, $zero, 0x24
    /* 12F63C 0022E6BC 1B004600 */  divu       $zero, $v0, $a2
    /* 12F640 0022E6C0 01000051 */  beql       $t0, $zero, .L0022E6C8
    /* 12F644 0022E6C4 CD010000 */   break     0, 7
.align 2
  .L0022E6C8:
    /* 12F648 0022E6C8 2802A28F */  lw         $v0, 0x228($sp)
    /* 12F64C 0022E6CC 1400053C */  lui        $a1, %hi(D_0013E704)
    /* 12F650 0022E6D0 04E7A524 */  addiu      $a1, $a1, %lo(D_0013E704)
    /* 12F654 0022E6D4 21208200 */  addu       $a0, $a0, $v0
    /* 12F658 0022E6D8 21208500 */  addu       $a0, $a0, $a1
    /* 12F65C 0022E6DC 10180000 */  mfhi       $v1
    /* 12F660 0022E6E0 21186200 */  addu       $v1, $v1, $v0
    /* 12F664 0022E6E4 21186500 */  addu       $v1, $v1, $a1
    /* 12F668 0022E6E8 00006290 */  lbu        $v0, 0x0($v1)
    /* 12F66C 0022E6EC 000082A0 */  sb         $v0, 0x0($a0)
.align 2
  .L0022E6F0:
    /* 12F670 0022E6F0 2402A48F */  lw         $a0, 0x224($sp)
.align 2
  .L0022E6F4:
    /* 12F674 0022E6F4 D8E7070C */  jal        func_001F9F60
    /* 12F678 0022E6F8 24000524 */   addiu     $a1, $zero, 0x24
    /* 12F67C 0022E6FC 2D204000 */  daddu      $a0, $v0, $zero
    /* 12F680 0022E700 24008228 */  slti       $v0, $a0, 0x24
    /* 12F684 0022E704 03004014 */  bnez       $v0, .L0022E714
    /* 12F688 0022E708 13008228 */   slti      $v0, $a0, 0x13
.align 2
  .L0022E70C:
    /* 12F68C 0022E70C 0D000010 */  b          .L0022E744
    /* 12F690 0022E710 000080AE */   sw        $zero, 0x0($s4)
.align 2
  .L0022E714:
    /* 12F694 0022E714 0C004014 */  bnez       $v0, .L0022E748
    /* 12F698 0022E718 0002A28F */   lw        $v0, 0x200($sp)
    /* 12F69C 0022E71C 0000838E */  lw         $v1, 0x0($s4)
    /* 12F6A0 0022E720 24000824 */  addiu      $t0, $zero, 0x24
    /* 12F6A4 0022E724 23100401 */  subu       $v0, $t0, $a0
    /* 12F6A8 0022E728 18104300 */  mult       $v0, $v0, $v1
    /* 12F6AC 0022E72C 12000424 */  addiu      $a0, $zero, 0x12
.align 2
  .L0022E730:
    /* 12F6B0 0022E730 01008050 */  beql       $a0, $zero, .L0022E738
    /* 12F6B4 0022E734 CD010000 */   break     0, 7
.align 2
  .L0022E738:
    /* 12F6B8 0022E738 1A004400 */  div        $zero, $v0, $a0
    /* 12F6BC 0022E73C 12100000 */  mflo       $v0
    /* 12F6C0 0022E740 000082AE */  sw         $v0, 0x0($s4)
.align 2
  .L0022E744:
    /* 12F6C4 0022E744 0002A28F */  lw         $v0, 0x200($sp)
.align 2
  .L0022E748:
    /* 12F6C8 0022E748 04009426 */  addiu      $s4, $s4, 0x4
    /* 12F6CC 0022E74C 2402A38F */  lw         $v1, 0x224($sp)
    /* 12F6D0 0022E750 2802A48F */  lw         $a0, 0x228($sp)
    /* 12F6D4 0022E754 01004224 */  addiu      $v0, $v0, 0x1
    /* 12F6D8 0022E758 3002A58F */  lw         $a1, 0x230($sp)
    /* 12F6DC 0022E75C 70006324 */  addiu      $v1, $v1, 0x70
    /* 12F6E0 0022E760 0002A2AF */  sw         $v0, 0x200($sp)
    /* 12F6E4 0022E764 70008424 */  addiu      $a0, $a0, 0x70
    /* 12F6E8 0022E768 0400A524 */  addiu      $a1, $a1, 0x4
    /* 12F6EC 0022E76C 2402A3AF */  sw         $v1, 0x224($sp)
    /* 12F6F0 0022E770 2802A4AF */  sw         $a0, 0x228($sp)
    /* 12F6F4 0022E774 1E004228 */  slti       $v0, $v0, 0x1E
    /* 12F6F8 0022E778 45FF4014 */  bnez       $v0, .L0022E490
    /* 12F6FC 0022E77C 3002A5AF */   sw        $a1, 0x230($sp)
    /* 12F700 0022E780 1800053C */  lui        $a1, %hi(D_00187390)
    /* 12F704 0022E784 1002A48F */  lw         $a0, 0x210($sp)
    /* 12F708 0022E788 9073A524 */  addiu      $a1, $a1, %lo(D_00187390)
    /* 12F70C 0022E78C 28E9070C */  jal        func_001FA4A0
    /* 12F710 0022E790 2DA80000 */   daddu     $s5, $zero, $zero
    /* 12F714 0022E794 0802A88F */  lw         $t0, 0x208($sp)
    /* 12F718 0022E798 1400023C */  lui        $v0, %hi(D_0013E6C0)
    /* 12F71C 0022E79C C0E64224 */  addiu      $v0, $v0, %lo(D_0013E6C0)
    /* 12F720 0022E7A0 1402BE8F */  lw         $fp, 0x214($sp)
    /* 12F724 0022E7A4 2002A8AF */  sw         $t0, 0x220($sp)
    /* 12F728 0022E7A8 1C02A2AF */  sw         $v0, 0x21C($sp)
    /* 12F72C 0022E7AC 1802B78F */  lw         $s7, 0x218($sp)
.align 2
  .L0022E7B0:
    /* 12F730 0022E7B0 0000C48F */  lw         $a0, 0x0($fp)
    /* 12F734 0022E7B4 72008010 */  beqz       $a0, .L0022E980
    /* 12F738 0022E7B8 1400033C */   lui       $v1, %hi(D_0013E650)
    /* 12F73C 0022E7BC FFFF023C */  lui        $v0, (0xFFFFFFFF >> 16)
    /* 12F740 0022E7C0 50E66524 */  addiu      $a1, $v1, %lo(D_0013E650)
    /* 12F744 0022E7C4 FFFF4234 */  ori        $v0, $v0, (0xFFFFFFFF & 0xFFFF)
    /* 12F748 0022E7C8 2180A502 */  addu       $s0, $s5, $a1
    /* 12F74C 0022E7CC 20008330 */  andi       $v1, $a0, 0x20
    /* 12F750 0022E7D0 7000128E */  lw         $s2, 0x70($s0)
    /* 12F754 0022E7D4 16006010 */  beqz       $v1, .L0022E830
    /* 12F758 0022E7D8 700002AE */   sw        $v0, 0x70($s0)
    /* 12F75C 0022E7DC 74000292 */  lbu        $v0, 0x74($s0)
    /* 12F760 0022E7E0 07000424 */  addiu      $a0, $zero, 0x7
    /* 12F764 0022E7E4 05004414 */  bne        $v0, $a0, .L0022E7FC
    /* 12F768 0022E7E8 00000000 */   nop
    /* 12F76C 0022E7EC 740000A2 */  sb         $zero, 0x74($s0)
    /* 12F770 0022E7F0 880000AE */  sw         $zero, 0x88($s0)
    /* 12F774 0022E7F4 62000010 */  b          .L0022E980
    /* 12F778 0022E7F8 8C0000AE */   sw        $zero, 0x8C($s0)
.align 2
  .L0022E7FC:
    /* 12F77C 0022E7FC 2AB9040C */  jal        func_0012E4A8
    /* 12F780 0022E800 2D204002 */   daddu     $a0, $s2, $zero
    /* 12F784 0022E804 06000224 */  addiu      $v0, $zero, 0x6
    /* 12F788 0022E808 2300083C */  lui        $t0, %hi(func_0022F0F0)
    /* 12F78C 0022E80C 740002A2 */  sb         $v0, 0x74($s0)
    /* 12F790 0022E810 2D204002 */  daddu      $a0, $s2, $zero
    /* 12F794 0022E814 1400023C */  lui        $v0, %hi(D_0013E6C0)
    /* 12F798 0022E818 F0F00525 */  addiu      $a1, $t0, %lo(func_0022F0F0)
    /* 12F79C 0022E81C C0E64224 */  addiu      $v0, $v0, %lo(D_0013E6C0)
    /* 12F7A0 0022E820 62B9040C */  jal        func_0012E588
    /* 12F7A4 0022E824 2130A202 */   addu      $a2, $s5, $v0
    /* 12F7A8 0022E828 56000010 */  b          .L0022E984
    /* 12F7AC 0022E82C 1C02A48F */   lw        $a0, 0x21C($sp)
.align 2
  .L0022E830:
    /* 12F7B0 0022E830 10008230 */  andi       $v0, $a0, 0x10
    /* 12F7B4 0022E834 09004010 */  beqz       $v0, .L0022E85C
    /* 12F7B8 0022E838 1400083C */   lui       $t0, %hi(D_0013E6C0)
    /* 12F7BC 0022E83C 2300033C */  lui        $v1, %hi(func_0022F0F0)
    /* 12F7C0 0022E840 C0E60825 */  addiu      $t0, $t0, %lo(D_0013E6C0)
    /* 12F7C4 0022E844 2D204002 */  daddu      $a0, $s2, $zero
    /* 12F7C8 0022E848 F0F06524 */  addiu      $a1, $v1, %lo(func_0022F0F0)
    /* 12F7CC 0022E84C 62B9040C */  jal        func_0012E588
    /* 12F7D0 0022E850 2130A802 */   addu      $a2, $s5, $t0
    /* 12F7D4 0022E854 4B000010 */  b          .L0022E984
    /* 12F7D8 0022E858 1C02A48F */   lw        $a0, 0x21C($sp)
.align 2
  .L0022E85C:
    /* 12F7DC 0022E85C 8400148E */  lw         $s4, 0x84($s0)
    /* 12F7E0 0022E860 01001124 */  addiu      $s1, $zero, 0x1
    /* 12F7E4 0022E864 11000224 */  addiu      $v0, $zero, 0x11
    /* 12F7E8 0022E868 02008330 */  andi       $v1, $a0, 0x2
    /* 12F7EC 0022E86C 0B885400 */  movn       $s1, $v0, $s4
    /* 12F7F0 0022E870 2DB00000 */  daddu      $s6, $zero, $zero
    /* 12F7F4 0022E874 0A006010 */  beqz       $v1, .L0022E8A0
    /* 12F7F8 0022E878 2D980000 */   daddu     $s3, $zero, $zero
    /* 12F7FC 0022E87C 1400023C */  lui        $v0, %hi(D_0013E6C0)
    /* 12F800 0022E880 9000A524 */  addiu      $a1, $a1, 0x90
    /* 12F804 0022E884 C0E64224 */  addiu      $v0, $v0, %lo(D_0013E6C0)
    /* 12F808 0022E888 1002A68F */  lw         $a2, 0x210($sp)
    /* 12F80C 0022E88C 2120A202 */  addu       $a0, $s5, $v0
    /* 12F810 0022E890 D2B6080C */  jal        func_0022DB48
    /* 12F814 0022E894 2128A502 */   addu      $a1, $s5, $a1
    /* 12F818 0022E898 06003136 */  ori        $s1, $s1, 0x6
    /* 12F81C 0022E89C 2DB04000 */  daddu      $s6, $v0, $zero
.align 2
  .L0022E8A0:
    /* 12F820 0022E8A0 0000C28F */  lw         $v0, 0x0($fp)
    /* 12F824 0022E8A4 04004230 */  andi       $v0, $v0, 0x4
    /* 12F828 0022E8A8 0A004010 */  beqz       $v0, .L0022E8D4
    /* 12F82C 0022E8AC 2002A38F */   lw        $v1, 0x220($sp)
    /* 12F830 0022E8B0 08003136 */  ori        $s1, $s1, 0x8
    /* 12F834 0022E8B4 9643013C */  lui        $at, (0x43960000 >> 16)
    /* 12F838 0022E8B8 00608144 */  mtc1       $at, $f12
    /* 12F83C 0022E8BC 000060C4 */  lwc1       $f0, 0x0($v1)
    /* 12F840 0022E8C0 26EA070C */  jal        func_001FA898
    /* 12F844 0022E8C4 02030C46 */   mul.s     $f12, $f0, $f12
    /* 12F848 0022E8C8 B8BC040C */  jal        func_0012F2E0
    /* 12F84C 0022E8CC 2D204000 */   daddu     $a0, $v0, $zero
    /* 12F850 0022E8D0 2D984000 */  daddu      $s3, $v0, $zero
.align 2
  .L0022E8D4:
    /* 12F854 0022E8D4 0402A48F */  lw         $a0, 0x204($sp)
    /* 12F858 0022E8D8 09008010 */  beqz       $a0, .L0022E900
    /* 12F85C 0022E8DC 1400053C */   lui       $a1, %hi(D_0013E650)
    /* 12F860 0022E8E0 7800038E */  lw         $v1, 0x78($s0)
    /* 12F864 0022E8E4 19006290 */  lbu        $v0, 0x19($v1)
    /* 12F868 0022E8E8 08004230 */  andi       $v0, $v0, 0x8
    /* 12F86C 0022E8EC 05004014 */  bnez       $v0, .L0022E904
    /* 12F870 0022E8F0 07000824 */   addiu     $t0, $zero, 0x7
    /* 12F874 0022E8F4 08003136 */  ori        $s1, $s1, 0x8
    /* 12F878 0022E8F8 0CFA7326 */  addiu      $s3, $s3, -0x5F4
    /* 12F87C 0022E8FC 1400053C */  lui        $a1, %hi(D_0013E650)
.align 2
  .L0022E900:
    /* 12F880 0022E900 07000824 */  addiu      $t0, $zero, 0x7
.align 2
  .L0022E904:
    /* 12F884 0022E904 50E6A524 */  addiu      $a1, $a1, %lo(D_0013E650)
    /* 12F888 0022E908 2120A502 */  addu       $a0, $s5, $a1
    /* 12F88C 0022E90C 74008290 */  lbu        $v0, 0x74($a0)
    /* 12F890 0022E910 0C004810 */  beq        $v0, $t0, .L0022E944
    /* 12F894 0022E914 2300023C */   lui       $v0, %hi(func_0022F0F0)
    /* 12F898 0022E918 0000E68E */  lw         $a2, 0x0($s7)
    /* 12F89C 0022E91C 1C02AB8F */  lw         $t3, 0x21C($sp)
    /* 12F8A0 0022E920 2D204002 */  daddu      $a0, $s2, $zero
    /* 12F8A4 0022E924 2D282002 */  daddu      $a1, $s1, $zero
    /* 12F8A8 0022E928 2D38C002 */  daddu      $a3, $s6, $zero
    /* 12F8AC 0022E92C 2D406002 */  daddu      $t0, $s3, $zero
    /* 12F8B0 0022E930 2D488002 */  daddu      $t1, $s4, $zero
    /* 12F8B4 0022E934 80B9040C */  jal        func_0012E600
    /* 12F8B8 0022E938 F0F04A24 */   addiu     $t2, $v0, %lo(func_0022F0F0)
    /* 12F8BC 0022E93C 11000010 */  b          .L0022E984
    /* 12F8C0 0022E940 1C02A48F */   lw        $a0, 0x21C($sp)
.align 2
  .L0022E944:
    /* 12F8C4 0022E944 01000224 */  addiu      $v0, $zero, 0x1
    /* 12F8C8 0022E948 7800838C */  lw         $v1, 0x78($a0)
    /* 12F8CC 0022E94C 740082A0 */  sb         $v0, 0x74($a0)
    /* 12F8D0 0022E950 2D38C002 */  daddu      $a3, $s6, $zero
    /* 12F8D4 0022E954 1400023C */  lui        $v0, %hi(D_0013E6C0)
    /* 12F8D8 0022E958 2D406002 */  daddu      $t0, $s3, $zero
    /* 12F8DC 0022E95C 1A006584 */  lh         $a1, 0x1A($v1)
    /* 12F8E0 0022E960 C0E64224 */  addiu      $v0, $v0, %lo(D_0013E6C0)
    /* 12F8E4 0022E964 1C00648C */  lw         $a0, 0x1C($v1)
    /* 12F8E8 0022E968 2D488002 */  daddu      $t1, $s4, $zero
    /* 12F8EC 0022E96C 2300033C */  lui        $v1, %hi(func_0022F0A8)
    /* 12F8F0 0022E970 0000E68E */  lw         $a2, 0x0($s7)
    /* 12F8F4 0022E974 A8F06A24 */  addiu      $t2, $v1, %lo(func_0022F0A8)
    /* 12F8F8 0022E978 12B9040C */  jal        func_0012E448
    /* 12F8FC 0022E97C 2158A202 */   addu      $t3, $s5, $v0
.align 2
  .L0022E980:
    /* 12F900 0022E980 1C02A48F */  lw         $a0, 0x21C($sp)
.align 2
  .L0022E984:
    /* 12F904 0022E984 0400F726 */  addiu      $s7, $s7, 0x4
    /* 12F908 0022E988 2002A58F */  lw         $a1, 0x220($sp)
    /* 12F90C 0022E98C 7000B526 */  addiu      $s5, $s5, 0x70
    /* 12F910 0022E990 1802A38F */  lw         $v1, 0x218($sp)
    /* 12F914 0022E994 70008424 */  addiu      $a0, $a0, 0x70
    /* 12F918 0022E998 0400A524 */  addiu      $a1, $a1, 0x4
    /* 12F91C 0022E99C 1C02A4AF */  sw         $a0, 0x21C($sp)
    /* 12F920 0022E9A0 78006224 */  addiu      $v0, $v1, 0x78
    /* 12F924 0022E9A4 2002A5AF */  sw         $a1, 0x220($sp)
    /* 12F928 0022E9A8 2A10E202 */  slt        $v0, $s7, $v0
    /* 12F92C 0022E9AC 80FF4014 */  bnez       $v0, .L0022E7B0
    /* 12F930 0022E9B0 0400DE27 */   addiu     $fp, $fp, 0x4
    /* 12F934 0022E9B4 4C5C080C */  jal        func_00217130
    /* 12F938 0022E9B8 00000000 */   nop
    /* 12F93C 0022E9BC 10BB040C */  jal        func_0012EC40
    /* 12F940 0022E9C0 00000000 */   nop
    /* 12F944 0022E9C4 70B7040C */  jal        func_0012DDC0
    /* 12F948 0022E9C8 00000000 */   nop
    /* 12F94C 0022E9CC 0CBB040C */  jal        func_0012EC30
    /* 12F950 0022E9D0 00000000 */   nop
    /* 12F954 0022E9D4 1400083C */  lui        $t0, %hi(D_0013E650)
    /* 12F958 0022E9D8 E002BF7B */  lq         $ra, 0x2E0($sp)
    /* 12F95C 0022E9DC 50E60325 */  addiu      $v1, $t0, %lo(D_0013E650)
    /* 12F960 0022E9E0 D002BE7B */  lq         $fp, 0x2D0($sp)
    /* 12F964 0022E9E4 C002B77B */  lq         $s7, 0x2C0($sp)
    /* 12F968 0022E9E8 2D100000 */  daddu      $v0, $zero, $zero
    /* 12F96C 0022E9EC B002B67B */  lq         $s6, 0x2B0($sp)
    /* 12F970 0022E9F0 A002B57B */  lq         $s5, 0x2A0($sp)
    /* 12F974 0022E9F4 9002B47B */  lq         $s4, 0x290($sp)
    /* 12F978 0022E9F8 8002B37B */  lq         $s3, 0x280($sp)
    /* 12F97C 0022E9FC 7002B27B */  lq         $s2, 0x270($sp)
    /* 12F980 0022EA00 6002B17B */  lq         $s1, 0x260($sp)
    /* 12F984 0022EA04 5002B07B */  lq         $s0, 0x250($sp)
    /* 12F988 0022EA08 F802B5C7 */  lwc1       $f21, 0x2F8($sp)
    /* 12F98C 0022EA0C F002B4C7 */  lwc1       $f20, 0x2F0($sp)
    /* 12F990 0022EA10 6C0060AC */  sw         $zero, 0x6C($v1)
    /* 12F994 0022EA14 0800E003 */  jr         $ra
    /* 12F998 0022EA18 0003BD27 */   addiu     $sp, $sp, 0x300
endlabel func_0022DD68
    /* 12F99C 0022EA1C 00000000 */  nop
