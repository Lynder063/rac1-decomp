.align 3
/* Handwritten function */
nonmatching func_001EFE10, 0x10F0

glabel func_001EFE10
    /* F0D90 001EFE10 89830072 */  pcpyld     $s0, $s0, $zero
    /* F0D94 001EFE14 00009CD8 */  lqc2       $vf28, 0x0($a0)
    /* F0D98 001EFE18 898B2072 */  pcpyld     $s1, $s1, $zero
    /* F0D9C 001EFE1C 0000BDD8 */  lqc2       $vf29, 0x0($a1)
    /* F0DA0 001EFE20 1807204A */  vmulx.w    $vf28, $vf0, $vf0x
    /* F0DA4 001EFE24 19000F3C */  lui        $t7, %hi(D_00194200)
    /* F0DA8 001EFE28 0042EF25 */  addiu      $t7, $t7, %lo(D_00194200)
    /* F0DAC 001EFE2C 5807204A */  vmulx.w    $vf29, $vf0, $vf0x
    /* F0DB0 001EFE30 8044013C */  lui        $at, (0x44800000 >> 16)
    /* F0DB4 001EFE34 00000000 */  nop
    /* F0DB8 001EFE38 89934072 */  pcpyld     $s2, $s2, $zero
    /* F0DBC 001EFE3C 1000ED8D */  lw         $t5, 0x10($t7)
    /* F0DC0 001EFE40 899B6072 */  pcpyld     $s3, $s3, $zero
    /* F0DC4 001EFE44 0008A148 */  qmtc2.ni   $at, $vf1
    /* F0DC8 001EFE48 89A38072 */  pcpyld     $s4, $s4, $zero
    /* F0DCC 001EFE4C 0000A048 */  qmtc2.ni   $zero, $vf0
    /* F0DD0 001EFE50 EFE0DD4B */  vmini.xyz  $vf3, $vf28, $vf29
    /* F0DD4 001EFE54 0000D320 */  addi       $s3, $a2, 0x0 /* handwritten instruction */
    /* F0DD8 001EFE58 2BE1DD4B */  vmax.xyz   $vf4, $vf28, $vf29
    /* F0DDC 001EFE5C 0000F220 */  addi       $s2, $a3, 0x0 /* handwritten instruction */
    /* F0DE0 001EFE60 98E7E14B */  vmulx.xyzw $vf30, $vf28, $vf1x
    /* F0DE4 001EFE64 00001121 */  addi       $s1, $t0, 0x0 /* handwritten instruction */
    /* F0DE8 001EFE68 D8EFE14B */  vmulx.xyzw $vf31, $vf29, $vf1x
    /* F0DEC 001EFE6C 00001420 */  addi       $s4, $zero, 0x0 /* handwritten instruction */
    /* F0DF0 001EFE70 EC18C04B */  vsub.xyz   $vf3, $vf3, $vf0
    /* F0DF4 001EFE74 0070103C */  lui        $s0, (0x70003000 >> 16)
    /* F0DF8 001EFE78 89ABA072 */  pcpyld     $s5, $s5, $zero
    /* F0DFC 001EFE7C 0000A048 */  qmtc2.ni   $zero, $vf0
    /* F0E00 001EFE80 89B3C072 */  pcpyld     $s6, $s6, $zero
    /* F0E04 001EFE84 0000A048 */  qmtc2.ni   $zero, $vf0
    /* F0E08 001EFE88 89BBE072 */  pcpyld     $s7, $s7, $zero
    /* F0E0C 001EFE8C 0000A048 */  qmtc2.ni   $zero, $vf0
    /* F0E10 001EFE90 D303A005 */  bltz       $t5, .L001F0DE0
    /* F0E14 001EFE94 89FBE073 */   pcpyld    $ra, $ra, $zero
    /* F0E18 001EFE98 00884148 */  cfc2.ni    $at, $vi17
    /* F0E1C 001EFE9C 0100AD21 */  addi       $t5, $t5, 0x1 /* handwritten instruction */
    /* F0E20 001EFEA0 0421C14B */  vsubx.xyz  $vf4, $vf4, $vf1x
    /* F0E24 001EFEA4 1000EDAD */  sw         $t5, 0x10($t7)
    /* F0E28 001EFEA8 7CF1FC4B */  vftoi0.xyzw $vf28, $vf30
    /* F0E2C 001EFEAC E0002130 */  andi       $at, $at, 0xE0
    /* F0E30 001EFEB0 CB032014 */  bnez       $at, .L001F0DE0
    /* F0E34 001EFEB4 3C680D00 */   dsll32    $t5, $t5, 0
    /* F0E38 001EFEB8 0000F88D */  lw         $t8, 0x0($t7)
    /* F0E3C 001EFEBC 25986D02 */  or         $s3, $s3, $t5
    /* F0E40 001EFEC0 7CF9FD4B */  vftoi0.xyzw $vf29, $vf31
    /* F0E44 001EFEC4 00100E3C */  lui        $t6, (0x10000000 >> 16)
    /* F0E48 001EFEC8 000000CF */  pref       0x00, 0x0($t8)
    /* F0E4C 001EFECC E0000234 */  ori        $v0, $zero, 0xE0
    /* F0E50 001EFED0 00884148 */  cfc2.ni    $at, $vi17
    /* F0E54 001EFED4 01006432 */  andi       $a0, $s3, 0x1
    /* F0E58 001EFED8 00E02C48 */  qmfc2.ni   $t4, $vf28
    /* F0E5C 001EFEDC 00001620 */  addi       $s6, $zero, 0x0 /* handwritten instruction */
    /* F0E60 001EFEE0 E0002130 */  andi       $at, $at, 0xE0
    /* F0E64 001EFEE4 6CFBDE4B */  vsub.xyz   $vf13, $vf31, $vf30
    /* F0E68 001EFEE8 BD032214 */  bne        $at, $v0, .L001F0DE0
    /* F0E6C 001EFEEC 3E630C70 */   psrlw     $t4, $t4, 12
    /* F0E70 001EFEF0 00E82D48 */  qmfc2.ni   $t5, $vf29
    /* F0E74 001EFEF4 C84D0C70 */  ppach      $t1, $zero, $t4
    /* F0E78 001EFEF8 003800AE */  sw         $zero, (0x70003800 & 0xFFFF)($s0)
    /* F0E7C 001EFEFC C84E0970 */  ppacb      $t1, $zero, $t1
    /* F0E80 001EFF00 043809AE */  sw         $t1, (0x70003804 & 0xFFFF)($s0)
    /* F0E84 001EFF04 3E6B0D70 */  psrlw      $t5, $t5, 12
    /* F0E88 001EFF08 1100801C */  bgtz       $a0, .L001EFF50
    /* F0E8C 001EFF0C FC3F0822 */   addi      $t0, $s0, (0x70003FFC & 0xFFFF) /* handwritten instruction */
    /* F0E90 001EFF10 FFFF8131 */  andi       $at, $t4, 0xFFFF
    /* F0E94 001EFF14 3E100C00 */  dsrl32     $v0, $t4, 0
    /* F0E98 001EFF18 5CBF070C */  jal        func_001EFD70
    /* F0E9C 001EFF1C A91B8071 */   pcpyud    $v1, $t4, $zero
    /* F0EA0 001EFF20 0B002010 */  beqz       $at, .L001EFF50
    /* F0EA4 001EFF24 000000FE */   sd        $zero, (0x70000000 & 0xFFFF)($s0)
    /* F0EA8 001EFF28 FF002230 */  andi       $v0, $at, 0xFF
    /* F0EAC 001EFF2C 00D4CE35 */  ori        $t6, $t6, 0xD400
    /* F0EB0 001EFF30 2000C2AD */  sw         $v0, 0x20($t6)
    /* F0EB4 001EFF34 020A0100 */  srl        $at, $at, 8
    /* F0EB8 001EFF38 8000C0AD */  sw         $zero, 0x80($t6)
    /* F0EBC 001EFF3C 20083800 */  add        $at, $at, $t8 /* handwritten instruction */
    /* F0EC0 001EFF40 1000C1AD */  sw         $at, 0x10($t6)
    /* F0EC4 001EFF44 00010134 */  ori        $at, $zero, 0x100
    /* F0EC8 001EFF48 0000C1AD */  sw         $at, 0x0($t6)
    /* F0ECC 001EFF4C 00000000 */  nop
.align 2
  .L001EFF50:
    /* F0ED0 001EFF50 48508D71 */  psubw      $t2, $t4, $t5
    /* F0ED4 001EFF54 C8550A70 */  ppach      $t2, $zero, $t2
    /* F0ED8 001EFF58 57004011 */  beqz       $t2, .L001F00B8
    /* F0EDC 001EFF5C 00300B36 */   ori       $t3, $s0, (0x70003000 & 0xFFFF)
    /* F0EE0 001EFF60 6CF8DE4B */  vsub.xyz   $vf1, $vf31, $vf30
    /* F0EE4 001EFF64 03000E20 */  addi       $t6, $zero, 0x3 /* handwritten instruction */
    /* F0EE8 001EFF68 3CF3C24B */  vmove.xyz  $vf2, $vf30
    /* F0EEC 001EFF6C 00000F20 */  addi       $t7, $zero, 0x0 /* handwritten instruction */
.align 2
  .L001EFF70:
    /* F0EF0 001EFF70 BC03614A */  .word      0x4A6103BC    # vdiv       Q, $vf0w, $vf1x
    /* F0EF4 001EFF74 FFFFCE21 */  addi       $t6, $t6, -0x1 /* handwritten instruction */
    /* F0EF8 001EFF78 03080C00 */  sra        $at, $t4, 0
    /* F0EFC 001EFF7C 03100D00 */  sra        $v0, $t5, 0
    /* F0F00 001EFF80 00006421 */  addi       $a0, $t3, 0x0 /* handwritten instruction */
    /* F0F04 001EFF84 22184100 */  sub        $v1, $v0, $at /* handwritten instruction */
    /* F0F08 001EFF88 35006104 */  bgez       $v1, func_001F0060
    /* F0F0C 001EFF8C 01000320 */   addi      $v1, $zero, 0x1 /* handwritten instruction */
    /* F0F10 001EFF90 01002120 */  addi       $at, $at, 0x1 /* handwritten instruction */
    /* F0F14 001EFF94 01004220 */  addi       $v0, $v0, 0x1 /* handwritten instruction */
    /* F0F18 001EFF98 18C00708 */  j          func_001F0060
    /* F0F1C 001EFF9C FFFF0320 */   addi      $v1, $zero, -0x1 /* handwritten instruction */
.align 2
  alabel func_001EFFA0
    /* F0F20 001EFFA0 3D0BE14B */  .word      0x4BE10B3D    # vmr32.xyzw $vf1, $vf1
    /* F0F24 001EFFA4 000003A1 */  sb         $v1, 0x0($t0)
    /* F0F28 001EFFA8 3D13E24B */  .word      0x4BE2133D    # vmr32.xyzw $vf2, $vf2
    /* F0F2C 001EFFAC 01000821 */  addi       $t0, $t0, 0x1 /* handwritten instruction */
    /* F0F30 001EFFB0 C9670C70 */  prot3w     $t4, $t4
    /* F0F34 001EFFB4 C96F0D70 */  prot3w     $t5, $t5
    /* F0F38 001EFFB8 EDFFC015 */  bnez       $t6, .L001EFF70
    /* F0F3C 001EFFBC 00026B21 */   addi      $t3, $t3, 0x200 /* handwritten instruction */
    /* F0F40 001EFFC0 00380A22 */  addi       $t2, $s0, 0x3800 /* handwritten instruction */
    /* F0F44 001EFFC4 FC3F0682 */  lb         $a2, 0x3FFC($s0)
    /* F0F48 001EFFC8 00300B22 */  addi       $t3, $s0, 0x3000 /* handwritten instruction */
    /* F0F4C 001EFFCC FD3F0782 */  lb         $a3, 0x3FFD($s0)
    /* F0F50 001EFFD0 00320C22 */  addi       $t4, $s0, 0x3200 /* handwritten instruction */
    /* F0F54 001EFFD4 FE3F0882 */  lb         $t0, 0x3FFE($s0)
    /* F0F58 001EFFD8 00340D22 */  addi       $t5, $s0, 0x3400 /* handwritten instruction */
    /* F0F5C 001EFFDC 003A0700 */  sll        $a3, $a3, 8
    /* F0F60 001EFFE0 00440800 */  sll        $t0, $t0, 16
    /* F0F64 001EFFE4 00000000 */  nop
.align 2
  alabel func_001EFFE8
    /* F0F68 001EFFE8 3B00E019 */  blez       $t7, .L001F00D8
    /* F0F6C 001EFFEC 0000618D */   lw        $at, 0x0($t3)
    /* F0F70 001EFFF0 0000828D */  lw         $v0, 0x0($t4)
    /* F0F74 001EFFF4 08004A21 */  addi       $t2, $t2, 0x8 /* handwritten instruction */
    /* F0F78 001EFFF8 0000A38D */  lw         $v1, 0x0($t5)
    /* F0F7C 001EFFFC FFFFEF21 */  addi       $t7, $t7, -0x1 /* handwritten instruction */
    /* F0F80 001F0000 22204100 */  sub        $a0, $v0, $at /* handwritten instruction */
    /* F0F84 001F0004 00000000 */  nop
    /* F0F88 001F0008 07008004 */  bltz       $a0, .L001F0028
    /* F0F8C 001F000C 22206100 */   sub       $a0, $v1, $at /* handwritten instruction */
    /* F0F90 001F0010 0D008004 */  bltz       $a0, .L001F0048
    /* F0F94 001F0014 000041AD */   sw        $at, 0x0($t2)
    /* F0F98 001F0018 20482601 */  add        $t1, $t1, $a2 /* handwritten instruction */
    /* F0F9C 001F001C 04006B21 */  addi       $t3, $t3, 0x4 /* handwritten instruction */
    /* F0FA0 001F0020 FABF0708 */  j          func_001EFFE8
    /* F0FA4 001F0024 040049AD */   sw        $t1, 0x4($t2)
