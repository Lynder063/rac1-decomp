.align 3
/* Handwritten function */
nonmatching func_0022CEB8, 0x324

glabel func_0022CEB8
    /* 12DE38 0022CEB8 5C988A8F */  lw         $10, -0x67A4($28)
    /* 12DE3C 0022CEBC 1900013C */  lui        $1, %hi(D_0018CE00)
    /* 12DE40 0022CEC0 00CE2124 */  addiu      $1, $1, %lo(D_0018CE00)
    /* 12DE44 0022CEC4 1800023C */  lui        $2, %hi(D_00187040)
    /* 12DE48 0022CEC8 40704224 */  addiu      $2, $2, %lo(D_00187040)
    /* 12DE4C 0022CECC 00000000 */  nop
    /* 12DE50 0022CED0 1C00588D */  lw         $24, 0x1C($10)
    /* 12DE54 0022CED4 08005995 */  lhu        $25, 0x8($10)
    /* 12DE58 0022CED8 14004D8D */  lw         $13, 0x14($10)
    /* 12DE5C 0022CEDC 10004E8D */  lw         $14, 0x10($10)
    /* 12DE60 0022CEE0 BC002013 */  beqz       $25, .L0022D1D4
    /* 12DE64 0022CEE4 00000000 */   nop
    /* 12DE68 0022CEE8 00A38F8F */  lw         $15, -0x5D00($28)
    /* 12DE6C 0022CEEC 89FBE073 */  pcpyld     $31, $31, $0
    /* 12DE70 0022CEF0 000239D8 */  lqc2       $vf25, 0x200($1)
    /* 12DE74 0022CEF4 B0003AD8 */  lqc2       $vf26, 0xB0($1)
    /* 12DE78 0022CEF8 E0013BD8 */  lqc2       $vf27, 0x1E0($1)
    /* 12DE7C 0022CEFC E0FF1823 */  addi       $24, $24, -0x20 /* handwritten instruction */
    /* 12DE80 0022CF00 BCCB1A4A */  .word      0x4A1ACBBC    # vdiv       Q, $vf25x, $vf26x
    /* 12DE84 0022CF04 00005DD8 */  lqc2       $vf29, 0x0($2)
    /* 12DE88 0022CF08 10005ED8 */  lqc2       $vf30, 0x10($2)
    /* 12DE8C 0022CF0C 20005FD8 */  lqc2       $vf31, 0x20($2)
    /* 12DE90 0022CF10 E09A91DB */  lqc2       $vf17, -0x6520($28)
    /* 12DE94 0022CF14 F09A92DB */  lqc2       $vf18, -0x6510($28)
    /* 12DE98 0022CF18 009B93DB */  lqc2       $vf19, -0x6500($28)
    /* 12DE9C 0022CF1C 209894DB */  lqc2       $vf20, -0x67E0($28)
    /* 12DEA0 0022CF20 BF03004A */  .word      0x4A0003BF    # vwaitq
    /* 12DEA4 0022CF24 6006004B */  .word      0x4B000660    # vaddq.x    $vf25, $vf0, Q
    /* 12DEA8 0022CF28 0000E07D */  sq         $0, 0x0($15)
    /* 12DEAC 0022CF2C 1000023C */  lui        $2, %hi(D_00101070)
    /* 12DEB0 0022CF30 70104224 */  addiu      $2, $2, %lo(D_00101070)
    /* 12DEB4 0022CF34 1000013C */  lui        $1, %hi(D_00101080)
    /* 12DEB8 0022CF38 80102124 */  addiu      $1, $1, %lo(D_00101080)
    /* 12DEBC 0022CF3C 0000428C */  lw         $2, 0x0($2)
    /* 12DEC0 0022CF40 0400E1AD */  sw         $1, 0x4($15)
    /* 12DEC4 0022CF44 0030013C */  lui        $1, (0x30000000 >> 16)
    /* 12DEC8 0022CF48 0000E1AD */  sw         $1, 0x0($15)
    /* 12DECC 0022CF4C 00000000 */  nop
    /* 12DED0 0022CF50 0000E2A5 */  sh         $2, 0x0($15)
    /* 12DED4 0022CF54 1000EF21 */  addi       $15, $15, 0x10 /* handwritten instruction */
    /* 12DED8 0022CF58 C09A817B */  lq         $1, -0x6540($28)
    /* 12DEDC 0022CF5C D09A827B */  lq         $2, -0x6530($28)
    /* 12DEE0 0022CF60 0000E17D */  sq         $1, 0x0($15)
    /* 12DEE4 0022CF64 7000E27D */  sq         $2, 0x70($15)
    /* 12DEE8 0022CF68 1900013C */  lui        $1, %hi(D_0018CE00)
    /* 12DEEC 0022CF6C 00CE2124 */  addiu      $1, $1, %lo(D_0018CE00)
    /* 12DEF0 0022CF70 10022278 */  lq         $2, 0x210($1)
    /* 12DEF4 0022CF74 A0012378 */  lq         $3, 0x1A0($1)
    /* 12DEF8 0022CF78 5000E27D */  sq         $2, 0x50($15)
    /* 12DEFC 0022CF7C 6000E37D */  sq         $3, 0x60($15)
    /* 12DF00 0022CF80 8044023C */  lui        $2, (0x44800000 >> 16)
    /* 12DF04 0022CF84 1800013C */  lui        $1, %hi(D_00187040)
    /* 12DF08 0022CF88 40702124 */  addiu      $1, $1, %lo(D_00187040)
    /* 12DF0C 0022CF8C 0028A248 */  qmtc2.ni   $2, $vf5
    /* 12DF10 0022CF90 400021D8 */  lqc2       $vf1, 0x40($1)
    /* 12DF14 0022CF94 500022D8 */  lqc2       $vf2, 0x50($1)
    /* 12DF18 0022CF98 600023D8 */  lqc2       $vf3, 0x60($1)
    /* 12DF1C 0022CF9C 700024D8 */  lqc2       $vf4, 0x70($1)
    /* 12DF20 0022CFA0 5808E54B */  vmulx.xyzw $vf1, $vf1, $vf5x
    /* 12DF24 0022CFA4 9810E54B */  vmulx.xyzw $vf2, $vf2, $vf5x
    /* 12DF28 0022CFA8 D818E54B */  vmulx.xyzw $vf3, $vf3, $vf5x
    /* 12DF2C 0022CFAC 00000000 */  nop
    /* 12DF30 0022CFB0 1000E1F9 */  sqc2       $vf1, 0x10($15)
    /* 12DF34 0022CFB4 2000E2F9 */  sqc2       $vf2, 0x20($15)
    /* 12DF38 0022CFB8 3000E3F9 */  sqc2       $vf3, 0x30($15)
    /* 12DF3C 0022CFBC 4000E4F9 */  sqc2       $vf4, 0x40($15)
    /* 12DF40 0022CFC0 8000EF21 */  addi       $15, $15, 0x80 /* handwritten instruction */
    /* 12DF44 0022CFC4 00000000 */  nop
    /* 12DF48 0022CFC8 00000C20 */  addi       $12, $0, 0x0 /* handwritten instruction */
    /* 12DF4C 0022CFCC 00000000 */  nop
    /* 12DF50 0022CFD0 0000EB21 */  addi       $11, $15, 0x0 /* handwritten instruction */
    /* 12DF54 0022CFD4 1000EF21 */  addi       $15, $15, 0x10 /* handwritten instruction */
