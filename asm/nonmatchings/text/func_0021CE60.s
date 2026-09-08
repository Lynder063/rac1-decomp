.align 3
nonmatching func_0021CE60, 0x5C0

glabel func_0021CE60
    /* 11DDE0 0021CE60 60FFBD27 */  addiu      $sp, $sp, -0xA0
    /* 11DDE4 0021CE64 3000B37F */  sq         $s3, 0x30($sp)
    /* 11DDE8 0021CE68 7000B77F */  sq         $s7, 0x70($sp)
    /* 11DDEC 0021CE6C 2D988000 */  daddu      $s3, $a0, $zero
    /* 11DDF0 0021CE70 9000BF7F */  sq         $ra, 0x90($sp)
    /* 11DDF4 0021CE74 1A00173C */  lui        $s7, %hi(D_001A01F0)
    /* 11DDF8 0021CE78 8000BE7F */  sq         $fp, 0x80($sp)
    /* 11DDFC 0021CE7C 6000B67F */  sq         $s6, 0x60($sp)
    /* 11DE00 0021CE80 5000B57F */  sq         $s5, 0x50($sp)
    /* 11DE04 0021CE84 4000B47F */  sq         $s4, 0x40($sp)
    /* 11DE08 0021CE88 2000B27F */  sq         $s2, 0x20($sp)
    /* 11DE0C 0021CE8C 1000B17F */  sq         $s1, 0x10($sp)
    /* 11DE10 0021CE90 1C17080C */  jal        func_00205C70
    /* 11DE14 0021CE94 0000B07F */   sq        $s0, 0x0($sp)
    /* 11DE18 0021CE98 3400638E */  lw         $v1, 0x34($s3)
    /* 11DE1C 0021CE9C 40006330 */  andi       $v1, $v1, 0x40
    /* 11DE20 0021CEA0 65006014 */  bnez       $v1, .L0021D038
    /* 11DE24 0021CEA4 F001F226 */   addiu     $s2, $s7, %lo(D_001A01F0)
    /* 11DE28 0021CEA8 1400023C */  lui        $v0, %hi(D_0013CA40)
    /* 11DE2C 0021CEAC F001E426 */  addiu      $a0, $s7, %lo(D_001A01F0)
    /* 11DE30 0021CEB0 2D804000 */  daddu      $s0, $v0, $zero
    /* 11DE34 0021CEB4 40CA4224 */  addiu      $v0, $v0, %lo(D_0013CA40)
    /* 11DE38 0021CEB8 C401438C */  lw         $v1, 0x1C4($v0)
    /* 11DE3C 0021CEBC 000D6330 */  andi       $v1, $v1, 0xD00
    /* 11DE40 0021CEC0 07006010 */  beqz       $v1, .L0021CEE0
    /* 11DE44 0021CEC4 2402928C */   lw        $s2, 0x224($a0)
    /* 11DE48 0021CEC8 1D00023C */  lui        $v0, %hi(D_001D6094)
    /* 11DE4C 0021CECC 9460438C */  lw         $v1, %lo(D_001D6094)($v0)
    /* 11DE50 0021CED0 04006014 */  bnez       $v1, .L0021CEE4
    /* 11DE54 0021CED4 40CA0326 */   addiu     $v1, $s0, %lo(D_0013CA40)
    /* 11DE58 0021CED8 45010010 */  b          .L0021D3F0
    /* 11DE5C 0021CEDC 01000224 */   addiu     $v0, $zero, 0x1
.align 2
  .L0021CEE0:
    /* 11DE60 0021CEE0 40CA0326 */  addiu      $v1, $s0, %lo(D_0013CA40)
.align 2
  .L0021CEE4:
    /* 11DE64 0021CEE4 C401628C */  lw         $v0, 0x1C4($v1)
    /* 11DE68 0021CEE8 10004230 */  andi       $v0, $v0, 0x10
    /* 11DE6C 0021CEEC 0C004010 */  beqz       $v0, .L0021CF20
    /* 11DE70 0021CEF0 1D00023C */   lui       $v0, %hi(D_001D5F70)
    /* 11DE74 0021CEF4 705F4224 */  addiu      $v0, $v0, %lo(D_001D5F70)
    /* 11DE78 0021CEF8 0400438C */  lw         $v1, 0x4($v0)
    /* 11DE7C 0021CEFC 3800638C */  lw         $v1, 0x38($v1)
    /* 11DE80 0021CF00 03006050 */  beql       $v1, $zero, .L0021CF10
    /* 11DE84 0021CF04 2401428C */   lw        $v0, 0x124($v0)
    /* 11DE88 0021CF08 38010010 */  b          .L0021D3EC
    /* 11DE8C 0021CF0C 080043AC */   sw        $v1, 0x8($v0)