.align 2
  .L001F0028:
    /* F0FA8 001F0028 22206200 */  sub        $a0, $v1, $v0 /* handwritten instruction */
    /* F0FAC 001F002C 00000000 */  nop
    /* F0FB0 001F0030 05008004 */  bltz       $a0, .L001F0048
    /* F0FB4 001F0034 000042AD */   sw        $v0, 0x0($t2)
    /* F0FB8 001F0038 20482701 */  add        $t1, $t1, $a3 /* handwritten instruction */
    /* F0FBC 001F003C 04008C21 */  addi       $t4, $t4, 0x4 /* handwritten instruction */
    /* F0FC0 001F0040 FABF0708 */  j          func_001EFFE8
    /* F0FC4 001F0044 040049AD */   sw        $t1, 0x4($t2)
.align 2
  .L001F0048:
    /* F0FC8 001F0048 000043AD */  sw         $v1, 0x0($t2)
    /* F0FCC 001F004C 20482801 */  add        $t1, $t1, $t0 /* handwritten instruction */
    /* F0FD0 001F0050 040049AD */  sw         $t1, 0x4($t2)
    /* F0FD4 001F0054 0400AD21 */  addi       $t5, $t5, 0x4 /* handwritten instruction */
    /* F0FD8 001F0058 FABF0708 */  j          func_001EFFE8
    /* F0FDC 001F005C 00000000 */   nop
.align 2
  alabel func_001F0060
    /* F0FE0 001F0060 11002210 */  beq        $at, $v0, .L001F00A8
    /* F0FE4 001F0064 20082300 */   add       $at, $at, $v1 /* handwritten instruction */
.align 2
  .L001F0068:
    /* F0FE8 001F0068 002B0100 */  sll        $a1, $at, 12
    /* F0FEC 001F006C 803F063C */  lui        $a2, (0x3F800000 >> 16)
    /* F0FF0 001F0070 0018A548 */  qmtc2.ni   $a1, $vf3
    /* F0FF4 001F0074 00000000 */  nop
    /* F0FF8 001F0078 3C19034B */  vitof0.x   $vf3, $vf3
    /* F0FFC 001F007C EC18024B */  vsub.x     $vf3, $vf3, $vf2
    /* F1000 001F0080 DC18004B */  .word      0x4B0018DC    # vmulq.x    $vf3, $vf3, Q
    /* F1004 001F0084 0100EF21 */  addi       $t7, $t7, 0x1 /* handwritten instruction */
    /* F1008 001F0088 00182548 */  qmfc2.ni   $a1, $vf3
    /* F100C 001F008C E828A670 */  pminw      $a1, $a1, $a2
    /* F1010 001F0090 C828A070 */  pmaxw      $a1, $a1, $zero
    /* F1014 001F0094 0000A048 */  qmtc2.ni   $zero, $vf0
    /* F1018 001F0098 000085AC */  sw         $a1, 0x0($a0)
    /* F101C 001F009C 04008420 */  addi       $a0, $a0, 0x4 /* handwritten instruction */
    /* F1020 001F00A0 F1FF2214 */  bne        $at, $v0, .L001F0068
    /* F1024 001F00A4 20082300 */   add       $at, $at, $v1 /* handwritten instruction */
.align 2
  .L001F00A8:
    /* F1028 001F00A8 0050013C */  lui        $at, (0x50000000 >> 16)
    /* F102C 001F00AC 00000000 */  nop
    /* F1030 001F00B0 E8BF0708 */  j          func_001EFFA0
    /* F1034 001F00B4 000081AC */   sw        $at, 0x0($a0)
.align 2
  .L001F00B8:
    /* F1038 001F00B8 00E02148 */  qmfc2.ni   $at, $vf28
    /* F103C 001F00BC 00380A22 */  addi       $t2, $s0, (0x70003800 & 0xFFFF) /* handwritten instruction */
    /* F1040 001F00C0 00E82248 */  qmfc2.ni   $v0, $vf29
    /* F1044 001F00C4 48082270 */  psubw      $at, $at, $v0
    /* F1048 001F00C8 C9170170 */  prot3w     $v0, $at
    /* F104C 001F00CC 25082200 */  or         $at, $at, $v0
    /* F1050 001F00D0 3B032010 */  beqz       $at, .L001F0DC0
    /* F1054 001F00D4 01100E3C */   lui       $t6, (0x10010000 >> 16)
.align 2
  .L001F00D8:
    /* F1058 001F00D8 0303C04B */  vaddw.xyz  $vf12, $vf0, $vf0w
    /* F105C 001F00DC 803F013C */  lui        $at, (0x3F800000 >> 16)
    /* F1060 001F00E0 0306004B */  vaddw.x    $vf24, $vf0, $vf0w
    /* F1064 001F00E4 080041FD */  sd         $at, 0x8($t2)
    /* F1068 001F00E8 01006132 */  andi       $at, $s3, 0x1
    /* F106C 001F00EC 00381922 */  addi       $t9, $s0, (0x70003800 & 0xFFFF) /* handwritten instruction */
    /* F1070 001F00F0 1F012014 */  bnez       $at, .L001F0570
    /* F1074 001F00F4 00101722 */   addi      $s7, $s0, (0x70001000 & 0xFFFF) /* handwritten instruction */
.align 2
  .L001F00F8:
    /* F1078 001F00F8 803F013C */  lui        $at, (0x3F800000 >> 16)
    /* F107C 001F00FC 00002A8F */  lw         $t2, 0x0($t9)
    /* F1080 001F0100 1B012A10 */  beq        $at, $t2, .L001F0570
    /* F1084 001F0104 08002B8F */   lw        $t3, 0x8($t9)
    /* F1088 001F0108 0B01C016 */  bnez       $s6, .L001F0538
    /* F108C 001F010C 04002C8F */   lw        $t4, 0x4($t9)
.align 2
  .L001F0110:
    /* F1090 001F0110 0C00238F */  lw         $v1, 0xC($t9)
    /* F1094 001F0114 00000000 */  nop
    /* F1098 001F0118 0010F73A */  xori       $s7, $s7, 0x1000
    /* F109C 001F011C 00100E3C */  lui        $t6, (0x1000D400 >> 16)
    /* F10A0 001F0120 00D4CE35 */  ori        $t6, $t6, (0x1000D400 & 0xFFFF)
    /* F10A4 001F0124 08003923 */  addi       $t9, $t9, 0x8 /* handwritten instruction */
.align 2
  .L001F0128:
    /* F10A8 001F0128 0000C28D */  lw         $v0, 0x0($t6)
    /* F10AC 001F012C 00014230 */  andi       $v0, $v0, 0x100
    /* F10B0 001F0130 0050AA48 */  qmtc2.ni   $t2, $vf10
    /* F10B4 001F0134 00000000 */  nop
    /* F10B8 001F0138 0058AB48 */  qmtc2.ni   $t3, $vf11
    /* F10BC 001F013C 00000000 */  nop
    /* F10C0 001F0140 F9FF4014 */  bnez       $v0, .L001F0128
    /* F10C4 001F0144 00000000 */   nop
    /* F10C8 001F0148 11002B10 */  beq        $at, $t3, .L001F0190
    /* F10CC 001F014C FF006130 */   andi      $at, $v1, 0xFF
    /* F10D0 001F0150 02120300 */  srl        $v0, $v1, 8
    /* F10D4 001F0154 021C0300 */  srl        $v1, $v1, 16
    /* F10D8 001F0158 5CBF070C */  jal        func_001EFD70
    /* F10DC 001F015C FF004230 */   andi      $v0, $v0, 0xFF
    /* F10E0 001F0160 FF002230 */  andi       $v0, $at, 0xFF
    /* F10E4 001F0164 0010E33A */  xori       $v1, $s7, 0x1000
    /* F10E8 001F0168 09002010 */  beqz       $at, .L001F0190
    /* F10EC 001F016C 000060FC */   sd        $zero, 0x0($v1)
    /* F10F0 001F0170 2000C2AD */  sw         $v0, 0x20($t6)
    /* F10F4 001F0174 020A0100 */  srl        $at, $at, 8
    /* F10F8 001F0178 8000C3AD */  sw         $v1, 0x80($t6)
    /* F10FC 001F017C 20083800 */  add        $at, $at, $t8 /* handwritten instruction */
    /* F1100 001F0180 1000C1AD */  sw         $at, 0x10($t6)
    /* F1104 001F0184 00010134 */  ori        $at, $zero, 0x100
    /* F1108 001F0188 0000C1AD */  sw         $at, 0x0($t6)
    /* F110C 001F018C 00000000 */  nop
.align 2
  .L001F0190:
    /* F1110 001F0190 0200EF92 */  lbu        $t7, 0x2($s7)
    /* F1114 001F0194 BC69CA4B */  .word      0x4BCA69BC    # vmulax.xyz ACC, $vf13, $vf10x
    /* F1118 001F0198 0400EE22 */  addi       $t6, $s7, 0x4 /* handwritten instruction */
    /* F111C 001F019C 8BF2C04B */  vmaddw.xyz $vf10, $vf30, $vf0w
    /* F1120 001F01A0 D5FFE011 */  beqz       $t7, .L001F00F8
    /* F1124 001F01A4 BC69CB4B */   .word      0x4BCB69BC    # vmulax.xyz ACC, $vf13, $vf11x
    /* F1128 001F01A8 00000000 */  nop
    /* F112C 001F01AC CBF2C04B */  vmaddw.xyz $vf11, $vf30, $vf0w
    /* F1130 001F01B0 7C51C14B */  vftoi0.xyz $vf1, $vf10
    /* F1134 001F01B4 0100083C */  lui        $t0, (0x10101 >> 16)
    /* F1138 001F01B8 7C59C24B */  vftoi0.xyz $vf2, $vf11
    /* F113C 001F01BC 01010835 */  ori        $t0, $t0, (0x10101 & 0xFFFF)
    /* F1140 001F01C0 88460870 */  pextlb     $t0, $zero, $t0
    /* F1144 001F01C4 88450870 */  pextlh     $t0, $zero, $t0
    /* F1148 001F01C8 FC4A0870 */  psllw      $t1, $t0, 11
    /* F114C 001F01CC FC530870 */  psllw      $t2, $t0, 15
    /* F1150 001F01D0 00082148 */  qmfc2.ni   $at, $vf1
    /* F1154 001F01D4 881E0C70 */  pextlb     $v1, $zero, $t4
    /* F1158 001F01D8 00102248 */  qmfc2.ni   $v0, $vf2
    /* F115C 001F01DC 881D0370 */  pextlh     $v1, $zero, $v1
    /* F1160 001F01E0 3C1B0370 */  psllw      $v1, $v1, 12
    /* F1164 001F01E4 08186970 */  paddw      $v1, $v1, $t1
    /* F1168 001F01E8 0080A348 */  qmtc2.ni   $v1, $vf16
    /* F116C 001F01EC C8550A70 */  ppach      $t2, $zero, $t2
    /* F1170 001F01F0 48082370 */  psubw      $at, $at, $v1
    /* F1174 001F01F4 48104370 */  psubw      $v0, $v0, $v1
    /* F1178 001F01F8 3C81D04B */  vitof0.xyz $vf16, $vf16
    /* F117C 001F01FC E01F0D22 */  addi       $t5, $s0, (0x70001FE0 & 0xFFFF) /* handwritten instruction */
    /* F1180 001F0200 E8582270 */  pminw      $t3, $at, $v0
    /* F1184 001F0204 C8602270 */  pmaxw      $t4, $at, $v0
    /* F1188 001F0208 48586871 */  psubw      $t3, $t3, $t0
    /* F118C 001F020C 08608871 */  paddw      $t4, $t4, $t0
    /* F1190 001F0210 ACF3D04B */  vsub.xyz   $vf14, $vf30, $vf16
    /* F1194 001F0214 ECFBD04B */  vsub.xyz   $vf15, $vf31, $vf16
    /* F1198 001F0218 C85D0B70 */  ppach      $t3, $zero, $t3
    /* F119C 001F021C C8650C70 */  ppach      $t4, $zero, $t4
    /* F11A0 001F0220 0000C18D */  lw         $at, 0x0($t6)
    /* F11A4 001F0224 0F00073C */  lui        $a3, (0xFFC00 >> 16)
    /* F11A8 001F0228 0400C28D */  lw         $v0, 0x4($t6)
    /* F11AC 001F022C 00FCE734 */  ori        $a3, $a3, (0xFFC00 & 0xFFFF)
