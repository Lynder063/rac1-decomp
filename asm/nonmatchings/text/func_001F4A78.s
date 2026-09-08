.align 3
nonmatching func_001F4A78, 0x78

glabel func_001F4A78
    /* F59F8 001F4A78 C0FFBD27 */  addiu      $29, $29, -0x40
    /* F59FC 001F4A7C 1600023C */  lui        $2, %hi(D_0015F56C)
    /* F5A00 001F4A80 6CF5428C */  lw         $2, %lo(D_0015F56C)($2)
    /* F5A04 001F4A84 0000B07F */  sq         $16, 0x0($29)
    /* F5A08 001F4A88 3000BF7F */  sq         $31, 0x30($29)
    /* F5A0C 001F4A8C 2D800000 */  daddu      $16, $0, $0
    /* F5A10 001F4A90 2000B27F */  sq         $18, 0x20($29)
    /* F5A14 001F4A94 10004018 */  blez       $2, .L001F4AD8
    /* F5A18 001F4A98 1000B17F */   sq        $17, 0x10($29)
    /* F5A1C 001F4A9C 1900033C */  lui        $3, %hi(D_0018E040)
    /* F5A20 001F4AA0 1900023C */  lui        $2, %hi(D_0018E140)
    /* F5A24 001F4AA4 40E15224 */  addiu      $18, $2, %lo(D_0018E140)
    /* F5A28 001F4AA8 40E07124 */  addiu      $17, $3, %lo(D_0018E040)
    /* F5A2C 001F4AAC 0000238E */  lw         $3, 0x0($17)
.align 2
  .L001F4AB0:
    /* F5A30 001F4AB0 01001026 */  addiu      $16, $16, 0x1
    /* F5A34 001F4AB4 0000448E */  lw         $4, 0x0($18)
    /* F5A38 001F4AB8 04003126 */  addiu      $17, $17, 0x4
    /* F5A3C 001F4ABC 09F86000 */  jalr       $3
    /* F5A40 001F4AC0 04005226 */   addiu     $18, $18, 0x4
    /* F5A44 001F4AC4 1600023C */  lui        $2, %hi(D_0015F56C)
    /* F5A48 001F4AC8 6CF5428C */  lw         $2, %lo(D_0015F56C)($2)
    /* F5A4C 001F4ACC 2A100202 */  slt        $2, $16, $2
    /* F5A50 001F4AD0 F7FF4054 */  bnel       $2, $0, .L001F4AB0
    /* F5A54 001F4AD4 0000238E */   lw        $3, 0x0($17)
.align 2
  .L001F4AD8:
    /* F5A58 001F4AD8 3000BF7B */  lq         $31, 0x30($29)
    /* F5A5C 001F4ADC 2000B27B */  lq         $18, 0x20($29)
    /* F5A60 001F4AE0 1000B17B */  lq         $17, 0x10($29)
    /* F5A64 001F4AE4 0000B07B */  lq         $16, 0x0($29)
    /* F5A68 001F4AE8 0800E003 */  jr         $31
    /* F5A6C 001F4AEC 4000BD27 */   addiu     $29, $29, 0x40
endlabel func_001F4A78
