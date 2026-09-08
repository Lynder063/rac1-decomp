.align 3
nonmatching func_0022EE28, 0x8C

glabel func_0022EE28
    /* 12FDA8 0022EE28 D0FFBD27 */  addiu      $29, $29, -0x30
    /* 12FDAC 0022EE2C 1600023C */  lui        $2, %hi(D_0015F694)
    /* 12FDB0 0022EE30 94F6428C */  lw         $2, %lo(D_0015F694)($2)
    /* 12FDB4 0022EE34 0000B07F */  sq         $16, 0x0($29)
    /* 12FDB8 0022EE38 1000B17F */  sq         $17, 0x10($29)
    /* 12FDBC 0022EE3C 2D808000 */  daddu      $16, $4, $0
    /* 12FDC0 0022EE40 2000BF7F */  sq         $31, 0x20($29)
    /* 12FDC4 0022EE44 2A100202 */  slt        $2, $16, $2
    /* 12FDC8 0022EE48 03004014 */  bnez       $2, .L0022EE58
    /* 12FDCC 0022EE4C 2D88C000 */   daddu     $17, $6, $0
    /* 12FDD0 0022EE50 13000010 */  b          .L0022EEA0
    /* 12FDD4 0022EE54 FFFF0224 */   addiu     $2, $0, -0x1
.align 2
  .L0022EE58:
    /* 12FDD8 0022EE58 1600023C */  lui        $2, %hi(D_0015F714)
    /* 12FDDC 0022EE5C 14F7428C */  lw         $2, %lo(D_0015F714)($2)
    /* 12FDE0 0022EE60 40211000 */  sll        $4, $16, 5
    /* 12FDE4 0022EE64 2D302002 */  daddu      $6, $17, $0
    /* 12FDE8 0022EE68 2D380000 */  daddu      $7, $0, $0
    /* 12FDEC 0022EE6C 21204400 */  addu       $4, $2, $4
    /* 12FDF0 0022EE70 C2BA080C */  jal        func_0022EB08
    /* 12FDF4 0022EE74 00040824 */   addiu     $8, $0, 0x400
    /* 12FDF8 0022EE78 2D204000 */  daddu      $4, $2, $0
    /* 12FDFC 0022EE7C 07008004 */  bltz       $4, .L0022EE9C
    /* 12FE00 0022EE80 70000324 */   addiu     $3, $0, 0x70
    /* 12FE04 0022EE84 1400023C */  lui        $2, %hi(D_0013E650)
    /* 12FE08 0022EE88 18188300 */  mult       $3, $4, $3
    /* 12FE0C 0022EE8C 50E64224 */  addiu      $2, $2, %lo(D_0013E650)
    /* 12FE10 0022EE90 21186200 */  addu       $3, $3, $2
    /* 12FE14 0022EE94 7E0070A4 */  sh         $16, 0x7E($3)
    /* 12FE18 0022EE98 880071AC */  sw         $17, 0x88($3)
.align 2
  .L0022EE9C:
    /* 12FE1C 0022EE9C 2D108000 */  daddu      $2, $4, $0
.align 2
  .L0022EEA0:
    /* 12FE20 0022EEA0 2000BF7B */  lq         $31, 0x20($29)
    /* 12FE24 0022EEA4 1000B17B */  lq         $17, 0x10($29)
    /* 12FE28 0022EEA8 0000B07B */  lq         $16, 0x0($29)
    /* 12FE2C 0022EEAC 0800E003 */  jr         $31
    /* 12FE30 0022EEB0 3000BD27 */   addiu     $29, $29, 0x30
endlabel func_0022EE28
    /* 12FE34 0022EEB4 00000000 */  nop
