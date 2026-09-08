.align 3
nonmatching func_001ECC48, 0x254

glabel func_001ECC48
    /* EDBC8 001ECC48 50FFBD27 */  addiu      $sp, $sp, -0xB0
    /* EDBCC 001ECC4C 1800023C */  lui        $v0, %hi(D_001872B0)
    /* EDBD0 001ECC50 8000B57F */  sq         $s5, 0x80($sp)
    /* EDBD4 001ECC54 7000B47F */  sq         $s4, 0x70($sp)
    /* EDBD8 001ECC58 2DA88000 */  daddu      $s5, $a0, $zero
    /* EDBDC 001ECC5C B0724384 */  lh         $v1, %lo(D_001872B0)($v0)
    /* EDBE0 001ECC60 B0725424 */  addiu      $s4, $v0, %lo(D_001872B0)
    /* EDBE4 001ECC64 9000BF7F */  sq         $ra, 0x90($sp)
    /* EDBE8 001ECC68 01000424 */  addiu      $a0, $zero, 0x1
    /* EDBEC 001ECC6C 6000B37F */  sq         $s3, 0x60($sp)
    /* EDBF0 001ECC70 5000B27F */  sq         $s2, 0x50($sp)
    /* EDBF4 001ECC74 4000B17F */  sq         $s1, 0x40($sp)
    /* EDBF8 001ECC78 3000B07F */  sq         $s0, 0x30($sp)
    /* EDBFC 001ECC7C 3F006414 */  bne        $v1, $a0, .L001ECD7C
    /* EDC00 001ECC80 A000B4E7 */   swc1      $f20, 0xA0($sp)
    /* EDC04 001ECC84 03008392 */  lbu        $v1, 0x3($s4)
    /* EDC08 001ECC88 0A006014 */  bnez       $v1, .L001ECCB4
    /* EDC0C 001ECC8C 02000224 */   addiu     $v0, $zero, 0x2
    /* EDC10 001ECC90 50008426 */  addiu      $a0, $s4, 0x50
    /* EDC14 001ECC94 3000A326 */  addiu      $v1, $s5, 0x30
    /* EDC18 001ECC98 00006278 */  lq         $v0, 0x0($v1)
    /* EDC1C 001ECC9C 0000827C */  sq         $v0, 0x0($a0)
    /* EDC20 001ECCA0 2D28A002 */  daddu      $a1, $s5, $zero
    /* EDC24 001ECCA4 CA54080C */  jal        func_00215328
    /* EDC28 001ECCA8 60008426 */   addiu     $a0, $s4, 0x60
    /* EDC2C 001ECCAC 4C000010 */  b          .L001ECDE0
    /* EDC30 001ECCB0 03008592 */   lbu       $a1, 0x3($s4)
.align 2
  .L001ECCB4:
    /* EDC34 001ECCB4 0C006214 */  bne        $v1, $v0, .L001ECCE8
    /* EDC38 001ECCB8 1400103C */   lui       $s0, %hi(D_0013F450)
    /* EDC3C 001ECCBC C0008426 */  addiu      $a0, $s4, 0xC0
    /* EDC40 001ECCC0 3000A326 */  addiu      $v1, $s5, 0x30
    /* EDC44 001ECCC4 00006278 */  lq         $v0, 0x0($v1)
    /* EDC48 001ECCC8 0000827C */  sq         $v0, 0x0($a0)
    /* EDC4C 001ECCCC 2D28A002 */  daddu      $a1, $s5, $zero
    /* EDC50 001ECCD0 CA54080C */  jal        func_00215328
    /* EDC54 001ECCD4 D0008426 */   addiu     $a0, $s4, 0xD0
    /* EDC58 001ECCD8 AEB2070C */  jal        func_001ECAB8
    /* EDC5C 001ECCDC 00000000 */   nop
    /* EDC60 001ECCE0 3F000010 */  b          .L001ECDE0
    /* EDC64 001ECCE4 03008592 */   lbu       $a1, 0x3($s4)
