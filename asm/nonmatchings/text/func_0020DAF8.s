.align 3
nonmatching func_0020DAF8, 0xA0

glabel func_0020DAF8
    /* 10EA78 0020DAF8 60FFBD27 */  addiu      $29, $29, -0xA0
    /* 10EA7C 0020DAFC 803A013C */  lui        $1, (0x3A800000 >> 16)
    /* 10EA80 0020DB00 00008144 */  mtc1       $1, $f0
    /* 10EA84 0020DB04 8000BF7F */  sq         $31, 0x80($29)
    /* 10EA88 0020DB08 7000B27F */  sq         $18, 0x70($29)
    /* 10EA8C 0020DB0C 6000B17F */  sq         $17, 0x60($29)
    /* 10EA90 0020DB10 2D908000 */  daddu      $18, $4, $0
    /* 10EA94 0020DB14 5000B07F */  sq         $16, 0x50($29)
    /* 10EA98 0020DB18 2D88C000 */  daddu      $17, $6, $0
    /* 10EA9C 0020DB1C 9000B4E7 */  swc1       $f20, 0x90($29)
    /* 10EAA0 0020DB20 2D382002 */  daddu      $7, $17, $0
    /* 10EAA4 0020DB24 2C0054C6 */  lwc1       $f20, 0x2C($18)
    /* 10EAA8 0020DB28 4000A627 */  addiu      $6, $29, 0x40
    /* 10EAAC 0020DB2C 4000A5AF */  sw         $5, 0x40($29)
    /* 10EAB0 0020DB30 02A50046 */  mul.s      $f20, $f20, $f0
    /* 10EAB4 0020DB34 A845080C */  jal        func_002116A0
    /* 10EAB8 0020DB38 01000524 */   addiu     $5, $0, 0x1
    /* 10EABC 0020DB3C 30003026 */  addiu      $16, $17, 0x30
    /* 10EAC0 0020DB40 2D200002 */  daddu      $4, $16, $0
    /* 10EAC4 0020DB44 2D280002 */  daddu      $5, $16, $0
    /* 10EAC8 0020DB48 0CE7070C */  jal        func_001F9C30
    /* 10EACC 0020DB4C 06A30046 */   mov.s     $f12, $f20
    /* 10EAD0 0020DB50 2D20A003 */  daddu      $4, $29, $0
    /* 10EAD4 0020DB54 18E9070C */  jal        func_001FA460
    /* 10EAD8 0020DB58 C0004526 */   addiu     $5, $18, 0xC0
    /* 10EADC 0020DB5C 2D202002 */  daddu      $4, $17, $0
    /* 10EAE0 0020DB60 2D28A003 */  daddu      $5, $29, $0
    /* 10EAE4 0020DB64 50E9070C */  jal        func_001FA540
    /* 10EAE8 0020DB68 2D308000 */   daddu     $6, $4, $0
    /* 10EAEC 0020DB6C 2D200002 */  daddu      $4, $16, $0
    /* 10EAF0 0020DB70 10004626 */  addiu      $6, $18, 0x10
    /* 10EAF4 0020DB74 F6E6070C */  jal        func_001F9BD8
    /* 10EAF8 0020DB78 2D288000 */   daddu     $5, $4, $0
    /* 10EAFC 0020DB7C 8000BF7B */  lq         $31, 0x80($29)
    /* 10EB00 0020DB80 7000B27B */  lq         $18, 0x70($29)
    /* 10EB04 0020DB84 6000B17B */  lq         $17, 0x60($29)
    /* 10EB08 0020DB88 5000B07B */  lq         $16, 0x50($29)
    /* 10EB0C 0020DB8C 9000B4C7 */  lwc1       $f20, 0x90($29)
    /* 10EB10 0020DB90 0800E003 */  jr         $31
    /* 10EB14 0020DB94 A000BD27 */   addiu     $29, $29, 0xA0
endlabel func_0020DAF8
