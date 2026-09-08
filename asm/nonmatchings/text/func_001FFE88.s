.align 3
nonmatching func_001FFE88, 0x80

glabel func_001FFE88
    /* 100E08 001FFE88 E0FFBD27 */  addiu      $29, $29, -0x20
    /* 100E0C 001FFE8C 0000B07F */  sq         $16, 0x0($29)
    /* 100E10 001FFE90 1000BF7F */  sq         $31, 0x10($29)
    /* 100E14 001FFE94 045A040C */  jal        func_00116810
    /* 100E18 001FFE98 2D808000 */   daddu     $16, $4, $0
    /* 100E1C 001FFE9C 5000422C */  sltiu      $2, $2, 0x50
    /* 100E20 001FFEA0 12004010 */  beqz       $2, .L001FFEEC
    /* 100E24 001FFEA4 1A00043C */   lui       $4, %hi(D_0019A540)
    /* 100E28 001FFEA8 1E00023C */  lui        $2, %hi(D_001E7DD8)
    /* 100E2C 001FFEAC D87D4724 */  addiu      $7, $2, %lo(D_001E7DD8)
    /* 100E30 001FFEB0 40A58624 */  addiu      $6, $4, %lo(D_0019A540)
    /* 100E34 001FFEB4 0700E368 */  ldl        $3, 0x7($7)
    /* 100E38 001FFEB8 0000E36C */  ldr        $3, 0x0($7)
    /* 100E3C 001FFEBC 0F00E568 */  ldl        $5, 0xF($7)
    /* 100E40 001FFEC0 0800E56C */  ldr        $5, 0x8($7)
    /* 100E44 001FFEC4 0700C3B0 */  sdl        $3, 0x7($6)
    /* 100E48 001FFEC8 0000C3B4 */  sdr        $3, 0x0($6)
    /* 100E4C 001FFECC 0F00C5B0 */  sdl        $5, 0xF($6)
    /* 100E50 001FFED0 0800C5B4 */  sdr        $5, 0x8($6)
    /* 100E54 001FFED4 1000E380 */  lb         $3, 0x10($7)
    /* 100E58 001FFED8 1100E580 */  lb         $5, 0x11($7)
    /* 100E5C 001FFEDC 1000C3A0 */  sb         $3, 0x10($6)
    /* 100E60 001FFEE0 1100C5A0 */  sb         $5, 0x11($6)
    /* 100E64 001FFEE4 1200E380 */  lb         $3, 0x12($7)
    /* 100E68 001FFEE8 1200C3A0 */  sb         $3, 0x12($6)
.align 2
  .L001FFEEC:
    /* 100E6C 001FFEEC 2D280002 */  daddu      $5, $16, $0
    /* 100E70 001FFEF0 BF59040C */  jal        func_001166FC
    /* 100E74 001FFEF4 40A58424 */   addiu     $4, $4, %lo(D_0019A540)
    /* 100E78 001FFEF8 1000BF7B */  lq         $31, 0x10($29)
    /* 100E7C 001FFEFC 0000B07B */  lq         $16, 0x0($29)
    /* 100E80 001FFF00 0800E003 */  jr         $31
    /* 100E84 001FFF04 2000BD27 */   addiu     $29, $29, 0x20
endlabel func_001FFE88
