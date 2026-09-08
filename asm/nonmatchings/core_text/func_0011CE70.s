.align 3
nonmatching func_0011CE70, 0x208

glabel func_0011CE70
    /* 1DDF0 0011CE70 70FFBD27 */  addiu      $sp, $sp, -0x90
    /* 1DDF4 0011CE74 7000B6FF */  sd         $s6, 0x70($sp)
    /* 1DDF8 0011CE78 4000B3FF */  sd         $s3, 0x40($sp)
    /* 1DDFC 0011CE7C 2DB0E000 */  daddu      $s6, $a3, $zero
    /* 1DE00 0011CE80 2000B1FF */  sd         $s1, 0x20($sp)
    /* 1DE04 0011CE84 2D988000 */  daddu      $s3, $a0, $zero
    /* 1DE08 0011CE88 1000B0FF */  sd         $s0, 0x10($sp)
    /* 1DE0C 0011CE8C 2D88A000 */  daddu      $s1, $a1, $zero
    /* 1DE10 0011CE90 8000BFFF */  sd         $ra, 0x80($sp)
    /* 1DE14 0011CE94 2D80C000 */  daddu      $s0, $a2, $zero
    /* 1DE18 0011CE98 6000B5FF */  sd         $s5, 0x60($sp)
    /* 1DE1C 0011CE9C 5000B4FF */  sd         $s4, 0x50($sp)
    /* 1DE20 0011CEA0 3873040C */  jal        func_0011CCE0
    /* 1DE24 0011CEA4 3000B2FF */   sd        $s2, 0x30($sp)
    /* 1DE28 0011CEA8 69004004 */  bltz       $v0, .L0011D050
    /* 1DE2C 0011CEAC FFFF023C */   lui       $v0, (0xFFFF0000 >> 16)
    /* 1DE30 0011CEB0 7873040C */  jal        func_0011CDE0
    /* 1DE34 0011CEB4 00000000 */   nop
    /* 1DE38 0011CEB8 04004010 */  beqz       $v0, .L0011CECC
    /* 1DE3C 0011CEBC 1600143C */   lui       $s4, %hi(D_00158300)
    /* 1DE40 0011CEC0 FEFF023C */  lui        $v0, (0xFFFEFFFC >> 16)
    /* 1DE44 0011CEC4 62000010 */  b          .L0011D050
    /* 1DE48 0011CEC8 FCFF4234 */   ori       $v0, $v0, (0xFFFEFFFC & 0xFFFF)
.align 2
  .L0011CECC:
    /* 1DE4C 0011CECC 2DA88002 */  daddu      $s5, $s4, $zero
    /* 1DE50 0011CED0 00839226 */  addiu      $s2, $s4, %lo(D_00158300)
    /* 1DE54 0011CED4 4A000012 */  beqz       $s0, .L0011D000
    /* 1DE58 0011CED8 008393AE */   sw        $s3, %lo(D_00158300)($s4)
    /* 1DE5C 0011CEDC FD00222A */  slti       $v0, $s1, 0xFD
    /* 1DE60 0011CEE0 42004014 */  bnez       $v0, .L0011CFEC
    /* 1DE64 0011CEE4 2D280002 */   daddu     $a1, $s0, $zero
    /* 1DE68 0011CEE8 04014426 */  addiu      $a0, $s2, 0x104
    /* 1DE6C 0011CEEC 25100402 */  or         $v0, $s0, $a0
    /* 1DE70 0011CEF0 07004230 */  andi       $v0, $v0, 0x7
    /* 1DE74 0011CEF4 1A004010 */  beqz       $v0, .L0011CF60
    /* 1DE78 0011CEF8 2D380002 */   daddu     $a3, $s0, $zero
    /* 1DE7C 0011CEFC E0000226 */  addiu      $v0, $s0, 0xE0
    /* 1DE80 0011CF00 1600053C */  lui        $a1, (0x160000 >> 16)
