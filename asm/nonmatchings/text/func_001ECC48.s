.align 3
nonmatching func_001ECC48, 0x254

glabel func_001ECC48
    /* EDBC8 001ECC48 50FFBD27 */  addiu      $29, $29, -0xB0
    /* EDBCC 001ECC4C 1800023C */  lui        $2, %hi(D_001872B0)
    /* EDBD0 001ECC50 8000B57F */  sq         $21, 0x80($29)
    /* EDBD4 001ECC54 7000B47F */  sq         $20, 0x70($29)
    /* EDBD8 001ECC58 2DA88000 */  daddu      $21, $4, $0
    /* EDBDC 001ECC5C B0724384 */  lh         $3, %lo(D_001872B0)($2)
    /* EDBE0 001ECC60 B0725424 */  addiu      $20, $2, %lo(D_001872B0)
    /* EDBE4 001ECC64 9000BF7F */  sq         $31, 0x90($29)
    /* EDBE8 001ECC68 01000424 */  addiu      $4, $0, 0x1
    /* EDBEC 001ECC6C 6000B37F */  sq         $19, 0x60($29)
    /* EDBF0 001ECC70 5000B27F */  sq         $18, 0x50($29)
    /* EDBF4 001ECC74 4000B17F */  sq         $17, 0x40($29)
    /* EDBF8 001ECC78 3000B07F */  sq         $16, 0x30($29)
    /* EDBFC 001ECC7C 3F006414 */  bne        $3, $4, .L001ECD7C
    /* EDC00 001ECC80 A000B4E7 */   swc1      $f20, 0xA0($29)
    /* EDC04 001ECC84 03008392 */  lbu        $3, 0x3($20)
    /* EDC08 001ECC88 0A006014 */  bnez       $3, .L001ECCB4
    /* EDC0C 001ECC8C 02000224 */   addiu     $2, $0, 0x2
    /* EDC10 001ECC90 50008426 */  addiu      $4, $20, 0x50
    /* EDC14 001ECC94 3000A326 */  addiu      $3, $21, 0x30
    /* EDC18 001ECC98 00006278 */  lq         $2, 0x0($3)
    /* EDC1C 001ECC9C 0000827C */  sq         $2, 0x0($4)
    /* EDC20 001ECCA0 2D28A002 */  daddu      $5, $21, $0
    /* EDC24 001ECCA4 CA54080C */  jal        func_00215328
    /* EDC28 001ECCA8 60008426 */   addiu     $4, $20, 0x60
    /* EDC2C 001ECCAC 4C000010 */  b          .L001ECDE0
    /* EDC30 001ECCB0 03008592 */   lbu       $5, 0x3($20)
.align 2
  .L001ECCB4:
    /* EDC34 001ECCB4 0C006214 */  bne        $3, $2, .L001ECCE8
    /* EDC38 001ECCB8 1400103C */   lui       $16, %hi(D_0013F450)
    /* EDC3C 001ECCBC C0008426 */  addiu      $4, $20, 0xC0
    /* EDC40 001ECCC0 3000A326 */  addiu      $3, $21, 0x30
    /* EDC44 001ECCC4 00006278 */  lq         $2, 0x0($3)
    /* EDC48 001ECCC8 0000827C */  sq         $2, 0x0($4)
    /* EDC4C 001ECCCC 2D28A002 */  daddu      $5, $21, $0
    /* EDC50 001ECCD0 CA54080C */  jal        func_00215328
    /* EDC54 001ECCD4 D0008426 */   addiu     $4, $20, 0xD0
    /* EDC58 001ECCD8 AEB2070C */  jal        func_001ECAB8
    /* EDC5C 001ECCDC 00000000 */   nop
    /* EDC60 001ECCE0 3F000010 */  b          .L001ECDE0
    /* EDC64 001ECCE4 03008592 */   lbu       $5, 0x3($20)
