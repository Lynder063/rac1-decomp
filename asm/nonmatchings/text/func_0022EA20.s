.align 3
nonmatching func_0022EA20, 0x84

glabel func_0022EA20
    /* 12F9A0 0022EA20 C0FFBD27 */  addiu      $29, $29, -0x40
    /* 12F9A4 0022EA24 1400023C */  lui        $2, %hi(D_0013E650)
    /* 12F9A8 0022EA28 2000B27F */  sq         $18, 0x20($29)
    /* 12F9AC 0022EA2C 1000B17F */  sq         $17, 0x10($29)
    /* 12F9B0 0022EA30 2D900000 */  daddu      $18, $0, $0
    /* 12F9B4 0022EA34 0000B07F */  sq         $16, 0x0($29)
    /* 12F9B8 0022EA38 3000BF7F */  sq         $31, 0x30($29)
    /* 12F9BC 0022EA3C 50E65024 */  addiu      $16, $2, %lo(D_0013E650)
    /* 12F9C0 0022EA40 4400028E */  lw         $2, 0x44($16)
    /* 12F9C4 0022EA44 10004014 */  bnez       $2, .L0022EA88
    /* 12F9C8 0022EA48 2D888000 */   daddu     $17, $4, $0
    /* 12F9CC 0022EA4C 01000224 */  addiu      $2, $0, 0x1
    /* 12F9D0 0022EA50 2D200000 */  daddu      $4, $0, $0
    /* 12F9D4 0022EA54 CC83040C */  jal        func_00120F30
    /* 12F9D8 0022EA58 440002AE */   sw        $2, 0x44($16)
    /* 12F9DC 0022EA5C 2D280000 */  daddu      $5, $0, $0
    /* 12F9E0 0022EA60 18B8040C */  jal        func_0012E060
    /* 12F9E4 0022EA64 2D202002 */   daddu     $4, $17, $0
    /* 12F9E8 0022EA68 01000424 */  addiu      $4, $0, 0x1
    /* 12F9EC 0022EA6C 9CBB040C */  jal        func_0012EE70
    /* 12F9F0 0022EA70 2D904000 */   daddu     $18, $2, $0
    /* 12F9F4 0022EA74 D2BB040C */  jal        func_0012EF48
    /* 12F9F8 0022EA78 2D200000 */   daddu     $4, $0, $0
    /* 12F9FC 0022EA7C BAB8040C */  jal        func_0012E2E8
    /* 12FA00 0022EA80 00000000 */   nop
    /* 12FA04 0022EA84 440000AE */  sw         $0, 0x44($16)
.align 2
  .L0022EA88:
    /* 12FA08 0022EA88 2D104002 */  daddu      $2, $18, $0
    /* 12FA0C 0022EA8C 3000BF7B */  lq         $31, 0x30($29)
    /* 12FA10 0022EA90 2000B27B */  lq         $18, 0x20($29)
    /* 12FA14 0022EA94 1000B17B */  lq         $17, 0x10($29)
    /* 12FA18 0022EA98 0000B07B */  lq         $16, 0x0($29)
    /* 12FA1C 0022EA9C 0800E003 */  jr         $31
    /* 12FA20 0022EAA0 4000BD27 */   addiu     $29, $29, 0x40
endlabel func_0022EA20
    /* 12FA24 0022EAA4 00000000 */  nop
    /* 12FA28 0022EAA8 00000000 */  nop
    /* 12FA2C 0022EAAC 00000000 */  nop
