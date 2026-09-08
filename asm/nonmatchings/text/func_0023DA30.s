.align 3
nonmatching func_0023DA30, 0x54

glabel func_0023DA30
    /* 13E9B0 0023DA30 E0FFBD27 */  addiu      $29, $29, -0x20
    /* 13E9B4 0023DA34 1000BF7F */  sq         $31, 0x10($29)
    /* 13E9B8 0023DA38 0000B07F */  sq         $16, 0x0($29)
    /* 13E9BC 0023DA3C 2D808000 */  daddu      $16, $4, $0
    /* 13E9C0 0023DA40 2C63040C */  jal        func_00118CB0
    /* 13E9C4 0023DA44 4000048E */   lw        $4, 0x40($16)
    /* 13E9C8 0023DA48 1400038E */  lw         $3, 0x14($16)
    /* 13E9CC 0023DA4C FFFF0224 */  addiu      $2, $0, -0x1
    /* 13E9D0 0023DA50 4000048E */  lw         $4, 0x40($16)
    /* 13E9D4 0023DA54 FF076524 */  addiu      $5, $3, 0x7FF
    /* 13E9D8 0023DA58 2A104500 */  slt        $2, $2, $5
    /* 13E9DC 0023DA5C FE0F6324 */  addiu      $3, $3, 0xFFE
    /* 13E9E0 0023DA60 0B18A200 */  movn       $3, $5, $2
    /* 13E9E4 0023DA64 C31A0300 */  sra        $3, $3, 11
    /* 13E9E8 0023DA68 C01A0300 */  sll        $3, $3, 11
    /* 13E9EC 0023DA6C 2463040C */  jal        func_00118C90
    /* 13E9F0 0023DA70 140003AE */   sw        $3, 0x14($16)
    /* 13E9F4 0023DA74 1000BF7B */  lq         $31, 0x10($29)
    /* 13E9F8 0023DA78 0000B07B */  lq         $16, 0x0($29)
    /* 13E9FC 0023DA7C 0800E003 */  jr         $31
    /* 13EA00 0023DA80 2000BD27 */   addiu     $29, $29, 0x20
endlabel func_0023DA30
    /* 13EA04 0023DA84 00000000 */  nop