.align 2
  .L0021CF10:
    /* 11DE90 0021CF10 04004014 */  bnez       $v0, .L0021CF24
    /* 11DE94 0021CF14 40CA0426 */   addiu     $a0, $s0, %lo(D_0013CA40)
    /* 11DE98 0021CF18 35010010 */  b          .L0021D3F0
    /* 11DE9C 0021CF1C FFFF0224 */   addiu     $v0, $zero, -0x1
.align 2
  .L0021CF20:
    /* 11DEA0 0021CF20 40CA0426 */  addiu      $a0, $s0, %lo(D_0013CA40)
.align 2
  .L0021CF24:
    /* 11DEA4 0021CF24 C401828C */  lw         $v0, 0x1C4($a0)
    /* 11DEA8 0021CF28 40004230 */  andi       $v0, $v0, 0x40
    /* 11DEAC 0021CF2C 04004010 */  beqz       $v0, .L0021CF40
    /* 11DEB0 0021CF30 1D00023C */   lui       $v0, %hi(D_001CF9F8)
    /* 11DEB4 0021CF34 1D00033C */  lui        $v1, %hi(D_001D5F78)
    /* 11DEB8 0021CF38 F8F94224 */  addiu      $v0, $v0, %lo(D_001CF9F8)
    /* 11DEBC 0021CF3C 785F62AC */  sw         $v0, %lo(D_001D5F78)($v1)
.align 2
  .L0021CF40:
    /* 11DEC0 0021CF40 C401828C */  lw         $v0, 0x1C4($a0)
    /* 11DEC4 0021CF44 20004230 */  andi       $v0, $v0, 0x20
    /* 11DEC8 0021CF48 13004010 */  beqz       $v0, .L0021CF98
    /* 11DECC 0021CF4C F001E226 */   addiu     $v0, $s7, %lo(D_001A01F0)
    /* 11DED0 0021CF50 2402448C */  lw         $a0, 0x224($v0)
    /* 11DED4 0021CF54 10008010 */  beqz       $a0, .L0021CF98
    /* 11DED8 0021CF58 1D00023C */   lui       $v0, %hi(D_001D5F70)
    /* 11DEDC 0021CF5C 1D00033C */  lui        $v1, %hi(D_001CF798)
    /* 11DEE0 0021CF60 705F4224 */  addiu      $v0, $v0, %lo(D_001D5F70)
    /* 11DEE4 0021CF64 98F76324 */  addiu      $v1, $v1, %lo(D_001CF798)
    /* 11DEE8 0021CF68 0B000624 */  addiu      $a2, $zero, 0xB
    /* 11DEEC 0021CF6C 03000724 */  addiu      $a3, $zero, 0x3
    /* 11DEF0 0021CF70 E40044AC */  sw         $a0, 0xE4($v0)
    /* 11DEF4 0021CF74 11000524 */  addiu      $a1, $zero, 0x11
    /* 11DEF8 0021CF78 F00043AC */  sw         $v1, 0xF0($v0)
    /* 11DEFC 0021CF7C 2D200000 */  daddu      $a0, $zero, $zero
    /* 11DF00 0021CF80 F40046AC */  sw         $a2, 0xF4($v0)
    /* 11DF04 0021CF84 0C0047AC */  sw         $a3, 0xC($v0)
    /* 11DF08 0021CF88 60BB080C */  jal        func_0022ED80
    /* 11DF0C 0021CF8C 1400668E */   lw        $a2, 0x14($s3)
    /* 11DF10 0021CF90 17010010 */  b          .L0021D3F0
    /* 11DF14 0021CF94 2D100000 */   daddu     $v0, $zero, $zero
