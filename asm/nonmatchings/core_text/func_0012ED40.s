.align 3
nonmatching func_0012ED40, 0x6C

glabel func_0012ED40
    /* 2FCC0 0012ED40 1000BD27 */  addiu      $29, $29, 0x10
    /* 2FCC4 0012ED44 00000000 */  nop
.align 2
  alabel func_0012ED48
    /* 2FCC8 0012ED48 D0FFBD27 */  addiu      $29, $29, -0x30
    /* 2FCCC 0012ED4C FFFFE330 */  andi       $3, $7, 0xFFFF
    /* 2FCD0 0012ED50 00140800 */  sll        $2, $8, 16
    /* 2FCD4 0012ED54 FFFFC630 */  andi       $6, $6, 0xFFFF
    /* 2FCD8 0012ED58 3000AC8F */  lw         $12, 0x30($29)
    /* 2FCDC 0012ED5C 004C0900 */  sll        $9, $9, 16
    /* 2FCE0 0012ED60 25104600 */  or         $2, $2, $6
    /* 2FCE4 0012ED64 25482301 */  or         $9, $9, $3
    /* 2FCE8 0012ED68 0000A4AF */  sw         $4, 0x0($29)
    /* 2FCEC 0012ED6C 2D30A003 */  daddu      $6, $29, $0
    /* 2FCF0 0012ED70 0400A5AF */  sw         $5, 0x4($29)
    /* 2FCF4 0012ED74 2C000424 */  addiu      $4, $0, 0x2C
    /* 2FCF8 0012ED78 3800A78F */  lw         $7, 0x38($29)
    /* 2FCFC 0012ED7C 1C000524 */  addiu      $5, $0, 0x1C
    /* 2FD00 0012ED80 4000A8DF */  ld         $8, 0x40($29)
    /* 2FD04 0012ED84 2000BF7F */  sq         $31, 0x20($29)
    /* 2FD08 0012ED88 0800A2AF */  sw         $2, 0x8($29)
    /* 2FD0C 0012ED8C 0C00A9AF */  sw         $9, 0xC($29)
    /* 2FD10 0012ED90 1000AAAF */  sw         $10, 0x10($29)
    /* 2FD14 0012ED94 1400ABAF */  sw         $11, 0x14($29)
    /* 2FD18 0012ED98 08BA040C */  jal        func_0012E820
    /* 2FD1C 0012ED9C 1800ACAF */   sw        $12, 0x18($29)
    /* 2FD20 0012EDA0 2000BF7B */  lq         $31, 0x20($29)
    /* 2FD24 0012EDA4 0800E003 */  jr         $31
    /* 2FD28 0012EDA8 3000BD27 */   addiu     $29, $29, 0x30
endlabel func_0012ED40
    /* 2FD2C 0012EDAC 00000000 */  nop
