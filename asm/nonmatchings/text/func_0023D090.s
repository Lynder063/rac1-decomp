.align 3
nonmatching func_0023D090, 0x160

glabel func_0023D090
    /* 13E010 0023D090 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 13E014 0023D094 01000224 */  addiu      $v0, $zero, 0x1
    /* 13E018 0023D098 2000B27F */  sq         $s2, 0x20($sp)
    /* 13E01C 0023D09C 1000B17F */  sq         $s1, 0x10($sp)
    /* 13E020 0023D0A0 2D900000 */  daddu      $s2, $zero, $zero
    /* 13E024 0023D0A4 3000BF7F */  sq         $ra, 0x30($sp)
    /* 13E028 0023D0A8 2D888000 */  daddu      $s1, $a0, $zero
    /* 13E02C 0023D0AC 0000B07F */  sq         $s0, 0x0($sp)
    /* 13E030 0023D0B0 440022AE */  sw         $v0, 0x44($s1)
    /* 13E034 0023D0B4 5400238E */  lw         $v1, 0x54($s1)
    /* 13E038 0023D0B8 0C0020AE */  sw         $zero, 0xC($s1)
    /* 13E03C 0023D0BC 100020AE */  sw         $zero, 0x10($s1)
    /* 13E040 0023D0C0 140020AE */  sw         $zero, 0x14($s1)
    /* 13E044 0023D0C4 580020AE */  sw         $zero, 0x58($s1)
    /* 13E048 0023D0C8 14006018 */  blez       $v1, .L0023D11C
    /* 13E04C 0023D0CC 5C0020AE */   sw        $zero, 0x5C($s1)
    /* 13E050 0023D0D0 FFFF0524 */  addiu      $a1, $zero, -0x1
    /* 13E054 0023D0D4 2D200000 */  daddu      $a0, $zero, $zero
.align 2
  .L0023D0D8:
    /* 13E058 0023D0D8 5000238E */  lw         $v1, 0x50($s1)
    /* 13E05C 0023D0DC 01005226 */  addiu      $s2, $s2, 0x1
    /* 13E060 0023D0E0 21188300 */  addu       $v1, $a0, $v1
    /* 13E064 0023D0E4 000065FC */  sd         $a1, 0x0($v1)
    /* 13E068 0023D0E8 5000228E */  lw         $v0, 0x50($s1)
    /* 13E06C 0023D0EC 21108200 */  addu       $v0, $a0, $v0
    /* 13E070 0023D0F0 080045FC */  sd         $a1, 0x8($v0)
    /* 13E074 0023D0F4 5000238E */  lw         $v1, 0x50($s1)
    /* 13E078 0023D0F8 21188300 */  addu       $v1, $a0, $v1
    /* 13E07C 0023D0FC 100060AC */  sw         $zero, 0x10($v1)
    /* 13E080 0023D100 5000228E */  lw         $v0, 0x50($s1)
    /* 13E084 0023D104 21108200 */  addu       $v0, $a0, $v0
    /* 13E088 0023D108 140040AC */  sw         $zero, 0x14($v0)
    /* 13E08C 0023D10C 5400228E */  lw         $v0, 0x54($s1)
    /* 13E090 0023D110 2A104202 */  slt        $v0, $s2, $v0
    /* 13E094 0023D114 F0FF4014 */  bnez       $v0, .L0023D0D8
    /* 13E098 0023D118 18008424 */   addiu     $a0, $a0, 0x18
.align 2
  .L0023D11C:
    /* 13E09C 0023D11C 0800228E */  lw         $v0, 0x8($s1)
    /* 13E0A0 0023D120 13004018 */  blez       $v0, .L0023D170
    /* 13E0A4 0023D124 2D900000 */   daddu     $s2, $zero, $zero
    /* 13E0A8 0023D128 FF0F103C */  lui        $s0, (0xFFFFFFF >> 16)
    /* 13E0AC 0023D12C FFFF1036 */  ori        $s0, $s0, (0xFFFFFFF & 0xFFFF)
    /* 13E0B0 0023D130 0000228E */  lw         $v0, 0x0($s1)
    /* 13E0B4 0023D134 00000000 */  nop
