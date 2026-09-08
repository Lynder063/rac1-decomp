.align 3
/* Handwritten function */
nonmatching func_0011AC48, 0x128

glabel func_0011AC48
    /* 1BBC8 0011AC48 70FFBD27 */  addiu      $29, $29, -0x90
    /* 1BBCC 0011AC4C 7000B0FF */  sd         $16, 0x70($29)
    /* 1BBD0 0011AC50 8000BFFF */  sd         $31, 0x80($29)
    /* 1BBD4 0011AC54 6A76040C */  jal        func_0011D9A8
    /* 1BBD8 0011AC58 00000000 */   nop
    /* 1BBDC 0011AC5C 1500033C */  lui        $3, %hi(D_00154F58)
    /* 1BBE0 0011AC60 584F678C */  lw         $7, %lo(D_00154F58)($3)
    /* 1BBE4 0011AC64 584F7024 */  addiu      $16, $3, %lo(D_00154F58)
    /* 1BBE8 0011AC68 0000E290 */  lbu        $2, 0x0($7)
    /* 1BBEC 0011AC6C FF004530 */  andi       $5, $2, 0xFF
    /* 1BBF0 0011AC70 3B00A010 */  beqz       $5, .L0011AD60
    /* 1BBF4 0011AC74 2D100000 */   daddu     $2, $0, $0
    /* 1BBF8 0011AC78 0F00A224 */  addiu      $2, $5, 0xF
    /* 1BBFC 0011AC7C FFFF0324 */  addiu      $3, $0, -0x1
    /* 1BC00 0011AC80 1E00A424 */  addiu      $4, $5, 0x1E
    /* 1BC04 0011AC84 2A186200 */  slt        $3, $3, $2
    /* 1BC08 0011AC88 0B204300 */  movn       $4, $2, $3
    /* 1BC0C 0011AC8C 2D30E000 */  daddu      $6, $7, $0
    /* 1BC10 0011AC90 03290400 */  sra        $5, $4, 4
    /* 1BC14 0011AC94 0000E0A0 */  sb         $0, 0x0($7)
    /* 1BC18 0011AC98 0A00A018 */  blez       $5, .L0011ACC4
    /* 1BC1C 0011AC9C 2D20A000 */   daddu     $4, $5, $0
    /* 1BC20 0011ACA0 2D18A003 */  daddu      $3, $29, $0
    /* 1BC24 0011ACA4 00000000 */  nop
.align 2
  .L0011ACA8:
    /* 1BC28 0011ACA8 0000C278 */  lq         $2, 0x0($6)
    /* 1BC2C 0011ACAC FFFF8424 */  addiu      $4, $4, -0x1
    /* 1BC30 0011ACB0 1000C624 */  addiu      $6, $6, 0x10
    /* 1BC34 0011ACB4 0000627C */  sq         $2, 0x0($3)
    /* 1BC38 0011ACB8 10006324 */  addiu      $3, $3, 0x10
    /* 1BC3C 0011ACBC FAFF8014 */  bnez       $4, .L0011ACA8
    /* 1BC40 0011ACC0 00000000 */   nop
.align 2
  .L0011ACC4:
    /* 1BC44 0011ACC4 9463040C */  jal        func_00118E50
    /* 1BC48 0011ACC8 00000000 */   nop
    /* 1BC4C 0011ACCC 0800A38F */  lw         $3, 0x8($29)
    /* 1BC50 0011ACD0 13006104 */  bgez       $3, .L0011AD20
    /* 1BC54 0011ACD4 00000000 */   nop
    /* 1BC58 0011ACD8 0800A28F */  lw         $2, 0x8($29)
    /* 1BC5C 0011ACDC FF7F033C */  lui        $3, (0x7FFFFFFF >> 16)
    /* 1BC60 0011ACE0 FFFF6334 */  ori        $3, $3, (0x7FFFFFFF & 0xFFFF)
    /* 1BC64 0011ACE4 1000048E */  lw         $4, 0x10($16)
    /* 1BC68 0011ACE8 24284300 */  and        $5, $2, $3
    /* 1BC6C 0011ACEC 2A20A400 */  slt        $4, $5, $4
    /* 1BC70 0011ACF0 18008010 */  beqz       $4, .L0011AD54
    /* 1BC74 0011ACF4 C0100500 */   sll       $2, $5, 3
    /* 1BC78 0011ACF8 0C00038E */  lw         $3, 0xC($16)
    /* 1BC7C 0011ACFC 21104300 */  addu       $2, $2, $3
    /* 1BC80 0011AD00 0000468C */  lw         $6, 0x0($2)
    /* 1BC84 0011AD04 1300C010 */  beqz       $6, .L0011AD54
    /* 1BC88 0011AD08 00000000 */   nop
    /* 1BC8C 0011AD0C 0400458C */  lw         $5, 0x4($2)
    /* 1BC90 0011AD10 09F8C000 */  jalr       $6
    /* 1BC94 0011AD14 2D20A003 */   daddu     $4, $29, $0
    /* 1BC98 0011AD18 0E000010 */  b          .L0011AD54
    /* 1BC9C 0011AD1C 00000000 */   nop
.align 2
  .L0011AD20:
    /* 1BCA0 0011AD20 0800A58F */  lw         $5, 0x8($29)
    /* 1BCA4 0011AD24 1800028E */  lw         $2, 0x18($16)
    /* 1BCA8 0011AD28 2A10A200 */  slt        $2, $5, $2
    /* 1BCAC 0011AD2C 09004010 */  beqz       $2, .L0011AD54
    /* 1BCB0 0011AD30 C0100500 */   sll       $2, $5, 3
    /* 1BCB4 0011AD34 1400038E */  lw         $3, 0x14($16)
    /* 1BCB8 0011AD38 21104300 */  addu       $2, $2, $3
    /* 1BCBC 0011AD3C 0000468C */  lw         $6, 0x0($2)
    /* 1BCC0 0011AD40 0400C010 */  beqz       $6, .L0011AD54
    /* 1BCC4 0011AD44 00000000 */   nop
    /* 1BCC8 0011AD48 0400458C */  lw         $5, 0x4($2)
    /* 1BCCC 0011AD4C 09F8C000 */  jalr       $6
    /* 1BCD0 0011AD50 2D20A003 */   daddu     $4, $29, $0
.align 2
  .L0011AD54:
    /* 1BCD4 0011AD54 0F000000 */  sync
    /* 1BCD8 0011AD58 38000042 */  ei /* handwritten instruction */
    /* 1BCDC 0011AD5C 2D100000 */  daddu      $2, $0, $0
.align 2
  .L0011AD60:
    /* 1BCE0 0011AD60 8000BFDF */  ld         $31, 0x80($29)
    /* 1BCE4 0011AD64 7000B0DF */  ld         $16, 0x70($29)
    /* 1BCE8 0011AD68 0800E003 */  jr         $31
    /* 1BCEC 0011AD6C 9000BD27 */   addiu     $29, $29, 0x90
endlabel func_0011AC48
