.align 3
nonmatching func_001ECAB8, 0xDC

glabel func_001ECAB8
    /* EDA38 001ECAB8 70FFBD27 */  addiu      $sp, $sp, -0x90
    /* EDA3C 001ECABC 5000B27F */  sq         $s2, 0x50($sp)
    /* EDA40 001ECAC0 2D20A003 */  daddu      $a0, $sp, $zero
    /* EDA44 001ECAC4 6000B37F */  sq         $s3, 0x60($sp)
    /* EDA48 001ECAC8 1400123C */  lui        $s2, %hi(D_0013F450)
    /* EDA4C 001ECACC 4000B17F */  sq         $s1, 0x40($sp)
    /* EDA50 001ECAD0 50F45226 */  addiu      $s2, $s2, %lo(D_0013F450)
    /* EDA54 001ECAD4 3000B07F */  sq         $s0, 0x30($sp)
    /* EDA58 001ECAD8 8000B4E7 */  swc1       $f20, 0x80($sp)
    /* EDA5C 001ECADC 1800103C */  lui        $s0, %hi(D_001872B0)
    /* EDA60 001ECAE0 7000BF7F */  sq         $ra, 0x70($sp)
    /* EDA64 001ECAE4 B0721026 */  addiu      $s0, $s0, %lo(D_001872B0)
    /* EDA68 001ECAE8 803F013C */  lui        $at, (0x3F800000 >> 16)
    /* EDA6C 001ECAEC 00A08144 */  mtc1       $at, $f20
    /* EDA70 001ECAF0 8020458E */  lw         $a1, 0x2080($s2)
    /* EDA74 001ECAF4 06A30046 */  mov.s      $f12, $f20
    /* EDA78 001ECAF8 70E7070C */  jal        func_001F9DC0
    /* EDA7C 001ECAFC C000A524 */   addiu     $a1, $a1, 0xC0
    /* EDA80 001ECB00 8020458E */  lw         $a1, 0x2080($s2)
    /* EDA84 001ECB04 1000B327 */  addiu      $s3, $sp, 0x10
    /* EDA88 001ECB08 2D206002 */  daddu      $a0, $s3, $zero
    /* EDA8C 001ECB0C 06A30046 */  mov.s      $f12, $f20
    /* EDA90 001ECB10 70E7070C */  jal        func_001F9DC0
    /* EDA94 001ECB14 D000A524 */   addiu     $a1, $a1, 0xD0
    /* EDA98 001ECB18 8020458E */  lw         $a1, 0x2080($s2)
    /* EDA9C 001ECB1C 2000B127 */  addiu      $s1, $sp, 0x20
    /* EDAA0 001ECB20 06A30046 */  mov.s      $f12, $f20
    /* EDAA4 001ECB24 2D202002 */  daddu      $a0, $s1, $zero
    /* EDAA8 001ECB28 70E7070C */  jal        func_001F9DC0
    /* EDAAC 001ECB2C E000A524 */   addiu     $a1, $a1, 0xE0
    /* EDAB0 001ECB30 90000326 */  addiu      $v1, $s0, 0x90
    /* EDAB4 001ECB34 0000A27B */  lq         $v0, 0x0($sp)
    /* EDAB8 001ECB38 0000627C */  sq         $v0, 0x0($v1)
    /* EDABC 001ECB3C A0000426 */  addiu      $a0, $s0, 0xA0
    /* EDAC0 001ECB40 0000227A */  lq         $v0, 0x0($s1)
    /* EDAC4 001ECB44 0000827C */  sq         $v0, 0x0($a0)
    /* EDAC8 001ECB48 70000426 */  addiu      $a0, $s0, 0x70
    /* EDACC 001ECB4C C0000526 */  addiu      $a1, $s0, 0xC0
    /* EDAD0 001ECB50 80004626 */  addiu      $a2, $s2, 0x80
    /* EDAD4 001ECB54 2D406002 */  daddu      $t0, $s3, $zero
    /* EDAD8 001ECB58 2D482002 */  daddu      $t1, $s1, $zero
    /* EDADC 001ECB5C 36B2070C */  jal        func_001EC8D8
    /* EDAE0 001ECB60 2D38A003 */   daddu     $a3, $sp, $zero
    /* EDAE4 001ECB64 D0000326 */  addiu      $v1, $s0, 0xD0
    /* EDAE8 001ECB68 B0001026 */  addiu      $s0, $s0, 0xB0
    /* EDAEC 001ECB6C 00006278 */  lq         $v0, 0x0($v1)
    /* EDAF0 001ECB70 0000027E */  sq         $v0, 0x0($s0)
    /* EDAF4 001ECB74 7000BF7B */  lq         $ra, 0x70($sp)
    /* EDAF8 001ECB78 6000B37B */  lq         $s3, 0x60($sp)
    /* EDAFC 001ECB7C 5000B27B */  lq         $s2, 0x50($sp)
    /* EDB00 001ECB80 4000B17B */  lq         $s1, 0x40($sp)
    /* EDB04 001ECB84 3000B07B */  lq         $s0, 0x30($sp)
    /* EDB08 001ECB88 8000B4C7 */  lwc1       $f20, 0x80($sp)
    /* EDB0C 001ECB8C 0800E003 */  jr         $ra
    /* EDB10 001ECB90 9000BD27 */   addiu     $sp, $sp, 0x90
endlabel func_001ECAB8
    /* EDB14 001ECB94 00000000 */  nop
