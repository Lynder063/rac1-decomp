.align 3
nonmatching func_0011FEA0, 0x64

glabel func_0011FEA0
    /* 20E20 0011FEA0 70FFBD27 */  addiu      $29, $29, -0x90
    /* 20E24 0011FEA4 6000A4FF */  sd         $4, 0x60($29)
    /* 20E28 0011FEA8 6800A5FF */  sd         $5, 0x68($29)
    /* 20E2C 0011FEAC 6000A427 */  addiu      $4, $29, 0x60
    /* 20E30 0011FEB0 7000B0FF */  sd         $16, 0x70($29)
    /* 20E34 0011FEB4 8000BFFF */  sd         $31, 0x80($29)
    /* 20E38 0011FEB8 DA7E040C */  jal        func_0011FB68
    /* 20E3C 0011FEBC 2D28A003 */   daddu     $5, $29, $0
    /* 20E40 0011FEC0 2000B027 */  addiu      $16, $29, 0x20
    /* 20E44 0011FEC4 6800A427 */  addiu      $4, $29, 0x68
    /* 20E48 0011FEC8 DA7E040C */  jal        func_0011FB68
    /* 20E4C 0011FECC 2D280002 */   daddu     $5, $16, $0
    /* 20E50 0011FED0 2400A28F */  lw         $2, 0x24($29)
    /* 20E54 0011FED4 2D280002 */  daddu      $5, $16, $0
    /* 20E58 0011FED8 4000A627 */  addiu      $6, $29, 0x40
    /* 20E5C 0011FEDC 2D20A003 */  daddu      $4, $29, $0
    /* 20E60 0011FEE0 01004238 */  xori       $2, $2, 0x1
    /* 20E64 0011FEE4 027F040C */  jal        func_0011FC08
    /* 20E68 0011FEE8 2400A2AF */   sw        $2, 0x24($29)
    /* 20E6C 0011FEEC 8E7E040C */  jal        func_0011FA38
    /* 20E70 0011FEF0 2D204000 */   daddu     $4, $2, $0
    /* 20E74 0011FEF4 8000BFDF */  ld         $31, 0x80($29)
    /* 20E78 0011FEF8 7000B0DF */  ld         $16, 0x70($29)
    /* 20E7C 0011FEFC 0800E003 */  jr         $31
    /* 20E80 0011FF00 9000BD27 */   addiu     $29, $29, 0x90
endlabel func_0011FEA0
    /* 20E84 0011FF04 00000000 */  nop
