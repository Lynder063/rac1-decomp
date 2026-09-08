.align 3
nonmatching func_0022ED80, 0xA4

glabel func_0022ED80
    /* 12FD00 0022ED80 D0FFBD27 */  addiu      $29, $29, -0x30
    /* 12FD04 0022ED84 1000B17F */  sq         $17, 0x10($29)
    /* 12FD08 0022ED88 0000B07F */  sq         $16, 0x0($29)
    /* 12FD0C 0022ED8C 2D888000 */  daddu      $17, $4, $0
    /* 12FD10 0022ED90 2000BF7F */  sq         $31, 0x20($29)
    /* 12FD14 0022ED94 2D80C000 */  daddu      $16, $6, $0
    /* 12FD18 0022ED98 1D000012 */  beqz       $16, .L0022EE10
    /* 12FD1C 0022ED9C FFFF0224 */   addiu     $2, $0, -0x1
    /* 12FD20 0022EDA0 2400028E */  lw         $2, 0x24($16)
    /* 12FD24 0022EDA4 1A004050 */  beql       $2, $0, .L0022EE10
    /* 12FD28 0022EDA8 FFFF0224 */   addiu     $2, $0, -0x1
    /* 12FD2C 0022EDAC 2800438C */  lw         $3, 0x28($2)
    /* 12FD30 0022EDB0 03006054 */  bnel       $3, $0, .L0022EDC0
    /* 12FD34 0022EDB4 0D004290 */   lbu       $2, 0xD($2)
.align 2
  .L0022EDB8:
    /* 12FD38 0022EDB8 15000010 */  b          .L0022EE10
    /* 12FD3C 0022EDBC FFFF0224 */   addiu     $2, $0, -0x1
.align 2
  .L0022EDC0:
    /* 12FD40 0022EDC0 2A102202 */  slt        $2, $17, $2
    /* 12FD44 0022EDC4 00000000 */  nop
    /* 12FD48 0022EDC8 00000000 */  nop
    /* 12FD4C 0022EDCC FAFF4010 */  beqz       $2, .L0022EDB8
    /* 12FD50 0022EDD0 40211100 */   sll       $4, $17, 5
    /* 12FD54 0022EDD4 2D300002 */  daddu      $6, $16, $0
    /* 12FD58 0022EDD8 21206400 */  addu       $4, $3, $4
    /* 12FD5C 0022EDDC 2D380000 */  daddu      $7, $0, $0
    /* 12FD60 0022EDE0 C2BA080C */  jal        func_0022EB08
    /* 12FD64 0022EDE4 00040824 */   addiu     $8, $0, 0x400
    /* 12FD68 0022EDE8 2D204000 */  daddu      $4, $2, $0
    /* 12FD6C 0022EDEC 07008004 */  bltz       $4, .L0022EE0C
    /* 12FD70 0022EDF0 70000324 */   addiu     $3, $0, 0x70
    /* 12FD74 0022EDF4 1400023C */  lui        $2, %hi(D_0013E650)
    /* 12FD78 0022EDF8 18188300 */  mult       $3, $4, $3
    /* 12FD7C 0022EDFC 50E64224 */  addiu      $2, $2, %lo(D_0013E650)
    /* 12FD80 0022EE00 21186200 */  addu       $3, $3, $2
    /* 12FD84 0022EE04 7E0071A4 */  sh         $17, 0x7E($3)
    /* 12FD88 0022EE08 880070AC */  sw         $16, 0x88($3)
.align 2
  .L0022EE0C:
    /* 12FD8C 0022EE0C 2D108000 */  daddu      $2, $4, $0
.align 2
  .L0022EE10:
    /* 12FD90 0022EE10 2000BF7B */  lq         $31, 0x20($29)
    /* 12FD94 0022EE14 1000B17B */  lq         $17, 0x10($29)
    /* 12FD98 0022EE18 0000B07B */  lq         $16, 0x0($29)
    /* 12FD9C 0022EE1C 0800E003 */  jr         $31
    /* 12FDA0 0022EE20 3000BD27 */   addiu     $29, $29, 0x30
endlabel func_0022ED80
    /* 12FDA4 0022EE24 00000000 */  nop
