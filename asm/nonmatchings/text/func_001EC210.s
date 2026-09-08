.align 3
nonmatching func_001EC210, 0x60

glabel func_001EC210
    /* ED190 001EC210 E0FFBD27 */  addiu      $29, $29, -0x20
    /* ED194 001EC214 1800023C */  lui        $2, %hi(D_001871D0)
    /* ED198 001EC218 0000B07F */  sq         $16, 0x0($29)
    /* ED19C 001EC21C 1000BF7F */  sq         $31, 0x10($29)
    /* ED1A0 001EC220 86008384 */  lh         $3, 0x86($4)
    /* ED1A4 001EC224 08006014 */  bnez       $3, .L001EC248
    /* ED1A8 001EC228 D0715024 */   addiu     $16, $2, %lo(D_001871D0)
    /* ED1AC 001EC22C C400028E */  lw         $2, 0xC4($16)
    /* ED1B0 001EC230 0C004014 */  bnez       $2, .L001EC264
    /* ED1B4 001EC234 1000BF7B */   lq        $31, 0x10($29)
    /* ED1B8 001EC238 F2A5070C */  jal        func_001E97C8
    /* ED1BC 001EC23C B0FF0426 */   addiu     $4, $16, -0x50
    /* ED1C0 001EC240 07000010 */  b          .L001EC260
    /* ED1C4 001EC244 C40002AE */   sw        $2, 0xC4($16)
.align 2
  .L001EC248:
    /* ED1C8 001EC248 C400048E */  lw         $4, 0xC4($16)
    /* ED1CC 001EC24C 05008010 */  beqz       $4, .L001EC264
    /* ED1D0 001EC250 1000BF7B */   lq        $31, 0x10($29)
    /* ED1D4 001EC254 9E35080C */  jal        func_0020D678
    /* ED1D8 001EC258 00000000 */   nop
    /* ED1DC 001EC25C C40000AE */  sw         $0, 0xC4($16)
.align 2
  .L001EC260:
    /* ED1E0 001EC260 1000BF7B */  lq         $31, 0x10($29)
.align 2
  .L001EC264:
    /* ED1E4 001EC264 0000B07B */  lq         $16, 0x0($29)
    /* ED1E8 001EC268 0800E003 */  jr         $31
    /* ED1EC 001EC26C 2000BD27 */   addiu     $29, $29, 0x20
endlabel func_001EC210
