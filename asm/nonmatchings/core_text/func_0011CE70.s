.align 3
nonmatching func_0011CE70, 0x208

glabel func_0011CE70
    /* 1DDF0 0011CE70 70FFBD27 */  addiu      $29, $29, -0x90
    /* 1DDF4 0011CE74 7000B6FF */  sd         $22, 0x70($29)
    /* 1DDF8 0011CE78 4000B3FF */  sd         $19, 0x40($29)
    /* 1DDFC 0011CE7C 2DB0E000 */  daddu      $22, $7, $0
    /* 1DE00 0011CE80 2000B1FF */  sd         $17, 0x20($29)
    /* 1DE04 0011CE84 2D988000 */  daddu      $19, $4, $0
    /* 1DE08 0011CE88 1000B0FF */  sd         $16, 0x10($29)
    /* 1DE0C 0011CE8C 2D88A000 */  daddu      $17, $5, $0
    /* 1DE10 0011CE90 8000BFFF */  sd         $31, 0x80($29)
    /* 1DE14 0011CE94 2D80C000 */  daddu      $16, $6, $0
    /* 1DE18 0011CE98 6000B5FF */  sd         $21, 0x60($29)
    /* 1DE1C 0011CE9C 5000B4FF */  sd         $20, 0x50($29)
    /* 1DE20 0011CEA0 3873040C */  jal        func_0011CCE0
    /* 1DE24 0011CEA4 3000B2FF */   sd        $18, 0x30($29)
    /* 1DE28 0011CEA8 69004004 */  bltz       $2, .L0011D050
    /* 1DE2C 0011CEAC FFFF023C */   lui       $2, (0xFFFF0000 >> 16)
    /* 1DE30 0011CEB0 7873040C */  jal        func_0011CDE0
    /* 1DE34 0011CEB4 00000000 */   nop
    /* 1DE38 0011CEB8 04004010 */  beqz       $2, .L0011CECC
    /* 1DE3C 0011CEBC 1600143C */   lui       $20, %hi(D_00158300)
    /* 1DE40 0011CEC0 FEFF023C */  lui        $2, (0xFFFEFFFC >> 16)
    /* 1DE44 0011CEC4 62000010 */  b          .L0011D050
    /* 1DE48 0011CEC8 FCFF4234 */   ori       $2, $2, (0xFFFEFFFC & 0xFFFF)
.align 2
  .L0011CECC:
    /* 1DE4C 0011CECC 2DA88002 */  daddu      $21, $20, $0
    /* 1DE50 0011CED0 00839226 */  addiu      $18, $20, %lo(D_00158300)
    /* 1DE54 0011CED4 4A000012 */  beqz       $16, .L0011D000
    /* 1DE58 0011CED8 008393AE */   sw        $19, %lo(D_00158300)($20)
    /* 1DE5C 0011CEDC FD00222A */  slti       $2, $17, 0xFD
    /* 1DE60 0011CEE0 42004014 */  bnez       $2, .L0011CFEC
    /* 1DE64 0011CEE4 2D280002 */   daddu     $5, $16, $0
    /* 1DE68 0011CEE8 04014426 */  addiu      $4, $18, 0x104
    /* 1DE6C 0011CEEC 25100402 */  or         $2, $16, $4
    /* 1DE70 0011CEF0 07004230 */  andi       $2, $2, 0x7
    /* 1DE74 0011CEF4 1A004010 */  beqz       $2, .L0011CF60
    /* 1DE78 0011CEF8 2D380002 */   daddu     $7, $16, $0
    /* 1DE7C 0011CEFC E0000226 */  addiu      $2, $16, 0xE0
    /* 1DE80 0011CF00 1600053C */  lui        $5, (0x160000 >> 16)