.align 2
  alabel func_0022CFD8
    /* 12DF58 0022CFD8 6C00201B */  blez       $25, .L0022D18C
    /* 12DF5C 0022CFDC 3C00018F */   lw        $1, 0x3C($24)
    /* 12DF60 0022CFE0 300001DB */  lqc2       $vf1, 0x30($24)
    /* 12DF64 0022CFE4 20001823 */  addi       $24, $24, 0x20 /* handwritten instruction */
    /* 12DF68 0022CFE8 0050A148 */  qmtc2.ni   $1, $vf10
    /* 12DF6C 0022CFEC FFFF3923 */  addi       $25, $25, -0x1 /* handwritten instruction */
    /* 12DF70 0022CFF0 BCE9C14B */  .word      0x4BC1E9BC    # vmulax.xyz ACC, $vf29, $vf1x
    /* 12DF74 0022CFF4 01000A93 */  lbu        $10, 0x1($24)
    /* 12DF78 0022CFF8 BDF0C14B */  .word      0x4BC1F0BD    # vmadday.xyz ACC, $vf30, $vf1y
    /* 12DF7C 0022CFFC 02000983 */  lb         $9, 0x2($24)
    /* 12DF80 0022D000 8AF8C14B */  vmaddz.xyz $vf2, $vf31, $vf1z
    /* 12DF84 0022D004 0400078F */  lw         $7, 0x4($24)
    /* 12DF88 0022D008 5C002005 */  bltz       $9, .L0022D17C
    /* 12DF8C 0022D00C 03000693 */   lbu       $6, 0x3($24)
    /* 12DF90 0022D010 18D98A4B */  vmulx.xy   $vf4, $vf27, $vf10x
    /* 12DF94 0022D014 0800058F */  lw         $5, 0x8($24)
    /* 12DF98 0022D018 9B52194B */  vmulw.x    $vf10, $vf10, $vf25w
    /* 12DF9C 0022D01C 400000CF */  pref       0x00, 0x40($24)
    /* 12DFA0 0022D020 FD11834B */  vabs.xy    $vf3, $vf2
    /* 12DFA4 0022D024 00000000 */  nop
    /* 12DFA8 0022D028 5AD1824B */  vmulz.xy   $vf5, $vf26, $vf2z
    /* 12DFAC 0022D02C 00000000 */  nop
    /* 12DFB0 0022D030 883E0770 */  pextlb     $7, $0, $7
    /* 12DFB4 0022D034 0000A048 */  qmtc2.ni   $0, $vf0
    /* 12DFB8 0022D038 883D0770 */  pextlh     $7, $0, $7
    /* 12DFBC 0022D03C 0000A048 */  qmtc2.ni   $0, $vf0
    /* 12DFC0 0022D040 EC18844B */  vsub.xy    $vf3, $vf3, $vf4
    /* 12DFC4 0022D044 00000000 */  nop
    /* 12DFC8 0022D048 BC53024B */  .word      0x4B0253BC    # vdiv       Q, $vf10x, $vf2z
    /* 12DFCC 0022D04C 00000000 */  nop
    /* 12DFD0 0022D050 00490900 */  sll        $9, $9, 4
    /* 12DFD4 0022D054 00000000 */  nop
    /* 12DFD8 0022D058 20482E01 */  add        $9, $9, $14 /* handwritten instruction */
    /* 12DFDC 0022D05C 00000000 */  nop
    /* 12DFE0 0022D060 EC28834B */  vsub.xy    $vf3, $vf5, $vf3
    /* 12DFE4 0022D064 00000000 */  nop
    /* 12DFE8 0022D068 000028DD */  ld         $8, 0x0($9)
    /* 12DFEC 0022D06C 00000000 */  nop
    /* 12DFF0 0022D070 00000000 */  nop
    /* 12DFF4 0022D074 00000000 */  nop
    /* 12DFF8 0022D078 00000000 */  nop
    /* 12DFFC 0022D07C 00000000 */  nop
    /* 12E000 0022D080 00000000 */  nop
    /* 12E004 0022D084 00000000 */  nop
    /* 12E008 0022D088 00182348 */  qmfc2.ni   $3, $vf3
    /* 12E00C 0022D08C 00000000 */  nop
    /* 12E010 0022D090 E002E04B */  .word      0x4BE002E0    # vaddq.xyzw $vf11, $vf0, Q
    /* 12E014 0022D094 00000000 */  nop
    /* 12E018 0022D098 38006004 */  bltz       $3, .L0022D17C
    /* 12E01C 0022D09C 3C180300 */   dsll32    $3, $3, 0
    /* 12E020 0022D0A0 36006004 */  bltz       $3, .L0022D17C
    /* 12E024 0022D0A4 00000000 */   nop
    /* 12E028 0022D0A8 0000E1F9 */  sqc2       $vf1, 0x0($15)
    /* 12E02C 0022D0AC 00000000 */  nop
    /* 12E030 0022D0B0 0008A548 */  qmtc2.ni   $5, $vf1
    /* 12E034 0022D0B4 00000000 */  nop
    /* 12E038 0022D0B8 3864004A */  .word      0x4A006438    # vcallms    0xC80
    /* 12E03C 0022D0BC 00000000 */  nop
    /* 12E040 0022D0C0 03004015 */  bnez       $10, .L0022D0D0
    /* 12E044 0022D0C4 01000120 */   addi      $1, $0, 0x1 /* handwritten instruction */
    /* 12E048 0022D0C8 010001A3 */  sb         $1, 0x1($24)
    /* 12E04C 0022D0CC 00000000 */  nop
