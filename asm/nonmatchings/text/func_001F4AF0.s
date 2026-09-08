.align 3
nonmatching func_001F4AF0, 0x78

glabel func_001F4AF0
    /* F5A70 001F4AF0 C0FFBD27 */  addiu      $29, $29, -0x40
    /* F5A74 001F4AF4 1600023C */  lui        $2, %hi(D_0015F570)
    /* F5A78 001F4AF8 70F5428C */  lw         $2, %lo(D_0015F570)($2)
    /* F5A7C 001F4AFC 0000B07F */  sq         $16, 0x0($29)
    /* F5A80 001F4B00 3000BF7F */  sq         $31, 0x30($29)
    /* F5A84 001F4B04 2D800000 */  daddu      $16, $0, $0
    /* F5A88 001F4B08 2000B27F */  sq         $18, 0x20($29)
    /* F5A8C 001F4B0C 10004018 */  blez       $2, .L001F4B50
    /* F5A90 001F4B10 1000B17F */   sq        $17, 0x10($29)
    /* F5A94 001F4B14 1900033C */  lui        $3, %hi(D_0018E240)
    /* F5A98 001F4B18 1900023C */  lui        $2, %hi(D_0018E340)
    /* F5A9C 001F4B1C 40E35224 */  addiu      $18, $2, %lo(D_0018E340)
    /* F5AA0 001F4B20 40E27124 */  addiu      $17, $3, %lo(D_0018E240)
    /* F5AA4 001F4B24 0000238E */  lw         $3, 0x0($17)
.align 2
  .L001F4B28:
    /* F5AA8 001F4B28 01001026 */  addiu      $16, $16, 0x1
    /* F5AAC 001F4B2C 0000448E */  lw         $4, 0x0($18)
    /* F5AB0 001F4B30 04003126 */  addiu      $17, $17, 0x4
    /* F5AB4 001F4B34 09F86000 */  jalr       $3
    /* F5AB8 001F4B38 04005226 */   addiu     $18, $18, 0x4
    /* F5ABC 001F4B3C 1600023C */  lui        $2, %hi(D_0015F570)
    /* F5AC0 001F4B40 70F5428C */  lw         $2, %lo(D_0015F570)($2)
    /* F5AC4 001F4B44 2A100202 */  slt        $2, $16, $2
    /* F5AC8 001F4B48 F7FF4054 */  bnel       $2, $0, .L001F4B28
    /* F5ACC 001F4B4C 0000238E */   lw        $3, 0x0($17)
.align 2
  .L001F4B50:
    /* F5AD0 001F4B50 3000BF7B */  lq         $31, 0x30($29)
    /* F5AD4 001F4B54 2000B27B */  lq         $18, 0x20($29)
    /* F5AD8 001F4B58 1000B17B */  lq         $17, 0x10($29)
    /* F5ADC 001F4B5C 0000B07B */  lq         $16, 0x0($29)
    /* F5AE0 001F4B60 0800E003 */  jr         $31
    /* F5AE4 001F4B64 4000BD27 */   addiu     $29, $29, 0x40
endlabel func_001F4AF0
