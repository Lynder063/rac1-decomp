.align 3
nonmatching func_0011D0D0, 0x13C

glabel func_0011D0D0
    /* 1E050 0011D0D0 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 1E054 0011D0D4 2000B1FF */  sd         $s1, 0x20($sp)
    /* 1E058 0011D0D8 1000B0FF */  sd         $s0, 0x10($sp)
    /* 1E05C 0011D0DC 2D888000 */  daddu      $s1, $a0, $zero
    /* 1E060 0011D0E0 3000BFFF */  sd         $ra, 0x30($sp)
    /* 1E064 0011D0E4 6863040C */  jal        func_00118DA0
    /* 1E068 0011D0E8 2D80A000 */   daddu     $s0, $a1, $zero
    /* 1E06C 0011D0EC 0080043C */  lui        $a0, (0x80000000 >> 16)
    /* 1E070 0011D0F0 9C63040C */  jal        func_00118E70
    /* 1E074 0011D0F4 00000000 */   nop
    /* 1E078 0011D0F8 16000A3C */  lui        $t2, %hi(D_00158540)
    /* 1E07C 0011D0FC 2D584000 */  daddu      $t3, $v0, $zero
    /* 1E080 0011D100 40854325 */  addiu      $v1, $t2, %lo(D_00158540)
    /* 1E084 0011D104 140070AC */  sw         $s0, 0x14($v1)
    /* 1E088 0011D108 00002282 */  lb         $v0, 0x0($s1)
    /* 1E08C 0011D10C 0C004010 */  beqz       $v0, .L0011D140
    /* 1E090 0011D110 2D480000 */   daddu     $t1, $zero, $zero
    /* 1E094 0011D114 2D102002 */  daddu      $v0, $s1, $zero
    /* 1E098 0011D118 00004490 */  lbu        $a0, 0x0($v0)
    /* 1E09C 0011D11C 00000000 */  nop
.align 2
  .L0011D120:
    /* 1E0A0 0011D120 40854325 */  addiu      $v1, $t2, %lo(D_00158540)
    /* 1E0A4 0011D124 21186900 */  addu       $v1, $v1, $t1
    /* 1E0A8 0011D128 01002925 */  addiu      $t1, $t1, 0x1
    /* 1E0AC 0011D12C 180064A0 */  sb         $a0, 0x18($v1)
    /* 1E0B0 0011D130 21102902 */  addu       $v0, $s1, $t1
    /* 1E0B4 0011D134 00004380 */  lb         $v1, 0x0($v0)
    /* 1E0B8 0011D138 F9FF6054 */  bnel       $v1, $zero, .L0011D120
    /* 1E0BC 0011D13C 00004490 */   lbu       $a0, 0x0($v0)
