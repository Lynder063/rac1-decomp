.align 3
nonmatching func_001F4BB8, 0x78

glabel func_001F4BB8
    /* F5B38 001F4BB8 C0FFBD27 */  addiu      $29, $29, -0x40
    /* F5B3C 001F4BBC 1600023C */  lui        $2, %hi(D_0015F568)
    /* F5B40 001F4BC0 68F5428C */  lw         $2, %lo(D_0015F568)($2)
    /* F5B44 001F4BC4 0000B07F */  sq         $16, 0x0($29)
    /* F5B48 001F4BC8 3000BF7F */  sq         $31, 0x30($29)
    /* F5B4C 001F4BCC 2D800000 */  daddu      $16, $0, $0
    /* F5B50 001F4BD0 2000B27F */  sq         $18, 0x20($29)
    /* F5B54 001F4BD4 10004018 */  blez       $2, .L001F4C18
    /* F5B58 001F4BD8 1000B17F */   sq        $17, 0x10($29)
    /* F5B5C 001F4BDC 1900033C */  lui        $3, %hi(D_0018DE40)
    /* F5B60 001F4BE0 1900023C */  lui        $2, %hi(D_0018DF40)
    /* F5B64 001F4BE4 40DF5224 */  addiu      $18, $2, %lo(D_0018DF40)
    /* F5B68 001F4BE8 40DE7124 */  addiu      $17, $3, %lo(D_0018DE40)
    /* F5B6C 001F4BEC 0000238E */  lw         $3, 0x0($17)
.align 2
  .L001F4BF0:
    /* F5B70 001F4BF0 01001026 */  addiu      $16, $16, 0x1
    /* F5B74 001F4BF4 0000448E */  lw         $4, 0x0($18)
    /* F5B78 001F4BF8 04003126 */  addiu      $17, $17, 0x4
    /* F5B7C 001F4BFC 09F86000 */  jalr       $3
    /* F5B80 001F4C00 04005226 */   addiu     $18, $18, 0x4
    /* F5B84 001F4C04 1600023C */  lui        $2, %hi(D_0015F568)
    /* F5B88 001F4C08 68F5428C */  lw         $2, %lo(D_0015F568)($2)
    /* F5B8C 001F4C0C 2A100202 */  slt        $2, $16, $2
    /* F5B90 001F4C10 F7FF4054 */  bnel       $2, $0, .L001F4BF0
    /* F5B94 001F4C14 0000238E */   lw        $3, 0x0($17)
.align 2
  .L001F4C18:
    /* F5B98 001F4C18 3000BF7B */  lq         $31, 0x30($29)
    /* F5B9C 001F4C1C 2000B27B */  lq         $18, 0x20($29)
    /* F5BA0 001F4C20 1000B17B */  lq         $17, 0x10($29)
    /* F5BA4 001F4C24 0000B07B */  lq         $16, 0x0($29)
    /* F5BA8 001F4C28 0800E003 */  jr         $31
    /* F5BAC 001F4C2C 4000BD27 */   addiu     $29, $29, 0x40
endlabel func_001F4BB8
