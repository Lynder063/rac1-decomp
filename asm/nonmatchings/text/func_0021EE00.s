.align 3
nonmatching func_0021EE00, 0x130

glabel func_0021EE00
    /* 11FD80 0021EE00 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 11FD84 0021EE04 1000B17F */  sq         $s1, 0x10($sp)
    /* 11FD88 0021EE08 0000B07F */  sq         $s0, 0x0($sp)
    /* 11FD8C 0021EE0C 2D880000 */  daddu      $s1, $zero, $zero
    /* 11FD90 0021EE10 2000BF7F */  sq         $ra, 0x20($sp)
    /* 11FD94 0021EE14 2D808000 */  daddu      $s0, $a0, $zero
    /* 11FD98 0021EE18 44000326 */  addiu      $v1, $s0, 0x44
    /* 11FD9C 0021EE1C 00000000 */  nop
.align 2
  .L0021EE20:
    /* 11FDA0 0021EE20 80201100 */  sll        $a0, $s1, 2
    /* 11FDA4 0021EE24 2D386000 */  daddu      $a3, $v1, $zero
    /* 11FDA8 0021EE28 21186400 */  addu       $v1, $v1, $a0
    /* 11FDAC 0021EE2C 0000628C */  lw         $v0, 0x0($v1)
    /* 11FDB0 0021EE30 35004010 */  beqz       $v0, .L0021EF08
    /* 11FDB4 0021EE34 2D308000 */   daddu     $a2, $a0, $zero
    /* 11FDB8 0021EE38 21101102 */  addu       $v0, $s0, $s1
    /* 11FDBC 0021EE3C A4004390 */  lbu        $v1, 0xA4($v0)
    /* 11FDC0 0021EE40 32006054 */  bnel       $v1, $zero, .L0021EF0C
    /* 11FDC4 0021EE44 01003126 */   addiu     $s1, $s1, 0x1
    /* 11FDC8 0021EE48 1D00023C */  lui        $v0, %hi(D_001D53A0)
    /* 11FDCC 0021EE4C A0534224 */  addiu      $v0, $v0, %lo(D_001D53A0)
    /* 11FDD0 0021EE50 2110C200 */  addu       $v0, $a2, $v0
    /* 11FDD4 0021EE54 0000438C */  lw         $v1, 0x0($v0)
    /* 11FDD8 0021EE58 2B006010 */  beqz       $v1, .L0021EF08
    /* 11FDDC 0021EE5C 07000224 */   addiu     $v0, $zero, 0x7
    /* 11FDE0 0021EE60 0C002216 */  bne        $s1, $v0, .L0021EE94
    /* 11FDE4 0021EE64 FFFF2326 */   addiu     $v1, $s1, -0x1
    /* 11FDE8 0021EE68 6000028E */  lw         $v0, 0x60($s0)
    /* 11FDEC 0021EE6C 4A000424 */  addiu      $a0, $zero, 0x4A
    /* 11FDF0 0021EE70 A6004384 */  lh         $v1, 0xA6($v0)
    /* 11FDF4 0021EE74 07006414 */  bne        $v1, $a0, .L0021EE94
    /* 11FDF8 0021EE78 FFFF2326 */   addiu     $v1, $s1, -0x1
    /* 11FDFC 0021EE7C 4400028E */  lw         $v0, 0x44($s0)
    /* 11FE00 0021EE80 53004490 */  lbu        $a0, 0x53($v0)
    /* 11FE04 0021EE84 52004390 */  lbu        $v1, 0x52($v0)
    /* 11FE08 0021EE88 20006454 */  bnel       $v1, $a0, .L0021EF0C
    /* 11FE0C 0021EE8C 01003126 */   addiu     $s1, $s1, 0x1
    /* 11FE10 0021EE90 FFFF2326 */  addiu      $v1, $s1, -0x1