.align 2
  .L0011CF04:
    /* 1DE84 0011CF04 0700E368 */  ldl        $v1, 0x7($a3)
    /* 1DE88 0011CF08 0000E36C */  ldr        $v1, 0x0($a3)
    /* 1DE8C 0011CF0C 0F00E668 */  ldl        $a2, 0xF($a3)
    /* 1DE90 0011CF10 0800E66C */  ldr        $a2, 0x8($a3)
    /* 1DE94 0011CF14 1700E868 */  ldl        $t0, 0x17($a3)
    /* 1DE98 0011CF18 1000E86C */  ldr        $t0, 0x10($a3)
    /* 1DE9C 0011CF1C 1F00E968 */  ldl        $t1, 0x1F($a3)
    /* 1DEA0 0011CF20 1800E96C */  ldr        $t1, 0x18($a3)
    /* 1DEA4 0011CF24 070083B0 */  sdl        $v1, 0x7($a0)
    /* 1DEA8 0011CF28 000083B4 */  sdr        $v1, 0x0($a0)
    /* 1DEAC 0011CF2C 0F0086B0 */  sdl        $a2, 0xF($a0)
    /* 1DEB0 0011CF30 080086B4 */  sdr        $a2, 0x8($a0)
    /* 1DEB4 0011CF34 170088B0 */  sdl        $t0, 0x17($a0)
    /* 1DEB8 0011CF38 100088B4 */  sdr        $t0, 0x10($a0)
    /* 1DEBC 0011CF3C 1F0089B0 */  sdl        $t1, 0x1F($a0)
    /* 1DEC0 0011CF40 180089B4 */  sdr        $t1, 0x18($a0)
    /* 1DEC4 0011CF44 2000E724 */  addiu      $a3, $a3, 0x20
    /* 1DEC8 0011CF48 20008424 */  addiu      $a0, $a0, 0x20
    /* 1DECC 0011CF4C 00000000 */  nop
    /* 1DED0 0011CF50 ECFFE214 */  bne        $a3, $v0, .L0011CF04
    /* 1DED4 0011CF54 00000000 */   nop
    /* 1DED8 0011CF58 10000010 */  b          .L0011CF9C
    /* 1DEDC 0011CF5C 00000000 */   nop
.align 2
  .L0011CF60:
    /* 1DEE0 0011CF60 E0000226 */  addiu      $v0, $s0, 0xE0
    /* 1DEE4 0011CF64 1600053C */  lui        $a1, %hi(D_00158500)
.align 2
  .L0011CF68:
    /* 1DEE8 0011CF68 0000EADC */  ld         $t2, 0x0($a3)
    /* 1DEEC 0011CF6C 0800E3DC */  ld         $v1, 0x8($a3)
    /* 1DEF0 0011CF70 1000E6DC */  ld         $a2, 0x10($a3)
    /* 1DEF4 0011CF74 1800E8DC */  ld         $t0, 0x18($a3)
    /* 1DEF8 0011CF78 00008AFC */  sd         $t2, 0x0($a0)
    /* 1DEFC 0011CF7C 080083FC */  sd         $v1, 0x8($a0)
    /* 1DF00 0011CF80 100086FC */  sd         $a2, 0x10($a0)
    /* 1DF04 0011CF84 180088FC */  sd         $t0, 0x18($a0)
    /* 1DF08 0011CF88 2000E724 */  addiu      $a3, $a3, 0x20
    /* 1DF0C 0011CF8C 20008424 */  addiu      $a0, $a0, 0x20
    /* 1DF10 0011CF90 00000000 */  nop
    /* 1DF14 0011CF94 F4FFE214 */  bne        $a3, $v0, .L0011CF68
    /* 1DF18 0011CF98 00000000 */   nop
.align 2
  .L0011CF9C:
    /* 1DF1C 0011CF9C 0700E968 */  ldl        $t1, 0x7($a3)
    /* 1DF20 0011CFA0 0000E96C */  ldr        $t1, 0x0($a3)
    /* 1DF24 0011CFA4 0F00EA68 */  ldl        $t2, 0xF($a3)
    /* 1DF28 0011CFA8 0800EA6C */  ldr        $t2, 0x8($a3)
    /* 1DF2C 0011CFAC 1700E668 */  ldl        $a2, 0x17($a3)
    /* 1DF30 0011CFB0 1000E66C */  ldr        $a2, 0x10($a3)
    /* 1DF34 0011CFB4 1B00E888 */  lwl        $t0, 0x1B($a3)
    /* 1DF38 0011CFB8 1800E898 */  lwr        $t0, 0x18($a3)
    /* 1DF3C 0011CFBC 070089B0 */  sdl        $t1, 0x7($a0)
    /* 1DF40 0011CFC0 000089B4 */  sdr        $t1, 0x0($a0)
    /* 1DF44 0011CFC4 0F008AB0 */  sdl        $t2, 0xF($a0)
    /* 1DF48 0011CFC8 08008AB4 */  sdr        $t2, 0x8($a0)
    /* 1DF4C 0011CFCC 170086B0 */  sdl        $a2, 0x17($a0)
    /* 1DF50 0011CFD0 100086B4 */  sdr        $a2, 0x10($a0)
    /* 1DF54 0011CFD4 1B0088A8 */  swl        $t0, 0x1B($a0)
    /* 1DF58 0011CFD8 0083A326 */  addiu      $v1, $s5, %lo(D_00158300)
    /* 1DF5C 0011CFDC FC000224 */  addiu      $v0, $zero, 0xFC
    /* 1DF60 0011CFE0 180088B8 */  swr        $t0, 0x18($a0)
    /* 1DF64 0011CFE4 08000010 */  b          .L0011D008
    /* 1DF68 0011CFE8 040062AC */   sw        $v0, 0x4($v1)