.align 2
  .L001F0230:
    /* F11B0 001F0230 2000AD21 */  addi       $t5, $t5, 0x20 /* handwritten instruction */
    /* F11B4 001F0234 0800CE21 */  addi       $t6, $t6, 0x8 /* handwritten instruction */
    /* F11B8 001F0238 FF032330 */  andi       $v1, $at, 0x3FF
    /* F11BC 001F023C FF034530 */  andi       $a1, $v0, 0x3FF
    /* F11C0 001F0240 24202700 */  and        $a0, $at, $a3
    /* F11C4 001F0244 24304700 */  and        $a2, $v0, $a3
    /* F11C8 001F0248 80190300 */  sll        $v1, $v1, 6
    /* F11CC 001F024C 80290500 */  sll        $a1, $a1, 6
    /* F11D0 001F0250 38230400 */  dsll       $a0, $a0, 12
    /* F11D4 001F0254 38330600 */  dsll       $a2, $a2, 12
    /* F11D8 001F0258 020D0100 */  srl        $at, $at, 20
    /* F11DC 001F025C 02150200 */  srl        $v0, $v0, 20
    /* F11E0 001F0260 3C090100 */  dsll32     $at, $at, 4
    /* F11E4 001F0264 3C110200 */  dsll32     $v0, $v0, 4
    /* F11E8 001F0268 25186400 */  or         $v1, $v1, $a0
    /* F11EC 001F026C 2528A600 */  or         $a1, $a1, $a2
    /* F11F0 001F0270 25082300 */  or         $at, $at, $v1
    /* F11F4 001F0274 25104500 */  or         $v0, $v0, $a1
    /* F11F8 001F0278 881D2070 */  pextlh     $v1, $at, $zero
    /* F11FC 001F027C 88254070 */  pextlh     $a0, $v0, $zero
    /* F1200 001F0280 3F1C0370 */  psraw      $v1, $v1, 16
    /* F1204 001F0284 3F240470 */  psraw      $a0, $a0, 16
    /* F1208 001F0288 48298171 */  psubh      $a1, $t4, $at
    /* F120C 001F028C 0008A348 */  qmtc2.ni   $v1, $vf1
    /* F1210 001F0290 48318271 */  psubh      $a2, $t4, $v0
    /* F1214 001F0294 0010A448 */  qmtc2.ni   $a0, $vf2
    /* F1218 001F0298 48192B70 */  psubh      $v1, $at, $t3
    /* F121C 001F029C 0000C18D */  lw         $at, 0x0($t6)
    /* F1220 001F02A0 48214B70 */  psubh      $a0, $v0, $t3
    /* F1224 001F02A4 0400C28D */  lw         $v0, 0x4($t6)
    /* F1228 001F02A8 3C09C14B */  vitof0.xyz $vf1, $vf1
    /* F122C 001F02AC 24186A00 */  and        $v1, $v1, $t2
    /* F1230 001F02B0 3C11C24B */  vitof0.xyz $vf2, $vf2
    /* F1234 001F02B4 24208A00 */  and        $a0, $a0, $t2
    /* F1238 001F02B8 2428AA00 */  and        $a1, $a1, $t2
    /* F123C 001F02BC 2430CA00 */  and        $a2, $a2, $t2
    /* F1240 001F02C0 FA1B0300 */  dsrl       $v1, $v1, 15
    /* F1244 001F02C4 FA230400 */  dsrl       $a0, $a0, 15
    /* F1248 001F02C8 BA2B0500 */  dsrl       $a1, $a1, 14
    /* F124C 001F02CC BA330600 */  dsrl       $a2, $a2, 14
    /* F1250 001F02D0 25186500 */  or         $v1, $v1, $a1
    /* F1254 001F02D4 25208600 */  or         $a0, $a0, $a2
    /* F1258 001F02D8 0000A1F9 */  sqc2       $vf1, 0x0($t5)
    /* F125C 001F02DC C81E0370 */  ppacb      $v1, $zero, $v1
    /* F1260 001F02E0 1000A2F9 */  sqc2       $vf2, 0x10($t5)
    /* F1264 001F02E4 C8260470 */  ppacb      $a0, $zero, $a0
    /* F1268 001F02E8 0C00A3AD */  sw         $v1, 0xC($t5)
    /* F126C 001F02EC FEFFEF21 */  addi       $t7, $t7, -0x2 /* handwritten instruction */
    /* F1270 001F02F0 CFFFE01D */  bgtz       $t7, .L001F0230
    /* F1274 001F02F4 1C00A4AD */   sw        $a0, 0x1C($t5)
    /* F1278 001F02F8 0200E192 */  lbu        $at, 0x2($s7)
    /* F127C 001F02FC 00200D22 */  addi       $t5, $s0, (0x70002000 & 0xFFFF) /* handwritten instruction */
    /* F1280 001F0300 0000EE92 */  lbu        $t6, 0x0($s7)
    /* F1284 001F0304 0400EF22 */  addi       $t7, $s7, 0x4 /* handwritten instruction */
    /* F1288 001F0308 80080100 */  sll        $at, $at, 2
    /* F128C 001F030C 02000B3C */  lui        $t3, (0x20202 >> 16)
    /* F1290 001F0310 2078E101 */  add        $t7, $t7, $at /* handwritten instruction */
    /* F1294 001F0314 80700E00 */  sll        $t6, $t6, 2
    /* F1298 001F0318 0000E58D */  lw         $a1, 0x0($t7)
    /* F129C 001F031C 2070CF01 */  add        $t6, $t6, $t7 /* handwritten instruction */
    /* F12A0 001F0320 02026B35 */  ori        $t3, $t3, (0x20202 & 0xFFFF)
    /* F12A4 001F0324 00070C34 */  ori        $t4, $zero, 0x700
    /* F12A8 001F0328 E9660C70 */  pcpyh      $t4, $t4
    /* F12AC 001F032C 882E6571 */  pextlb     $a1, $t3, $a1
    /* F12B0 001F0330 0000EA21 */  addi       $t2, $t7, 0x0 /* handwritten instruction */
    /* F12B4 001F0334 00000000 */  nop
.align 2
  alabel func_001F0338
    /* F12B8 001F0338 6900EE11 */  beq        $t7, $t6, .L001F04E0
    /* F12BC 001F033C 880D8571 */   pextlh    $at, $t4, $a1
    /* F12C0 001F0340 3C090170 */  psllw      $at, $at, 4
    /* F12C4 001F0344 0000A048 */  qmtc2.ni   $zero, $vf0
    /* F12C8 001F0348 0C00268C */  lw         $a2, 0xC($at)
    /* F12CC 001F034C 3E100100 */  dsrl32     $v0, $at, 0
    /* F12D0 001F0350 0C00478C */  lw         $a3, 0xC($v0)
    /* F12D4 001F0354 A91B2070 */  pcpyud     $v1, $at, $zero
    /* F12D8 001F0358 0C00688C */  lw         $t0, 0xC($v1)
    /* F12DC 001F035C 3E240500 */  dsrl32     $a0, $a1, 16
    /* F12E0 001F0360 0400E58D */  lw         $a1, 0x4($t7)
    /* F12E4 001F0364 2430C700 */  and        $a2, $a2, $a3
    /* F12E8 001F0368 2430C800 */  and        $a2, $a2, $t0
    /* F12EC 001F036C 0400EF21 */  addi       $t7, $t7, 0x4 /* handwritten instruction */
    /* F12F0 001F0370 F1FFC01C */  bgtz       $a2, func_001F0338
    /* F12F4 001F0374 882E6571 */   pextlb    $a1, $t3, $a1
    /* F12F8 001F0378 000021D8 */  lqc2       $vf1, 0x0($at)
    /* F12FC 001F037C 80006632 */  andi       $a2, $s3, 0x80
    /* F1300 001F0380 000042D8 */  lqc2       $vf2, 0x0($v0)
    /* F1304 001F0384 2430C400 */  and        $a2, $a2, $a0
    /* F1308 001F0388 EBFFC01C */  bgtz       $a2, func_001F0338
    /* F130C 001F038C 000063D8 */   lqc2      $vf3, 0x0($v1)
    /* F1310 001F0390 AC10C14B */  vsub.xyz   $vf2, $vf2, $vf1
    /* F1314 001F0394 20006632 */  andi       $a2, $s3, 0x20
    /* F1318 001F0398 EC18C14B */  vsub.xyz   $vf3, $vf3, $vf1
    /* F131C 001F039C 0100C628 */  slti       $a2, $a2, 0x1
    /* F1320 001F03A0 2C09CE4B */  vsub.xyz   $vf4, $vf1, $vf14
    /* F1324 001F03A4 023A1300 */  srl        $a3, $s3, 8
    /* F1328 001F03A8 6C09CF4B */  vsub.xyz   $vf5, $vf1, $vf15
    /* F132C 001F03AC 2638E400 */  xor        $a3, $a3, $a0
    /* F1330 001F03B0 FE1AC24B */  .word      0x4BC21AFE    # vopmula.xyz ACC, $vf3, $vf2
    /* F1334 001F03B4 1F00E730 */  andi       $a3, $a3, 0x1F
    /* F1338 001F03B8 AE11C34B */  .word      0x4BC311AE    # vopmsub.xyz $vf6, $vf2, $vf3
    /* F133C 001F03BC 2530C700 */  or         $a2, $a2, $a3
    /* F1340 001F03C0 DDFFC010 */  beqz       $a2, func_001F0338
    /* F1344 001F03C4 6A6AC64B */   vmul.xyz  $vf9, $vf13, $vf6
    /* F1348 001F03C8 EA21C64B */  vmul.xyz   $vf7, $vf4, $vf6
    /* F134C 001F03CC 00000000 */  nop
    /* F1350 001F03D0 2A2AC64B */  vmul.xyz   $vf8, $vf5, $vf6
    /* F1354 001F03D4 AC72C14B */  vsub.xyz   $vf10, $vf14, $vf1
    /* F1358 001F03D8 3D48094B */  .word      0x4B09483D    # vadday.x   ACC, $vf9, $vf9y
    /* F135C 001F03DC 4A62094B */  vmaddz.x   $vf9, $vf12, $vf9z
    /* F1360 001F03E0 3D38074B */  .word      0x4B07383D    # vadday.x   ACC, $vf7, $vf7y
    /* F1364 001F03E4 CA61074B */  vmaddz.x   $vf7, $vf12, $vf7z
    /* F1368 001F03E8 3D40084B */  .word      0x4B08403D    # vadday.x   ACC, $vf8, $vf8y
    /* F136C 001F03EC 0A62084B */  vmaddz.x   $vf8, $vf12, $vf8z
    /* F1370 001F03F0 BC3B094A */  .word      0x4A093BBC    # vdiv       Q, $vf7x, $vf9x
    /* F1374 001F03F4 10006932 */  andi       $t1, $s3, 0x10
    /* F1378 001F03F8 BF51C04B */  .word      0x4BC051BF    # vmulaw.xyz ACC, $vf10, $vf0w
    /* F137C 001F03FC FF02004A */  vnop
    /* F1380 001F0400 00382748 */  qmfc2.ni   $a3, $vf7
    /* F1384 001F0404 00402848 */  qmfc2.ni   $t0, $vf8
    /* F1388 001F0408 3C380700 */  dsll32     $a3, $a3, 0
    /* F138C 001F040C 3C400800 */  dsll32     $t0, $t0, 0
    /* F1390 001F0410 0500201D */  bgtz       $t1, .L001F0428
    /* F1394 001F0414 2630E800 */   xor       $a2, $a3, $t0
    /* F1398 001F0418 C7FFE104 */  bgez       $a3, func_001F0338
    /* F139C 001F041C 00000000 */   nop
    /* F13A0 001F0420 C5FF0019 */  blez       $t0, func_001F0338
    /* F13A4 001F0424 00000000 */   nop
.align 2
  .L001F0428:
    /* F13A8 001F0428 C3FFC104 */  bgez       $a2, func_001F0338
    /* F13AC 001F042C 00000000 */   nop
    /* F13B0 001F0430 2169C04B */  .word      0x4BC06921    # vmaddq.xyz $vf4, $vf13, Q
    /* F13B4 001F0434 6808D04B */  vadd.xyz   $vf1, $vf1, $vf16
    /* F13B8 001F0438 6C1AC24B */  vsub.xyz   $vf9, $vf3, $vf2
    /* F13BC 001F043C AC22C24B */  vsub.xyz   $vf10, $vf4, $vf2
    /* F13C0 001F0440 FE22C24B */  .word      0x4BC222FE    # vopmula.xyz ACC, $vf4, $vf2
    /* F13C4 001F0444 EE11C44B */  .word      0x4BC411EE    # vopmsub.xyz $vf7, $vf2, $vf4
    /* F13C8 001F0448 FE1AC44B */  .word      0x4BC41AFE    # vopmula.xyz ACC, $vf3, $vf4
    /* F13CC 001F044C 2E22C34B */  .word      0x4BC3222E    # vopmsub.xyz $vf8, $vf4, $vf3
    /* F13D0 001F0450 FE52C94B */  .word      0x4BC952FE    # vopmula.xyz ACC, $vf10, $vf9
    /* F13D4 001F0454 6E4ACA4B */  .word      0x4BCA4A6E    # vopmsub.xyz $vf9, $vf9, $vf10
    /* F13D8 001F0458 EA39C64B */  vmul.xyz   $vf7, $vf7, $vf6
    /* F13DC 001F045C 2A42C64B */  vmul.xyz   $vf8, $vf8, $vf6
    /* F13E0 001F0460 6A4AC64B */  vmul.xyz   $vf9, $vf9, $vf6
    /* F13E4 001F0464 A4C2004B */  .word      0x4B00C2A4    # vsubq.x    $vf10, $vf24, Q
    /* F13E8 001F0468 3D38074B */  .word      0x4B07383D    # vadday.x   ACC, $vf7, $vf7y
    /* F13EC 001F046C CA61074B */  vmaddz.x   $vf7, $vf12, $vf7z
    /* F13F0 001F0470 3D40084B */  .word      0x4B08403D    # vadday.x   ACC, $vf8, $vf8y
    /* F13F4 001F0474 0A62084B */  vmaddz.x   $vf8, $vf12, $vf8z
    /* F13F8 001F0478 3D48094B */  .word      0x4B09483D    # vadday.x   ACC, $vf9, $vf9y
    /* F13FC 001F047C 4A62094B */  vmaddz.x   $vf9, $vf12, $vf9z
    /* F1400 001F0480 00382748 */  qmfc2.ni   $a3, $vf7
    /* F1404 001F0484 00402848 */  qmfc2.ni   $t0, $vf8
    /* F1408 001F0488 00482948 */  qmfc2.ni   $t1, $vf9
    /* F140C 001F048C 00502648 */  qmfc2.ni   $a2, $vf10
    /* F1410 001F0490 3C380700 */  dsll32     $a3, $a3, 0
    /* F1414 001F0494 3C400800 */  dsll32     $t0, $t0, 0
    /* F1418 001F0498 A7FFE004 */  bltz       $a3, func_001F0338
    /* F141C 001F049C 3C480900 */   dsll32    $t1, $t1, 0
    /* F1420 001F04A0 A5FF0005 */  bltz       $t0, func_001F0338
    /* F1424 001F04A4 3C300600 */   dsll32    $a2, $a2, 0
    /* F1428 001F04A8 A3FF2005 */  bltz       $t1, func_001F0338
    /* F142C 001F04AC 00000000 */   nop
    /* F1430 001F04B0 A1FFC018 */  blez       $a2, func_001F0338
    /* F1434 001F04B4 00000000 */   nop
    /* F1438 001F04B8 00109620 */  addi       $s6, $a0, 0x1000 /* handwritten instruction */
    /* F143C 001F04BC 00001523 */  addi       $s5, $t8, 0x0 /* handwritten instruction */
    /* F1440 001F04C0 2006004B */  .word      0x4B000620    # vaddq.x    $vf24, $vf0, Q
    /* F1444 001F04C4 6826C14B */  vadd.xyz   $vf25, $vf4, $vf1
    /* F1448 001F04C8 A836C04B */  vadd.xyz   $vf26, $vf6, $vf0
    /* F144C 001F04CC E806C14B */  vadd.xyz   $vf27, $vf0, $vf1
    /* F1450 001F04D0 2817C14B */  vadd.xyz   $vf28, $vf2, $vf1
    /* F1454 001F04D4 681FC14B */  vadd.xyz   $vf29, $vf3, $vf1
    /* F1458 001F04D8 CEC00708 */  j          func_001F0338
    /* F145C 001F04DC 00000000 */   nop