.align 2
  .L0011D140:
    /* 1E0C0 0011D140 40854625 */  addiu      $a2, $t2, %lo(D_00158540)
    /* 1E0C4 0011D144 0080033C */  lui        $v1, (0x80000003 >> 16)
    /* 1E0C8 0011D148 0400C0AC */  sw         $zero, 0x4($a2)
    /* 1E0CC 0011D14C FFFF0424 */  addiu      $a0, $zero, -0x1
    /* 1E0D0 0011D150 3C200400 */  dsll32     $a0, $a0, 0
    /* 1E0D4 0011D154 FF008434 */  ori        $a0, $a0, 0xFF
    /* 1E0D8 0011D158 03006334 */  ori        $v1, $v1, (0x80000003 & 0xFFFF)
    /* 1E0DC 0011D15C 68000524 */  addiu      $a1, $zero, 0x68
    /* 1E0E0 0011D160 408542DD */  ld         $v0, %lo(D_00158540)($t2)
    /* 1E0E4 0011D164 68000724 */  addiu      $a3, $zero, 0x68
    /* 1E0E8 0011D168 1000C9AC */  sw         $t1, 0x10($a2)
    /* 1E0EC 0011D16C 44000824 */  addiu      $t0, $zero, 0x44
    /* 1E0F0 0011D170 0800C3AC */  sw         $v1, 0x8($a2)
    /* 1E0F4 0011D174 24104400 */  and        $v0, $v0, $a0
    /* 1E0F8 0011D178 408542FD */  sd         $v0, %lo(D_00158540)($t2)
    /* 1E0FC 0011D17C 2D20C000 */  daddu      $a0, $a2, $zero
    /* 1E100 0011D180 408545A1 */  sb         $a1, %lo(D_00158540)($t2)
    /* 1E104 0011D184 68000524 */  addiu      $a1, $zero, 0x68
    /* 1E108 0011D188 0400ABAF */  sw         $t3, 0x4($sp)
    /* 1E10C 0011D18C 0800A7AF */  sw         $a3, 0x8($sp)
    /* 1E110 0011D190 0C00A8AF */  sw         $t0, 0xC($sp)
    /* 1E114 0011D194 5C6B040C */  jal        func_0011AD70
    /* 1E118 0011D198 0000A6AF */   sw        $a2, 0x0($sp)
    /* 1E11C 0011D19C 04000424 */  addiu      $a0, $zero, 0x4
    /* 1E120 0011D1A0 9863040C */  jal        func_00118E60
    /* 1E124 0011D1A4 0400053C */   lui       $a1, (0x40000 >> 16)
    /* 1E128 0011D1A8 2D20A003 */  daddu      $a0, $sp, $zero
    /* 1E12C 0011D1AC 8863040C */  jal        func_00118E20
    /* 1E130 0011D1B0 01000524 */   addiu     $a1, $zero, 0x1
    /* 1E134 0011D1B4 0F004010 */  beqz       $v0, .L0011D1F4
    /* 1E138 0011D1B8 04000424 */   addiu     $a0, $zero, 0x4
    /* 1E13C 0011D1BC 9863040C */  jal        func_00118E60
    /* 1E140 0011D1C0 0100053C */   lui       $a1, (0x10000 >> 16)
    /* 1E144 0011D1C4 04000424 */  addiu      $a0, $zero, 0x4
    /* 1E148 0011D1C8 9863040C */  jal        func_00118E60
    /* 1E14C 0011D1CC 0200053C */   lui       $a1, (0x20000 >> 16)
    /* 1E150 0011D1D0 0080043C */  lui        $a0, (0x80000002 >> 16)
    /* 1E154 0011D1D4 2D280000 */  daddu      $a1, $zero, $zero
    /* 1E158 0011D1D8 9863040C */  jal        func_00118E60
    /* 1E15C 0011D1DC 02008434 */   ori       $a0, $a0, (0x80000002 & 0xFFFF)
    /* 1E160 0011D1E0 0080043C */  lui        $a0, (0x80000000 >> 16)
    /* 1E164 0011D1E4 9863040C */  jal        func_00118E60
    /* 1E168 0011D1E8 2D280000 */   daddu     $a1, $zero, $zero
    /* 1E16C 0011D1EC 02000010 */  b          .L0011D1F8
    /* 1E170 0011D1F0 01000224 */   addiu     $v0, $zero, 0x1
.align 2
  .L0011D1F4:
    /* 1E174 0011D1F4 2D100000 */  daddu      $v0, $zero, $zero
.align 2
  .L0011D1F8:
    /* 1E178 0011D1F8 3000BFDF */  ld         $ra, 0x30($sp)
    /* 1E17C 0011D1FC 2000B1DF */  ld         $s1, 0x20($sp)
    /* 1E180 0011D200 1000B0DF */  ld         $s0, 0x10($sp)
    /* 1E184 0011D204 0800E003 */  jr         $ra
    /* 1E188 0011D208 4000BD27 */   addiu     $sp, $sp, 0x40
endlabel func_0011D0D0
    /* 1E18C 0011D20C 00000000 */  nop