.align 2
  .L0021CF98:
    /* 11DF18 0021CF98 F001F126 */  addiu      $s1, $s7, %lo(D_001A01F0)
    /* 11DF1C 0021CF9C 9416080C */  jal        func_00205A50
    /* 11DF20 0021CFA0 2402248E */   lw        $a0, 0x224($s1)
    /* 11DF24 0021CFA4 2D204000 */  daddu      $a0, $v0, $zero
    /* 11DF28 0021CFA8 19008004 */  bltz       $a0, .L0021D010
    /* 11DF2C 0021CFAC 40CA0326 */   addiu     $v1, $s0, %lo(D_0013CA40)
    /* 11DF30 0021CFB0 C401628C */  lw         $v0, 0x1C4($v1)
    /* 11DF34 0021CFB4 08004230 */  andi       $v0, $v0, 0x8
    /* 11DF38 0021CFB8 09004010 */  beqz       $v0, .L0021CFE0
    /* 11DF3C 0021CFBC 13008228 */   slti      $v0, $a0, 0x13
    /* 11DF40 0021CFC0 06004010 */  beqz       $v0, .L0021CFDC
    /* 11DF44 0021CFC4 E095838F */   lw        $v1, -0x6A20($gp)
    /* 11DF48 0021CFC8 80100400 */  sll        $v0, $a0, 2
    /* 11DF4C 0021CFCC 21104300 */  addu       $v0, $v0, $v1
    /* 11DF50 0021CFD0 0400428C */  lw         $v0, 0x4($v0)
    /* 11DF54 0021CFD4 01004054 */  bnel       $v0, $zero, .L0021CFDC
    /* 11DF58 0021CFD8 240222AE */   sw        $v0, 0x224($s1)
.align 2
  .L0021CFDC:
    /* 11DF5C 0021CFDC 40CA0326 */  addiu      $v1, $s0, %lo(D_0013CA40)
.align 2
  .L0021CFE0:
    /* 11DF60 0021CFE0 C401628C */  lw         $v0, 0x1C4($v1)
    /* 11DF64 0021CFE4 04004230 */  andi       $v0, $v0, 0x4
    /* 11DF68 0021CFE8 0A004010 */  beqz       $v0, .L0021D014
    /* 11DF6C 0021CFEC F001E226 */   addiu     $v0, $s7, %lo(D_001A01F0)
    /* 11DF70 0021CFF0 08008010 */  beqz       $a0, .L0021D014
    /* 11DF74 0021CFF4 E095838F */   lw        $v1, -0x6A20($gp)
    /* 11DF78 0021CFF8 80100400 */  sll        $v0, $a0, 2
    /* 11DF7C 0021CFFC 21104300 */  addu       $v0, $v0, $v1
    /* 11DF80 0021D000 FCFF438C */  lw         $v1, -0x4($v0)
    /* 11DF84 0021D004 02006010 */  beqz       $v1, .L0021D010
    /* 11DF88 0021D008 F001E226 */   addiu     $v0, $s7, %lo(D_001A01F0)
    /* 11DF8C 0021D00C 240243AC */  sw         $v1, 0x224($v0)
.align 2
  .L0021D010:
    /* 11DF90 0021D010 F001E226 */  addiu      $v0, $s7, %lo(D_001A01F0)
.align 2
  .L0021D014:
    /* 11DF94 0021D014 2402438C */  lw         $v1, 0x224($v0)
    /* 11DF98 0021D018 07007210 */  beq        $v1, $s2, .L0021D038
    /* 11DF9C 0021D01C F001F226 */   addiu     $s2, $s7, %lo(D_001A01F0)
    /* 11DFA0 0021D020 1400668E */  lw         $a2, 0x14($s3)
    /* 11DFA4 0021D024 01000424 */  addiu      $a0, $zero, 0x1
    /* 11DFA8 0021D028 60BB080C */  jal        func_0022ED80
    /* 11DFAC 0021D02C 11000524 */   addiu     $a1, $zero, 0x11
    /* 11DFB0 0021D030 E831080C */  jal        func_0020C7A0
    /* 11DFB4 0021D034 F001F226 */   addiu     $s2, $s7, %lo(D_001A01F0)
.align 2
  .L0021D038:
    /* 11DFB8 0021D038 1400033C */  lui        $v1, %hi(D_0013D5E9)
    /* 11DFBC 0021D03C 24025E8E */  lw         $fp, 0x224($s2)
    /* 11DFC0 0021D040 E9D56490 */  lbu        $a0, %lo(D_0013D5E9)($v1)
    /* 11DFC4 0021D044 0001C227 */  addiu      $v0, $fp, 0x100
    /* 11DFC8 0021D048 0BF04400 */  movn       $fp, $v0, $a0
    /* 11DFCC 0021D04C 3416080C */  jal        func_002058D0
    /* 11DFD0 0021D050 2D20C003 */   daddu     $a0, $fp, $zero
    /* 11DFD4 0021D054 2D804000 */  daddu      $s0, $v0, $zero
    /* 11DFD8 0021D058 2402438E */  lw         $v1, 0x224($s2)
    /* 11DFDC 0021D05C 2802428E */  lw         $v0, 0x228($s2)
    /* 11DFE0 0021D060 7D006210 */  beq        $v1, $v0, .L0021D258
    /* 11DFE4 0021D064 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 11DFE8 0021D068 7C000212 */  beq        $s0, $v0, .L0021D25C
    /* 11DFEC 0021D06C 1500023C */   lui       $v0, %hi(D_001517D0)
    /* 11DFF0 0021D070 AA16080C */  jal        func_00205AA8
    /* 11DFF4 0021D074 00000000 */   nop
    /* 11DFF8 0021D078 2D884000 */  daddu      $s1, $v0, $zero
    /* 11DFFC 0021D07C 7802428E */  lw         $v0, 0x278($s2)
    /* 11E000 0021D080 07004010 */  beqz       $v0, .L0021D0A0
    /* 11E004 0021D084 80101000 */   sll       $v0, $s0, 2
    /* 11E008 0021D088 0500201A */  blez       $s1, .L0021D0A0
    /* 11E00C 0021D08C 2D202002 */   daddu     $a0, $s1, $zero
    /* 11E010 0021D090 0C16080C */  jal        func_00205830
    /* 11E014 0021D094 2D280000 */   daddu     $a1, $zero, $zero
    /* 11E018 0021D098 0A803002 */  movz       $s0, $s1, $s0
    /* 11E01C 0021D09C 80101000 */  sll        $v0, $s0, 2
