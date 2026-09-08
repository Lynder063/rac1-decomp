.align 3
nonmatching func_001FFE88, 0x80

glabel func_001FFE88
    /* 100E08 001FFE88 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 100E0C 001FFE8C 0000B07F */  sq         $s0, 0x0($sp)
    /* 100E10 001FFE90 1000BF7F */  sq         $ra, 0x10($sp)
    /* 100E14 001FFE94 045A040C */  jal        func_00116810
    /* 100E18 001FFE98 2D808000 */   daddu     $s0, $a0, $zero
    /* 100E1C 001FFE9C 5000422C */  sltiu      $v0, $v0, 0x50
    /* 100E20 001FFEA0 12004010 */  beqz       $v0, .L001FFEEC
    /* 100E24 001FFEA4 1A00043C */   lui       $a0, %hi(D_0019A540)
    /* 100E28 001FFEA8 1E00023C */  lui        $v0, %hi(D_001E7DD8)
    /* 100E2C 001FFEAC D87D4724 */  addiu      $a3, $v0, %lo(D_001E7DD8)
    /* 100E30 001FFEB0 40A58624 */  addiu      $a2, $a0, %lo(D_0019A540)
    /* 100E34 001FFEB4 0700E368 */  ldl        $v1, 0x7($a3)
    /* 100E38 001FFEB8 0000E36C */  ldr        $v1, 0x0($a3)
    /* 100E3C 001FFEBC 0F00E568 */  ldl        $a1, 0xF($a3)
    /* 100E40 001FFEC0 0800E56C */  ldr        $a1, 0x8($a3)
    /* 100E44 001FFEC4 0700C3B0 */  sdl        $v1, 0x7($a2)
    /* 100E48 001FFEC8 0000C3B4 */  sdr        $v1, 0x0($a2)
    /* 100E4C 001FFECC 0F00C5B0 */  sdl        $a1, 0xF($a2)
    /* 100E50 001FFED0 0800C5B4 */  sdr        $a1, 0x8($a2)
    /* 100E54 001FFED4 1000E380 */  lb         $v1, 0x10($a3)
    /* 100E58 001FFED8 1100E580 */  lb         $a1, 0x11($a3)
    /* 100E5C 001FFEDC 1000C3A0 */  sb         $v1, 0x10($a2)
    /* 100E60 001FFEE0 1100C5A0 */  sb         $a1, 0x11($a2)
    /* 100E64 001FFEE4 1200E380 */  lb         $v1, 0x12($a3)
    /* 100E68 001FFEE8 1200C3A0 */  sb         $v1, 0x12($a2)
.align 2
  .L001FFEEC:
    /* 100E6C 001FFEEC 2D280002 */  daddu      $a1, $s0, $zero
    /* 100E70 001FFEF0 BF59040C */  jal        func_001166FC
    /* 100E74 001FFEF4 40A58424 */   addiu     $a0, $a0, %lo(D_0019A540)
    /* 100E78 001FFEF8 1000BF7B */  lq         $ra, 0x10($sp)
    /* 100E7C 001FFEFC 0000B07B */  lq         $s0, 0x0($sp)
    /* 100E80 001FFF00 0800E003 */  jr         $ra
    /* 100E84 001FFF04 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_001FFE88
