.align 3
nonmatching func_001EC7C8, 0x110

glabel func_001EC7C8
    /* ED748 001EC7C8 A0FFBD27 */  addiu      $29, $29, -0x60
    /* ED74C 001EC7CC 1800023C */  lui        $2, %hi(D_001871C0)
    /* ED750 001EC7D0 0000B07F */  sq         $16, 0x0($29)
    /* ED754 001EC7D4 C071508C */  lw         $16, %lo(D_001871C0)($2)
    /* ED758 001EC7D8 4000B47F */  sq         $20, 0x40($29)
    /* ED75C 001EC7DC 3000B37F */  sq         $19, 0x30($29)
    /* ED760 001EC7E0 2D200002 */  daddu      $4, $16, $0
    /* ED764 001EC7E4 2000B27F */  sq         $18, 0x20($29)
    /* ED768 001EC7E8 2DA00000 */  daddu      $20, $0, $0
    /* ED76C 001EC7EC 1000B17F */  sq         $17, 0x10($29)
    /* ED770 001EC7F0 5000BF7F */  sq         $31, 0x50($29)
    /* ED774 001EC7F4 E0B1070C */  jal        func_001EC780
    /* ED778 001EC7F8 2F001324 */   addiu     $19, $0, 0x2F
    /* ED77C 001EC7FC 1900033C */  lui        $3, %hi(D_00189C50)
    /* ED780 001EC800 1800023C */  lui        $2, %hi(D_00187510)
    /* ED784 001EC804 10755124 */  addiu      $17, $2, %lo(D_00187510)
    /* ED788 001EC808 509C7224 */  addiu      $18, $3, %lo(D_00189C50)
    /* ED78C 001EC80C 00000000 */  nop
.align 2
  .L001EC810:
    /* ED790 001EC810 0000428E */  lw         $2, 0x0($18)
    /* ED794 001EC814 0A004050 */  beql       $2, $0, .L001EC840
    /* ED798 001EC818 A0003126 */   addiu     $17, $17, 0xA0
    /* ED79C 001EC81C 07003012 */  beq        $17, $16, .L001EC83C
    /* ED7A0 001EC820 2D202002 */   daddu     $4, $17, $0
    /* ED7A4 001EC824 6EB1070C */  jal        func_001EC5B8
    /* ED7A8 001EC828 2D280002 */   daddu     $5, $16, $0
    /* ED7AC 001EC82C 04004050 */  beql       $2, $0, .L001EC840
    /* ED7B0 001EC830 A0003126 */   addiu     $17, $17, 0xA0
    /* ED7B4 001EC834 2D802002 */  daddu      $16, $17, $0
    /* ED7B8 001EC838 01001424 */  addiu      $20, $0, 0x1
.align 2
  .L001EC83C:
    /* ED7BC 001EC83C A0003126 */  addiu      $17, $17, 0xA0
.align 2
  .L001EC840:
    /* ED7C0 001EC840 FFFF7326 */  addiu      $19, $19, -0x1
    /* ED7C4 001EC844 F2FF6106 */  bgez       $19, .L001EC810
    /* ED7C8 001EC848 04005226 */   addiu     $18, $18, 0x4
    /* ED7CC 001EC84C 04008052 */  beql       $20, $0, .L001EC860
    /* ED7D0 001EC850 8C000386 */   lh        $3, 0x8C($16)
    /* ED7D4 001EC854 AEB0070C */  jal        func_001EC2B8
    /* ED7D8 001EC858 2D200002 */   daddu     $4, $16, $0
    /* ED7DC 001EC85C 8C000386 */  lh         $3, 0x8C($16)
.align 2
  .L001EC860:
    /* ED7E0 001EC860 14000524 */  addiu      $5, $0, 0x14
    /* ED7E4 001EC864 1F00023C */  lui        $2, %hi(D_001E8F80)
    /* ED7E8 001EC868 2D200002 */  daddu      $4, $16, $0
    /* ED7EC 001EC86C 18186500 */  mult       $3, $3, $5
    /* ED7F0 001EC870 808F4224 */  addiu      $2, $2, %lo(D_001E8F80)
    /* ED7F4 001EC874 21104300 */  addu       $2, $2, $3
    /* ED7F8 001EC878 84B0070C */  jal        func_001EC210
    /* ED7FC 001EC87C 0C00518C */   lw        $17, 0xC($2)
    /* ED800 001EC880 04002052 */  beql       $17, $0, .L001EC894
    /* ED804 001EC884 300001C6 */   lwc1      $f1, 0x30($16)
    /* ED808 001EC888 09F82002 */  jalr       $17
    /* ED80C 001EC88C 2D200002 */   daddu     $4, $16, $0
    /* ED810 001EC890 300001C6 */  lwc1       $f1, 0x30($16)
.align 2
  .L001EC894:
    /* ED814 001EC894 30000226 */  addiu      $2, $16, 0x30
    /* ED818 001EC898 64000326 */  addiu      $3, $16, 0x64
    /* ED81C 001EC89C 640001E6 */  swc1       $f1, 0x64($16)
    /* ED820 001EC8A0 040040C4 */  lwc1       $f0, 0x4($2)
    /* ED824 001EC8A4 040060E4 */  swc1       $f0, 0x4($3)
    /* ED828 001EC8A8 080041C4 */  lwc1       $f1, 0x8($2)
    /* ED82C 001EC8AC 26B0070C */  jal        func_001EC098
    /* ED830 001EC8B0 080061E4 */   swc1      $f1, 0x8($3)
    /* ED834 001EC8B4 5000BF7B */  lq         $31, 0x50($29)
    /* ED838 001EC8B8 FFFF0224 */  addiu      $2, $0, -0x1
    /* ED83C 001EC8BC 4000B47B */  lq         $20, 0x40($29)
    /* ED840 001EC8C0 3000B37B */  lq         $19, 0x30($29)
    /* ED844 001EC8C4 2000B27B */  lq         $18, 0x20($29)
    /* ED848 001EC8C8 1000B17B */  lq         $17, 0x10($29)
    /* ED84C 001EC8CC 0000B07B */  lq         $16, 0x0($29)
    /* ED850 001EC8D0 0800E003 */  jr         $31
    /* ED854 001EC8D4 6000BD27 */   addiu     $29, $29, 0x60
endlabel func_001EC7C8