.align 2
  .L0021D0A0:
    /* 11E020 0021D0A0 F001F026 */  addiu      $s0, $s7, %lo(D_001A01F0)
    /* 11E024 0021D0A4 21100202 */  addu       $v0, $s0, $v0
    /* 11E028 0021D0A8 3C02058E */  lw         $a1, 0x23C($s0)
    /* 11E02C 0021D0AC 1A31080C */  jal        func_0020C468
    /* 11E030 0021D0B0 7802448C */   lw        $a0, 0x278($v0)
    /* 11E034 0021D0B4 3C02128E */  lw         $s2, 0x23C($s0)
    /* 11E038 0021D0B8 2D200000 */  daddu      $a0, $zero, $zero
    /* 11E03C 0021D0BC 0800428E */  lw         $v0, 0x8($s2)
    /* 11E040 0021D0C0 0C00438E */  lw         $v1, 0xC($s2)
    /* 11E044 0021D0C4 21B04202 */  addu       $s6, $s2, $v0
    /* 11E048 0021D0C8 AA9B080C */  jal        func_00226EA8
    /* 11E04C 0021D0CC 21A84302 */   addu      $s5, $s2, $v1
    /* 11E050 0021D0D0 2DA04000 */  daddu      $s4, $v0, $zero
    /* 11E054 0021D0D4 25008012 */  beqz       $s4, .L0021D16C
    /* 11E058 0021D0D8 8481838F */   lw        $v1, -0x7E7C($gp)
    /* 11E05C 0021D0DC 3C02078E */  lw         $a3, 0x23C($s0)
    /* 11E060 0021D0E0 0000428E */  lw         $v0, 0x0($s2)
    /* 11E064 0021D0E4 2402048E */  lw         $a0, 0x224($s0)
    /* 11E068 0021D0E8 2110E200 */  addu       $v0, $a3, $v0
    /* 11E06C 0021D0EC 08008314 */  bne        $a0, $v1, .L0021D110
    /* 11E070 0021D0F0 08004524 */   addiu     $a1, $v0, 0x8
    /* 11E074 0021D0F4 0C00078E */  lw         $a3, 0xC($s0)
    /* 11E078 0021D0F8 2D20A002 */  daddu      $a0, $s5, $zero
    /* 11E07C 0021D0FC 2D28C002 */  daddu      $a1, $s6, $zero
    /* 11E080 0021D100 0217080C */  jal        func_00205C08
    /* 11E084 0021D104 2D30A002 */   daddu     $a2, $s5, $zero
    /* 11E088 0021D108 19000010 */  b          .L0021D170
    /* 11E08C 0021D10C 3400628E */   lw        $v0, 0x34($s3)
.align 2
  .L0021D110:
    /* 11E090 0021D110 1400023C */  lui        $v0, %hi(D_0013DE60)
    /* 11E094 0021D114 60DE4224 */  addiu      $v0, $v0, %lo(D_0013DE60)
    /* 11E098 0021D118 21108200 */  addu       $v0, $a0, $v0
    /* 11E09C 0021D11C 00004390 */  lbu        $v1, 0x0($v0)
    /* 11E0A0 0021D120 0A006010 */  beqz       $v1, .L0021D14C
    /* 11E0A4 0021D124 C0120400 */   sll       $v0, $a0, 11
    /* 11E0A8 0021D128 1400053C */  lui        $a1, %hi(D_00141FC0)
    /* 11E0AC 0021D12C 0400468E */  lw         $a2, 0x4($s2)
    /* 11E0B0 0021D130 C01FA524 */  addiu      $a1, $a1, %lo(D_00141FC0)
    /* 11E0B4 0021D134 21284500 */  addu       $a1, $v0, $a1
    /* 11E0B8 0021D138 2130E600 */  addu       $a2, $a3, $a2
    /* 11E0BC 0021D13C F820080C */  jal        func_002083E0
    /* 11E0C0 0021D140 2D208002 */   daddu     $a0, $s4, $zero
    /* 11E0C4 0021D144 05000010 */  b          .L0021D15C
    /* 11E0C8 0021D148 2D20A002 */   daddu     $a0, $s5, $zero