.align 2
  .L001ECCE8:
    /* EDC68 001ECCE8 803F013C */  lui        $at, (0x3F800000 >> 16)
    /* EDC6C 001ECCEC 00A08144 */  mtc1       $at, $f20
    /* EDC70 001ECCF0 50F41026 */  addiu      $s0, $s0, %lo(D_0013F450)
    /* EDC74 001ECCF4 2D20A003 */  daddu      $a0, $sp, $zero
    /* EDC78 001ECCF8 8020058E */  lw         $a1, 0x2080($s0)
    /* EDC7C 001ECCFC 06A30046 */  mov.s      $f12, $f20
    /* EDC80 001ECD00 B0009326 */  addiu      $s3, $s4, 0xB0
    /* EDC84 001ECD04 70E7070C */  jal        func_001F9DC0
    /* EDC88 001ECD08 C000A524 */   addiu     $a1, $a1, 0xC0
    /* EDC8C 001ECD0C 8020058E */  lw         $a1, 0x2080($s0)
    /* EDC90 001ECD10 1000B227 */  addiu      $s2, $sp, 0x10
    /* EDC94 001ECD14 2D204002 */  daddu      $a0, $s2, $zero
    /* EDC98 001ECD18 06A30046 */  mov.s      $f12, $f20
    /* EDC9C 001ECD1C 70E7070C */  jal        func_001F9DC0
    /* EDCA0 001ECD20 D000A524 */   addiu     $a1, $a1, 0xD0
    /* EDCA4 001ECD24 8020058E */  lw         $a1, 0x2080($s0)
    /* EDCA8 001ECD28 2000B127 */  addiu      $s1, $sp, 0x20
    /* EDCAC 001ECD2C 06A30046 */  mov.s      $f12, $f20
    /* EDCB0 001ECD30 2D202002 */  daddu      $a0, $s1, $zero
    /* EDCB4 001ECD34 70E7070C */  jal        func_001F9DC0
    /* EDCB8 001ECD38 E000A524 */   addiu     $a1, $a1, 0xE0
    /* EDCBC 001ECD3C 10FF868E */  lw         $a2, -0xF0($s4)
    /* EDCC0 001ECD40 2D404002 */  daddu      $t0, $s2, $zero
    /* EDCC4 001ECD44 2D482002 */  daddu      $t1, $s1, $zero
    /* EDCC8 001ECD48 2D38A003 */  daddu      $a3, $sp, $zero
    /* EDCCC 001ECD4C 70008426 */  addiu      $a0, $s4, 0x70
    /* EDCD0 001ECD50 3000A526 */  addiu      $a1, $s5, 0x30
    /* EDCD4 001ECD54 36B2070C */  jal        func_001EC8D8
    /* EDCD8 001ECD58 3000C624 */   addiu     $a2, $a2, 0x30
    /* EDCDC 001ECD5C 2D28A002 */  daddu      $a1, $s5, $zero
    /* EDCE0 001ECD60 CA54080C */  jal        func_00215328
    /* EDCE4 001ECD64 2D206002 */   daddu     $a0, $s3, $zero
    /* EDCE8 001ECD68 D0008326 */  addiu      $v1, $s4, 0xD0
    /* EDCEC 001ECD6C 0000627A */  lq         $v0, 0x0($s3)
    /* EDCF0 001ECD70 0000627C */  sq         $v0, 0x0($v1)
    /* EDCF4 001ECD74 1A000010 */  b          .L001ECDE0
    /* EDCF8 001ECD78 03008592 */   lbu       $a1, 0x3($s4)
.align 2
  .L001ECD7C:
    /* EDCFC 001ECD7C 03008392 */  lbu        $v1, 0x3($s4)
    /* EDD00 001ECD80 02000224 */  addiu      $v0, $zero, 0x2
    /* EDD04 001ECD84 07006214 */  bne        $v1, $v0, .L001ECDA4
    /* EDD08 001ECD88 00000000 */   nop
    /* EDD0C 001ECD8C E6B2070C */  jal        func_001ECB98
    /* EDD10 001ECD90 00000000 */   nop
    /* EDD14 001ECD94 AEB2070C */  jal        func_001ECAB8
    /* EDD18 001ECD98 00000000 */   nop
    /* EDD1C 001ECD9C 10000010 */  b          .L001ECDE0
    /* EDD20 001ECDA0 03008592 */   lbu       $a1, 0x3($s4)
.align 2
  .L001ECDA4:
    /* EDD24 001ECDA4 09006414 */  bne        $v1, $a0, .L001ECDCC
    /* EDD28 001ECDA8 00000000 */   nop
    /* EDD2C 001ECDAC E6B2070C */  jal        func_001ECB98
    /* EDD30 001ECDB0 00000000 */   nop
    /* EDD34 001ECDB4 B0008426 */  addiu      $a0, $s4, 0xB0
    /* EDD38 001ECDB8 D0008326 */  addiu      $v1, $s4, 0xD0
    /* EDD3C 001ECDBC 00006278 */  lq         $v0, 0x0($v1)
    /* EDD40 001ECDC0 0000827C */  sq         $v0, 0x0($a0)
    /* EDD44 001ECDC4 06000010 */  b          .L001ECDE0
    /* EDD48 001ECDC8 03008592 */   lbu       $a1, 0x3($s4)
.align 2
  .L001ECDCC:
    /* EDD4C 001ECDCC 04006054 */  bnel       $v1, $zero, .L001ECDE0
    /* EDD50 001ECDD0 03008592 */   lbu       $a1, 0x3($s4)
    /* EDD54 001ECDD4 04B3070C */  jal        func_001ECC10
    /* EDD58 001ECDD8 00000000 */   nop
    /* EDD5C 001ECDDC 03008592 */  lbu        $a1, 0x3($s4)