.align 2
  .L0022D0D0:
    /* 12E050 0022D0D0 01082148 */  qmfc2.i    $1, $vf1
    /* 12E054 0022D0D4 00000000 */  nop
    /* 12E058 0022D0D8 D85A014B */  vmulx.x    $vf11, $vf11, $vf1x
    /* 12E05C 0022D0DC 00000000 */  nop
    /* 12E060 0022D0E0 0008A548 */  qmtc2.ni   $5, $vf1
    /* 12E064 0022D0E4 00000000 */  nop
    /* 12E068 0022D0E8 B864004A */  .word      0x4A0064B8    # vcallms    0xC90
    /* 12E06C 0022D0EC 00000000 */  nop
    /* 12E070 0022D0F0 01082148 */  qmfc2.i    $1, $vf1
    /* 12E074 0022D0F4 00000000 */  nop
    /* 12E078 0022D0F8 D85A814A */  vmulx.y    $vf11, $vf11, $vf1x
    /* 12E07C 0022D0FC 00000000 */  nop
    /* 12E080 0022D100 0C00E0AD */  sw         $0, 0xC($15)
    /* 12E084 0022D104 00000000 */  nop
    /* 12E088 0022D108 1000E77D */  sq         $7, 0x10($15)
    /* 12E08C 0022D10C 00000000 */  nop
    /* 12E090 0022D110 2000EBF9 */  sqc2       $vf11, 0x20($15)
    /* 12E094 0022D114 00000000 */  nop
    /* 12E098 0022D118 30001105 */  bgezal     $8, func_0022D1DC
    /* 12E09C 0022D11C 2800E6FD */   sd        $6, 0x28($15)
    /* 12E0A0 0022D120 3000E8FD */  sd         $8, 0x30($15)
    /* 12E0A4 0022D124 04008C21 */  addi       $12, $12, 0x4 /* handwritten instruction */
    /* 12E0A8 0022D128 3800E0FD */  sd         $0, 0x38($15)
    /* 12E0AC 0022D12C 88FF8121 */  addi       $1, $12, -0x78 /* handwritten instruction */
    /* 12E0B0 0022D130 00000000 */  nop
    /* 12E0B4 0022D134 A8FF2004 */  bltz       $1, func_0022CFD8
    /* 12E0B8 0022D138 4000EF21 */   addi      $15, $15, 0x40 /* handwritten instruction */
    /* 12E0BC 0022D13C 0000F2F9 */  sqc2       $vf18, 0x0($15)
    /* 12E0C0 0022D140 2208EB01 */  sub        $1, $15, $11 /* handwritten instruction */
    /* 12E0C4 0022D144 02110100 */  srl        $2, $1, 4
    /* 12E0C8 0022D148 1000EF21 */  addi       $15, $15, 0x10 /* handwritten instruction */
    /* 12E0CC 0022D14C 000071F9 */  sqc2       $vf17, 0x0($11)
    /* 12E0D0 0022D150 00000000 */  nop
    /* 12E0D4 0022D154 000062A5 */  sh         $2, 0x0($11)
    /* 12E0D8 0022D158 FFFF4220 */  addi       $2, $2, -0x1 /* handwritten instruction */
    /* 12E0DC 0022D15C 0E0062A1 */  sb         $2, 0xE($11)
    /* 12E0E0 0022D160 00000000 */  nop
    /* 12E0E4 0022D164 3C006CAD */  sw         $12, 0x3C($11)
    /* 12E0E8 0022D168 00000C20 */  addi       $12, $0, 0x0 /* handwritten instruction */
    /* 12E0EC 0022D16C 0000EB21 */  addi       $11, $15, 0x0 /* handwritten instruction */
    /* 12E0F0 0022D170 1000EF21 */  addi       $15, $15, 0x10 /* handwritten instruction */
    /* 12E0F4 0022D174 F6B30808 */  j          func_0022CFD8
    /* 12E0F8 0022D178 00000000 */   nop