.align 2
  .L0021D14C:
    /* 11E0CC 0021D14C 2D208002 */  daddu      $a0, $s4, $zero
    /* 11E0D0 0021D150 D01B080C */  jal        func_00206F40
    /* 11E0D4 0021D154 2D30A000 */   daddu     $a2, $a1, $zero
    /* 11E0D8 0021D158 2D20A002 */  daddu      $a0, $s5, $zero
.align 2
  .L0021D15C:
    /* 11E0DC 0021D15C 2D28C002 */  daddu      $a1, $s6, $zero
    /* 11E0E0 0021D160 2D30A002 */  daddu      $a2, $s5, $zero
    /* 11E0E4 0021D164 0217080C */  jal        func_00205C08
    /* 11E0E8 0021D168 2D388002 */   daddu     $a3, $s4, $zero
.align 2
  .L0021D16C:
    /* 11E0EC 0021D16C 3400628E */  lw         $v0, 0x34($s3)
.align 2
  .L0021D170:
    /* 11E0F0 0021D170 80004230 */  andi       $v0, $v0, 0x80
    /* 11E0F4 0021D174 2E004014 */  bnez       $v0, .L0021D230
    /* 11E0F8 0021D178 F001F326 */   addiu     $s3, $s7, %lo(D_001A01F0)
    /* 11E0FC 0021D17C 1000478E */  lw         $a3, 0x10($s2)
    /* 11E100 0021D180 3C02708E */  lw         $s0, 0x23C($s3)
    /* 11E104 0021D184 07000424 */  addiu      $a0, $zero, 0x7
    /* 11E108 0021D188 1800518E */  lw         $s1, 0x18($s2)
    /* 11E10C 0021D18C 07000524 */  addiu      $a1, $zero, 0x7
    /* 11E110 0021D190 1400428E */  lw         $v0, 0x14($s2)
    /* 11E114 0021D194 21380702 */  addu       $a3, $s0, $a3
    /* 11E118 0021D198 21881102 */  addu       $s1, $s0, $s1
    /* 11E11C 0021D19C 2000F224 */  addiu      $s2, $a3, 0x20
    /* 11E120 0021D1A0 21800202 */  addu       $s0, $s0, $v0
    /* 11E124 0021D1A4 4402688E */  lw         $t0, 0x244($s3)
    /* 11E128 0021D1A8 4802698E */  lw         $t1, 0x248($s3)
    /* 11E12C 0021D1AC 20041026 */  addiu      $s0, $s0, 0x420
    /* 11E130 0021D1B0 20043126 */  addiu      $s1, $s1, 0x420
    /* 11E134 0021D1B4 2004E724 */  addiu      $a3, $a3, 0x420
    /* 11E138 0021D1B8 9815080C */  jal        func_00205660
    /* 11E13C 0021D1BC 2D304002 */   daddu     $a2, $s2, $zero
    /* 11E140 0021D1C0 4402688E */  lw         $t0, 0x244($s3)
    /* 11E144 0021D1C4 2D380002 */  daddu      $a3, $s0, $zero
    /* 11E148 0021D1C8 4C02698E */  lw         $t1, 0x24C($s3)
    /* 11E14C 0021D1CC 07000424 */  addiu      $a0, $zero, 0x7
    /* 11E150 0021D1D0 07000524 */  addiu      $a1, $zero, 0x7
    /* 11E154 0021D1D4 2D304002 */  daddu      $a2, $s2, $zero
    /* 11E158 0021D1D8 9815080C */  jal        func_00205660
    /* 11E15C 0021D1DC 580262FE */   sd        $v0, 0x258($s3)
    /* 11E160 0021D1E0 4402688E */  lw         $t0, 0x244($s3)
    /* 11E164 0021D1E4 2D304002 */  daddu      $a2, $s2, $zero
    /* 11E168 0021D1E8 5002698E */  lw         $t1, 0x250($s3)
    /* 11E16C 0021D1EC 2D382002 */  daddu      $a3, $s1, $zero
    /* 11E170 0021D1F0 600262FE */  sd         $v0, 0x260($s3)
    /* 11E174 0021D1F4 07000424 */  addiu      $a0, $zero, 0x7
    /* 11E178 0021D1F8 9815080C */  jal        func_00205660
    /* 11E17C 0021D1FC 07000524 */   addiu     $a1, $zero, 0x7
    /* 11E180 0021D200 09008012 */  beqz       $s4, .L0021D228
    /* 11E184 0021D204 680262FE */   sd        $v0, 0x268($s3)
    /* 11E188 0021D208 2D30A002 */  daddu      $a2, $s5, $zero
    /* 11E18C 0021D20C 3F00083C */  lui        $t0, (0x3FF000 >> 16)
    /* 11E190 0021D210 4002698E */  lw         $t1, 0x240($s3)
    /* 11E194 0021D214 09000424 */  addiu      $a0, $zero, 0x9
    /* 11E198 0021D218 09000524 */  addiu      $a1, $zero, 0x9
    /* 11E19C 0021D21C 2D38C000 */  daddu      $a3, $a2, $zero
    /* 11E1A0 0021D220 9815080C */  jal        func_00205660
    /* 11E1A4 0021D224 00F00835 */   ori       $t0, $t0, (0x3FF000 & 0xFFFF)
