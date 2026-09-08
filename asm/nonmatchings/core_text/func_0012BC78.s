.align 3
nonmatching func_0012BC78, 0x50

glabel func_0012BC78
    /* 2CBF8 0012BC78 F0FFBD27 */  addiu      $29, $29, -0x10
    /* 2CBFC 0012BC7C 2D380000 */  daddu      $7, $0, $0
    /* 2CC00 0012BC80 0D008010 */  beqz       $4, .L0012BCB8
    /* 2CC04 0012BC84 0000BFFF */   sd        $31, 0x0($29)
    /* 2CC08 0012BC88 4000868C */  lw         $6, 0x40($4)
    /* 2CC0C 0012BC8C 0B00C010 */  beqz       $6, .L0012BCBC
    /* 2CC10 0012BC90 0000BFDF */   ld        $31, 0x0($29)
    /* 2CC14 0012BC94 0000A28C */  lw         $2, 0x0($5)
    /* 2CC18 0012BC98 C0100200 */  sll        $2, $2, 3
    /* 2CC1C 0012BC9C 2118C200 */  addu       $3, $6, $2
    /* 2CC20 0012BCA0 0C00638C */  lw         $3, 0xC($3)
    /* 2CC24 0012BCA4 05006010 */  beqz       $3, .L0012BCBC
    /* 2CC28 0012BCA8 2110C200 */   addu      $2, $6, $2
    /* 2CC2C 0012BCAC 09F86000 */  jalr       $3
    /* 2CC30 0012BCB0 1000468C */   lw        $6, 0x10($2)
    /* 2CC34 0012BCB4 2D384000 */  daddu      $7, $2, $0
.align 2
  .L0012BCB8:
    /* 2CC38 0012BCB8 0000BFDF */  ld         $31, 0x0($29)
.align 2
  .L0012BCBC:
    /* 2CC3C 0012BCBC 2D10E000 */  daddu      $2, $7, $0
    /* 2CC40 0012BCC0 0800E003 */  jr         $31
    /* 2CC44 0012BCC4 1000BD27 */   addiu     $29, $29, 0x10
endlabel func_0012BC78
