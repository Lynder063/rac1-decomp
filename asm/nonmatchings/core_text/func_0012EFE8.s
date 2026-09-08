.align 3
nonmatching func_0012EFE8, 0x44

glabel func_0012EFE8
    /* 2FF68 0012EFE8 F0FFBD27 */  addiu      $29, $29, -0x10
    /* 2FF6C 0012EFEC 8C80828F */  lw         $2, -0x7F74($28)
    /* 2FF70 0012EFF0 09004010 */  beqz       $2, .L0012F018
    /* 2FF74 0012EFF4 0000BF7F */   sq        $31, 0x0($29)
    /* 2FF78 0012EFF8 37000424 */  addiu      $4, $0, 0x37
    /* 2FF7C 0012EFFC 2D280000 */  daddu      $5, $0, $0
    /* 2FF80 0012F000 2D300000 */  daddu      $6, $0, $0
    /* 2FF84 0012F004 2D380000 */  daddu      $7, $0, $0
    /* 2FF88 0012F008 08BA040C */  jal        func_0012E820
    /* 2FF8C 0012F00C 2D400000 */   daddu     $8, $0, $0
    /* 2FF90 0012F010 03000010 */  b          .L0012F020
    /* 2FF94 0012F014 01000224 */   addiu     $2, $0, 0x1
.align 2
  .L0012F018:
    /* 2FF98 0012F018 7286040C */  jal        func_001219C8
    /* 2FF9C 0012F01C 00000000 */   nop
.align 2
  .L0012F020:
    /* 2FFA0 0012F020 0000BF7B */  lq         $31, 0x0($29)
    /* 2FFA4 0012F024 0800E003 */  jr         $31
    /* 2FFA8 0012F028 1000BD27 */   addiu     $29, $29, 0x10
endlabel func_0012EFE8
    /* 2FFAC 0012F02C 00000000 */  nop