.align 2
  .L0021D228:
    /* 11E1A8 0021D228 BE30080C */  jal        func_0020C2F8
    /* 11E1AC 0021D22C 00000000 */   nop
.align 2
  .L0021D230:
    /* 11E1B0 0021D230 04008012 */  beqz       $s4, .L0021D244
    /* 11E1B4 0021D234 F001E226 */   addiu     $v0, $s7, %lo(D_001A01F0)
    /* 11E1B8 0021D238 DA9B080C */  jal        func_00226F68
    /* 11E1BC 0021D23C 2D208002 */   daddu     $a0, $s4, $zero
    /* 11E1C0 0021D240 F001E226 */  addiu      $v0, $s7, %lo(D_001A01F0)
.align 2
  .L0021D244:
    /* 11E1C4 0021D244 2D280000 */  daddu      $a1, $zero, $zero
    /* 11E1C8 0021D248 2402448C */  lw         $a0, 0x224($v0)
    /* 11E1CC 0021D24C 780256AC */  sw         $s6, 0x278($v0)
    /* 11E1D0 0021D250 7833080C */  jal        func_0020CDE0
    /* 11E1D4 0021D254 280244AC */   sw        $a0, 0x228($v0)
.align 2
  .L0021D258:
    /* 11E1D8 0021D258 1500023C */  lui        $v0, %hi(D_001517D0)
.align 2
  .L0021D25C:
    /* 11E1DC 0021D25C 2DA84000 */  daddu      $s5, $v0, $zero
    /* 11E1E0 0021D260 D0174224 */  addiu      $v0, $v0, %lo(D_001517D0)
    /* 11E1E4 0021D264 08004384 */  lh         $v1, 0x8($v0)
    /* 11E1E8 0021D268 0F006014 */  bnez       $v1, .L0021D2A8
    /* 11E1EC 0021D26C D017A326 */   addiu     $v1, $s5, %lo(D_001517D0)
    /* 11E1F0 0021D270 F001E526 */  addiu      $a1, $s7, %lo(D_001A01F0)
    /* 11E1F4 0021D274 FFFF0624 */  addiu      $a2, $zero, -0x1
    /* 11E1F8 0021D278 A002A38C */  lw         $v1, 0x2A0($a1)
    /* 11E1FC 0021D27C 09006610 */  beq        $v1, $a2, .L0021D2A4
    /* 11E200 0021D280 8C02A224 */   addiu     $v0, $a1, 0x28C
    /* 11E204 0021D284 80180300 */  sll        $v1, $v1, 2
    /* 11E208 0021D288 21186200 */  addu       $v1, $v1, $v0
    /* 11E20C 0021D28C 1D00043C */  lui        $a0, %hi(D_001D603B)
    /* 11E210 0021D290 0000628C */  lw         $v0, 0x0($v1)
    /* 11E214 0021D294 3B6080A0 */  sb         $zero, %lo(D_001D603B)($a0)
    /* 11E218 0021D298 00104238 */  xori       $v0, $v0, 0x1000
    /* 11E21C 0021D29C 000062AC */  sw         $v0, 0x0($v1)
    /* 11E220 0021D2A0 A002A6AC */  sw         $a2, 0x2A0($a1)
.align 2
  .L0021D2A4:
    /* 11E224 0021D2A4 D017A326 */  addiu      $v1, $s5, %lo(D_001517D0)
