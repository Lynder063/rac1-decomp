.align 3
nonmatching func_0012EE98, 0xB0

glabel func_0012EE98
    /* 2FE18 0012EE98 A0FFBD27 */  addiu      $29, $29, -0x60
    /* 2FE1C 0012EE9C 8C80828F */  lw         $2, -0x7F74($28)
    /* 2FE20 0012EEA0 4000B37F */  sq         $19, 0x40($29)
    /* 2FE24 0012EEA4 3000B27F */  sq         $18, 0x30($29)
    /* 2FE28 0012EEA8 2D98C000 */  daddu      $19, $6, $0
    /* 2FE2C 0012EEAC 1000B07F */  sq         $16, 0x10($29)
    /* 2FE30 0012EEB0 2D90A000 */  daddu      $18, $5, $0
    /* 2FE34 0012EEB4 5000BF7F */  sq         $31, 0x50($29)
    /* 2FE38 0012EEB8 2D808000 */  daddu      $16, $4, $0
    /* 2FE3C 0012EEBC 05004014 */  bnez       $2, .L0012EED4
    /* 2FE40 0012EEC0 2000B17F */   sq        $17, 0x20($29)
    /* 2FE44 0012EEC4 D485040C */  jal        func_00121750
    /* 2FE48 0012EEC8 00000000 */   nop
    /* 2FE4C 0012EECC 18000010 */  b          .L0012EF30
    /* 2FE50 0012EED0 5000BF7B */   lq        $31, 0x50($29)
.align 2
  .L0012EED4:
    /* 2FE54 0012EED4 01000424 */  addiu      $4, $0, 0x1
    /* 2FE58 0012EED8 D2BB040C */  jal        func_0012EF48
    /* 2FE5C 0012EEDC 01001124 */   addiu     $17, $0, 0x1
    /* 2FE60 0012EEE0 11005110 */  beq        $2, $17, .L0012EF28
    /* 2FE64 0012EEE4 1300023C */   lui       $2, %hi(D_00137C00)
    /* 2FE68 0012EEE8 0000B0AF */  sw         $16, 0x0($29)
    /* 2FE6C 0012EEEC 007C51AC */  sw         $17, %lo(D_00137C00)($2)
    /* 2FE70 0012EEF0 38000424 */  addiu      $4, $0, 0x38
    /* 2FE74 0012EEF4 007C4224 */  addiu      $2, $2, %lo(D_00137C00)
    /* 2FE78 0012EEF8 0C000524 */  addiu      $5, $0, 0xC
    /* 2FE7C 0012EEFC 100040AC */  sw         $0, 0x10($2)
    /* 2FE80 0012EF00 2D30A003 */  daddu      $6, $29, $0
    /* 2FE84 0012EF04 0400B2AF */  sw         $18, 0x4($29)
    /* 2FE88 0012EF08 2D380000 */  daddu      $7, $0, $0
    /* 2FE8C 0012EF0C 0800B3AF */  sw         $19, 0x8($29)
    /* 2FE90 0012EF10 08BA040C */  jal        func_0012E820
    /* 2FE94 0012EF14 2D400000 */   daddu     $8, $0, $0
    /* 2FE98 0012EF18 948091AF */  sw         $17, -0x7F6C($28)
    /* 2FE9C 0012EF1C 01000224 */  addiu      $2, $0, 0x1
    /* 2FEA0 0012EF20 02000010 */  b          .L0012EF2C
    /* 2FEA4 0012EF24 988080AF */   sw        $0, -0x7F68($28)
.align 2
  .L0012EF28:
    /* 2FEA8 0012EF28 2D100000 */  daddu      $2, $0, $0
.align 2
  .L0012EF2C:
    /* 2FEAC 0012EF2C 5000BF7B */  lq         $31, 0x50($29)
.align 2
  .L0012EF30:
    /* 2FEB0 0012EF30 4000B37B */  lq         $19, 0x40($29)
    /* 2FEB4 0012EF34 3000B27B */  lq         $18, 0x30($29)
    /* 2FEB8 0012EF38 2000B17B */  lq         $17, 0x20($29)
    /* 2FEBC 0012EF3C 1000B07B */  lq         $16, 0x10($29)
    /* 2FEC0 0012EF40 0800E003 */  jr         $31
    /* 2FEC4 0012EF44 6000BD27 */   addiu     $29, $29, 0x60
endlabel func_0012EE98