.align 2
  .L001ECCE8:
    /* EDC68 001ECCE8 803F013C */  lui        $1, (0x3F800000 >> 16)
    /* EDC6C 001ECCEC 00A08144 */  mtc1       $1, $f20
    /* EDC70 001ECCF0 50F41026 */  addiu      $16, $16, %lo(D_0013F450)
    /* EDC74 001ECCF4 2D20A003 */  daddu      $4, $29, $0
    /* EDC78 001ECCF8 8020058E */  lw         $5, 0x2080($16)
    /* EDC7C 001ECCFC 06A30046 */  mov.s      $f12, $f20
    /* EDC80 001ECD00 B0009326 */  addiu      $19, $20, 0xB0
    /* EDC84 001ECD04 70E7070C */  jal        func_001F9DC0
    /* EDC88 001ECD08 C000A524 */   addiu     $5, $5, 0xC0
    /* EDC8C 001ECD0C 8020058E */  lw         $5, 0x2080($16)
    /* EDC90 001ECD10 1000B227 */  addiu      $18, $29, 0x10
    /* EDC94 001ECD14 2D204002 */  daddu      $4, $18, $0
    /* EDC98 001ECD18 06A30046 */  mov.s      $f12, $f20
    /* EDC9C 001ECD1C 70E7070C */  jal        func_001F9DC0
    /* EDCA0 001ECD20 D000A524 */   addiu     $5, $5, 0xD0
    /* EDCA4 001ECD24 8020058E */  lw         $5, 0x2080($16)
    /* EDCA8 001ECD28 2000B127 */  addiu      $17, $29, 0x20
    /* EDCAC 001ECD2C 06A30046 */  mov.s      $f12, $f20
    /* EDCB0 001ECD30 2D202002 */  daddu      $4, $17, $0
    /* EDCB4 001ECD34 70E7070C */  jal        func_001F9DC0
    /* EDCB8 001ECD38 E000A524 */   addiu     $5, $5, 0xE0
    /* EDCBC 001ECD3C 10FF868E */  lw         $6, -0xF0($20)
    /* EDCC0 001ECD40 2D404002 */  daddu      $8, $18, $0
    /* EDCC4 001ECD44 2D482002 */  daddu      $9, $17, $0
    /* EDCC8 001ECD48 2D38A003 */  daddu      $7, $29, $0
    /* EDCCC 001ECD4C 70008426 */  addiu      $4, $20, 0x70
    /* EDCD0 001ECD50 3000A526 */  addiu      $5, $21, 0x30
    /* EDCD4 001ECD54 36B2070C */  jal        func_001EC8D8
    /* EDCD8 001ECD58 3000C624 */   addiu     $6, $6, 0x30
    /* EDCDC 001ECD5C 2D28A002 */  daddu      $5, $21, $0
    /* EDCE0 001ECD60 CA54080C */  jal        func_00215328
    /* EDCE4 001ECD64 2D206002 */   daddu     $4, $19, $0
    /* EDCE8 001ECD68 D0008326 */  addiu      $3, $20, 0xD0
    /* EDCEC 001ECD6C 0000627A */  lq         $2, 0x0($19)
    /* EDCF0 001ECD70 0000627C */  sq         $2, 0x0($3)
    /* EDCF4 001ECD74 1A000010 */  b          .L001ECDE0
    /* EDCF8 001ECD78 03008592 */   lbu       $5, 0x3($20)
.align 2
  .L001ECD7C:
    /* EDCFC 001ECD7C 03008392 */  lbu        $3, 0x3($20)
    /* EDD00 001ECD80 02000224 */  addiu      $2, $0, 0x2
    /* EDD04 001ECD84 07006214 */  bne        $3, $2, .L001ECDA4
    /* EDD08 001ECD88 00000000 */   nop
    /* EDD0C 001ECD8C E6B2070C */  jal        func_001ECB98
    /* EDD10 001ECD90 00000000 */   nop
    /* EDD14 001ECD94 AEB2070C */  jal        func_001ECAB8
    /* EDD18 001ECD98 00000000 */   nop
    /* EDD1C 001ECD9C 10000010 */  b          .L001ECDE0
    /* EDD20 001ECDA0 03008592 */   lbu       $5, 0x3($20)
.align 2
  .L001ECDA4:
    /* EDD24 001ECDA4 09006414 */  bne        $3, $4, .L001ECDCC
    /* EDD28 001ECDA8 00000000 */   nop
    /* EDD2C 001ECDAC E6B2070C */  jal        func_001ECB98
    /* EDD30 001ECDB0 00000000 */   nop
    /* EDD34 001ECDB4 B0008426 */  addiu      $4, $20, 0xB0
    /* EDD38 001ECDB8 D0008326 */  addiu      $3, $20, 0xD0
    /* EDD3C 001ECDBC 00006278 */  lq         $2, 0x0($3)
    /* EDD40 001ECDC0 0000827C */  sq         $2, 0x0($4)
    /* EDD44 001ECDC4 06000010 */  b          .L001ECDE0
    /* EDD48 001ECDC8 03008592 */   lbu       $5, 0x3($20)
.align 2
  .L001ECDCC:
    /* EDD4C 001ECDCC 04006054 */  bnel       $3, $0, .L001ECDE0
    /* EDD50 001ECDD0 03008592 */   lbu       $5, 0x3($20)
    /* EDD54 001ECDD4 04B3070C */  jal        func_001ECC10
    /* EDD58 001ECDD8 00000000 */   nop
    /* EDD5C 001ECDDC 03008592 */  lbu        $5, 0x3($20)