.align 2
  .L0021D2A8:
    /* 11E228 0021D2A8 08006284 */  lh         $v0, 0x8($v1)
    /* 11E22C 0021D2AC 3D004014 */  bnez       $v0, .L0021D3A4
    /* 11E230 0021D2B0 FFFF1424 */   addiu     $s4, $zero, -0x1
    /* 11E234 0021D2B4 E415080C */  jal        func_00205790
    /* 11E238 0021D2B8 FFFF1024 */   addiu     $s0, $zero, -0x1
    /* 11E23C 0021D2BC 2DA04000 */  daddu      $s4, $v0, $zero
    /* 11E240 0021D2C0 38009012 */  beq        $s4, $s0, .L0021D3A4
    /* 11E244 0021D2C4 00000000 */   nop
    /* 11E248 0021D2C8 4616080C */  jal        func_00205918
    /* 11E24C 0021D2CC 00000000 */   nop
    /* 11E250 0021D2D0 2D984000 */  daddu      $s3, $v0, $zero
    /* 11E254 0021D2D4 33007012 */  beq        $s3, $s0, .L0021D3A4
    /* 11E258 0021D2D8 F001F126 */   addiu     $s1, $s7, %lo(D_001A01F0)
    /* 11E25C 0021D2DC 1600023C */  lui        $v0, %hi(D_0015EE84)
    /* 11E260 0021D2E0 84EE428C */  lw         $v0, %lo(D_0015EE84)($v0)
    /* 11E264 0021D2E4 3002248E */  lw         $a0, 0x230($s1)
    /* 11E268 0021D2E8 00010324 */  addiu      $v1, $zero, 0x100
    /* 11E26C 0021D2EC 21104400 */  addu       $v0, $v0, $a0
    /* 11E270 0021D2F0 0A180200 */  movz       $v1, $zero, $v0
    /* 11E274 0021D2F4 0D007314 */  bne        $v1, $s3, .L0021D32C
    /* 11E278 0021D2F8 00016232 */   andi      $v0, $s3, 0x100
    /* 11E27C 0021D2FC 80801400 */  sll        $s0, $s4, 2
    /* 11E280 0021D300 2C02258E */  lw         $a1, 0x22C($s1)
    /* 11E284 0021D304 21103002 */  addu       $v0, $s1, $s0
    /* 11E288 0021D308 3402278E */  lw         $a3, 0x234($s1)
    /* 11E28C 0021D30C 7802448C */  lw         $a0, 0x278($v0)
    /* 11E290 0021D310 2D300000 */  daddu      $a2, $zero, $zero
    /* 11E294 0021D314 8ED0080C */  jal        func_00234238
    /* 11E298 0021D318 2D400000 */   daddu     $t0, $zero, $zero
    /* 11E29C 0021D31C 3402238E */  lw         $v1, 0x234($s1)
    /* 11E2A0 0021D320 21103002 */  addu       $v0, $s1, $s0
    /* 11E2A4 0021D324 1A000010 */  b          .L0021D390
    /* 11E2A8 0021D328 A40243AC */   sw        $v1, 0x2A4($v0)
.align 2
  .L0021D32C:
    /* 11E2AC 0021D32C 05004010 */  beqz       $v0, .L0021D344
    /* 11E2B0 0021D330 0001633A */   xori      $v1, $s3, 0x100
    /* 11E2B4 0021D334 1400023C */  lui        $v0, %hi(D_00138538)
    /* 11E2B8 0021D338 C0180300 */  sll        $v1, $v1, 3
    /* 11E2BC 0021D33C 04000010 */  b          .L0021D350
    /* 11E2C0 0021D340 38854224 */   addiu     $v0, $v0, %lo(D_00138538)
.align 2
  .L0021D344:
    /* 11E2C4 0021D344 1400023C */  lui        $v0, %hi(D_001384A0)
    /* 11E2C8 0021D348 C0181300 */  sll        $v1, $s3, 3
    /* 11E2CC 0021D34C A0844224 */  addiu      $v0, $v0, %lo(D_001384A0)