.align 2
  .L0011CFEC:
    /* 1DF6C 0011CFEC 04014426 */  addiu      $a0, $s2, 0x104
    /* 1DF70 0011CFF0 9254040C */  jal        func_00115248
    /* 1DF74 0011CFF4 2D302002 */   daddu     $a2, $s1, $zero
    /* 1DF78 0011CFF8 02000010 */  b          .L0011D004
    /* 1DF7C 0011CFFC 040051AE */   sw        $s1, 0x4($s2)
.align 2
  .L0011D000:
    /* 1DF80 0011D000 040040AE */  sw         $zero, 0x4($s2)
.align 2
  .L0011D004:
    /* 1DF84 0011D004 1600053C */  lui        $a1, %hi(D_00158500)
.align 2
  .L0011D008:
    /* 1DF88 0011D008 0083B026 */  addiu      $s0, $s5, %lo(D_00158300)
    /* 1DF8C 0011D00C 0085A424 */  addiu      $a0, $a1, %lo(D_00158500)
    /* 1DF90 0011D010 0000A0AF */  sw         $zero, 0x0($sp)
    /* 1DF94 0011D014 06000524 */  addiu      $a1, $zero, 0x6
    /* 1DF98 0011D018 2D300000 */  daddu      $a2, $zero, $zero
    /* 1DF9C 0011D01C 2D380002 */  daddu      $a3, $s0, $zero
    /* 1DFA0 0011D020 00020824 */  addiu      $t0, $zero, 0x200
    /* 1DFA4 0011D024 2D480002 */  daddu      $t1, $s0, $zero
    /* 1DFA8 0011D028 08000A24 */  addiu      $t2, $zero, 0x8
    /* 1DFAC 0011D02C 326D040C */  jal        func_0011B4C8
    /* 1DFB0 0011D030 2D580000 */   daddu     $t3, $zero, $zero
    /* 1DFB4 0011D034 04004304 */  bgezl      $v0, .L0011D048
    /* 1DFB8 0011D038 0400038E */   lw        $v1, 0x4($s0)
    /* 1DFBC 0011D03C FEFF023C */  lui        $v0, (0xFFFEFFFF >> 16)
    /* 1DFC0 0011D040 03000010 */  b          .L0011D050
    /* 1DFC4 0011D044 FFFF4234 */   ori       $v0, $v0, (0xFFFEFFFF & 0xFFFF)
.align 2
  .L0011D048:
    /* 1DFC8 0011D048 0083828E */  lw         $v0, %lo(D_00158300)($s4)
    /* 1DFCC 0011D04C 0000C3AE */  sw         $v1, 0x0($s6)
.align 2
  .L0011D050:
    /* 1DFD0 0011D050 8000BFDF */  ld         $ra, 0x80($sp)
    /* 1DFD4 0011D054 7000B6DF */  ld         $s6, 0x70($sp)
    /* 1DFD8 0011D058 6000B5DF */  ld         $s5, 0x60($sp)
    /* 1DFDC 0011D05C 5000B4DF */  ld         $s4, 0x50($sp)
    /* 1DFE0 0011D060 4000B3DF */  ld         $s3, 0x40($sp)
    /* 1DFE4 0011D064 3000B2DF */  ld         $s2, 0x30($sp)
    /* 1DFE8 0011D068 2000B1DF */  ld         $s1, 0x20($sp)
    /* 1DFEC 0011D06C 1000B0DF */  ld         $s0, 0x10($sp)
    /* 1DFF0 0011D070 0800E003 */  jr         $ra
    /* 1DFF4 0011D074 9000BD27 */   addiu     $sp, $sp, 0x90
endlabel func_0011CE70