.align 2
  .L001F04E0:
    /* F1460 001F04E0 0B018016 */  bnez       $s4, .L001F0910
    /* F1464 001F04E4 00000000 */   nop
    /* F1468 001F04E8 03FF4011 */  beqz       $t2, .L001F00F8
    /* F146C 001F04EC 0300E392 */   lbu       $v1, 0x3($s7)
    /* F1470 001F04F0 00004121 */  addi       $at, $t2, 0x0 /* handwritten instruction */
    /* F1474 001F04F4 0000E221 */  addi       $v0, $t7, 0x0 /* handwritten instruction */
    /* F1478 001F04F8 FFFE6010 */  beqz       $v1, .L001F00F8
    /* F147C 001F04FC 80700300 */   sll       $t6, $v1, 2
.align 2
  .L001F0500:
    /* F1480 001F0500 02002490 */  lbu        $a0, 0x2($at)
    /* F1484 001F0504 FFFF6320 */  addi       $v1, $v1, -0x1 /* handwritten instruction */
    /* F1488 001F0508 00004590 */  lbu        $a1, 0x0($v0)
    /* F148C 001F050C 01004220 */  addi       $v0, $v0, 0x1 /* handwritten instruction */
    /* F1490 001F0510 010024A0 */  sb         $a0, 0x1($at)
    /* F1494 001F0514 020025A0 */  sb         $a1, 0x2($at)
    /* F1498 001F0518 F9FF6014 */  bnez       $v1, .L001F0500
    /* F149C 001F051C 04002120 */   addi      $at, $at, 0x4 /* handwritten instruction */
    /* F14A0 001F0520 0000458D */  lw         $a1, 0x0($t2)
    /* F14A4 001F0524 00004F21 */  addi       $t7, $t2, 0x0 /* handwritten instruction */
    /* F14A8 001F0528 2070CF01 */  add        $t6, $t6, $t7 /* handwritten instruction */
    /* F14AC 001F052C 00000A20 */  addi       $t2, $zero, 0x0 /* handwritten instruction */
    /* F14B0 001F0530 CEC00708 */  j          func_001F0338
    /* F14B4 001F0534 882E6571 */   pextlb    $a1, $t3, $a1
.align 2
  .L001F0538:
    /* F14B8 001F0538 00C02248 */  qmfc2.ni   $v0, $vf24
    /* F14BC 001F053C 3C180A00 */  dsll32     $v1, $t2, 0
    /* F14C0 001F0540 3C100200 */  dsll32     $v0, $v0, 0
    /* F14C4 001F0544 2E104300 */  dsub       $v0, $v0, $v1
    /* F14C8 001F0548 F1FE401C */  bgtz       $v0, .L001F0110
    /* F14CC 001F054C 01100E3C */   lui       $t6, (0x10010000 >> 16)
.align 2
  .L001F0550:
    /* F14D0 001F0550 00D4C28D */  lw         $v0, -0x2C00($t6)
    /* F14D4 001F0554 00014230 */  andi       $v0, $v0, 0x100
    /* F14D8 001F0558 00000000 */  nop
    /* F14DC 001F055C 00000000 */  nop
    /* F14E0 001F0560 00000000 */  nop
    /* F14E4 001F0564 00000000 */  nop
    /* F14E8 001F0568 F9FF4014 */  bnez       $v0, .L001F0550
    /* F14EC 001F056C 00000000 */   nop
.align 2
  .L001F0570:
    /* F14F0 001F0570 18938F8F */  lw         $t7, -0x6CE8($gp)
    /* F14F4 001F0574 00000000 */  nop
    /* F14F8 001F0578 EA68CD4B */  vmul.xyz   $vf3, $vf13, $vf13
    /* F14FC 001F057C 04380396 */  lhu        $v1, (0x70003804 & 0xFFFF)($s0)
    /* F1500 001F0580 08380122 */  addi       $at, $s0, (0x70003808 & 0xFFFF) /* handwritten instruction */
    /* F1504 001F0584 04380222 */  addi       $v0, $s0, (0x70003804 & 0xFFFF) /* handwritten instruction */
    /* F1508 001F0588 881E0370 */  pextlb     $v1, $zero, $v1
    /* F150C 001F058C 00001520 */  addi       $s5, $zero, 0x0 /* handwritten instruction */
    /* F1510 001F0590 3D18034B */  .word      0x4B03183D    # vadday.x   ACC, $vf3, $vf3y
    /* F1514 001F0594 CA60034B */  vmaddz.x   $vf3, $vf12, $vf3z
    /* F1518 001F0598 B7180370 */  psrah      $v1, $v1, 2
    /* F151C 001F059C 0000258C */  lw         $a1, 0x0($at)
    /* F1520 001F05A0 BC03634A */  .word      0x4A6303BC    # vdiv       Q, $vf0w, $vf3x
    /* F1524 001F05A4 003803AE */  sw         $v1, (0x70003800 & 0xFFFF)($s0)
.align 2
  alabel func_001F05A8
    /* F1528 001F05A8 04002494 */  lhu        $a0, 0x4($at)
    /* F152C 001F05AC 803F063C */  lui        $a2, (0x3F800000 >> 16)
    /* F1530 001F05B0 0900A610 */  beq        $a1, $a2, .L001F05D8
    /* F1534 001F05B4 08002120 */   addi      $at, $at, 0x8 /* handwritten instruction */
    /* F1538 001F05B8 88260470 */  pextlb     $a0, $zero, $a0
    /* F153C 001F05BC B7200470 */  psrah      $a0, $a0, 2
    /* F1540 001F05C0 F9FF6410 */  beq        $v1, $a0, func_001F05A8
    /* F1544 001F05C4 0000258C */   lw        $a1, 0x0($at)
    /* F1548 001F05C8 000044AC */  sw         $a0, 0x0($v0)
    /* F154C 001F05CC 25188000 */  or         $v1, $a0, $zero
    /* F1550 001F05D0 6AC10708 */  j          func_001F05A8
    /* F1554 001F05D4 04004220 */   addi      $v0, $v0, 0x4 /* handwritten instruction */
.align 2
  .L001F05D8:
    /* F1558 001F05D8 BF03004A */  .word      0x4A0003BF    # vwaitq
    /* F155C 001F05DC FC371922 */  addi       $t9, $s0, (0x700037FC & 0xFFFF) /* handwritten instruction */
    /* F1560 001F05E0 FFFF0120 */  addi       $at, $zero, -0x1 /* handwritten instruction */
    /* F1564 001F05E4 5C6DC04B */  .word      0x4BC06D5C    # vmulq.xyz  $vf21, $vf13, Q
    /* F1568 001F05E8 000041AC */  sw         $at, 0x0($v0)
    /* F156C 001F05EC 897BE071 */  pcpyld     $t7, $t7, $zero
.align 2
  .L001F05F0:
    /* F1570 001F05F0 0400238F */  lw         $v1, 0x4($t9)
    /* F1574 001F05F4 1B00173C */  lui        $s7, %hi(D_001B7A60)
    /* F1578 001F05F8 607AF726 */  addiu      $s7, $s7, %lo(D_001B7A60)
    /* F157C 001F05FC 04003923 */  addi       $t9, $t9, 0x4 /* handwritten instruction */
    /* F1580 001F0600 02120300 */  srl        $v0, $v1, 8
    /* F1584 001F0604 FFFF6130 */  andi       $at, $v1, 0xFFFF
    /* F1588 001F0608 20105700 */  add        $v0, $v0, $s7 /* handwritten instruction */
    /* F158C 001F060C 80080100 */  sll        $at, $at, 2
    /* F1590 001F0610 F3016004 */  bltz       $v1, .L001F0DE0
    /* F1594 001F0614 20184100 */   add       $v1, $v0, $at /* handwritten instruction */
    /* F1598 001F0618 00006194 */  lhu        $at, 0x0($v1)
    /* F159C 001F061C 0040F722 */  addi       $s7, $s7, 0x4000 /* handwritten instruction */
    /* F15A0 001F0620 02006280 */  lb         $v0, 0x2($v1)
    /* F15A4 001F0624 40090100 */  sll        $at, $at, 5
    /* F15A8 001F0628 40100200 */  sll        $v0, $v0, 1
    /* F15AC 001F062C 20B8E102 */  add        $s7, $s7, $at /* handwritten instruction */
    /* F15B0 001F0630 20105700 */  add        $v0, $v0, $s7 /* handwritten instruction */
    /* F15B4 001F0634 000022AF */  sw         $v0, 0x0($t9)
.align 2
  .L001F0638:
    /* F15B8 001F0638 0000F896 */  lhu        $t8, 0x0($s7)
    /* F15BC 001F063C A913E071 */  pcpyud     $v0, $t7, $zero
    /* F15C0 001F0640 0000218F */  lw         $at, 0x0($t9)
    /* F15C4 001F0644 00C21800 */  sll        $t8, $t8, 8
    /* F15C8 001F0648 E9FFE112 */  beq        $s7, $at, .L001F05F0
    /* F15CC 001F064C 20C00203 */   add       $t8, $t8, $v0 /* handwritten instruction */
    /* F15D0 001F0650 000001DB */  lqc2       $vf1, 0x0($t8)
    /* F15D4 001F0654 0200F722 */  addi       $s7, $s7, 0x2 /* handwritten instruction */
    /* F15D8 001F0658 F7FF1213 */  beq        $t8, $s2, .L001F0638
    /* F15DC 001F065C 09006132 */   andi      $at, $s3, 0x9
    /* F15E0 001F0660 AC08DE4B */  vsub.xyz   $vf2, $vf1, $vf30
    /* F15E4 001F0664 EA08214A */  vmul.w     $vf3, $vf1, $vf1
    /* F15E8 001F0668 34000297 */  lhu        $v0, 0x34($t8)
    /* F15EC 001F066C 01002128 */  slti       $at, $at, 0x1
    /* F15F0 001F0670 9400148F */  lw         $s4, 0x94($t8)
    /* F15F4 001F0674 00000000 */  nop
    /* F15F8 001F0678 00404230 */  andi       $v0, $v0, 0x4000
    /* F15FC 001F067C AA10D54B */  vmul.xyz   $vf2, $vf2, $vf21
    /* F1600 001F0680 25082200 */  or         $at, $at, $v0
    /* F1604 001F0684 3D10024B */  .word      0x4B02103D    # vadday.x   ACC, $vf2, $vf2y
    /* F1608 001F0688 EBFF2010 */  beqz       $at, .L001F0638
    /* F160C 001F068C 8A60024B */   vmaddz.x  $vf2, $vf12, $vf2z
    /* F1610 001F0690 AB10004B */  vmax.x     $vf2, $vf2, $vf0
    /* F1614 001F0694 AF10184B */  vmini.x    $vf2, $vf2, $vf24
    /* F1618 001F0698 BCF2C04B */  .word      0x4BC0F2BC    # vadda.xyz  ACC, $vf0, $vf30
    /* F161C 001F069C 8868C24B */  vmaddx.xyz $vf2, $vf13, $vf2x
    /* F1620 001F06A0 AC10C14B */  vsub.xyz   $vf2, $vf2, $vf1
    /* F1624 001F06A4 AA10C24B */  vmul.xyz   $vf2, $vf2, $vf2
    /* F1628 001F06A8 7F10034B */  .word      0x4B03107F    # vsubaw.x   ACC, $vf2, $vf3w
    /* F162C 001F06AC BD60024B */  .word      0x4B0260BD    # vmadday.x  ACC, $vf12, $vf2y
    /* F1630 001F06B0 8A60024B */  vmaddz.x   $vf2, $vf12, $vf2z
    /* F1634 001F06B4 04006532 */  andi       $a1, $s3, 0x4
    /* F1638 001F06B8 0100A528 */  slti       $a1, $a1, 0x1
    /* F163C 001F06BC 19000A3C */  lui        $t2, %hi(D_00194200)
    /* F1640 001F06C0 00424A25 */  addiu      $t2, $t2, %lo(D_00194200)
    /* F1644 001F06C4 40280500 */  sll        $a1, $a1, 1
    /* F1648 001F06C8 DBFF8012 */  beqz       $s4, .L001F0638
    /* F164C 001F06CC 2028B400 */   add       $a1, $a1, $s4 /* handwritten instruction */
    /* F1650 001F06D0 00102148 */  qmfc2.ni   $at, $vf2
    /* F1654 001F06D4 00000000 */  nop
    /* F1658 001F06D8 3E381300 */  dsrl32     $a3, $s3, 0
    /* F165C 001F06DC 9C00038F */  lw         $v1, 0x9C($t8)
    /* F1660 001F06E0 3C080100 */  dsll32     $at, $at, 0
    /* F1664 001F06E4 00000000 */  nop
    /* F1668 001F06E8 D3FF201C */  bgtz       $at, .L001F0638
    /* F166C 001F06EC 00000000 */   nop
    /* F1670 001F06F0 9C0007AF */  sw         $a3, 0x9C($t8)
    /* F1674 001F06F4 00000000 */  nop
    /* F1678 001F06F8 CFFF6710 */  beq        $v1, $a3, .L001F0638
    /* F167C 001F06FC 0000A594 */   lhu       $a1, 0x0($a1)
    /* F1680 001F0700 0C00828E */  lw         $v0, 0xC($s4)
    /* F1684 001F0704 02006132 */  andi       $at, $s3, 0x2
    /* F1688 001F0708 2100A010 */  beqz       $a1, .L001F0790
    /* F168C 001F070C 01002128 */   slti      $at, $at, 0x1
    /* F1690 001F0710 C9FF2210 */  beq        $at, $v0, .L001F0638
    /* F1694 001F0714 A800038F */   lw        $v1, 0xA8($t8)
    /* F1698 001F0718 0800418D */  lw         $at, 0x8($t2)
    /* F169C 001F071C 08000220 */  addi       $v0, $zero, 0x8 /* handwritten instruction */
    /* F16A0 001F0720 0400508D */  lw         $s0, 0x4($t2)
    /* F16A4 001F0724 00000000 */  nop
