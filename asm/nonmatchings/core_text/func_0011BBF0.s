.align 3
nonmatching func_0011BBF0, 0x4C

glabel func_0011BBF0
    /* 1CB70 0011BBF0 C0FFBD27 */  addiu      $29, $29, -0x40
    /* 1CB74 0011BBF4 FFFF0324 */  addiu      $3, $0, -0x1
    /* 1CB78 0011BBF8 2000B0FF */  sd         $16, 0x20($29)
    /* 1CB7C 0011BBFC 1300103C */  lui        $16, %hi(D_0012FD9C)
    /* 1CB80 0011BC00 3000BFFF */  sd         $31, 0x30($29)
    /* 1CB84 0011BC04 9CFD028E */  lw         $2, %lo(D_0012FD9C)($16)
    /* 1CB88 0011BC08 09004314 */  bne        $2, $3, .L0011BC30
    /* 1CB8C 0011BC0C 3000BFDF */   ld        $31, 0x30($29)
    /* 1CB90 0011BC10 01000224 */  addiu      $2, $0, 0x1
    /* 1CB94 0011BC14 1400A0AF */  sw         $0, 0x14($29)
    /* 1CB98 0011BC18 0400A2AF */  sw         $2, 0x4($29)
    /* 1CB9C 0011BC1C 2D20A003 */  daddu      $4, $29, $0
    /* 1CBA0 0011BC20 1C63040C */  jal        func_00118C70
    /* 1CBA4 0011BC24 0800A2AF */   sw        $2, 0x8($29)
    /* 1CBA8 0011BC28 9CFD02AE */  sw         $2, %lo(D_0012FD9C)($16)
    /* 1CBAC 0011BC2C 3000BFDF */  ld         $31, 0x30($29)
.align 2
  .L0011BC30:
    /* 1CBB0 0011BC30 2000B0DF */  ld         $16, 0x20($29)
    /* 1CBB4 0011BC34 0800E003 */  jr         $31
    /* 1CBB8 0011BC38 4000BD27 */   addiu     $29, $29, 0x40
endlabel func_0011BBF0
    /* 1CBBC 0011BC3C 00000000 */  nop