.align 2
  .L001ECDE0:
    /* EDD60 001ECDE0 1800033C */  lui        $3, %hi(D_001872B0)
    /* EDD64 001ECDE4 03000224 */  addiu      $2, $0, 0x3
    /* EDD68 001ECDE8 B07262A4 */  sh         $2, %lo(D_001872B0)($3)
    /* EDD6C 001ECDEC 2D20A000 */  daddu      $4, $5, $0
    /* EDD70 001ECDF0 12008014 */  bnez       $4, .L001ECE3C
    /* EDD74 001ECDF4 020085A2 */   sb        $5, 0x2($20)
    /* EDD78 001ECDF8 10008326 */  addiu      $3, $20, 0x10
    /* EDD7C 001ECDFC 40008526 */  addiu      $5, $20, 0x40
    /* EDD80 001ECE00 140060C4 */  lwc1       $f0, 0x14($3)
    /* EDD84 001ECE04 50008426 */  addiu      $4, $20, 0x50
    /* EDD88 001ECE08 0C0060AC */  sw         $0, 0xC($3)
    /* EDD8C 001ECE0C 100060E4 */  swc1       $f0, 0x10($3)
    /* EDD90 001ECE10 00008278 */  lq         $2, 0x0($4)
    /* EDD94 001ECE14 0000A27C */  sq         $2, 0x0($5)
    /* EDD98 001ECE18 100080AE */  sw         $0, 0x10($20)
    /* EDD9C 001ECE1C 60008526 */  addiu      $5, $20, 0x60
    /* EDDA0 001ECE20 30008426 */  addiu      $4, $20, 0x30
    /* EDDA4 001ECE24 080060C4 */  lwc1       $f0, 0x8($3)
    /* EDDA8 001ECE28 040060E4 */  swc1       $f0, 0x4($3)
    /* EDDAC 001ECE2C 0000A278 */  lq         $2, 0x0($5)
    /* EDDB0 001ECE30 0000827C */  sq         $2, 0x0($4)
    /* EDDB4 001ECE34 10000010 */  b          .L001ECE78
    /* EDDB8 001ECE38 9000BF7B */   lq        $31, 0x90($29)
.align 2
  .L001ECE3C:
    /* EDDBC 001ECE3C 70009026 */  addiu      $16, $20, 0x70
    /* EDDC0 001ECE40 1400028E */  lw         $2, 0x14($16)
    /* EDDC4 001ECE44 01004224 */  addiu      $2, $2, 0x1
    /* EDDC8 001ECE48 2D204000 */  daddu      $4, $2, $0
    /* EDDCC 001ECE4C 30E6070C */  jal        func_001F98C0
    /* EDDD0 001ECE50 140002AE */   sw        $2, 0x14($16)
    /* EDDD4 001ECE54 2D204000 */  daddu      $4, $2, $0
    /* EDDD8 001ECE58 22EA070C */  jal        func_001FA888
    /* EDDDC 001ECE5C 0C0002AE */   sw        $2, 0xC($16)
    /* EDDE0 001ECE60 803F013C */  lui        $1, (0x3F800000 >> 16)
    /* EDDE4 001ECE64 00088144 */  mtc1       $1, $f1
    /* EDDE8 001ECE68 00000000 */  nop
    /* EDDEC 001ECE6C 43080046 */  div.s      $f1, $f1, $f0
    /* EDDF0 001ECE70 100001E6 */  swc1       $f1, 0x10($16)
    /* EDDF4 001ECE74 9000BF7B */  lq         $31, 0x90($29)
.align 2
  .L001ECE78:
    /* EDDF8 001ECE78 8000B57B */  lq         $21, 0x80($29)
    /* EDDFC 001ECE7C 7000B47B */  lq         $20, 0x70($29)
    /* EDE00 001ECE80 6000B37B */  lq         $19, 0x60($29)
    /* EDE04 001ECE84 5000B27B */  lq         $18, 0x50($29)
    /* EDE08 001ECE88 4000B17B */  lq         $17, 0x40($29)
    /* EDE0C 001ECE8C 3000B07B */  lq         $16, 0x30($29)
    /* EDE10 001ECE90 A000B4C7 */  lwc1       $f20, 0xA0($29)
    /* EDE14 001ECE94 0800E003 */  jr         $31
    /* EDE18 001ECE98 B000BD27 */   addiu     $29, $29, 0xB0
endlabel func_001ECC48
    /* EDE1C 001ECE9C 00000000 */  nop