.align 2
  .L001F0728:
    /* F16A8 001F0728 0000268C */  lw         $a2, 0x0($at)
    /* F16AC 001F072C 08002120 */  addi       $at, $at, 0x8 /* handwritten instruction */
    /* F16B0 001F0730 FFFF4220 */  addi       $v0, $v0, -0x1 /* handwritten instruction */
    /* F16B4 001F0734 00000000 */  nop
    /* F16B8 001F0738 1500C310 */  beq        $a2, $v1, .L001F0790
    /* F16BC 001F073C 00000000 */   nop
    /* F16C0 001F0740 F9FF401C */  bgtz       $v0, .L001F0728
    /* F16C4 001F0744 00081022 */   addi      $s0, $s0, 0x800 /* handwritten instruction */
    /* F16C8 001F0748 0C00428D */  lw         $v0, 0xC($t2)
    /* F16CC 001F074C 0400468D */  lw         $a2, 0x4($t2)
    /* F16D0 001F0750 01004120 */  addi       $at, $v0, 0x1 /* handwritten instruction */
    /* F16D4 001F0754 0800448D */  lw         $a0, 0x8($t2)
    /* F16D8 001F0758 07002130 */  andi       $at, $at, 0x7
    /* F16DC 001F075C 0C0041AD */  sw         $at, 0xC($t2)
    /* F16E0 001F0760 C0080200 */  sll        $at, $v0, 3
    /* F16E4 001F0764 C0120200 */  sll        $v0, $v0, 11
    /* F16E8 001F0768 20208100 */  add        $a0, $a0, $at /* handwritten instruction */
    /* F16EC 001F076C 2030C200 */  add        $a2, $a2, $v0 /* handwritten instruction */
    /* F16F0 001F0770 000083AC */  sw         $v1, 0x0($a0)
    /* F16F4 001F0774 040087AC */  sw         $a3, 0x4($a0)
    /* F16F8 001F0778 3842080C */  jal        func_002108E0
    /* F16FC 001F077C 00000423 */   addi      $a0, $t8, 0x0 /* handwritten instruction */
    /* F1700 001F0780 6CFBDE4B */  vsub.xyz   $vf13, $vf31, $vf30
    /* F1704 001F0784 0303C04B */  vaddw.xyz  $vf12, $vf0, $vf0w
    /* F1708 001F0788 0070103C */  lui        $s0, (0x70000000 >> 16)
    /* F170C 001F078C 00000000 */  nop
.align 2
  .L001F0790:
    /* F1710 001F0790 100010DB */  lqc2       $vf16, 0x10($t8)
    /* F1714 001F0794 C00011DB */  lqc2       $vf17, 0xC0($t8)
    /* F1718 001F0798 D00012DB */  lqc2       $vf18, 0xD0($t8)
    /* F171C 001F079C E00013DB */  lqc2       $vf19, 0xE0($t8)
    /* F1720 001F07A0 2C00028F */  lw         $v0, 0x2C($t8)
    /* F1724 001F07A4 00000000 */  nop
    /* F1728 001F07A8 0C008F8E */  lw         $t7, 0xC($s4)
    /* F172C 001F07AC 8044013C */  lui        $at, (0x44800000 >> 16)
    /* F1730 001F07B0 0008A148 */  qmtc2.ni   $at, $vf1
    /* F1734 001F07B4 00B0A248 */  qmtc2.ni   $v0, $vf22
    /* F1738 001F07B8 5500E011 */  beqz       $t7, .L001F0910
    /* F173C 001F07BC 1884C14B */   vmulx.xyz $vf16, $vf16, $vf1x
    /* F1740 001F07C0 ACF3D04B */  vsub.xyz   $vf14, $vf30, $vf16
    /* F1744 001F07C4 00700D3C */  lui        $t5, (0x70001FE0 >> 16)
    /* F1748 001F07C8 ECFBD04B */  vsub.xyz   $vf15, $vf31, $vf16
    /* F174C 001F07CC E01FAD35 */  ori        $t5, $t5, (0x70001FE0 & 0xFFFF)
    /* F1750 001F07D0 D888D64B */  vmulx.xyz  $vf3, $vf17, $vf22x
    /* F1754 001F07D4 04008B8E */  lw         $t3, 0x4($s4)
    /* F1758 001F07D8 1891D64B */  vmulx.xyz  $vf4, $vf18, $vf22x
    /* F175C 001F07DC 80000C3C */  lui        $t4, (0x808080 >> 16)
    /* F1760 001F07E0 5899D64B */  vmulx.xyz  $vf5, $vf19, $vf22x
    /* F1764 001F07E4 80808C35 */  ori        $t4, $t4, (0x808080 & 0xFFFF)
    /* F1768 001F07E8 AF72CF4B */  vmini.xyz  $vf10, $vf14, $vf15
    /* F176C 001F07EC 10006B21 */  addi       $t3, $t3, 0x10 /* handwritten instruction */
    /* F1770 001F07F0 EB72CF4B */  vmax.xyz   $vf11, $vf14, $vf15
    /* F1774 001F07F4 20708B02 */  add        $t6, $s4, $t3 /* handwritten instruction */
    /* F1778 001F07F8 88668071 */  pextlb     $t4, $t4, $zero
    /* F177C 001F07FC 88658071 */  pextlh     $t4, $t4, $zero
    /* F1780 001F0800 0000C1DD */  ld         $at, 0x0($t6)
    /* F1784 001F0804 0800C2DD */  ld         $v0, 0x8($t6)
    /* F1788 001F0808 880D2070 */  pextlh     $at, $at, $zero
    /* F178C 001F080C 88154070 */  pextlh     $v0, $v0, $zero
    /* F1790 001F0810 3F0C0170 */  psraw      $at, $at, 16
    /* F1794 001F0814 3F140270 */  psraw      $v0, $v0, 16
    /* F1798 001F0818 0008A148 */  qmtc2.ni   $at, $vf1
    /* F179C 001F081C 0010A248 */  qmtc2.ni   $v0, $vf2
.align 2
  .L001F0820:
    /* F17A0 001F0820 3C09C14B */  vitof0.xyz $vf1, $vf1
    /* F17A4 001F0824 1000C1DD */  ld         $at, 0x10($t6)
    /* F17A8 001F0828 3C11C24B */  vitof0.xyz $vf2, $vf2
    /* F17AC 001F082C 1800C2DD */  ld         $v0, 0x18($t6)
    /* F17B0 001F0830 880D2070 */  pextlh     $at, $at, $zero
    /* F17B4 001F0834 88154070 */  pextlh     $v0, $v0, $zero
    /* F17B8 001F0838 BC19C14B */  .word      0x4BC119BC    # vmulax.xyz ACC, $vf3, $vf1x
    /* F17BC 001F083C BD20C14B */  .word      0x4BC120BD    # vmadday.xyz ACC, $vf4, $vf1y
    /* F17C0 001F0840 4A28C14B */  vmaddz.xyz $vf1, $vf5, $vf1z
    /* F17C4 001F0844 BC19C24B */  .word      0x4BC219BC    # vmulax.xyz ACC, $vf3, $vf2x
    /* F17C8 001F0848 BD20C24B */  .word      0x4BC220BD    # vmadday.xyz ACC, $vf4, $vf2y
    /* F17CC 001F084C 8A28C24B */  vmaddz.xyz $vf2, $vf5, $vf2z
    /* F17D0 001F0850 AC09CA4B */  vsub.xyz   $vf6, $vf1, $vf10
    /* F17D4 001F0854 2000AD21 */  addi       $t5, $t5, 0x20 /* handwritten instruction */
    /* F17D8 001F0858 EC59C14B */  vsub.xyz   $vf7, $vf11, $vf1
    /* F17DC 001F085C 1000CE21 */  addi       $t6, $t6, 0x10 /* handwritten instruction */
    /* F17E0 001F0860 0000A1F9 */  sqc2       $vf1, 0x0($t5)
    /* F17E4 001F0864 2C12CA4B */  vsub.xyz   $vf8, $vf2, $vf10
    /* F17E8 001F0868 6C5AC24B */  vsub.xyz   $vf9, $vf11, $vf2
    /* F17EC 001F086C 1000A2F9 */  sqc2       $vf2, 0x10($t5)
    /* F17F0 001F0870 00302648 */  qmfc2.ni   $a2, $vf6
    /* F17F4 001F0874 3F0C0170 */  psraw      $at, $at, 16
    /* F17F8 001F0878 00382748 */  qmfc2.ni   $a3, $vf7
    /* F17FC 001F087C 3F140270 */  psraw      $v0, $v0, 16
    /* F1800 001F0880 00402848 */  qmfc2.ni   $t0, $vf8
    /* F1804 001F0884 8934CC70 */  pand       $a2, $a2, $t4
    /* F1808 001F0888 00482948 */  qmfc2.ni   $t1, $vf9
    /* F180C 001F088C 893CEC70 */  pand       $a3, $a3, $t4
    /* F1810 001F0890 0008A148 */  qmtc2.ni   $at, $vf1
    /* F1814 001F0894 89440C71 */  pand       $t0, $t0, $t4
    /* F1818 001F0898 0010A248 */  qmtc2.ni   $v0, $vf2
    /* F181C 001F089C 894C2C71 */  pand       $t1, $t1, $t4
    /* F1820 001F08A0 FE370670 */  psrlw      $a2, $a2, 31
    /* F1824 001F08A4 BE3F0770 */  psrlw      $a3, $a3, 30
    /* F1828 001F08A8 FE470870 */  psrlw      $t0, $t0, 31
    /* F182C 001F08AC BE4F0970 */  psrlw      $t1, $t1, 30
    /* F1830 001F08B0 A934C770 */  por        $a2, $a2, $a3
    /* F1834 001F08B4 A9440971 */  por        $t0, $t0, $t1
    /* F1838 001F08B8 C8350670 */  ppach      $a2, $zero, $a2
    /* F183C 001F08BC C8450870 */  ppach      $t0, $zero, $t0
    /* F1840 001F08C0 C8360670 */  ppacb      $a2, $zero, $a2
    /* F1844 001F08C4 C8460870 */  ppacb      $t0, $zero, $t0
    /* F1848 001F08C8 0C00A6AD */  sw         $a2, 0xC($t5)
    /* F184C 001F08CC F0FFEF21 */  addi       $t7, $t7, -0x10 /* handwritten instruction */
    /* F1850 001F08D0 D3FFE01D */  bgtz       $t7, .L001F0820
    /* F1854 001F08D4 1C00A8AD */   sw        $t0, 0x1C($t5)
    /* F1858 001F08D8 0C00818E */  lw         $at, 0xC($s4)
    /* F185C 001F08DC 00700D3C */  lui        $t5, (0x70002000 >> 16)
    /* F1860 001F08E0 08008E8E */  lw         $t6, 0x8($s4)
    /* F1864 001F08E4 20788B02 */  add        $t7, $s4, $t3 /* handwritten instruction */
    /* F1868 001F08E8 2078E101 */  add        $t7, $t7, $at /* handwritten instruction */
    /* F186C 001F08EC 02000B3C */  lui        $t3, (0x20202 >> 16)
    /* F1870 001F08F0 0000E58D */  lw         $a1, 0x0($t7)
    /* F1874 001F08F4 2070CF01 */  add        $t6, $t6, $t7 /* handwritten instruction */
    /* F1878 001F08F8 02026B35 */  ori        $t3, $t3, (0x20202 & 0xFFFF)
    /* F187C 001F08FC 00070C34 */  ori        $t4, $zero, 0x700
    /* F1880 001F0900 E9660C70 */  pcpyh      $t4, $t4
    /* F1884 001F0904 882E6571 */  pextlb     $a1, $t3, $a1
    /* F1888 001F0908 CEC00708 */  j          func_001F0338
    /* F188C 001F090C 0020AD35 */   ori       $t5, $t5, (0x70002000 & 0xFFFF)
