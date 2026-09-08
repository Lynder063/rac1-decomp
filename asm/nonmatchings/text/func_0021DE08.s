.align 3
nonmatching func_0021DE08, 0x368

glabel func_0021DE08
    /* 11ED88 0021DE08 20FFBD27 */  addiu      $sp, $sp, -0xE0
    /* 11ED8C 0021DE0C D000BF7F */  sq         $ra, 0xD0($sp)
    /* 11ED90 0021DE10 C000BE7F */  sq         $fp, 0xC0($sp)
    /* 11ED94 0021DE14 B000B77F */  sq         $s7, 0xB0($sp)
    /* 11ED98 0021DE18 A000B67F */  sq         $s6, 0xA0($sp)
    /* 11ED9C 0021DE1C 9000B57F */  sq         $s5, 0x90($sp)
    /* 11EDA0 0021DE20 8000B47F */  sq         $s4, 0x80($sp)
    /* 11EDA4 0021DE24 6000B27F */  sq         $s2, 0x60($sp)
    /* 11EDA8 0021DE28 4000B07F */  sq         $s0, 0x40($sp)
    /* 11EDAC 0021DE2C 2D908000 */  daddu      $s2, $a0, $zero
    /* 11EDB0 0021DE30 7000B37F */  sq         $s3, 0x70($sp)
    /* 11EDB4 0021DE34 2D200000 */  daddu      $a0, $zero, $zero
    /* 11EDB8 0021DE38 5000B17F */  sq         $s1, 0x50($sp)
    /* 11EDBC 0021DE3C FF801034 */  ori        $s0, $zero, 0x80FF
    /* 11EDC0 0021DE40 38841000 */  dsll       $s0, $s0, 16
    /* 11EDC4 0021DE44 88A81036 */  ori        $s0, $s0, 0xA888
    /* 11EDC8 0021DE48 2000518E */  lw         $s1, 0x20($s2)
    /* 11EDCC 0021DE4C 2400538E */  lw         $s3, 0x24($s2)
    /* 11EDD0 0021DE50 43881100 */  sra        $s1, $s1, 1
    /* 11EDD4 0021DE54 8CD1070C */  jal        func_001F4630
    /* 11EDD8 0021DE58 83981300 */   sra       $s3, $s3, 2
    /* 11EDDC 0021DE5C F8FF7426 */  addiu      $s4, $s3, -0x8
    /* 11EDE0 0021DE60 F8FF2226 */  addiu      $v0, $s1, -0x8
    /* 11EDE4 0021DE64 07002326 */  addiu      $v1, $s1, 0x7
    /* 11EDE8 0021DE68 1000A2AF */  sw         $v0, 0x10($sp)
    /* 11EDEC 0021DE6C 09002526 */  addiu      $a1, $s1, 0x9
    /* 11EDF0 0021DE70 4000428E */  lw         $v0, 0x40($s2)
    /* 11EDF4 0021DE74 20800634 */  ori        $a2, $zero, 0x8020
    /* 11EDF8 0021DE78 38340600 */  dsll       $a2, $a2, 16
    /* 11EDFC 0021DE7C FFFFC634 */  ori        $a2, $a2, 0xFFFF
    /* 11EE00 0021DE80 1400A3AF */  sw         $v1, 0x14($sp)
    /* 11EE04 0021DE84 17520424 */  addiu      $a0, $zero, 0x5217
    /* 11EE08 0021DE88 1800A5AF */  sw         $a1, 0x18($sp)
    /* 11EE0C 0021DE8C 50F9070C */  jal        func_001FE540
    /* 11EE10 0021DE90 0A80C200 */   movz      $s0, $a2, $v0
    /* 11EE14 0021DE94 FAFF7626 */  addiu      $s6, $s3, -0x6
    /* 11EE18 0021DE98 4A002726 */  addiu      $a3, $s1, 0x4A
    /* 11EE1C 0021DE9C 1000A48F */  lw         $a0, 0x10($sp)
    /* 11EE20 0021DEA0 1C00A7AF */  sw         $a3, 0x1C($sp)
    /* 11EE24 0021DEA4 2D300002 */  daddu      $a2, $s0, $zero
    /* 11EE28 0021DEA8 2D384000 */  daddu      $a3, $v0, $zero
    /* 11EE2C 0021DEAC 2D288002 */  daddu      $a1, $s4, $zero
    /* 11EE30 0021DEB0 1800A28F */  lw         $v0, 0x18($sp)
    /* 11EE34 0021DEB4 FFFF0824 */  addiu      $t0, $zero, -0x1
    /* 11EE38 0021DEB8 40801300 */  sll        $s0, $s3, 1
    /* 11EE3C 0021DEBC 00110200 */  sll        $v0, $v0, 4
    /* 11EE40 0021DEC0 F8FF1726 */  addiu      $s7, $s0, -0x8
    /* 11EE44 0021DEC4 2000A2AF */  sw         $v0, 0x20($sp)
    /* 11EE48 0021DEC8 3EDB070C */  jal        func_001F6CF8
    /* 11EE4C 0021DECC FAFF1526 */   addiu     $s5, $s0, -0x6
    /* 11EE50 0021DED0 2000468E */  lw         $a2, 0x20($s2)
    /* 11EE54 0021DED4 2D288002 */  daddu      $a1, $s4, $zero
    /* 11EE58 0021DED8 1400A48F */  lw         $a0, 0x14($sp)
    /* 11EE5C 0021DEDC 08006726 */  addiu      $a3, $s3, 0x8
    /* 11EE60 0021DEE0 C1FFC624 */  addiu      $a2, $a2, -0x3F
    /* 11EE64 0021DEE4 69800834 */  ori        $t0, $zero, 0x8069
    /* 11EE68 0021DEE8 38440800 */  dsll       $t0, $t0, 16
    /* 11EE6C 0021DEEC 69690835 */  ori        $t0, $t0, 0x6969
    /* 11EE70 0021DEF0 20801434 */  ori        $s4, $zero, 0x8020
    /* 11EE74 0021DEF4 38A41400 */  dsll       $s4, $s4, 16
    /* 11EE78 0021DEF8 FFFF9436 */  ori        $s4, $s4, 0xFFFF
    /* 11EE7C 0021DEFC 9005080C */  jal        func_00201640
    /* 11EE80 0021DF00 2D480000 */   daddu     $t1, $zero, $zero
    /* 11EE84 0021DF04 2000468E */  lw         $a2, 0x20($s2)
    /* 11EE88 0021DF08 06006726 */  addiu      $a3, $s3, 0x6
    /* 11EE8C 0021DF0C 1800A48F */  lw         $a0, 0x18($sp)
    /* 11EE90 0021DF10 38800834 */  ori        $t0, $zero, 0x8038
    /* 11EE94 0021DF14 38440800 */  dsll       $t0, $t0, 16
    /* 11EE98 0021DF18 38380835 */  ori        $t0, $t0, 0x3838
    /* 11EE9C 0021DF1C BFFFC624 */  addiu      $a2, $a2, -0x41
    /* 11EEA0 0021DF20 2D480000 */  daddu      $t1, $zero, $zero
    /* 11EEA4 0021DF24 9005080C */  jal        func_00201640
    /* 11EEA8 0021DF28 2D28C002 */   daddu     $a1, $s6, $zero
    /* 11EEAC 0021DF2C 1C00A68F */  lw         $a2, 0x1C($sp)
    /* 11EEB0 0021DF30 08002726 */  addiu      $a3, $s1, 0x8
    /* 11EEB4 0021DF34 2000438E */  lw         $v1, 0x20($s2)
    /* 11EEB8 0021DF38 9EE90434 */  ori        $a0, $zero, 0xE99E
    /* 11EEBC 0021DF3C 1600023C */  lui        $v0, %hi(D_0015EEF0)
    /* 11EEC0 0021DF40 F0EE428C */  lw         $v0, %lo(D_0015EEF0)($v0)
    /* 11EEC4 0021DF44 08000524 */  addiu      $a1, $zero, 0x8
    /* 11EEC8 0021DF48 23186600 */  subu       $v1, $v1, $a2
    /* 11EECC 0021DF4C 3000A7AF */  sw         $a3, 0x30($sp)
    /* 11EED0 0021DF50 18186200 */  mult       $v1, $v1, $v0
    /* 11EED4 0021DF54 FFFF0724 */  addiu      $a3, $zero, -0x1
    /* 11EED8 0021DF58 2800B4FF */  sd         $s4, 0x28($sp)
    /* 11EEDC 0021DF5C 2A30E300 */  slt        $a2, $a3, $v1
    /* 11EEE0 0021DF60 FF036224 */  addiu      $v0, $v1, 0x3FF
    /* 11EEE4 0021DF64 0B106600 */  movn       $v0, $v1, $a2
    /* 11EEE8 0021DF68 6600080C */  jal        func_00200198
    /* 11EEEC 0021DF6C 83F20200 */   sra       $fp, $v0, 10
    /* 11EEF0 0021DF70 2D204000 */  daddu      $a0, $v0, $zero
    /* 11EEF4 0021DF74 0800C727 */  addiu      $a3, $fp, 0x8
    /* 11EEF8 0021DF78 2000A58F */  lw         $a1, 0x20($sp)
    /* 11EEFC 0021DF7C 80000324 */  addiu      $v1, $zero, 0x80
    /* 11EF00 0021DF80 21382702 */  addu       $a3, $s1, $a3
    /* 11EF04 0021DF84 50010224 */  addiu      $v0, $zero, 0x150
    /* 11EF08 0021DF88 05006826 */  addiu      $t0, $s3, 0x5
    /* 11EF0C 0021DF8C 0000A2AF */  sw         $v0, 0x0($sp)
    /* 11EF10 0021DF90 0800A3AF */  sw         $v1, 0x8($sp)
    /* 11EF14 0021DF94 A0000A24 */  addiu      $t2, $zero, 0xA0
    /* 11EF18 0021DF98 F0010B24 */  addiu      $t3, $zero, 0x1F0
    /* 11EF1C 0021DF9C 00311600 */  sll        $a2, $s6, 4
    /* 11EF20 0021DFA0 2D480000 */  daddu      $t1, $zero, $zero
    /* 11EF24 0021DFA4 00390700 */  sll        $a3, $a3, 4
    /* 11EF28 0021DFA8 6404080C */  jal        func_00201190
    /* 11EF2C 0021DFAC 00410800 */   sll       $t0, $t0, 4
    /* 11EF30 0021DFB0 4000428E */  lw         $v0, 0x40($s2)
    /* 11EF34 0021DFB4 FF800534 */  ori        $a1, $zero, 0x80FF
    /* 11EF38 0021DFB8 382C0500 */  dsll       $a1, $a1, 16
    /* 11EF3C 0021DFBC 88A8A534 */  ori        $a1, $a1, 0xA888
    /* 11EF40 0021DFC0 18520424 */  addiu      $a0, $zero, 0x5218
    /* 11EF44 0021DFC4 01004238 */  xori       $v0, $v0, 0x1
    /* 11EF48 0021DFC8 50F9070C */  jal        func_001FE540
    /* 11EF4C 0021DFCC 0BA0A200 */   movn      $s4, $a1, $v0
    /* 11EF50 0021DFD0 1000A48F */  lw         $a0, 0x10($sp)
    /* 11EF54 0021DFD4 2D384000 */  daddu      $a3, $v0, $zero
    /* 11EF58 0021DFD8 2D308002 */  daddu      $a2, $s4, $zero
    /* 11EF5C 0021DFDC 2D28E002 */  daddu      $a1, $s7, $zero
    /* 11EF60 0021DFE0 3EDB070C */  jal        func_001F6CF8
    /* 11EF64 0021DFE4 FFFF0824 */   addiu     $t0, $zero, -0x1
    /* 11EF68 0021DFE8 2000468E */  lw         $a2, 0x20($s2)
    /* 11EF6C 0021DFEC 2D28E002 */  daddu      $a1, $s7, $zero
    /* 11EF70 0021DFF0 1400A48F */  lw         $a0, 0x14($sp)
    /* 11EF74 0021DFF4 08000726 */  addiu      $a3, $s0, 0x8
    /* 11EF78 0021DFF8 C1FFC624 */  addiu      $a2, $a2, -0x3F
    /* 11EF7C 0021DFFC 69800834 */  ori        $t0, $zero, 0x8069
    /* 11EF80 0021E000 38440800 */  dsll       $t0, $t0, 16
    /* 11EF84 0021E004 69690835 */  ori        $t0, $t0, 0x6969
    /* 11EF88 0021E008 9005080C */  jal        func_00201640
    /* 11EF8C 0021E00C 2D480000 */   daddu     $t1, $zero, $zero
    /* 11EF90 0021E010 2000468E */  lw         $a2, 0x20($s2)
    /* 11EF94 0021E014 06000726 */  addiu      $a3, $s0, 0x6
    /* 11EF98 0021E018 1800A48F */  lw         $a0, 0x18($sp)
    /* 11EF9C 0021E01C 38800834 */  ori        $t0, $zero, 0x8038
    /* 11EFA0 0021E020 38440800 */  dsll       $t0, $t0, 16
    /* 11EFA4 0021E024 38380835 */  ori        $t0, $t0, 0x3838
    /* 11EFA8 0021E028 BFFFC624 */  addiu      $a2, $a2, -0x41
    /* 11EFAC 0021E02C 2D480000 */  daddu      $t1, $zero, $zero
    /* 11EFB0 0021E030 9005080C */  jal        func_00201640
    /* 11EFB4 0021E034 2D28A002 */   daddu     $a1, $s5, $zero
    /* 11EFB8 0021E038 1C00A68F */  lw         $a2, 0x1C($sp)
    /* 11EFBC 0021E03C FFFF0724 */  addiu      $a3, $zero, -0x1
    /* 11EFC0 0021E040 2000438E */  lw         $v1, 0x20($s2)
    /* 11EFC4 0021E044 09000524 */  addiu      $a1, $zero, 0x9
    /* 11EFC8 0021E048 1600023C */  lui        $v0, %hi(D_0015EEEC)
    /* 11EFCC 0021E04C ECEE428C */  lw         $v0, %lo(D_0015EEEC)($v0)
    /* 11EFD0 0021E050 9EE90434 */  ori        $a0, $zero, 0xE99E
    /* 11EFD4 0021E054 23186600 */  subu       $v1, $v1, $a2
    /* 11EFD8 0021E058 18186200 */  mult       $v1, $v1, $v0
    /* 11EFDC 0021E05C 2A38E300 */  slt        $a3, $a3, $v1
    /* 11EFE0 0021E060 FF036224 */  addiu      $v0, $v1, 0x3FF
    /* 11EFE4 0021E064 0B106700 */  movn       $v0, $v1, $a3
    /* 11EFE8 0021E068 3400A7AF */  sw         $a3, 0x34($sp)
    /* 11EFEC 0021E06C 6600080C */  jal        func_00200198
    /* 11EFF0 0021E070 83F20200 */   sra       $fp, $v0, 10
    /* 11EFF4 0021E074 0800C327 */  addiu      $v1, $fp, 0x8
    /* 11EFF8 0021E078 80000524 */  addiu      $a1, $zero, 0x80
    /* 11EFFC 0021E07C 0800A5AF */  sw         $a1, 0x8($sp)
    /* 11F000 0021E080 21882302 */  addu       $s1, $s1, $v1
    /* 11F004 0021E084 2000A58F */  lw         $a1, 0x20($sp)
    /* 11F008 0021E088 50010324 */  addiu      $v1, $zero, 0x150
    /* 11F00C 0021E08C 05000826 */  addiu      $t0, $s0, 0x5
    /* 11F010 0021E090 0000A3AF */  sw         $v1, 0x0($sp)
    /* 11F014 0021E094 2D480000 */  daddu      $t1, $zero, $zero
    /* 11F018 0021E098 A0000A24 */  addiu      $t2, $zero, 0xA0
    /* 11F01C 0021E09C F0010B24 */  addiu      $t3, $zero, 0x1F0
    /* 11F020 0021E0A0 00311500 */  sll        $a2, $s5, 4
    /* 11F024 0021E0A4 00391100 */  sll        $a3, $s1, 4
    /* 11F028 0021E0A8 2D204000 */  daddu      $a0, $v0, $zero
    /* 11F02C 0021E0AC 00410800 */  sll        $t0, $t0, 4
    /* 11F030 0021E0B0 6404080C */  jal        func_00201190
    /* 11F034 0021E0B4 21801302 */   addu      $s0, $s0, $s3
    /* 11F038 0021E0B8 F8FF1026 */  addiu      $s0, $s0, -0x8
    /* 11F03C 0021E0BC 4000428E */  lw         $v0, 0x40($s2)
    /* 11F040 0021E0C0 FF800734 */  ori        $a3, $zero, 0x80FF
    /* 11F044 0021E0C4 383C0700 */  dsll       $a3, $a3, 16
    /* 11F048 0021E0C8 88A8E734 */  ori        $a3, $a3, 0xA888
    /* 11F04C 0021E0CC 2800A6DF */  ld         $a2, 0x28($sp)
    /* 11F050 0021E0D0 19520424 */  addiu      $a0, $zero, 0x5219
    /* 11F054 0021E0D4 02004238 */  xori       $v0, $v0, 0x2
    /* 11F058 0021E0D8 0B30E200 */  movn       $a2, $a3, $v0
    /* 11F05C 0021E0DC 50F9070C */  jal        func_001FE540
    /* 11F060 0021E0E0 2800A6FF */   sd        $a2, 0x28($sp)
    /* 11F064 0021E0E4 1000A48F */  lw         $a0, 0x10($sp)
    /* 11F068 0021E0E8 2D384000 */  daddu      $a3, $v0, $zero
    /* 11F06C 0021E0EC 2800A6DF */  ld         $a2, 0x28($sp)
    /* 11F070 0021E0F0 2D280002 */  daddu      $a1, $s0, $zero
    /* 11F074 0021E0F4 3EDB070C */  jal        func_001F6CF8
    /* 11F078 0021E0F8 FFFF0824 */   addiu     $t0, $zero, -0x1
    /* 11F07C 0021E0FC 1600033C */  lui        $v1, %hi(D_0015EEE8)
    /* 11F080 0021E100 E8EE638C */  lw         $v1, %lo(D_0015EEE8)($v1)
    /* 11F084 0021E104 1A520224 */  addiu      $v0, $zero, 0x521A
    /* 11F088 0021E108 1B520424 */  addiu      $a0, $zero, 0x521B
    /* 11F08C 0021E10C 50F9070C */  jal        func_001FE540
    /* 11F090 0021E110 0A204300 */   movz      $a0, $v0, $v1
    /* 11F094 0021E114 3000A48F */  lw         $a0, 0x30($sp)
    /* 11F098 0021E118 2D384000 */  daddu      $a3, $v0, $zero
    /* 11F09C 0021E11C 2D280002 */  daddu      $a1, $s0, $zero
    /* 11F0A0 0021E120 FF800634 */  ori        $a2, $zero, 0x80FF
    /* 11F0A4 0021E124 38340600 */  dsll       $a2, $a2, 16
    /* 11F0A8 0021E128 88A8C634 */  ori        $a2, $a2, 0xA888
    /* 11F0AC 0021E12C 3ADA070C */  jal        func_001F68E8
    /* 11F0B0 0021E130 FFFF0824 */   addiu     $t0, $zero, -0x1
    /* 11F0B4 0021E134 D2D1070C */  jal        func_001F4748
    /* 11F0B8 0021E138 00000000 */   nop
    /* 11F0BC 0021E13C D000BF7B */  lq         $ra, 0xD0($sp)
    /* 11F0C0 0021E140 02000224 */  addiu      $v0, $zero, 0x2
    /* 11F0C4 0021E144 C000BE7B */  lq         $fp, 0xC0($sp)
    /* 11F0C8 0021E148 B000B77B */  lq         $s7, 0xB0($sp)
    /* 11F0CC 0021E14C A000B67B */  lq         $s6, 0xA0($sp)
    /* 11F0D0 0021E150 9000B57B */  lq         $s5, 0x90($sp)
    /* 11F0D4 0021E154 8000B47B */  lq         $s4, 0x80($sp)
    /* 11F0D8 0021E158 7000B37B */  lq         $s3, 0x70($sp)
    /* 11F0DC 0021E15C 6000B27B */  lq         $s2, 0x60($sp)
    /* 11F0E0 0021E160 5000B17B */  lq         $s1, 0x50($sp)
    /* 11F0E4 0021E164 4000B07B */  lq         $s0, 0x40($sp)
    /* 11F0E8 0021E168 0800E003 */  jr         $ra
    /* 11F0EC 0021E16C E000BD27 */   addiu     $sp, $sp, 0xE0
endlabel func_0021DE08
