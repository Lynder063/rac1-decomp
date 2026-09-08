.align 3
nonmatching func_0011DE38, 0xD4

glabel func_0011DE38
    /* 1EDB8 0011DE38 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 1EDBC 0011DE3C 0010023C */  lui        $v0, (0x10001810 >> 16)
    /* 1EDC0 0011DE40 3000BFFF */  sd         $ra, 0x30($sp)
    /* 1EDC4 0011DE44 10184234 */  ori        $v0, $v0, (0x10001810 & 0xFFFF)
    /* 1EDC8 0011DE48 2000B2FF */  sd         $s2, 0x20($sp)
    /* 1EDCC 0011DE4C 1000B1FF */  sd         $s1, 0x10($sp)
    /* 1EDD0 0011DE50 0000B0FF */  sd         $s0, 0x0($sp)
    /* 1EDD4 0011DE54 0000438C */  lw         $v1, 0x0($v0)
    /* 1EDD8 0011DE58 00016330 */  andi       $v1, $v1, 0x100
    /* 1EDDC 0011DE5C 26006014 */  bnez       $v1, .L0011DEF8
    /* 1EDE0 0011DE60 3000BFDF */   ld        $ra, 0x30($sp)
    /* 1EDE4 0011DE64 1300023C */  lui        $v0, %hi(D_00131358)
    /* 1EDE8 0011DE68 02001224 */  addiu      $s2, $zero, 0x2
    /* 1EDEC 0011DE6C 58135024 */  addiu      $s0, $v0, %lo(D_00131358)
    /* 1EDF0 0011DE70 5813448C */  lw         $a0, %lo(D_00131358)($v0)
    /* 1EDF4 0011DE74 0400058E */  lw         $a1, 0x4($s0)
    /* 1EDF8 0011DE78 7477040C */  jal        func_0011DDD0
    /* 1EDFC 0011DE7C 10001126 */   addiu     $s1, $s0, 0x10
    /* 1EE00 0011DE80 1300053C */  lui        $a1, %hi(D_00130BF0)
    /* 1EE04 0011DE84 0780043C */  lui        $a0, (0x80076000 >> 16)
    /* 1EE08 0011DE88 F00BA524 */  addiu      $a1, $a1, %lo(D_00130BF0)
    /* 1EE0C 0011DE8C 00608434 */  ori        $a0, $a0, (0x80076000 & 0xFFFF)
    /* 1EE10 0011DE90 7877040C */  jal        func_0011DDE0
    /* 1EE14 0011DE94 40070624 */   addiu     $a2, $zero, 0x740
    /* 1EE18 0011DE98 1300053C */  lui        $a1, %hi(D_00131330)
    /* 1EE1C 0011DE9C 0800043C */  lui        $a0, (0x82000 >> 16)
    /* 1EE20 0011DEA0 3013A524 */  addiu      $a1, $a1, %lo(D_00131330)
    /* 1EE24 0011DEA4 00208434 */  ori        $a0, $a0, (0x82000 & 0xFFFF)
    /* 1EE28 0011DEA8 7877040C */  jal        func_0011DDE0
    /* 1EE2C 0011DEAC 28000624 */   addiu     $a2, $zero, 0x28
    /* 1EE30 0011DEB0 6063040C */  jal        func_00118D80
    /* 1EE34 0011DEB4 2D200000 */   daddu     $a0, $zero, $zero
    /* 1EE38 0011DEB8 6063040C */  jal        func_00118D80
    /* 1EE3C 0011DEBC 02000424 */   addiu     $a0, $zero, 0x2
    /* 1EE40 0011DEC0 0800048E */  lw         $a0, 0x8($s0)
    /* 1EE44 0011DEC4 7477040C */  jal        func_0011DDD0
    /* 1EE48 0011DEC8 0C00058E */   lw        $a1, 0xC($s0)
    /* 1EE4C 0011DECC 0000248E */  lw         $a0, 0x0($s1)
.align 2
  .L0011DED0:
    /* 1EE50 0011DED0 8A77040C */  jal        func_0011DE28
    /* 1EE54 0011DED4 01005226 */   addiu     $s2, $s2, 0x1
    /* 1EE58 0011DED8 0000248E */  lw         $a0, 0x0($s1)
    /* 1EE5C 0011DEDC 2D284000 */  daddu      $a1, $v0, $zero
    /* 1EE60 0011DEE0 7477040C */  jal        func_0011DDD0
    /* 1EE64 0011DEE4 08003126 */   addiu     $s1, $s1, 0x8
    /* 1EE68 0011DEE8 0800422E */  sltiu      $v0, $s2, 0x8
    /* 1EE6C 0011DEEC F8FF4054 */  bnel       $v0, $zero, .L0011DED0
    /* 1EE70 0011DEF0 0000248E */   lw        $a0, 0x0($s1)
    /* 1EE74 0011DEF4 3000BFDF */  ld         $ra, 0x30($sp)
.align 2
  .L0011DEF8:
    /* 1EE78 0011DEF8 2000B2DF */  ld         $s2, 0x20($sp)
    /* 1EE7C 0011DEFC 1000B1DF */  ld         $s1, 0x10($sp)
    /* 1EE80 0011DF00 0000B0DF */  ld         $s0, 0x0($sp)
    /* 1EE84 0011DF04 0800E003 */  jr         $ra
    /* 1EE88 0011DF08 4000BD27 */   addiu     $sp, $sp, 0x40
endlabel func_0011DE38
