.align 3
nonmatching func_0011DCB8, 0xAC

glabel func_0011DCB8
    /* 1EC38 0011DCB8 C0FFBD27 */  addiu      $29, $29, -0x40
    /* 1EC3C 0011DCBC 3000BFFF */  sd         $31, 0x30($29)
    /* 1EC40 0011DCC0 2000B2FF */  sd         $18, 0x20($29)
    /* 1EC44 0011DCC4 1000B1FF */  sd         $17, 0x10($29)
    /* 1EC48 0011DCC8 1477040C */  jal        func_0011DC50
    /* 1EC4C 0011DCCC 0000B0FF */   sd        $16, 0x0($29)
    /* 1EC50 0011DCD0 1E004010 */  beqz       $2, .L0011DD4C
    /* 1EC54 0011DCD4 1300023C */   lui       $2, %hi(D_00130BD0)
    /* 1EC58 0011DCD8 02001224 */  addiu      $18, $0, 0x2
    /* 1EC5C 0011DCDC D00B5024 */  addiu      $16, $2, %lo(D_00130BD0)
    /* 1EC60 0011DCE0 D00B448C */  lw         $4, %lo(D_00130BD0)($2)
    /* 1EC64 0011DCE4 0400058E */  lw         $5, 0x4($16)
    /* 1EC68 0011DCE8 FA76040C */  jal        func_0011DBE8
    /* 1EC6C 0011DCEC 10001126 */   addiu     $17, $16, 0x10
    /* 1EC70 0011DCF0 1300053C */  lui        $5, %hi(D_00130428)
    /* 1EC74 0011DCF4 0780043C */  lui        $4, (0x80074000 >> 16)
    /* 1EC78 0011DCF8 A8070624 */  addiu      $6, $0, 0x7A8
    /* 1EC7C 0011DCFC 2804A524 */  addiu      $5, $5, %lo(D_00130428)
    /* 1EC80 0011DD00 FE76040C */  jal        func_0011DBF8
    /* 1EC84 0011DD04 00408434 */   ori       $4, $4, (0x80074000 & 0xFFFF)
    /* 1EC88 0011DD08 6063040C */  jal        func_00118D80
    /* 1EC8C 0011DD0C 2D200000 */   daddu     $4, $0, $0
    /* 1EC90 0011DD10 6063040C */  jal        func_00118D80
    /* 1EC94 0011DD14 02000424 */   addiu     $4, $0, 0x2
    /* 1EC98 0011DD18 0800048E */  lw         $4, 0x8($16)
    /* 1EC9C 0011DD1C FA76040C */  jal        func_0011DBE8
    /* 1ECA0 0011DD20 0C00058E */   lw        $5, 0xC($16)
    /* 1ECA4 0011DD24 0000248E */  lw         $4, 0x0($17)
.align 2
  .L0011DD28:
    /* 1ECA8 0011DD28 1077040C */  jal        func_0011DC40
    /* 1ECAC 0011DD2C 01005226 */   addiu     $18, $18, 0x1
    /* 1ECB0 0011DD30 0000248E */  lw         $4, 0x0($17)
    /* 1ECB4 0011DD34 2D284000 */  daddu      $5, $2, $0
    /* 1ECB8 0011DD38 FA76040C */  jal        func_0011DBE8
    /* 1ECBC 0011DD3C 08003126 */   addiu     $17, $17, 0x8
    /* 1ECC0 0011DD40 0300422E */  sltiu      $2, $18, 0x3
    /* 1ECC4 0011DD44 F8FF4054 */  bnel       $2, $0, .L0011DD28
    /* 1ECC8 0011DD48 0000248E */   lw        $4, 0x0($17)
.align 2
  .L0011DD4C:
    /* 1ECCC 0011DD4C 3000BFDF */  ld         $31, 0x30($29)
    /* 1ECD0 0011DD50 2000B2DF */  ld         $18, 0x20($29)
    /* 1ECD4 0011DD54 1000B1DF */  ld         $17, 0x10($29)
    /* 1ECD8 0011DD58 0000B0DF */  ld         $16, 0x0($29)
    /* 1ECDC 0011DD5C 0800E003 */  jr         $31
    /* 1ECE0 0011DD60 4000BD27 */   addiu     $29, $29, 0x40
endlabel func_0011DCB8
