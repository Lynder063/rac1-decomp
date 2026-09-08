.align 3
nonmatching func_0011FEA0, 0x64

glabel func_0011FEA0
    /* 20E20 0011FEA0 70FFBD27 */  addiu      $sp, $sp, -0x90
    /* 20E24 0011FEA4 6000A4FF */  sd         $a0, 0x60($sp)
    /* 20E28 0011FEA8 6800A5FF */  sd         $a1, 0x68($sp)
    /* 20E2C 0011FEAC 6000A427 */  addiu      $a0, $sp, 0x60
    /* 20E30 0011FEB0 7000B0FF */  sd         $s0, 0x70($sp)
    /* 20E34 0011FEB4 8000BFFF */  sd         $ra, 0x80($sp)
    /* 20E38 0011FEB8 DA7E040C */  jal        func_0011FB68
    /* 20E3C 0011FEBC 2D28A003 */   daddu     $a1, $sp, $zero
    /* 20E40 0011FEC0 2000B027 */  addiu      $s0, $sp, 0x20
    /* 20E44 0011FEC4 6800A427 */  addiu      $a0, $sp, 0x68
    /* 20E48 0011FEC8 DA7E040C */  jal        func_0011FB68
    /* 20E4C 0011FECC 2D280002 */   daddu     $a1, $s0, $zero
    /* 20E50 0011FED0 2400A28F */  lw         $v0, 0x24($sp)
    /* 20E54 0011FED4 2D280002 */  daddu      $a1, $s0, $zero
    /* 20E58 0011FED8 4000A627 */  addiu      $a2, $sp, 0x40
    /* 20E5C 0011FEDC 2D20A003 */  daddu      $a0, $sp, $zero
    /* 20E60 0011FEE0 01004238 */  xori       $v0, $v0, 0x1
    /* 20E64 0011FEE4 027F040C */  jal        func_0011FC08
    /* 20E68 0011FEE8 2400A2AF */   sw        $v0, 0x24($sp)
    /* 20E6C 0011FEEC 8E7E040C */  jal        func_0011FA38
    /* 20E70 0011FEF0 2D204000 */   daddu     $a0, $v0, $zero
    /* 20E74 0011FEF4 8000BFDF */  ld         $ra, 0x80($sp)
    /* 20E78 0011FEF8 7000B0DF */  ld         $s0, 0x70($sp)
    /* 20E7C 0011FEFC 0800E003 */  jr         $ra
    /* 20E80 0011FF00 9000BD27 */   addiu     $sp, $sp, 0x90
endlabel func_0011FEA0
    /* 20E84 0011FF04 00000000 */  nop
