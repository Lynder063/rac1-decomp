.align 3
nonmatching func_0012CA70, 0x130

glabel func_0012CA70
    /* 2D9F0 0012CA70 90FFBD27 */  addiu      $sp, $sp, -0x70
    /* 2D9F4 0012CA74 1000B1FF */  sd         $s1, 0x10($sp)
    /* 2D9F8 0012CA78 0000B0FF */  sd         $s0, 0x0($sp)
    /* 2D9FC 0012CA7C 2D888000 */  daddu      $s1, $a0, $zero
    /* 2DA00 0012CA80 5000B5FF */  sd         $s5, 0x50($sp)
    /* 2DA04 0012CA84 01001024 */  addiu      $s0, $zero, 0x1
    /* 2DA08 0012CA88 4000B4FF */  sd         $s4, 0x40($sp)
    /* 2DA0C 0012CA8C 2D200000 */  daddu      $a0, $zero, $zero
    /* 2DA10 0012CA90 3000B3FF */  sd         $s3, 0x30($sp)
    /* 2DA14 0012CA94 2000B2FF */  sd         $s2, 0x20($sp)
    /* 2DA18 0012CA98 6000BFFF */  sd         $ra, 0x60($sp)
    /* 2DA1C 0012CA9C DE9C040C */  jal        func_00127378
    /* 2DA20 0012CAA0 480830AE */   sw        $s0, 0x848($s1)
    /* 2DA24 0012CAA4 2D202002 */  daddu      $a0, $s1, $zero
    /* 2DA28 0012CAA8 96A2040C */  jal        func_00128A58
    /* 2DA2C 0012CAAC 1C000524 */   addiu     $a1, $zero, 0x1C
    /* 2DA30 0012CAB0 2D904000 */  daddu      $s2, $v0, $zero
    /* 2DA34 0012CAB4 42181200 */  srl        $v1, $s2, 1
    /* 2DA38 0012CAB8 42141200 */  srl        $v0, $s2, 17
    /* 2DA3C 0012CABC FF0F7530 */  andi       $s5, $v1, 0xFFF
    /* 2DA40 0012CAC0 03004230 */  andi       $v0, $v0, 0x3
    /* 2DA44 0012CAC4 42231200 */  srl        $a0, $s2, 13
    /* 2DA48 0012CAC8 C21B1200 */  srl        $v1, $s2, 15
    /* 2DA4C 0012CACC 03009430 */  andi       $s4, $a0, 0x3
    /* 2DA50 0012CAD0 03007330 */  andi       $s3, $v1, 0x3
    /* 2DA54 0012CAD4 05005010 */  beq        $v0, $s0, .L0012CAEC
    /* 2DA58 0012CAD8 400122AE */   sw        $v0, 0x140($s1)
    /* 2DA5C 0012CADC 1500053C */  lui        $a1, %hi(D_00153C00)
    /* 2DA60 0012CAE0 2D202002 */  daddu      $a0, $s1, $zero
    /* 2DA64 0012CAE4 1AB1040C */  jal        func_0012C468
    /* 2DA68 0012CAE8 003CA524 */   addiu     $a1, $a1, %lo(D_00153C00)
.align 2
  .L0012CAEC:
    /* 2DA6C 0012CAEC C2141200 */  srl        $v0, $s2, 19
    /* 2DA70 0012CAF0 2D202002 */  daddu      $a0, $s1, $zero
    /* 2DA74 0012CAF4 01004230 */  andi       $v0, $v0, 0x1
    /* 2DA78 0012CAF8 10000524 */  addiu      $a1, $zero, 0x10
    /* 2DA7C 0012CAFC 3C0122AE */  sw         $v0, 0x13C($s1)
    /* 2DA80 0012CB00 96A2040C */  jal        func_00128A58
    /* 2DA84 0012CB04 02851200 */   srl       $s0, $s2, 20
    /* 2DA88 0012CB08 02920200 */  srl        $s2, $v0, 8
    /* 2DA8C 0012CB0C 48000224 */  addiu      $v0, $zero, 0x48
    /* 2DA90 0012CB10 08000212 */  beq        $s0, $v0, .L0012CB34
    /* 2DA94 0012CB14 58000224 */   addiu     $v0, $zero, 0x58
    /* 2DA98 0012CB18 06000212 */  beq        $s0, $v0, .L0012CB34
    /* 2DA9C 0012CB1C 44000224 */   addiu     $v0, $zero, 0x44
    /* 2DAA0 0012CB20 04000212 */  beq        $s0, $v0, .L0012CB34
    /* 2DAA4 0012CB24 1500053C */   lui       $a1, %hi(D_00153C28)
    /* 2DAA8 0012CB28 2D202002 */  daddu      $a0, $s1, $zero
    /* 2DAAC 0012CB2C 1AB1040C */  jal        func_0012C468
    /* 2DAB0 0012CB30 283CA524 */   addiu     $a1, $a1, %lo(D_00153C28)
.align 2
  .L0012CB34:
    /* 2DAB4 0012CB34 2401248E */  lw         $a0, 0x124($s1)
    /* 2DAB8 0012CB38 80441500 */  sll        $t0, $s5, 18
    /* 2DABC 0012CB3C 2801238E */  lw         $v1, 0x128($s1)
    /* 2DAC0 0012CB40 804A1200 */  sll        $t1, $s2, 10
    /* 2DAC4 0012CB44 3401268E */  lw         $a2, 0x134($s1)
    /* 2DAC8 0012CB48 003B1300 */  sll        $a3, $s3, 12
    /* 2DACC 0012CB4C 3801228E */  lw         $v0, 0x138($s1)
    /* 2DAD0 0012CB50 002B1400 */  sll        $a1, $s4, 12
    /* 2DAD4 0012CB54 FF0F8430 */  andi       $a0, $a0, 0xFFF
    /* 2DAD8 0012CB58 FF0F6330 */  andi       $v1, $v1, 0xFFF
    /* 2DADC 0012CB5C 2538E400 */  or         $a3, $a3, $a0
    /* 2DAE0 0012CB60 2528A300 */  or         $a1, $a1, $v1
    /* 2DAE4 0012CB64 2130C800 */  addu       $a2, $a2, $t0
    /* 2DAE8 0012CB68 21104900 */  addu       $v0, $v0, $t1
    /* 2DAEC 0012CB6C 380122AE */  sw         $v0, 0x138($s1)
    /* 2DAF0 0012CB70 240127AE */  sw         $a3, 0x124($s1)
    /* 2DAF4 0012CB74 280125AE */  sw         $a1, 0x128($s1)
    /* 2DAF8 0012CB78 340126AE */  sw         $a2, 0x134($s1)
    /* 2DAFC 0012CB7C 6000BFDF */  ld         $ra, 0x60($sp)
    /* 2DB00 0012CB80 5000B5DF */  ld         $s5, 0x50($sp)
    /* 2DB04 0012CB84 4000B4DF */  ld         $s4, 0x40($sp)
    /* 2DB08 0012CB88 3000B3DF */  ld         $s3, 0x30($sp)
    /* 2DB0C 0012CB8C 2000B2DF */  ld         $s2, 0x20($sp)
    /* 2DB10 0012CB90 1000B1DF */  ld         $s1, 0x10($sp)
    /* 2DB14 0012CB94 0000B0DF */  ld         $s0, 0x0($sp)
    /* 2DB18 0012CB98 0800E003 */  jr         $ra
    /* 2DB1C 0012CB9C 7000BD27 */   addiu     $sp, $sp, 0x70
endlabel func_0012CA70