.align 2
  .L0011CF04:
    /* 1DE84 0011CF04 0700E368 */  ldl        $3, 0x7($7)
    /* 1DE88 0011CF08 0000E36C */  ldr        $3, 0x0($7)
    /* 1DE8C 0011CF0C 0F00E668 */  ldl        $6, 0xF($7)
    /* 1DE90 0011CF10 0800E66C */  ldr        $6, 0x8($7)
    /* 1DE94 0011CF14 1700E868 */  ldl        $8, 0x17($7)
    /* 1DE98 0011CF18 1000E86C */  ldr        $8, 0x10($7)
    /* 1DE9C 0011CF1C 1F00E968 */  ldl        $9, 0x1F($7)
    /* 1DEA0 0011CF20 1800E96C */  ldr        $9, 0x18($7)
    /* 1DEA4 0011CF24 070083B0 */  sdl        $3, 0x7($4)
    /* 1DEA8 0011CF28 000083B4 */  sdr        $3, 0x0($4)
    /* 1DEAC 0011CF2C 0F0086B0 */  sdl        $6, 0xF($4)
    /* 1DEB0 0011CF30 080086B4 */  sdr        $6, 0x8($4)
    /* 1DEB4 0011CF34 170088B0 */  sdl        $8, 0x17($4)
    /* 1DEB8 0011CF38 100088B4 */  sdr        $8, 0x10($4)
    /* 1DEBC 0011CF3C 1F0089B0 */  sdl        $9, 0x1F($4)
    /* 1DEC0 0011CF40 180089B4 */  sdr        $9, 0x18($4)
    /* 1DEC4 0011CF44 2000E724 */  addiu      $7, $7, 0x20
    /* 1DEC8 0011CF48 20008424 */  addiu      $4, $4, 0x20
    /* 1DECC 0011CF4C 00000000 */  nop
    /* 1DED0 0011CF50 ECFFE214 */  bne        $7, $2, .L0011CF04
    /* 1DED4 0011CF54 00000000 */   nop
    /* 1DED8 0011CF58 10000010 */  b          .L0011CF9C
    /* 1DEDC 0011CF5C 00000000 */   nop
.align 2
  .L0011CF60:
    /* 1DEE0 0011CF60 E0000226 */  addiu      $2, $16, 0xE0
    /* 1DEE4 0011CF64 1600053C */  lui        $5, %hi(D_00158500)
.align 2
  .L0011CF68:
    /* 1DEE8 0011CF68 0000EADC */  ld         $10, 0x0($7)
    /* 1DEEC 0011CF6C 0800E3DC */  ld         $3, 0x8($7)
    /* 1DEF0 0011CF70 1000E6DC */  ld         $6, 0x10($7)
    /* 1DEF4 0011CF74 1800E8DC */  ld         $8, 0x18($7)
    /* 1DEF8 0011CF78 00008AFC */  sd         $10, 0x0($4)
    /* 1DEFC 0011CF7C 080083FC */  sd         $3, 0x8($4)
    /* 1DF00 0011CF80 100086FC */  sd         $6, 0x10($4)
    /* 1DF04 0011CF84 180088FC */  sd         $8, 0x18($4)
    /* 1DF08 0011CF88 2000E724 */  addiu      $7, $7, 0x20
    /* 1DF0C 0011CF8C 20008424 */  addiu      $4, $4, 0x20
    /* 1DF10 0011CF90 00000000 */  nop
    /* 1DF14 0011CF94 F4FFE214 */  bne        $7, $2, .L0011CF68
    /* 1DF18 0011CF98 00000000 */   nop
.align 2
  .L0011CF9C:
    /* 1DF1C 0011CF9C 0700E968 */  ldl        $9, 0x7($7)
    /* 1DF20 0011CFA0 0000E96C */  ldr        $9, 0x0($7)
    /* 1DF24 0011CFA4 0F00EA68 */  ldl        $10, 0xF($7)
    /* 1DF28 0011CFA8 0800EA6C */  ldr        $10, 0x8($7)
    /* 1DF2C 0011CFAC 1700E668 */  ldl        $6, 0x17($7)
    /* 1DF30 0011CFB0 1000E66C */  ldr        $6, 0x10($7)
    /* 1DF34 0011CFB4 1B00E888 */  lwl        $8, 0x1B($7)
    /* 1DF38 0011CFB8 1800E898 */  lwr        $8, 0x18($7)
    /* 1DF3C 0011CFBC 070089B0 */  sdl        $9, 0x7($4)
    /* 1DF40 0011CFC0 000089B4 */  sdr        $9, 0x0($4)
    /* 1DF44 0011CFC4 0F008AB0 */  sdl        $10, 0xF($4)
    /* 1DF48 0011CFC8 08008AB4 */  sdr        $10, 0x8($4)
    /* 1DF4C 0011CFCC 170086B0 */  sdl        $6, 0x17($4)
    /* 1DF50 0011CFD0 100086B4 */  sdr        $6, 0x10($4)
    /* 1DF54 0011CFD4 1B0088A8 */  swl        $8, 0x1B($4)
    /* 1DF58 0011CFD8 0083A326 */  addiu      $3, $21, %lo(D_00158300)
    /* 1DF5C 0011CFDC FC000224 */  addiu      $2, $0, 0xFC
    /* 1DF60 0011CFE0 180088B8 */  swr        $8, 0x18($4)
    /* 1DF64 0011CFE4 08000010 */  b          .L0011D008
    /* 1DF68 0011CFE8 040062AC */   sw        $2, 0x4($3)