.align 2
  .L0023D138:
    /* 13E0B8 0023D138 C02A1200 */  sll        $a1, $s2, 11
    /* 13E0BC 0023D13C 0400238E */  lw         $v1, 0x4($s1)
    /* 13E0C0 0023D140 00211200 */  sll        $a0, $s2, 4
    /* 13E0C4 0023D144 2128A200 */  addu       $a1, $a1, $v0
    /* 13E0C8 0023D148 03000624 */  addiu      $a2, $zero, 0x3
    /* 13E0CC 0023D14C 21206400 */  addu       $a0, $v1, $a0
    /* 13E0D0 0023D150 2428B000 */  and        $a1, $a1, $s0
    /* 13E0D4 0023D154 80000724 */  addiu      $a3, $zero, 0x80
    /* 13E0D8 0023D158 FCF3080C */  jal        func_0023CFF0
    /* 13E0DC 0023D15C 01005226 */   addiu     $s2, $s2, 0x1
    /* 13E0E0 0023D160 0800228E */  lw         $v0, 0x8($s1)
    /* 13E0E4 0023D164 2A104202 */  slt        $v0, $s2, $v0
    /* 13E0E8 0023D168 F3FF4054 */  bnel       $v0, $zero, .L0023D138
    /* 13E0EC 0023D16C 0000228E */   lw        $v0, 0x0($s1)
.align 2
  .L0023D170:
    /* 13E0F0 0023D170 0400258E */  lw         $a1, 0x4($s1)
    /* 13E0F4 0023D174 00211200 */  sll        $a0, $s2, 4
    /* 13E0F8 0023D178 FF0F103C */  lui        $s0, (0xFFFFFFF >> 16)
    /* 13E0FC 0023D17C 02000624 */  addiu      $a2, $zero, 0x2
    /* 13E100 0023D180 FFFF1036 */  ori        $s0, $s0, (0xFFFFFFF & 0xFFFF)
    /* 13E104 0023D184 2120A400 */  addu       $a0, $a1, $a0
    /* 13E108 0023D188 2428B000 */  and        $a1, $a1, $s0
    /* 13E10C 0023D18C FCF3080C */  jal        func_0023CFF0
    /* 13E110 0023D190 2D380000 */   daddu     $a3, $zero, $zero
    /* 13E114 0023D194 0010023C */  lui        $v0, (0x1000B420 >> 16)
    /* 13E118 0023D198 0010063C */  lui        $a2, (0x1000B410 >> 16)
    /* 13E11C 0023D19C 20B44234 */  ori        $v0, $v0, (0x1000B420 & 0xFFFF)
    /* 13E120 0023D1A0 10B4C634 */  ori        $a2, $a2, (0x1000B410 & 0xFFFF)
    /* 13E124 0023D1A4 000040AC */  sw         $zero, 0x0($v0)
    /* 13E128 0023D1A8 0010053C */  lui        $a1, (0x1000B430 >> 16)
    /* 13E12C 0023D1AC 30B4A534 */  ori        $a1, $a1, (0x1000B430 & 0xFFFF)
    /* 13E130 0023D1B0 05000424 */  addiu      $a0, $zero, 0x5
    /* 13E134 0023D1B4 0000228E */  lw         $v0, 0x0($s1)
    /* 13E138 0023D1B8 24105000 */  and        $v0, $v0, $s0
    /* 13E13C 0023D1BC 0000C2AC */  sw         $v0, 0x0($a2)
    /* 13E140 0023D1C0 0400238E */  lw         $v1, 0x4($s1)
    /* 13E144 0023D1C4 24187000 */  and        $v1, $v1, $s0
    /* 13E148 0023D1C8 0000A3AC */  sw         $v1, 0x0($a1)
    /* 13E14C 0023D1CC E0F3080C */  jal        func_0023CF80
    /* 13E150 0023D1D0 00000000 */   nop
    /* 13E154 0023D1D4 3000BF7B */  lq         $ra, 0x30($sp)
    /* 13E158 0023D1D8 01000224 */  addiu      $v0, $zero, 0x1
    /* 13E15C 0023D1DC 2000B27B */  lq         $s2, 0x20($sp)
    /* 13E160 0023D1E0 1000B17B */  lq         $s1, 0x10($sp)
    /* 13E164 0023D1E4 0000B07B */  lq         $s0, 0x0($sp)
    /* 13E168 0023D1E8 0800E003 */  jr         $ra
    /* 13E16C 0023D1EC 4000BD27 */   addiu     $sp, $sp, 0x40
endlabel func_0023D090
