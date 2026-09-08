.align 3
nonmatching func_001ECAB8, 0xDC

glabel func_001ECAB8
    /* EDA38 001ECAB8 70FFBD27 */  addiu      $29, $29, -0x90
    /* EDA3C 001ECABC 5000B27F */  sq         $18, 0x50($29)
    /* EDA40 001ECAC0 2D20A003 */  daddu      $4, $29, $0
    /* EDA44 001ECAC4 6000B37F */  sq         $19, 0x60($29)
    /* EDA48 001ECAC8 1400123C */  lui        $18, %hi(D_0013F450)
    /* EDA4C 001ECACC 4000B17F */  sq         $17, 0x40($29)
    /* EDA50 001ECAD0 50F45226 */  addiu      $18, $18, %lo(D_0013F450)
    /* EDA54 001ECAD4 3000B07F */  sq         $16, 0x30($29)
    /* EDA58 001ECAD8 8000B4E7 */  swc1       $f20, 0x80($29)
    /* EDA5C 001ECADC 1800103C */  lui        $16, %hi(D_001872B0)
    /* EDA60 001ECAE0 7000BF7F */  sq         $31, 0x70($29)
    /* EDA64 001ECAE4 B0721026 */  addiu      $16, $16, %lo(D_001872B0)
    /* EDA68 001ECAE8 803F013C */  lui        $1, (0x3F800000 >> 16)
    /* EDA6C 001ECAEC 00A08144 */  mtc1       $1, $f20
    /* EDA70 001ECAF0 8020458E */  lw         $5, 0x2080($18)
    /* EDA74 001ECAF4 06A30046 */  mov.s      $f12, $f20
    /* EDA78 001ECAF8 70E7070C */  jal        func_001F9DC0
    /* EDA7C 001ECAFC C000A524 */   addiu     $5, $5, 0xC0
    /* EDA80 001ECB00 8020458E */  lw         $5, 0x2080($18)
    /* EDA84 001ECB04 1000B327 */  addiu      $19, $29, 0x10
    /* EDA88 001ECB08 2D206002 */  daddu      $4, $19, $0
    /* EDA8C 001ECB0C 06A30046 */  mov.s      $f12, $f20
    /* EDA90 001ECB10 70E7070C */  jal        func_001F9DC0
    /* EDA94 001ECB14 D000A524 */   addiu     $5, $5, 0xD0
    /* EDA98 001ECB18 8020458E */  lw         $5, 0x2080($18)
    /* EDA9C 001ECB1C 2000B127 */  addiu      $17, $29, 0x20
    /* EDAA0 001ECB20 06A30046 */  mov.s      $f12, $f20
    /* EDAA4 001ECB24 2D202002 */  daddu      $4, $17, $0
    /* EDAA8 001ECB28 70E7070C */  jal        func_001F9DC0
    /* EDAAC 001ECB2C E000A524 */   addiu     $5, $5, 0xE0
    /* EDAB0 001ECB30 90000326 */  addiu      $3, $16, 0x90
    /* EDAB4 001ECB34 0000A27B */  lq         $2, 0x0($29)
    /* EDAB8 001ECB38 0000627C */  sq         $2, 0x0($3)
    /* EDABC 001ECB3C A0000426 */  addiu      $4, $16, 0xA0
    /* EDAC0 001ECB40 0000227A */  lq         $2, 0x0($17)
    /* EDAC4 001ECB44 0000827C */  sq         $2, 0x0($4)
    /* EDAC8 001ECB48 70000426 */  addiu      $4, $16, 0x70
    /* EDACC 001ECB4C C0000526 */  addiu      $5, $16, 0xC0
    /* EDAD0 001ECB50 80004626 */  addiu      $6, $18, 0x80
    /* EDAD4 001ECB54 2D406002 */  daddu      $8, $19, $0
    /* EDAD8 001ECB58 2D482002 */  daddu      $9, $17, $0
    /* EDADC 001ECB5C 36B2070C */  jal        func_001EC8D8
    /* EDAE0 001ECB60 2D38A003 */   daddu     $7, $29, $0
    /* EDAE4 001ECB64 D0000326 */  addiu      $3, $16, 0xD0
    /* EDAE8 001ECB68 B0001026 */  addiu      $16, $16, 0xB0
    /* EDAEC 001ECB6C 00006278 */  lq         $2, 0x0($3)
    /* EDAF0 001ECB70 0000027E */  sq         $2, 0x0($16)
    /* EDAF4 001ECB74 7000BF7B */  lq         $31, 0x70($29)
    /* EDAF8 001ECB78 6000B37B */  lq         $19, 0x60($29)
    /* EDAFC 001ECB7C 5000B27B */  lq         $18, 0x50($29)
    /* EDB00 001ECB80 4000B17B */  lq         $17, 0x40($29)
    /* EDB04 001ECB84 3000B07B */  lq         $16, 0x30($29)
    /* EDB08 001ECB88 8000B4C7 */  lwc1       $f20, 0x80($29)
    /* EDB0C 001ECB8C 0800E003 */  jr         $31
    /* EDB10 001ECB90 9000BD27 */   addiu     $29, $29, 0x90
endlabel func_001ECAB8
    /* EDB14 001ECB94 00000000 */  nop