.align 2
  .L001F0910:
    /* F1890 001F0910 0400818E */  lw         $at, 0x4($s4)
    /* F1894 001F0914 02006232 */  andi       $v0, $s3, 0x2
    /* F1898 001F0918 47FF401C */  bgtz       $v0, .L001F0638
    /* F189C 001F091C 10008F22 */   addi      $t7, $s4, 0x10 /* handwritten instruction */
    /* F18A0 001F0920 45FF2010 */  beqz       $at, .L001F0638
    /* F18A4 001F0924 00000E20 */   addi      $t6, $zero, 0x0 /* handwritten instruction */
    /* F18A8 001F0928 2C03204A */  vsub.w     $vf12, $vf0, $vf0
    /* F18AC 001F092C 04006D32 */  andi       $t5, $s3, 0x4
    /* F18B0 001F0930 0100AD29 */  slti       $t5, $t5, 0x1
    /* F18B4 001F0934 98000C8F */  lw         $t4, 0x98($t8)
    /* F18B8 001F0938 0100AD21 */  addi       $t5, $t5, 0x1 /* handwritten instruction */
    /* F18BC 001F093C 00000000 */  nop
.align 2
  alabel func_001F0940
    /* F18C0 001F0940 3DFFC005 */  bltz       $t6, .L001F0638
    /* F18C4 001F0944 01008131 */   andi      $at, $t4, 0x1
    /* F18C8 001F0948 42600C00 */  srl        $t4, $t4, 1
    /* F18CC 001F094C 0200EE85 */  lh         $t6, 0x2($t7)
    /* F18D0 001F0950 0000E281 */  lb         $v0, 0x0($t7)
    /* F18D4 001F0954 2000EF21 */  addi       $t7, $t7, 0x20 /* handwritten instruction */
    /* F18D8 001F0958 F9FF201C */  bgtz       $at, func_001F0940
    /* F18DC 001F095C 2408AE01 */   and       $at, $t5, $t6
    /* F18E0 001F0960 F7FF2010 */  beqz       $at, func_001F0940
    /* F18E4 001F0964 FFFF4220 */   addi      $v0, $v0, -0x1 /* handwritten instruction */
    /* F18E8 001F0968 CF004010 */  beqz       $v0, .L001F0CA8
    /* F18EC 001F096C FFFF4220 */   addi      $v0, $v0, -0x1 /* handwritten instruction */
    /* F18F0 001F0970 BF004010 */  beqz       $v0, .L001F0C70
    /* F18F4 001F0974 FFFF4220 */   addi      $v0, $v0, -0x1 /* handwritten instruction */
    /* F18F8 001F0978 7F004010 */  beqz       $v0, .L001F0B78
    /* F18FC 001F097C FFFF4220 */   addi      $v0, $v0, -0x1 /* handwritten instruction */
    /* F1900 001F0980 E4FFE185 */  lh         $at, -0x1C($t7)
    /* F1904 001F0984 E6FFE285 */  lh         $v0, -0x1A($t7)
    /* F1908 001F0988 00090100 */  sll        $at, $at, 4
    /* F190C 001F098C 00110200 */  sll        $v0, $v0, 4
    /* F1910 001F0990 20080102 */  add        $at, $s0, $at /* handwritten instruction */
    /* F1914 001F0994 20100202 */  add        $v0, $s0, $v0 /* handwritten instruction */
    /* F1918 001F0998 000021D8 */  lqc2       $vf1, 0x0($at)
    /* F191C 001F099C 000042D8 */  lqc2       $vf2, 0x0($v0)
    /* F1920 001F09A0 5808D64B */  vmulx.xyz  $vf1, $vf1, $vf22x
    /* F1924 001F09A4 E0FFEAD9 */  lqc2       $vf10, -0x20($t7)
    /* F1928 001F09A8 9810D64B */  vmulx.xyz  $vf2, $vf2, $vf22x
    /* F192C 001F09AC 9852364A */  vmulx.w    $vf10, $vf10, $vf22x
    /* F1930 001F09B0 BC89C14B */  .word      0x4BC189BC    # vmulax.xyz ACC, $vf17, $vf1x
    /* F1934 001F09B4 BD90C14B */  .word      0x4BC190BD    # vmadday.xyz ACC, $vf18, $vf1y
    /* F1938 001F09B8 4A98C14B */  vmaddz.xyz $vf1, $vf19, $vf1z
    /* F193C 001F09BC 83020A4B */  vaddw.x    $vf10, $vf0, $vf10w
    /* F1940 001F09C0 BC89C24B */  .word      0x4BC289BC    # vmulax.xyz ACC, $vf17, $vf2x
    /* F1944 001F09C4 BD90C24B */  .word      0x4BC290BD    # vmadday.xyz ACC, $vf18, $vf2y
    /* F1948 001F09C8 8A98C24B */  vmaddz.xyz $vf2, $vf19, $vf2z
    /* F194C 001F09CC AA520A4B */  vmul.x     $vf10, $vf10, $vf10
    /* F1950 001F09D0 AC10C14B */  vsub.xyz   $vf2, $vf2, $vf1
    /* F1954 001F09D4 6808D04B */  vadd.xyz   $vf1, $vf1, $vf16
    /* F1958 001F09D8 FE12CD4B */  .word      0x4BCD12FE    # vopmula.xyz ACC, $vf2, $vf13
    /* F195C 001F09DC EE68C24B */  .word      0x4BC268EE    # vopmsub.xyz $vf3, $vf13, $vf2
    /* F1960 001F09E0 FE6AC24B */  .word      0x4BC26AFE    # vopmula.xyz ACC, $vf13, $vf2
    /* F1964 001F09E4 2E11CD4B */  .word      0x4BCD112E    # vopmsub.xyz $vf4, $vf2, $vf13
    /* F1968 001F09E8 6A1AC34B */  vmul.xyz   $vf9, $vf3, $vf3
    /* F196C 001F09EC 00000000 */  nop
    /* F1970 001F09F0 FE6AC34B */  .word      0x4BC36AFE    # vopmula.xyz ACC, $vf13, $vf3
    /* F1974 001F09F4 EE19CD4B */  .word      0x4BCD19EE    # vopmsub.xyz $vf7, $vf3, $vf13
    /* F1978 001F09F8 FE12C44B */  .word      0x4BC412FE    # vopmula.xyz ACC, $vf2, $vf4
    /* F197C 001F09FC 2E22C24B */  .word      0x4BC2222E    # vopmsub.xyz $vf8, $vf4, $vf2
    /* F1980 001F0A00 6C49CC4B */  vsub.xyz   $vf5, $vf9, $vf12
    /* F1984 001F0A04 FF02004A */  vnop
    /* F1988 001F0A08 FF02004A */  vnop
    /* F198C 001F0A0C FF02004A */  vnop
    /* F1990 001F0A10 FF02004A */  vnop
    /* F1994 001F0A14 00884148 */  cfc2.ni    $at, $vi17
    /* F1998 001F0A18 E0002130 */  andi       $at, $at, 0xE0
    /* F199C 001F0A1C E0000234 */  ori        $v0, $zero, 0xE0
    /* F19A0 001F0A20 45002210 */  beq        $at, $v0, .L001F0B38
    /* F19A4 001F0A24 3CF3C64B */   vmove.xyz $vf6, $vf30
    /* F19A8 001F0A28 6CF1C14B */  vsub.xyz   $vf5, $vf30, $vf1
    /* F19AC 001F0A2C AC09DE4B */  vsub.xyz   $vf6, $vf1, $vf30
    /* F19B0 001F0A30 3D48094B */  .word      0x4B09483D    # vadday.x   ACC, $vf9, $vf9y
    /* F19B4 001F0A34 4A62094B */  vmaddz.x   $vf9, $vf12, $vf9z
    /* F19B8 001F0A38 EA39C54B */  vmul.xyz   $vf7, $vf7, $vf5
    /* F19BC 001F0A3C 2A42C64B */  vmul.xyz   $vf8, $vf8, $vf6
    /* F19C0 001F0A40 3D38074B */  .word      0x4B07383D    # vadday.x   ACC, $vf7, $vf7y
    /* F19C4 001F0A44 CA61074B */  vmaddz.x   $vf7, $vf12, $vf7z
    /* F19C8 001F0A48 3D40084B */  .word      0x4B08403D    # vadday.x   ACC, $vf8, $vf8y
    /* F19CC 001F0A4C 0A62084B */  vmaddz.x   $vf8, $vf12, $vf8z
    /* F19D0 001F0A50 BC3B094A */  .word      0x4A093BBC    # vdiv       Q, $vf7x, $vf9x
    /* F19D4 001F0A54 BF03004A */  .word      0x4A0003BF    # vwaitq
    /* F19D8 001F0A58 BC0AC04B */  .word      0x4BC00ABC    # vadda.xyz  ACC, $vf0, $vf1
    /* F19DC 001F0A5C E110C04B */  .word      0x4BC010E1    # vmaddq.xyz $vf3, $vf2, Q
    /* F19E0 001F0A60 BC43094A */  .word      0x4A0943BC    # vdiv       Q, $vf8x, $vf9x
    /* F19E4 001F0A64 BF03004A */  .word      0x4A0003BF    # vwaitq
    /* F19E8 001F0A68 BCF2C04B */  .word      0x4BC0F2BC    # vadda.xyz  ACC, $vf0, $vf30
    /* F19EC 001F0A6C 2169C04B */  .word      0x4BC06921    # vmaddq.xyz $vf4, $vf13, Q
    /* F19F0 001F0A70 AA11C24B */  vmul.xyz   $vf6, $vf2, $vf2
    /* F19F4 001F0A74 EA69CD4B */  vmul.xyz   $vf7, $vf13, $vf13
    /* F19F8 001F0A78 6C21C34B */  vsub.xyz   $vf5, $vf4, $vf3
    /* F19FC 001F0A7C 84028A4A */  vsubx.y    $vf10, $vf0, $vf10x
    /* F1A00 001F0A80 3D30064B */  .word      0x4B06303D    # vadday.x   ACC, $vf6, $vf6y
    /* F1A04 001F0A84 8A61064B */  vmaddz.x   $vf6, $vf12, $vf6z
    /* F1A08 001F0A88 6A29C54B */  vmul.xyz   $vf5, $vf5, $vf5
    /* F1A0C 001F0A8C 00000000 */  nop
    /* F1A10 001F0A90 3D38074B */  .word      0x4B07383D    # vadday.x   ACC, $vf7, $vf7y
    /* F1A14 001F0A94 CA61074B */  vmaddz.x   $vf7, $vf12, $vf7z
    /* F1A18 001F0A98 3C50854A */  .word      0x4A85503C    # vaddax.y   ACC, $vf10, $vf5x
    /* F1A1C 001F0A9C BD62854A */  .word      0x4A8562BD    # vmadda.y   ACC, $vf12, $vf5
    /* F1A20 001F0AA0 4A61854A */  vmaddz.y   $vf5, $vf12, $vf5z
    /* F1A24 001F0AA4 00000000 */  nop
    /* F1A28 001F0AA8 BE03664A */  .word      0x4A6603BE    # vrsqrt     Q, $vf0w, $vf6x
    /* F1A2C 001F0AAC 00000000 */  nop
    /* F1A30 001F0AB0 00282148 */  qmfc2.ni   $at, $vf5
    /* F1A34 001F0AB4 00000000 */  nop
    /* F1A38 001F0AB8 A1FF2104 */  bgez       $at, func_001F0940
    /* F1A3C 001F0ABC 6C01854A */   vsub.y    $vf5, $vf0, $vf5
    /* F1A40 001F0AC0 BF03004A */  .word      0x4A0003BF    # vwaitq
    /* F1A44 001F0AC4 9C11C04B */  .word      0x4BC0119C    # vmulq.xyz  $vf6, $vf2, Q
    /* F1A48 001F0AC8 BE03674A */  .word      0x4A6703BE    # vrsqrt     Q, $vf0w, $vf7x
    /* F1A4C 001F0ACC BF03004A */  .word      0x4A0003BF    # vwaitq
    /* F1A50 001F0AD0 DC69C04B */  .word      0x4BC069DC    # vmulq.xyz  $vf7, $vf13, Q
    /* F1A54 001F0AD4 00000000 */  nop
    /* F1A58 001F0AD8 AA31C74B */  vmul.xyz   $vf6, $vf6, $vf7
    /* F1A5C 001F0ADC 3D30064B */  .word      0x4B06303D    # vadday.x   ACC, $vf6, $vf6y
    /* F1A60 001F0AE0 8A61064B */  vmaddz.x   $vf6, $vf12, $vf6z
    /* F1A64 001F0AE4 AA31064B */  vmul.x     $vf6, $vf6, $vf6
    /* F1A68 001F0AE8 AC61064B */  vsub.x     $vf6, $vf12, $vf6
    /* F1A6C 001F0AEC BC2B264A */  .word      0x4A262BBC    # vdiv       Q, $vf5y, $vf6x
    /* F1A70 001F0AF0 BF03004A */  .word      0x4A0003BF    # vwaitq
    /* F1A74 001F0AF4 A001004B */  .word      0x4B0001A0    # vaddq.x    $vf6, $vf0, Q
    /* F1A78 001F0AF8 AB31004B */  vmax.x     $vf6, $vf6, $vf0
    /* F1A7C 001F0AFC 00000000 */  nop
    /* F1A80 001F0B00 BD03064A */  .word      0x4A0603BD                    # vsqrt      Q, $vf6x # 00000000 <InstrIdType: R5900_COP2_SPECIAL2>
    /* F1A84 001F0B04 BF03004A */  .word      0x4A0003BF    # vwaitq
    /* F1A88 001F0B08 DC39C04B */  .word      0x4BC039DC    # vmulq.xyz  $vf7, $vf7, Q
    /* F1A8C 001F0B0C AC21C74B */  vsub.xyz   $vf6, $vf4, $vf7
    /* F1A90 001F0B10 EC30DE4B */  vsub.xyz   $vf3, $vf6, $vf30
    /* F1A94 001F0B14 EA18CD4B */  vmul.xyz   $vf3, $vf3, $vf13
    /* F1A98 001F0B18 3D18034B */  .word      0x4B03183D    # vadday.x   ACC, $vf3, $vf3y
    /* F1A9C 001F0B1C CA60034B */  vmaddz.x   $vf3, $vf12, $vf3z
    /* F1AA0 001F0B20 00182148 */  qmfc2.ni   $at, $vf3
    /* F1AA4 001F0B24 3C080100 */  dsll32     $at, $at, 0
    /* F1AA8 001F0B28 03002104 */  bgez       $at, .L001F0B38
    /* F1AAC 001F0B2C 00000000 */   nop
    /* F1AB0 001F0B30 3CF3C64B */  vmove.xyz  $vf6, $vf30
    /* F1AB4 001F0B34 00000000 */  nop