.align 2
  .L001ECDE0:
    /* EDD60 001ECDE0 1800033C */  lui        $v1, %hi(D_001872B0)
    /* EDD64 001ECDE4 03000224 */  addiu      $v0, $zero, 0x3
    /* EDD68 001ECDE8 B07262A4 */  sh         $v0, %lo(D_001872B0)($v1)
    /* EDD6C 001ECDEC 2D20A000 */  daddu      $a0, $a1, $zero
    /* EDD70 001ECDF0 12008014 */  bnez       $a0, .L001ECE3C
    /* EDD74 001ECDF4 020085A2 */   sb        $a1, 0x2($s4)
    /* EDD78 001ECDF8 10008326 */  addiu      $v1, $s4, 0x10
    /* EDD7C 001ECDFC 40008526 */  addiu      $a1, $s4, 0x40
    /* EDD80 001ECE00 140060C4 */  lwc1       $f0, 0x14($v1)
    /* EDD84 001ECE04 50008426 */  addiu      $a0, $s4, 0x50
    /* EDD88 001ECE08 0C0060AC */  sw         $zero, 0xC($v1)
    /* EDD8C 001ECE0C 100060E4 */  swc1       $f0, 0x10($v1)
    /* EDD90 001ECE10 00008278 */  lq         $v0, 0x0($a0)
    /* EDD94 001ECE14 0000A27C */  sq         $v0, 0x0($a1)
    /* EDD98 001ECE18 100080AE */  sw         $zero, 0x10($s4)
    /* EDD9C 001ECE1C 60008526 */  addiu      $a1, $s4, 0x60
    /* EDDA0 001ECE20 30008426 */  addiu      $a0, $s4, 0x30
    /* EDDA4 001ECE24 080060C4 */  lwc1       $f0, 0x8($v1)
    /* EDDA8 001ECE28 040060E4 */  swc1       $f0, 0x4($v1)
    /* EDDAC 001ECE2C 0000A278 */  lq         $v0, 0x0($a1)
    /* EDDB0 001ECE30 0000827C */  sq         $v0, 0x0($a0)
    /* EDDB4 001ECE34 10000010 */  b          .L001ECE78
    /* EDDB8 001ECE38 9000BF7B */   lq        $ra, 0x90($sp)
.align 2
  .L001ECE3C:
    /* EDDBC 001ECE3C 70009026 */  addiu      $s0, $s4, 0x70
    /* EDDC0 001ECE40 1400028E */  lw         $v0, 0x14($s0)
    /* EDDC4 001ECE44 01004224 */  addiu      $v0, $v0, 0x1
    /* EDDC8 001ECE48 2D204000 */  daddu      $a0, $v0, $zero
    /* EDDCC 001ECE4C 30E6070C */  jal        func_001F98C0
    /* EDDD0 001ECE50 140002AE */   sw        $v0, 0x14($s0)
    /* EDDD4 001ECE54 2D204000 */  daddu      $a0, $v0, $zero
    /* EDDD8 001ECE58 22EA070C */  jal        func_001FA888
    /* EDDDC 001ECE5C 0C0002AE */   sw        $v0, 0xC($s0)
    /* EDDE0 001ECE60 803F013C */  lui        $at, (0x3F800000 >> 16)
    /* EDDE4 001ECE64 00088144 */  mtc1       $at, $f1
    /* EDDE8 001ECE68 00000000 */  nop
    /* EDDEC 001ECE6C 43080046 */  div.s      $f1, $f1, $f0
    /* EDDF0 001ECE70 100001E6 */  swc1       $f1, 0x10($s0)
    /* EDDF4 001ECE74 9000BF7B */  lq         $ra, 0x90($sp)
.align 2
  .L001ECE78:
    /* EDDF8 001ECE78 8000B57B */  lq         $s5, 0x80($sp)
    /* EDDFC 001ECE7C 7000B47B */  lq         $s4, 0x70($sp)
    /* EDE00 001ECE80 6000B37B */  lq         $s3, 0x60($sp)
    /* EDE04 001ECE84 5000B27B */  lq         $s2, 0x50($sp)
    /* EDE08 001ECE88 4000B17B */  lq         $s1, 0x40($sp)
    /* EDE0C 001ECE8C 3000B07B */  lq         $s0, 0x30($sp)
    /* EDE10 001ECE90 A000B4C7 */  lwc1       $f20, 0xA0($sp)
    /* EDE14 001ECE94 0800E003 */  jr         $ra
    /* EDE18 001ECE98 B000BD27 */   addiu     $sp, $sp, 0xB0
endlabel func_001ECC48
    /* EDE1C 001ECE9C 00000000 */  nop
