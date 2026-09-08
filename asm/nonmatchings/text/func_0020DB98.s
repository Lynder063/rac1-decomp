.align 3
nonmatching func_0020DB98, 0xA0

glabel func_0020DB98
    /* 10EB18 0020DB98 B0FFBD27 */  addiu      $29, $29, -0x50
    /* 10EB1C 0020DB9C 803A013C */  lui        $1, (0x3A800000 >> 16)
    /* 10EB20 0020DBA0 00088144 */  mtc1       $1, $f1
    /* 10EB24 0020DBA4 2000B27F */  sq         $18, 0x20($29)
    /* 10EB28 0020DBA8 1000B17F */  sq         $17, 0x10($29)
    /* 10EB2C 0020DBAC 2D908000 */  daddu      $18, $4, $0
    /* 10EB30 0020DBB0 0000B07F */  sq         $16, 0x0($29)
    /* 10EB34 0020DBB4 2D88A000 */  daddu      $17, $5, $0
    /* 10EB38 0020DBB8 4000B4E7 */  swc1       $f20, 0x40($29)
    /* 10EB3C 0020DBBC 2D80E000 */  daddu      $16, $7, $0
    /* 10EB40 0020DBC0 3000BF7F */  sq         $31, 0x30($29)
    /* 10EB44 0020DBC4 2C0040C6 */  lwc1       $f0, 0x2C($18)
    /* 10EB48 0020DBC8 5245080C */  jal        func_00211548
    /* 10EB4C 0020DBCC 02050146 */   mul.s     $f20, $f0, $f1
    /* 10EB50 0020DBD0 1300201A */  blez       $17, .L0020DC20
    /* 10EB54 0020DBD4 3000BF7B */   lq        $31, 0x30($29)
    /* 10EB58 0020DBD8 2D200002 */  daddu      $4, $16, $0
    /* 10EB5C 0020DBDC 00000000 */  nop
.align 2
  .L0020DBE0:
    /* 10EB60 0020DBE0 2D280002 */  daddu      $5, $16, $0
    /* 10EB64 0020DBE4 06A30046 */  mov.s      $f12, $f20
    /* 10EB68 0020DBE8 0CE7070C */  jal        func_001F9C30
    /* 10EB6C 0020DBEC FFFF3126 */   addiu     $17, $17, -0x1
    /* 10EB70 0020DBF0 2D200002 */  daddu      $4, $16, $0
    /* 10EB74 0020DBF4 2D280002 */  daddu      $5, $16, $0
    /* 10EB78 0020DBF8 B0E7070C */  jal        func_001F9EC0
    /* 10EB7C 0020DBFC C0004626 */   addiu     $6, $18, 0xC0
    /* 10EB80 0020DC00 2D200002 */  daddu      $4, $16, $0
    /* 10EB84 0020DC04 2D280002 */  daddu      $5, $16, $0
    /* 10EB88 0020DC08 10004626 */  addiu      $6, $18, 0x10
    /* 10EB8C 0020DC0C F6E6070C */  jal        func_001F9BD8
    /* 10EB90 0020DC10 10001026 */   addiu     $16, $16, 0x10
    /* 10EB94 0020DC14 F2FF2016 */  bnez       $17, .L0020DBE0
    /* 10EB98 0020DC18 2D200002 */   daddu     $4, $16, $0
    /* 10EB9C 0020DC1C 3000BF7B */  lq         $31, 0x30($29)
.align 2
  .L0020DC20:
    /* 10EBA0 0020DC20 2000B27B */  lq         $18, 0x20($29)
    /* 10EBA4 0020DC24 1000B17B */  lq         $17, 0x10($29)
    /* 10EBA8 0020DC28 0000B07B */  lq         $16, 0x0($29)
    /* 10EBAC 0020DC2C 4000B4C7 */  lwc1       $f20, 0x40($29)
    /* 10EBB0 0020DC30 0800E003 */  jr         $31
    /* 10EBB4 0020DC34 5000BD27 */   addiu     $29, $29, 0x50
endlabel func_0020DB98