.align 2
  .L001F0B38:
    /* F1AB8 001F0B38 EC30C14B */  vsub.xyz   $vf3, $vf6, $vf1
    /* F1ABC 001F0B3C 2A19C24B */  vmul.xyz   $vf4, $vf3, $vf2
    /* F1AC0 001F0B40 6A11C24B */  vmul.xyz   $vf5, $vf2, $vf2
    /* F1AC4 001F0B44 3D20044B */  .word      0x4B04203D    # vadday.x   ACC, $vf4, $vf4y
    /* F1AC8 001F0B48 0A61044B */  vmaddz.x   $vf4, $vf12, $vf4z
    /* F1ACC 001F0B4C 3D28054B */  .word      0x4B05283D    # vadday.x   ACC, $vf5, $vf5y
    /* F1AD0 001F0B50 4A61054B */  vmaddz.x   $vf5, $vf12, $vf5z
    /* F1AD4 001F0B54 BC23054A */  .word      0x4A0523BC    # vdiv       Q, $vf4x, $vf5x
    /* F1AD8 001F0B58 BF03004A */  .word      0x4A0003BF    # vwaitq
    /* F1ADC 001F0B5C 2001004B */  .word      0x4B000120    # vaddq.x    $vf4, $vf0, Q
    /* F1AE0 001F0B60 2B21004B */  vmax.x     $vf4, $vf4, $vf0
    /* F1AE4 001F0B64 2F210C4B */  vmini.x    $vf4, $vf4, $vf12
    /* F1AE8 001F0B68 9810C44B */  vmulx.xyz  $vf2, $vf2, $vf4x
    /* F1AEC 001F0B6C 6808C24B */  vadd.xyz   $vf1, $vf1, $vf2
    /* F1AF0 001F0B70 30C30708 */  j          func_001F0CC0
    /* F1AF4 001F0B74 4050204A */   vaddx.w   $vf1, $vf10, $vf0x
.align 2
  .L001F0B78:
    /* F1AF8 001F0B78 F0FFE1D9 */  lqc2       $vf1, -0x10($t7)
    /* F1AFC 001F0B7C 5808F64B */  vmulx.xyzw $vf1, $vf1, $vf22x
    /* F1B00 001F0B80 BC89C14B */  .word      0x4BC189BC    # vmulax.xyz ACC, $vf17, $vf1x
    /* F1B04 001F0B84 BD90C14B */  .word      0x4BC190BD    # vmadday.xyz ACC, $vf18, $vf1y
    /* F1B08 001F0B88 4A98C14B */  vmaddz.xyz $vf1, $vf19, $vf1z
    /* F1B0C 001F0B8C 803C013C */  lui        $at, (0x3C800000 >> 16)
    /* F1B10 001F0B90 0040A148 */  qmtc2.ni   $at, $vf8
    /* F1B14 001F0B94 6808D04B */  vadd.xyz   $vf1, $vf1, $vf16
    /* F1B18 001F0B98 ACF8DE4B */  vsub.xyz   $vf2, $vf31, $vf30
    /* F1B1C 001F0B9C EC08DE4B */  vsub.xyz   $vf3, $vf1, $vf30
    /* F1B20 001F0BA0 6A11824B */  vmul.xy    $vf5, $vf2, $vf2
    /* F1B24 001F0BA4 AA19824B */  vmul.xy    $vf6, $vf3, $vf2
    /* F1B28 001F0BA8 EA19834B */  vmul.xy    $vf7, $vf3, $vf3
    /* F1B2C 001F0BAC 4129054B */  vaddy.x    $vf5, $vf5, $vf5y
    /* F1B30 001F0BB0 8131064B */  vaddy.x    $vf6, $vf6, $vf6y
    /* F1B34 001F0BB4 C139074B */  vaddy.x    $vf7, $vf7, $vf7y
    /* F1B38 001F0BB8 6B29084B */  vmax.x     $vf5, $vf5, $vf8
    /* F1B3C 001F0BBC BC33054A */  .word      0x4A0533BC    # vdiv       Q, $vf6x, $vf5x
    /* F1B40 001F0BC0 2A0A214A */  vmul.w     $vf8, $vf1, $vf1
    /* F1B44 001F0BC4 BF03004A */  .word      0x4A0003BF    # vwaitq
    /* F1B48 001F0BC8 6002004B */  .word      0x4B000260    # vaddq.x    $vf9, $vf0, Q
    /* F1B4C 001F0BCC 6B4A004B */  vmax.x     $vf9, $vf9, $vf0
    /* F1B50 001F0BD0 6F4A0C4B */  vmini.x    $vf9, $vf9, $vf12
    /* F1B54 001F0BD4 BCF2804B */  .word      0x4B80F2BC    # vadda.xy   ACC, $vf0, $vf30
    /* F1B58 001F0BD8 4812894B */  vmaddx.xy  $vf9, $vf2, $vf9x
    /* F1B5C 001F0BDC 6C4A814B */  vsub.xy    $vf9, $vf9, $vf1
    /* F1B60 001F0BE0 6A4A894B */  vmul.xy    $vf9, $vf9, $vf9
    /* F1B64 001F0BE4 7F48084B */  .word      0x4B08487F    # vsubaw.x   ACC, $vf9, $vf8w
    /* F1B68 001F0BE8 4962094B */  vmaddy.x   $vf9, $vf12, $vf9y
    /* F1B6C 001F0BEC 00482148 */  qmfc2.ni   $at, $vf9
    /* F1B70 001F0BF0 3C080100 */  dsll32     $at, $at, 0
    /* F1B74 001F0BF4 00000000 */  nop
    /* F1B78 001F0BF8 51FF201C */  bgtz       $at, func_001F0940
    /* F1B7C 001F0BFC 00000000 */   nop
    /* F1B80 001F0C00 A831064B */  vadd.x     $vf6, $vf6, $vf6
    /* F1B84 001F0C04 C739084B */  vsubw.x    $vf7, $vf7, $vf8w
    /* F1B88 001F0C08 8040013C */  lui        $at, (0x40800000 >> 16)
    /* F1B8C 001F0C0C 0050A148 */  qmtc2.ni   $at, $vf10
    /* F1B90 001F0C10 6A32064B */  vmul.x     $vf9, $vf6, $vf6
    /* F1B94 001F0C14 AA52054B */  vmul.x     $vf10, $vf10, $vf5
    /* F1B98 001F0C18 AA52074B */  vmul.x     $vf10, $vf10, $vf7
    /* F1B9C 001F0C1C 6C4A0A4B */  vsub.x     $vf9, $vf9, $vf10
    /* F1BA0 001F0C20 6B4A004B */  vmax.x     $vf9, $vf9, $vf0
    /* F1BA4 001F0C24 00000000 */  nop
    /* F1BA8 001F0C28 BD03094A */  .word      0x4A0903BD                    # vsqrt      Q, $vf9x # 00000000 <InstrIdType: R5900_COP2_SPECIAL2>
    /* F1BAC 001F0C2C AC01064B */  vsub.x     $vf6, $vf0, $vf6
    /* F1BB0 001F0C30 6829054B */  vadd.x     $vf5, $vf5, $vf5
    /* F1BB4 001F0C34 E0FFEAD9 */  lqc2       $vf10, -0x20($t7)
    /* F1BB8 001F0C38 9852964A */  vmulx.y    $vf10, $vf10, $vf22x
    /* F1BBC 001F0C3C BF03004A */  .word      0x4A0003BF    # vwaitq
    /* F1BC0 001F0C40 A031004B */  .word      0x4B0031A0    # vaddq.x    $vf6, $vf6, Q
    /* F1BC4 001F0C44 BC33054A */  .word      0x4A0533BC    # vdiv       Q, $vf6x, $vf5x
    /* F1BC8 001F0C48 BF03004A */  .word      0x4A0003BF    # vwaitq
    /* F1BCC 001F0C4C 6401004B */  .word      0x4B000164    # vsubq.x    $vf5, $vf0, Q
    /* F1BD0 001F0C50 6B29004B */  vmax.x     $vf5, $vf5, $vf0
    /* F1BD4 001F0C54 6F290C4B */  vmini.x    $vf5, $vf5, $vf12
    /* F1BD8 001F0C58 BCF2C04B */  .word      0x4BC0F2BC    # vadda.xyz  ACC, $vf0, $vf30
    /* F1BDC 001F0C5C 8811C54B */  vmaddx.xyz $vf6, $vf2, $vf5x
    /* F1BE0 001F0C60 810A4A4A */  vaddy.z    $vf10, $vf1, $vf10y
    /* F1BE4 001F0C64 6B08464A */  vmax.z     $vf1, $vf1, $vf6
    /* F1BE8 001F0C68 30C30708 */  j          func_001F0CC0
    /* F1BEC 001F0C6C 6F084A4A */   vmini.z   $vf1, $vf1, $vf10
.align 2
  .L001F0C70:
    /* F1BF0 001F0C70 E4FFE18D */  lw         $at, -0x1C($t7)
    /* F1BF4 001F0C74 E0FFE2D9 */  lqc2       $vf2, -0x20($t7)
    /* F1BF8 001F0C78 F0FFE3D9 */  lqc2       $vf3, -0x10($t7)
    /* F1BFC 001F0C7C 00090100 */  sll        $at, $at, 4
    /* F1C00 001F0C80 20080102 */  add        $at, $s0, $at /* handwritten instruction */
    /* F1C04 001F0C84 000021D8 */  lqc2       $vf1, 0x0($at)
    /* F1C08 001F0C88 3C13214A */  vmove.w    $vf1, $vf2
    /* F1C0C 001F0C8C 6808C34B */  vadd.xyz   $vf1, $vf1, $vf3
    /* F1C10 001F0C90 5808F64B */  vmulx.xyzw $vf1, $vf1, $vf22x
    /* F1C14 001F0C94 BC89C14B */  .word      0x4BC189BC    # vmulax.xyz ACC, $vf17, $vf1x
    /* F1C18 001F0C98 BD90C14B */  .word      0x4BC190BD    # vmadday.xyz ACC, $vf18, $vf1y
    /* F1C1C 001F0C9C 4A98C14B */  vmaddz.xyz $vf1, $vf19, $vf1z
    /* F1C20 001F0CA0 30C30708 */  j          func_001F0CC0
    /* F1C24 001F0CA4 6808D04B */   vadd.xyz  $vf1, $vf1, $vf16
.align 2
  .L001F0CA8:
    /* F1C28 001F0CA8 F0FFE1D9 */  lqc2       $vf1, -0x10($t7)
    /* F1C2C 001F0CAC 5808F64B */  vmulx.xyzw $vf1, $vf1, $vf22x
    /* F1C30 001F0CB0 BC89C14B */  .word      0x4BC189BC    # vmulax.xyz ACC, $vf17, $vf1x
    /* F1C34 001F0CB4 BD90C14B */  .word      0x4BC190BD    # vmadday.xyz ACC, $vf18, $vf1y
    /* F1C38 001F0CB8 4A98C14B */  vmaddz.xyz $vf1, $vf19, $vf1z
    /* F1C3C 001F0CBC 6808D04B */  vadd.xyz   $vf1, $vf1, $vf16