.align 2
  .L0022D17C:
    /* 12E0FC 0022D17C 96FF4011 */  beqz       $10, func_0022CFD8
    /* 12E100 0022D180 00000000 */   nop
    /* 12E104 0022D184 F6B30808 */  j          func_0022CFD8
    /* 12E108 0022D188 010000A3 */   sb        $0, 0x1($24)
.align 2
  .L0022D18C:
    /* 12E10C 0022D18C 0D008011 */  beqz       $12, .L0022D1C4
    /* 12E110 0022D190 F0FFEF21 */   addi      $15, $15, -0x10 /* handwritten instruction */
    /* 12E114 0022D194 1000EF21 */  addi       $15, $15, 0x10 /* handwritten instruction */
    /* 12E118 0022D198 00000000 */  nop
    /* 12E11C 0022D19C 0000F2F9 */  sqc2       $vf18, 0x0($15)
    /* 12E120 0022D1A0 2208EB01 */  sub        $1, $15, $11 /* handwritten instruction */
    /* 12E124 0022D1A4 02110100 */  srl        $2, $1, 4
    /* 12E128 0022D1A8 1000EF21 */  addi       $15, $15, 0x10 /* handwritten instruction */
    /* 12E12C 0022D1AC 000071F9 */  sqc2       $vf17, 0x0($11)
    /* 12E130 0022D1B0 00000000 */  nop
    /* 12E134 0022D1B4 000062A5 */  sh         $2, 0x0($11)
    /* 12E138 0022D1B8 FFFF4220 */  addi       $2, $2, -0x1 /* handwritten instruction */
    /* 12E13C 0022D1BC 0E0062A1 */  sb         $2, 0xE($11)
    /* 12E140 0022D1C0 3C006CAD */  sw         $12, 0x3C($11)
.align 2
  .L0022D1C4:
    /* 12E144 0022D1C4 0000F3F9 */  sqc2       $vf19, 0x0($15)
    /* 12E148 0022D1C8 1000EF21 */  addi       $15, $15, 0x10 /* handwritten instruction */
    /* 12E14C 0022D1CC 00A38FAF */  sw         $15, -0x5D00($28)
    /* 12E150 0022D1D0 A9FBE073 */  pcpyud     $31, $31, $0
.align 2
  .L0022D1D4:
    /* 12E154 0022D1D4 0800E003 */  jr         $31
    /* 12E158 0022D1D8 00000000 */   nop
endlabel func_0022CEB8
