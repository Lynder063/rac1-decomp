.align 3
nonmatching func_0022EEB8, 0x94

glabel func_0022EEB8
    /* 12FE38 0022EEB8 D0FFBD27 */  addiu      $29, $29, -0x30
    /* 12FE3C 0022EEBC 1600033C */  lui        $3, %hi(D_0015F694)
    /* 12FE40 0022EEC0 94F6638C */  lw         $3, %lo(D_0015F694)($3)
    /* 12FE44 0022EEC4 0000B07F */  sq         $16, 0x0($29)
    /* 12FE48 0022EEC8 1600023C */  lui        $2, %hi(D_0015F710)
    /* 12FE4C 0022EECC 10F7428C */  lw         $2, %lo(D_0015F710)($2)
    /* 12FE50 0022EED0 21808300 */  addu       $16, $4, $3
    /* 12FE54 0022EED4 1000B17F */  sq         $17, 0x10($29)
    /* 12FE58 0022EED8 2000BF7F */  sq         $31, 0x20($29)
    /* 12FE5C 0022EEDC 2A100202 */  slt        $2, $16, $2
    /* 12FE60 0022EEE0 03004014 */  bnez       $2, .L0022EEF0
    /* 12FE64 0022EEE4 2D88C000 */   daddu     $17, $6, $0
    /* 12FE68 0022EEE8 13000010 */  b          .L0022EF38
    /* 12FE6C 0022EEEC FFFF0224 */   addiu     $2, $0, -0x1
.align 2
  .L0022EEF0:
    /* 12FE70 0022EEF0 1600023C */  lui        $2, %hi(D_0015F714)
    /* 12FE74 0022EEF4 14F7428C */  lw         $2, %lo(D_0015F714)($2)
    /* 12FE78 0022EEF8 40211000 */  sll        $4, $16, 5
    /* 12FE7C 0022EEFC 2D302002 */  daddu      $6, $17, $0
    /* 12FE80 0022EF00 2D380000 */  daddu      $7, $0, $0
    /* 12FE84 0022EF04 21204400 */  addu       $4, $2, $4
    /* 12FE88 0022EF08 C2BA080C */  jal        func_0022EB08
    /* 12FE8C 0022EF0C 00040824 */   addiu     $8, $0, 0x400
    /* 12FE90 0022EF10 2D204000 */  daddu      $4, $2, $0
    /* 12FE94 0022EF14 07008004 */  bltz       $4, .L0022EF34
    /* 12FE98 0022EF18 70000324 */   addiu     $3, $0, 0x70
    /* 12FE9C 0022EF1C 1400023C */  lui        $2, %hi(D_0013E650)
    /* 12FEA0 0022EF20 18188300 */  mult       $3, $4, $3
    /* 12FEA4 0022EF24 50E64224 */  addiu      $2, $2, %lo(D_0013E650)
    /* 12FEA8 0022EF28 21186200 */  addu       $3, $3, $2
    /* 12FEAC 0022EF2C 7E0070A4 */  sh         $16, 0x7E($3)
    /* 12FEB0 0022EF30 880071AC */  sw         $17, 0x88($3)
.align 2
  .L0022EF34:
    /* 12FEB4 0022EF34 2D108000 */  daddu      $2, $4, $0
.align 2
  .L0022EF38:
    /* 12FEB8 0022EF38 2000BF7B */  lq         $31, 0x20($29)
    /* 12FEBC 0022EF3C 1000B17B */  lq         $17, 0x10($29)
    /* 12FEC0 0022EF40 0000B07B */  lq         $16, 0x0($29)
    /* 12FEC4 0022EF44 0800E003 */  jr         $31
    /* 12FEC8 0022EF48 3000BD27 */   addiu     $29, $29, 0x30
endlabel func_0022EEB8
    /* 12FECC 0022EF4C 00000000 */  nop
