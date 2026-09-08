.align 3
nonmatching func_0023E0D8, 0xD8

glabel func_0023E0D8
    /* 13F058 0023E0D8 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 13F05C 0023E0DC 1600023C */  lui        $v0, %hi(D_00161320)
    /* 13F060 0023E0E0 2000B07F */  sq         $s0, 0x20($sp)
    /* 13F064 0023E0E4 1000A527 */  addiu      $a1, $sp, 0x10
    /* 13F068 0023E0E8 3000BF7F */  sq         $ra, 0x30($sp)
    /* 13F06C 0023E0EC 2D808000 */  daddu      $s0, $a0, $zero
    /* 13F070 0023E0F0 1800A727 */  addiu      $a3, $sp, 0x18
    /* 13F074 0023E0F4 20134B24 */  addiu      $t3, $v0, %lo(D_00161320)
    /* 13F078 0023E0F8 03006389 */  lwl        $v1, 0x3($t3)
    /* 13F07C 0023E0FC 00006399 */  lwr        $v1, 0x0($t3)
    /* 13F080 0023E100 0300A3AB */  swl        $v1, 0x3($sp)
    /* 13F084 0023E104 0000A3BB */  swr        $v1, 0x0($sp)
    /* 13F088 0023E108 1400A627 */  addiu      $a2, $sp, 0x14
    /* 13F08C 0023E10C F0F7080C */  jal        func_0023DFC0
    /* 13F090 0023E110 1C00A827 */   addiu     $t0, $sp, 0x1C
    /* 13F094 0023E114 1400A58F */  lw         $a1, 0x14($sp)
    /* 13F098 0023E118 1C00A78F */  lw         $a3, 0x1C($sp)
    /* 13F09C 0023E11C 2110A700 */  addu       $v0, $a1, $a3
    /* 13F0A0 0023E120 04004228 */  slti       $v0, $v0, 0x4
    /* 13F0A4 0023E124 1E004014 */  bnez       $v0, .L0023E1A0
    /* 13F0A8 0023E128 2D100000 */   daddu     $v0, $zero, $zero
    /* 13F0AC 0023E12C 1000A48F */  lw         $a0, 0x10($sp)
    /* 13F0B0 0023E130 FF0F023C */  lui        $v0, (0xFFFFFFF >> 16)
    /* 13F0B4 0023E134 1800A68F */  lw         $a2, 0x18($sp)
    /* 13F0B8 0023E138 FFFF4234 */  ori        $v0, $v0, (0xFFFFFFF & 0xFFFF)
    /* 13F0BC 0023E13C 0020033C */  lui        $v1, (0x20000000 >> 16)
    /* 13F0C0 0023E140 24208200 */  and        $a0, $a0, $v0
    /* 13F0C4 0023E144 2430C200 */  and        $a2, $a2, $v0
    /* 13F0C8 0023E148 25208300 */  or         $a0, $a0, $v1
    /* 13F0CC 0023E14C 2530C300 */  or         $a2, $a2, $v1
    /* 13F0D0 0023E150 2D40A003 */  daddu      $t0, $sp, $zero
    /* 13F0D4 0023E154 04000924 */  addiu      $t1, $zero, 0x4
    /* 13F0D8 0023E158 2D500000 */  daddu      $t2, $zero, $zero
    /* 13F0DC 0023E15C F8F2080C */  jal        func_0023CBE0
    /* 13F0E0 0023E160 2D580000 */   daddu     $t3, $zero, $zero
    /* 13F0E4 0023E164 1600033C */  lui        $v1, %hi(D_0016130C)
    /* 13F0E8 0023E168 0C13638C */  lw         $v1, %lo(D_0016130C)($v1)
    /* 13F0EC 0023E16C 0D00043C */  lui        $a0, (0xD9048 >> 16)
    /* 13F0F0 0023E170 48908434 */  ori        $a0, $a0, (0xD9048 & 0xFFFF)
    /* 13F0F4 0023E174 2D284000 */  daddu      $a1, $v0, $zero
    /* 13F0F8 0023E178 F8F7080C */  jal        func_0023DFE0
    /* 13F0FC 0023E17C 21206400 */   addu      $a0, $v1, $a0
    /* 13F100 0023E180 8CF6080C */  jal        func_0023DA30
    /* 13F104 0023E184 48000426 */   addiu     $a0, $s0, 0x48
    /* 13F108 0023E188 A800028E */  lw         $v0, 0xA8($s0)
    /* 13F10C 0023E18C 04004014 */  bnez       $v0, .L0023E1A0
    /* 13F110 0023E190 01000224 */   addiu     $v0, $zero, 0x1
    /* 13F114 0023E194 02000224 */  addiu      $v0, $zero, 0x2
    /* 13F118 0023E198 A80002AE */  sw         $v0, 0xA8($s0)
    /* 13F11C 0023E19C 01000224 */  addiu      $v0, $zero, 0x1
.align 2
  .L0023E1A0:
    /* 13F120 0023E1A0 3000BF7B */  lq         $ra, 0x30($sp)
    /* 13F124 0023E1A4 2000B07B */  lq         $s0, 0x20($sp)
    /* 13F128 0023E1A8 0800E003 */  jr         $ra
    /* 13F12C 0023E1AC 4000BD27 */   addiu     $sp, $sp, 0x40
endlabel func_0023E0D8