.align 2
  .L0021D350:
    /* 11E2D0 0021D350 21906200 */  addu       $s2, $v1, $v0
    /* 11E2D4 0021D354 80801400 */  sll        $s0, $s4, 2
    /* 11E2D8 0021D358 F001F126 */  addiu      $s1, $s7, %lo(D_001A01F0)
    /* 11E2DC 0021D35C 21103002 */  addu       $v0, $s1, $s0
    /* 11E2E0 0021D360 0000458E */  lw         $a1, 0x0($s2)
    /* 11E2E4 0021D364 7802448C */  lw         $a0, 0x278($v0)
    /* 11E2E8 0021D368 8A5D080C */  jal        func_00217628
    /* 11E2EC 0021D36C 0400468E */   lw        $a2, 0x4($s2)
    /* 11E2F0 0021D370 01000224 */  addiu      $v0, $zero, 0x1
    /* 11E2F4 0021D374 1D00033C */  lui        $v1, %hi(D_001D603B)
    /* 11E2F8 0021D378 3B6062A0 */  sb         $v0, %lo(D_001D603B)($v1)
    /* 11E2FC 0021D37C 21883002 */  addu       $s1, $s1, $s0
    /* 11E300 0021D380 0400428E */  lw         $v0, 0x4($s2)
    /* 11E304 0021D384 C0120200 */  sll        $v0, $v0, 11
    /* 11E308 0021D388 03110200 */  sra        $v0, $v0, 4
    /* 11E30C 0021D38C A40222AE */  sw         $v0, 0x2A4($s1)
.align 2
  .L0021D390:
    /* 11E310 0021D390 F001E426 */  addiu      $a0, $s7, %lo(D_001A01F0)
    /* 11E314 0021D394 00106336 */  ori        $v1, $s3, 0x1000
    /* 11E318 0021D398 21109000 */  addu       $v0, $a0, $s0
    /* 11E31C 0021D39C 8C0243AC */  sw         $v1, 0x28C($v0)
    /* 11E320 0021D3A0 A00294AC */  sw         $s4, 0x2A0($a0)
.align 2
  .L0021D3A4:
    /* 11E324 0021D3A4 3416080C */  jal        func_002058D0
    /* 11E328 0021D3A8 2D20C003 */   daddu     $a0, $fp, $zero
    /* 11E32C 0021D3AC F001E326 */  addiu      $v1, $s7, %lo(D_001A01F0)
    /* 11E330 0021D3B0 2D804000 */  daddu      $s0, $v0, $zero
    /* 11E334 0021D3B4 2802648C */  lw         $a0, 0x228($v1)
    /* 11E338 0021D3B8 2402628C */  lw         $v0, 0x224($v1)
    /* 11E33C 0021D3BC 0B004410 */  beq        $v0, $a0, .L0021D3EC
    /* 11E340 0021D3C0 D017A226 */   addiu     $v0, $s5, %lo(D_001517D0)
    /* 11E344 0021D3C4 08004384 */  lh         $v1, 0x8($v0)
    /* 11E348 0021D3C8 09006014 */  bnez       $v1, .L0021D3F0
    /* 11E34C 0021D3CC 2D100000 */   daddu     $v0, $zero, $zero
    /* 11E350 0021D3D0 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 11E354 0021D3D4 06000216 */  bne        $s0, $v0, .L0021D3F0
    /* 11E358 0021D3D8 2D100000 */   daddu     $v0, $zero, $zero
    /* 11E35C 0021D3DC 05009016 */  bne        $s4, $s0, .L0021D3F4
    /* 11E360 0021D3E0 9000BF7B */   lq        $ra, 0x90($sp)
    /* 11E364 0021D3E4 AA16080C */  jal        func_00205AA8
    /* 11E368 0021D3E8 00000000 */   nop
.align 2
  .L0021D3EC:
    /* 11E36C 0021D3EC 2D100000 */  daddu      $v0, $zero, $zero
.align 2
  .L0021D3F0:
    /* 11E370 0021D3F0 9000BF7B */  lq         $ra, 0x90($sp)
.align 2
  .L0021D3F4:
    /* 11E374 0021D3F4 8000BE7B */  lq         $fp, 0x80($sp)
    /* 11E378 0021D3F8 7000B77B */  lq         $s7, 0x70($sp)
    /* 11E37C 0021D3FC 6000B67B */  lq         $s6, 0x60($sp)
    /* 11E380 0021D400 5000B57B */  lq         $s5, 0x50($sp)
    /* 11E384 0021D404 4000B47B */  lq         $s4, 0x40($sp)
    /* 11E388 0021D408 3000B37B */  lq         $s3, 0x30($sp)
    /* 11E38C 0021D40C 2000B27B */  lq         $s2, 0x20($sp)
    /* 11E390 0021D410 1000B17B */  lq         $s1, 0x10($sp)
    /* 11E394 0021D414 0000B07B */  lq         $s0, 0x0($sp)
    /* 11E398 0021D418 0800E003 */  jr         $ra
    /* 11E39C 0021D41C A000BD27 */   addiu     $sp, $sp, 0xA0
endlabel func_0021CE60