.align 2
  .L0011CFEC:
    /* 1DF6C 0011CFEC 04014426 */  addiu      $4, $18, 0x104
    /* 1DF70 0011CFF0 9254040C */  jal        func_00115248
    /* 1DF74 0011CFF4 2D302002 */   daddu     $6, $17, $0
    /* 1DF78 0011CFF8 02000010 */  b          .L0011D004
    /* 1DF7C 0011CFFC 040051AE */   sw        $17, 0x4($18)
.align 2
  .L0011D000:
    /* 1DF80 0011D000 040040AE */  sw         $0, 0x4($18)
.align 2
  .L0011D004:
    /* 1DF84 0011D004 1600053C */  lui        $5, %hi(D_00158500)
.align 2
  .L0011D008:
    /* 1DF88 0011D008 0083B026 */  addiu      $16, $21, %lo(D_00158300)
    /* 1DF8C 0011D00C 0085A424 */  addiu      $4, $5, %lo(D_00158500)
    /* 1DF90 0011D010 0000A0AF */  sw         $0, 0x0($29)
    /* 1DF94 0011D014 06000524 */  addiu      $5, $0, 0x6
    /* 1DF98 0011D018 2D300000 */  daddu      $6, $0, $0
    /* 1DF9C 0011D01C 2D380002 */  daddu      $7, $16, $0
    /* 1DFA0 0011D020 00020824 */  addiu      $8, $0, 0x200
    /* 1DFA4 0011D024 2D480002 */  daddu      $9, $16, $0
    /* 1DFA8 0011D028 08000A24 */  addiu      $10, $0, 0x8
    /* 1DFAC 0011D02C 326D040C */  jal        func_0011B4C8
    /* 1DFB0 0011D030 2D580000 */   daddu     $11, $0, $0
    /* 1DFB4 0011D034 04004304 */  bgezl      $2, .L0011D048
    /* 1DFB8 0011D038 0400038E */   lw        $3, 0x4($16)
    /* 1DFBC 0011D03C FEFF023C */  lui        $2, (0xFFFEFFFF >> 16)
    /* 1DFC0 0011D040 03000010 */  b          .L0011D050
    /* 1DFC4 0011D044 FFFF4234 */   ori       $2, $2, (0xFFFEFFFF & 0xFFFF)
.align 2
  .L0011D048:
    /* 1DFC8 0011D048 0083828E */  lw         $2, %lo(D_00158300)($20)
    /* 1DFCC 0011D04C 0000C3AE */  sw         $3, 0x0($22)
.align 2
  .L0011D050:
    /* 1DFD0 0011D050 8000BFDF */  ld         $31, 0x80($29)
    /* 1DFD4 0011D054 7000B6DF */  ld         $22, 0x70($29)
    /* 1DFD8 0011D058 6000B5DF */  ld         $21, 0x60($29)
    /* 1DFDC 0011D05C 5000B4DF */  ld         $20, 0x50($29)
    /* 1DFE0 0011D060 4000B3DF */  ld         $19, 0x40($29)
    /* 1DFE4 0011D064 3000B2DF */  ld         $18, 0x30($29)
    /* 1DFE8 0011D068 2000B1DF */  ld         $17, 0x20($29)
    /* 1DFEC 0011D06C 1000B0DF */  ld         $16, 0x10($29)
    /* 1DFF0 0011D070 0800E003 */  jr         $31
    /* 1DFF4 0011D074 9000BD27 */   addiu     $29, $29, 0x90
endlabel func_0011CE70