.align 2
  alabel func_001F0CC0
    /* F1C40 001F0CC0 ACF8DE4B */  vsub.xyz   $vf2, $vf31, $vf30
    /* F1C44 001F0CC4 EC08DE4B */  vsub.xyz   $vf3, $vf1, $vf30
    /* F1C48 001F0CC8 6A11C24B */  vmul.xyz   $vf5, $vf2, $vf2
    /* F1C4C 001F0CCC AA19C24B */  vmul.xyz   $vf6, $vf3, $vf2
    /* F1C50 001F0CD0 EA19C34B */  vmul.xyz   $vf7, $vf3, $vf3
    /* F1C54 001F0CD4 2A0A214A */  vmul.w     $vf8, $vf1, $vf1
    /* F1C58 001F0CD8 3D28054B */  .word      0x4B05283D    # vadday.x   ACC, $vf5, $vf5y
    /* F1C5C 001F0CDC 4A61054B */  vmaddz.x   $vf5, $vf12, $vf5z
    /* F1C60 001F0CE0 3D30064B */  .word      0x4B06303D    # vadday.x   ACC, $vf6, $vf6y
    /* F1C64 001F0CE4 8A61064B */  vmaddz.x   $vf6, $vf12, $vf6z
    /* F1C68 001F0CE8 3D38074B */  .word      0x4B07383D    # vadday.x   ACC, $vf7, $vf7y
    /* F1C6C 001F0CEC CA61074B */  vmaddz.x   $vf7, $vf12, $vf7z
    /* F1C70 001F0CF0 BC33054A */  .word      0x4A0533BC    # vdiv       Q, $vf6x, $vf5x
    /* F1C74 001F0CF4 BF03004A */  .word      0x4A0003BF    # vwaitq
    /* F1C78 001F0CF8 6002004B */  .word      0x4B000260    # vaddq.x    $vf9, $vf0, Q
    /* F1C7C 001F0CFC 6B4A004B */  vmax.x     $vf9, $vf9, $vf0
    /* F1C80 001F0D00 6F4A0C4B */  vmini.x    $vf9, $vf9, $vf12
    /* F1C84 001F0D04 BCF2C04B */  .word      0x4BC0F2BC    # vadda.xyz  ACC, $vf0, $vf30
    /* F1C88 001F0D08 4812C94B */  vmaddx.xyz $vf9, $vf2, $vf9x
    /* F1C8C 001F0D0C 6C4AC14B */  vsub.xyz   $vf9, $vf9, $vf1
    /* F1C90 001F0D10 6A4AC94B */  vmul.xyz   $vf9, $vf9, $vf9
    /* F1C94 001F0D14 7F48084B */  .word      0x4B08487F    # vsubaw.x   ACC, $vf9, $vf8w
    /* F1C98 001F0D18 BD60094B */  .word      0x4B0960BD    # vmadday.x  ACC, $vf12, $vf9y
    /* F1C9C 001F0D1C 4A62094B */  vmaddz.x   $vf9, $vf12, $vf9z
    /* F1CA0 001F0D20 00482148 */  qmfc2.ni   $at, $vf9
    /* F1CA4 001F0D24 3C080100 */  dsll32     $at, $at, 0
    /* F1CA8 001F0D28 05FF201C */  bgtz       $at, func_001F0940
    /* F1CAC 001F0D2C 00000000 */   nop
    /* F1CB0 001F0D30 A831064B */  vadd.x     $vf6, $vf6, $vf6
    /* F1CB4 001F0D34 C739084B */  vsubw.x    $vf7, $vf7, $vf8w
    /* F1CB8 001F0D38 8040013C */  lui        $at, (0x40800000 >> 16)
    /* F1CBC 001F0D3C 0050A148 */  qmtc2.ni   $at, $vf10
    /* F1CC0 001F0D40 6A32064B */  vmul.x     $vf9, $vf6, $vf6
    /* F1CC4 001F0D44 AA52054B */  vmul.x     $vf10, $vf10, $vf5
    /* F1CC8 001F0D48 AA52074B */  vmul.x     $vf10, $vf10, $vf7
    /* F1CCC 001F0D4C 6C4A0A4B */  vsub.x     $vf9, $vf9, $vf10
    /* F1CD0 001F0D50 6B4A004B */  vmax.x     $vf9, $vf9, $vf0
    /* F1CD4 001F0D54 00000000 */  nop
    /* F1CD8 001F0D58 BD03094A */  .word      0x4A0903BD                    # vsqrt      Q, $vf9x # 00000000 <InstrIdType: R5900_COP2_SPECIAL2>
    /* F1CDC 001F0D5C AC01064B */  vsub.x     $vf6, $vf0, $vf6
    /* F1CE0 001F0D60 6829054B */  vadd.x     $vf5, $vf5, $vf5
    /* F1CE4 001F0D64 BF03004A */  .word      0x4A0003BF    # vwaitq
    /* F1CE8 001F0D68 A031004B */  .word      0x4B0031A0    # vaddq.x    $vf6, $vf6, Q
    /* F1CEC 001F0D6C BC33054A */  .word      0x4A0533BC    # vdiv       Q, $vf6x, $vf5x
    /* F1CF0 001F0D70 BF03004A */  .word      0x4A0003BF    # vwaitq
    /* F1CF4 001F0D74 6401004B */  .word      0x4B000164    # vsubq.x    $vf5, $vf0, Q
    /* F1CF8 001F0D78 6B29004B */  vmax.x     $vf5, $vf5, $vf0
    /* F1CFC 001F0D7C 6F290C4B */  vmini.x    $vf5, $vf5, $vf12
    /* F1D00 001F0D80 BCF2C04B */  .word      0x4BC0F2BC    # vadda.xyz  ACC, $vf0, $vf30
    /* F1D04 001F0D84 8811C54B */  vmaddx.xyz $vf6, $vf2, $vf5x
    /* F1D08 001F0D88 EC31C14B */  vsub.xyz   $vf7, $vf6, $vf1
    /* F1D0C 001F0D8C 2CC2054B */  vsub.x     $vf8, $vf24, $vf5
    /* F1D10 001F0D90 00402148 */  qmfc2.ni   $at, $vf8
    /* F1D14 001F0D94 3C080100 */  dsll32     $at, $at, 0
    /* F1D18 001F0D98 E9FE2018 */  blez       $at, func_001F0940
    /* F1D1C 001F0D9C 00000000 */   nop
    /* F1D20 001F0DA0 00001523 */  addi       $s5, $t8, 0x0 /* handwritten instruction */
    /* F1D24 001F0DA4 E0FFF621 */  addi       $s6, $t7, -0x20 /* handwritten instruction */
    /* F1D28 001F0DA8 22B01600 */  neg        $s6, $s6 /* handwritten instruction */
    /* F1D2C 001F0DAC 2806054B */  vadd.x     $vf24, $vf0, $vf5
    /* F1D30 001F0DB0 6806C64B */  vadd.xyz   $vf25, $vf0, $vf6
    /* F1D34 001F0DB4 A806C74B */  vadd.xyz   $vf26, $vf0, $vf7
    /* F1D38 001F0DB8 50C20708 */  j          func_001F0940
    /* F1D3C 001F0DBC 00000000 */   nop
.align 2
  .L001F0DC0:
    /* F1D40 001F0DC0 00D4C18D */  lw         $at, -0x2C00($t6)
    /* F1D44 001F0DC4 00000000 */  nop
    /* F1D48 001F0DC8 00012130 */  andi       $at, $at, 0x100
    /* F1D4C 001F0DCC 00000000 */  nop
    /* F1D50 001F0DD0 00000000 */  nop
    /* F1D54 001F0DD4 00000000 */  nop
    /* F1D58 001F0DD8 F9FF2014 */  bnez       $at, .L001F0DC0
    /* F1D5C 001F0DDC 00000000 */   nop
.align 2
  .L001F0DE0:
    /* F1D60 001F0DE0 3100C012 */  beqz       $s6, .L001F0EA8
    /* F1D64 001F0DE4 00000220 */   addi      $v0, $zero, 0x0 /* handwritten instruction */
    /* F1D68 001F0DE8 01000220 */  addi       $v0, $zero, 0x1 /* handwritten instruction */
    /* F1D6C 001F0DEC 19000A3C */  lui        $t2, %hi(D_00194200)
    /* F1D70 001F0DF0 00424A25 */  addiu      $t2, $t2, %lo(D_00194200)
    /* F1D74 001F0DF4 803A033C */  lui        $v1, (0x3A800000 >> 16)
    /* F1D78 001F0DF8 0008A348 */  qmtc2.ni   $v1, $vf1
    /* F1D7C 001F0DFC 58CEC14B */  vmulx.xyz  $vf25, $vf25, $vf1x
    /* F1D80 001F0E00 D8DEC14B */  vmulx.xyz  $vf27, $vf27, $vf1x
    /* F1D84 001F0E04 18E7C14B */  vmulx.xyz  $vf28, $vf28, $vf1x
    /* F1D88 001F0E08 58EFC14B */  vmulx.xyz  $vf29, $vf29, $vf1x
    /* F1D8C 001F0E0C 200059F9 */  sqc2       $vf25, 0x20($t2)
    /* F1D90 001F0E10 40005AF9 */  sqc2       $vf26, 0x40($t2)
    /* F1D94 001F0E14 50005BF9 */  sqc2       $vf27, 0x50($t2)
    /* F1D98 001F0E18 60005CF9 */  sqc2       $vf28, 0x60($t2)
    /* F1D9C 001F0E1C 70005DF9 */  sqc2       $vf29, 0x70($t2)
    /* F1DA0 001F0E20 180055AD */  sw         $s5, 0x18($t2)
    /* F1DA4 001F0E24 1C0056AD */  sw         $s6, 0x1C($t2)
    /* F1DA8 001F0E28 1F00A012 */  beqz       $s5, .L001F0EA8
    /* F1DAC 001F0E2C 1400438D */   lw        $v1, 0x14($t2)
    /* F1DB0 001F0E30 1D002012 */  beqz       $s1, .L001F0EA8
    /* F1DB4 001F0E34 3400A196 */   lhu       $at, 0x34($s5)
    /* F1DB8 001F0E38 01006420 */  addi       $a0, $v1, 0x1 /* handwritten instruction */
    /* F1DBC 001F0E3C 80290300 */  sll        $a1, $v1, 6
    /* F1DC0 001F0E40 00402130 */  andi       $at, $at, 0x4000
    /* F1DC4 001F0E44 A400A682 */  lb         $a2, 0xA4($s5)
    /* F1DC8 001F0E48 17002010 */  beqz       $at, .L001F0EA8
    /* F1DCC 001F0E4C 3F008430 */   andi      $a0, $a0, 0x3F
    /* F1DD0 001F0E50 1F00C104 */  bgez       $a2, .L001F0ED0
    /* F1DD4 001F0E54 80310600 */   sll       $a2, $a2, 6
.align 2
  alabel func_001F0E58
    /* F1DD8 001F0E58 140044AD */  sw         $a0, 0x14($t2)
    /* F1DDC 001F0E5C 1A00043C */  lui        $a0, %hi(D_001984C0)
    /* F1DE0 001F0E60 C0848424 */  addiu      $a0, $a0, %lo(D_001984C0)
    /* F1DE4 001F0E64 A400A3A2 */  sb         $v1, 0xA4($s5)
    /* F1DE8 001F0E68 20188500 */  add        $v1, $a0, $a1 /* handwritten instruction */
    /* F1DEC 001F0E6C 0000247A */  lq         $a0, 0x0($s1)
    /* F1DF0 001F0E70 1000257A */  lq         $a1, 0x10($s1)
    /* F1DF4 001F0E74 2000268E */  lw         $a2, 0x20($s1)
    /* F1DF8 001F0E78 000079F8 */  sqc2       $vf25, 0x0($v1)
    /* F1DFC 001F0E7C 1000647C */  sq         $a0, 0x10($v1)
    /* F1E00 001F0E80 2000657C */  sq         $a1, 0x20($v1)
    /* F1E04 001F0E84 300066AC */  sw         $a2, 0x30($v1)
    /* F1E08 001F0E88 340075AC */  sw         $s5, 0x34($v1)
    /* F1E0C 001F0E8C 9400B48E */  lw         $s4, 0x94($s5)
    /* F1E10 001F0E90 0300C106 */  bgez       $s6, .L001F0EA0
    /* F1E14 001F0E94 E0FF0120 */   addi      $at, $zero, -0x20 /* handwritten instruction */
    /* F1E18 001F0E98 22B01600 */  neg        $s6, $s6 /* handwritten instruction */
    /* F1E1C 001F0E9C 2208D402 */  sub        $at, $s6, $s4 /* handwritten instruction */
.align 2
  .L001F0EA0:
    /* F1E20 001F0EA0 43090100 */  sra        $at, $at, 5
    /* F1E24 001F0EA4 380061AC */  sw         $at, 0x38($v1)
.align 2
  .L001F0EA8:
    /* F1E28 001F0EA8 A9FBE073 */  pcpyud     $ra, $ra, $zero
    /* F1E2C 001F0EAC A9BBE072 */  pcpyud     $s7, $s7, $zero
    /* F1E30 001F0EB0 A9B3C072 */  pcpyud     $s6, $s6, $zero
    /* F1E34 001F0EB4 A9ABA072 */  pcpyud     $s5, $s5, $zero
    /* F1E38 001F0EB8 A9A38072 */  pcpyud     $s4, $s4, $zero
    /* F1E3C 001F0EBC A99B6072 */  pcpyud     $s3, $s3, $zero
    /* F1E40 001F0EC0 A9934072 */  pcpyud     $s2, $s2, $zero
    /* F1E44 001F0EC4 A98B2072 */  pcpyud     $s1, $s1, $zero
    /* F1E48 001F0EC8 0800E003 */  jr         $ra
    /* F1E4C 001F0ECC A9830072 */   pcpyud    $s0, $s0, $zero
.align 2
  .L001F0ED0:
    /* F1E50 001F0ED0 1A00073C */  lui        $a3, %hi(D_001984C0)
    /* F1E54 001F0ED4 C084E724 */  addiu      $a3, $a3, %lo(D_001984C0)
    /* F1E58 001F0ED8 2030C700 */  add        $a2, $a2, $a3 /* handwritten instruction */
    /* F1E5C 001F0EDC 3400C78C */  lw         $a3, 0x34($a2)
    /* F1E60 001F0EE0 DDFFF514 */  bne        $a3, $s5, func_001F0E58
    /* F1E64 001F0EE4 2C00C78C */   lw        $a3, 0x2C($a2)
    /* F1E68 001F0EE8 1C00288E */  lw         $t0, 0x1C($s1)
    /* F1E6C 001F0EEC 2238E800 */  sub        $a3, $a3, $t0 /* handwritten instruction */
    /* F1E70 001F0EF0 EDFFE01C */  bgtz       $a3, .L001F0EA8
    /* F1E74 001F0EF4 00000000 */   nop
    /* F1E78 001F0EF8 96C30708 */  j          func_001F0E58
    /* F1E7C 001F0EFC 00000000 */   nop
endlabel func_001EFE10
