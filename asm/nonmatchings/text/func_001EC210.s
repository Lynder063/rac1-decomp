.align 3
nonmatching func_001EC210, 0x60

glabel func_001EC210
    /* ED190 001EC210 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* ED194 001EC214 1800023C */  lui        $v0, %hi(D_001871D0)
    /* ED198 001EC218 0000B07F */  sq         $s0, 0x0($sp)
    /* ED19C 001EC21C 1000BF7F */  sq         $ra, 0x10($sp)
    /* ED1A0 001EC220 86008384 */  lh         $v1, 0x86($a0)
    /* ED1A4 001EC224 08006014 */  bnez       $v1, .L001EC248
    /* ED1A8 001EC228 D0715024 */   addiu     $s0, $v0, %lo(D_001871D0)
    /* ED1AC 001EC22C C400028E */  lw         $v0, 0xC4($s0)
    /* ED1B0 001EC230 0C004014 */  bnez       $v0, .L001EC264
    /* ED1B4 001EC234 1000BF7B */   lq        $ra, 0x10($sp)
    /* ED1B8 001EC238 F2A5070C */  jal        func_001E97C8
    /* ED1BC 001EC23C B0FF0426 */   addiu     $a0, $s0, -0x50
    /* ED1C0 001EC240 07000010 */  b          .L001EC260
    /* ED1C4 001EC244 C40002AE */   sw        $v0, 0xC4($s0)
.align 2
  .L001EC248:
    /* ED1C8 001EC248 C400048E */  lw         $a0, 0xC4($s0)
    /* ED1CC 001EC24C 05008010 */  beqz       $a0, .L001EC264
    /* ED1D0 001EC250 1000BF7B */   lq        $ra, 0x10($sp)
    /* ED1D4 001EC254 9E35080C */  jal        func_0020D678
    /* ED1D8 001EC258 00000000 */   nop
    /* ED1DC 001EC25C C40000AE */  sw         $zero, 0xC4($s0)
.align 2
  .L001EC260:
    /* ED1E0 001EC260 1000BF7B */  lq         $ra, 0x10($sp)
.align 2
  .L001EC264:
    /* ED1E4 001EC264 0000B07B */  lq         $s0, 0x0($sp)
    /* ED1E8 001EC268 0800E003 */  jr         $ra
    /* ED1EC 001EC26C 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_001EC210