.align 2
  .L0021EE94:
    /* 11FE14 0021EE94 0C00622C */  sltiu      $v0, $v1, 0xC
    /* 11FE18 0021EE98 17004010 */  beqz       $v0, .L0021EEF8
    /* 11FE1C 0021EE9C 1F00023C */   lui       $v0, %hi(jtbl_001E8AD0)
    /* 11FE20 0021EEA0 80180300 */  sll        $v1, $v1, 2
    /* 11FE24 0021EEA4 D08A4224 */  addiu      $v0, $v0, %lo(jtbl_001E8AD0)
    /* 11FE28 0021EEA8 21186200 */  addu       $v1, $v1, $v0
    /* 11FE2C 0021EEAC 0000648C */  lw         $a0, 0x0($v1)
    /* 11FE30 0021EEB0 08008000 */  jr         $a0
    /* 11FE34 0021EEB4 00000000 */   nop
    /* 11FE38 0021EEB8 4400058E */  lw         $a1, 0x44($s0)
    /* 11FE3C 0021EEBC FFFF0234 */  ori        $v0, $zero, 0xFFFF
    /* 11FE40 0021EEC0 38140200 */  dsll       $v0, $v0, 16
    /* 11FE44 0021EEC4 99990434 */  ori        $a0, $zero, 0x9999
    /* 11FE48 0021EEC8 38240400 */  dsll       $a0, $a0, 16
    /* 11FE4C 0021EECC 5000A3DC */  ld         $v1, 0x50($a1)
    /* 11FE50 0021EED0 24186200 */  and        $v1, $v1, $v0
    /* 11FE54 0021EED4 09006414 */  bne        $v1, $a0, .L0021EEFC
    /* 11FE58 0021EED8 2110E600 */   addu      $v0, $a3, $a2
    /* 11FE5C 0021EEDC 5000A390 */  lbu        $v1, 0x50($a1)
    /* 11FE60 0021EEE0 4D00622C */  sltiu      $v0, $v1, 0x4D
    /* 11FE64 0021EEE4 05004014 */  bnez       $v0, .L0021EEFC
    /* 11FE68 0021EEE8 2110E600 */   addu      $v0, $a3, $a2
    /* 11FE6C 0021EEEC 9200622C */  sltiu      $v0, $v1, 0x92
    /* 11FE70 0021EEF0 06004054 */  bnel       $v0, $zero, .L0021EF0C
    /* 11FE74 0021EEF4 01003126 */   addiu     $s1, $s1, 0x1
.align 2
  .L0021EEF8:
    /* 11FE78 0021EEF8 2110E600 */  addu       $v0, $a3, $a2
.align 2
  .L0021EEFC:
    /* 11FE7C 0021EEFC 01000524 */  addiu      $a1, $zero, 0x1
    /* 11FE80 0021EF00 6038080C */  jal        func_0020E180
    /* 11FE84 0021EF04 0000448C */   lw        $a0, 0x0($v0)
.align 2
  .L0021EF08:
    /* 11FE88 0021EF08 01003126 */  addiu      $s1, $s1, 0x1
.align 2
  .L0021EF0C:
    /* 11FE8C 0021EF0C 1800222A */  slti       $v0, $s1, 0x18
    /* 11FE90 0021EF10 C3FF4014 */  bnez       $v0, .L0021EE20
    /* 11FE94 0021EF14 44000326 */   addiu     $v1, $s0, 0x44
    /* 11FE98 0021EF18 2000BF7B */  lq         $ra, 0x20($sp)
    /* 11FE9C 0021EF1C 04000224 */  addiu      $v0, $zero, 0x4
    /* 11FEA0 0021EF20 1000B17B */  lq         $s1, 0x10($sp)
    /* 11FEA4 0021EF24 0000B07B */  lq         $s0, 0x0($sp)
    /* 11FEA8 0021EF28 0800E003 */  jr         $ra
    /* 11FEAC 0021EF2C 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_0021EE00
