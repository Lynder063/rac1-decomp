.align 3
nonmatching func_0012C058, 0x44

glabel func_0012C058
    /* 2CFD8 0012C058 F0FFBD27 */  addiu      $29, $29, -0x10
    /* 2CFDC 0012C05C 2D388000 */  daddu      $7, $4, $0
    /* 2CFE0 0012C060 0000BFFF */  sd         $31, 0x0($29)
    /* 2CFE4 0012C064 03000324 */  addiu      $3, $0, 0x3
    /* 2CFE8 0012C068 4000E48C */  lw         $4, 0x40($7)
    /* 2CFEC 0012C06C 7401828C */  lw         $2, 0x174($4)
    /* 2CFF0 0012C070 05004310 */  beq        $2, $3, .L0012C088
    /* 2CFF4 0012C074 00000000 */   nop
    /* 2CFF8 0012C078 28B0040C */  jal        func_0012C0A0
    /* 2CFFC 0012C07C 2D20E000 */   daddu     $4, $7, $0
    /* 2D000 0012C080 04000010 */  b          .L0012C094
    /* 2D004 0012C084 0000BFDF */   ld        $31, 0x0($29)
.align 2
  .L0012C088:
    /* 2D008 0012C088 D0AF040C */  jal        func_0012BF40
    /* 2D00C 0012C08C 2D20E000 */   daddu     $4, $7, $0
    /* 2D010 0012C090 0000BFDF */  ld         $31, 0x0($29)
.align 2
  .L0012C094:
    /* 2D014 0012C094 0800E003 */  jr         $31
    /* 2D018 0012C098 1000BD27 */   addiu     $29, $29, 0x10
endlabel func_0012C058
    /* 2D01C 0012C09C 00000000 */  nop
