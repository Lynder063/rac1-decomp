.align 3
nonmatching func_00123C30, 0x114

glabel func_00123C30
    /* 24BB0 00123C30 70FFBD27 */  addiu      $sp, $sp, -0x90
    /* 24BB4 00123C34 1600023C */  lui        $v0, %hi(D_00159B00)
    /* 24BB8 00123C38 6000B5FF */  sd         $s5, 0x60($sp)
    /* 24BBC 00123C3C 5000B4FF */  sd         $s4, 0x50($sp)
    /* 24BC0 00123C40 009B5524 */  addiu      $s5, $v0, %lo(D_00159B00)
    /* 24BC4 00123C44 4000B3FF */  sd         $s3, 0x40($sp)
    /* 24BC8 00123C48 2DA08000 */  daddu      $s4, $a0, $zero
    /* 24BCC 00123C4C 3000B2FF */  sd         $s2, 0x30($sp)
    /* 24BD0 00123C50 2D98A000 */  daddu      $s3, $a1, $zero
    /* 24BD4 00123C54 8000BFFF */  sd         $ra, 0x80($sp)
    /* 24BD8 00123C58 7000B6FF */  sd         $s6, 0x70($sp)
    /* 24BDC 00123C5C 2000B1FF */  sd         $s1, 0x20($sp)
    /* 24BE0 00123C60 1000B0FF */  sd         $s0, 0x10($sp)
    /* 24BE4 00123C64 2400A28E */  lw         $v0, 0x24($s5)
    /* 24BE8 00123C68 03004014 */  bnez       $v0, .L00123C78
    /* 24BEC 00123C6C 2D90C000 */   daddu     $s2, $a2, $zero
    /* 24BF0 00123C70 2A000010 */  b          .L00123D1C
    /* 24BF4 00123C74 9CFF0224 */   addiu     $v0, $zero, -0x64
.align 2
  .L00123C78:
    /* 24BF8 00123C78 1300163C */  lui        $s6, %hi(D_00132EAC)
    /* 24BFC 00123C7C 3063040C */  jal        func_00118CC0
    /* 24C00 00123C80 AC2EC48E */   lw        $a0, %lo(D_00132EAC)($s6)
    /* 24C04 00123C84 03004104 */  bgez       $v0, .L00123C94
    /* 24C08 00123C88 1600023C */   lui       $v0, %hi(D_00159B80)
    /* 24C0C 00123C8C 23000010 */  b          .L00123D1C
    /* 24C10 00123C90 38FF0224 */   addiu     $v0, $zero, -0xC8
.align 2
  .L00123C94:
    /* 24C14 00123C94 1600103C */  lui        $s0, %hi(D_0015A000)
    /* 24C18 00123C98 00A01026 */  addiu      $s0, $s0, %lo(D_0015A000)
    /* 24C1C 00123C9C 809B5124 */  addiu      $s1, $v0, %lo(D_00159B80)
    /* 24C20 00123CA0 809B54AC */  sw         $s4, %lo(D_00159B80)($v0)
    /* 24C24 00123CA4 2D206002 */  daddu      $a0, $s3, $zero
    /* 24C28 00123CA8 1C0030AE */  sw         $s0, 0x1C($s1)
    /* 24C2C 00123CAC 2D284002 */  daddu      $a1, $s2, $zero
    /* 24C30 00123CB0 180033AE */  sw         $s3, 0x18($s1)
    /* 24C34 00123CB4 5C6B040C */  jal        func_0011AD70
    /* 24C38 00123CB8 0C0032AE */   sw        $s2, 0xC($s1)
    /* 24C3C 00123CBC 2D200002 */  daddu      $a0, $s0, $zero
    /* 24C40 00123CC0 5C6B040C */  jal        func_0011AD70
    /* 24C44 00123CC4 C0000524 */   addiu     $a1, $zero, 0xC0
    /* 24C48 00123CC8 1600093C */  lui        $t1, %hi(D_0015B0C0)
    /* 24C4C 00123CCC 12000B3C */  lui        $t3, %hi(func_00123BA0)
    /* 24C50 00123CD0 0000B0AF */  sw         $s0, 0x0($sp)
    /* 24C54 00123CD4 2D20A002 */  daddu      $a0, $s5, $zero
    /* 24C58 00123CD8 2D382002 */  daddu      $a3, $s1, $zero
    /* 24C5C 00123CDC C0B02925 */  addiu      $t1, $t1, %lo(D_0015B0C0)
    /* 24C60 00123CE0 A03B6B25 */  addiu      $t3, $t3, %lo(func_00123BA0)
    /* 24C64 00123CE4 05000524 */  addiu      $a1, $zero, 0x5
    /* 24C68 00123CE8 01000624 */  addiu      $a2, $zero, 0x1
    /* 24C6C 00123CEC 30000824 */  addiu      $t0, $zero, 0x30
    /* 24C70 00123CF0 326D040C */  jal        func_0011B4C8
    /* 24C74 00123CF4 04000A24 */   addiu     $t2, $zero, 0x4
    /* 24C78 00123CF8 2D804000 */  daddu      $s0, $v0, $zero
    /* 24C7C 00123CFC 04000016 */  bnez       $s0, .L00123D10
    /* 24C80 00123D00 1300033C */   lui       $v1, %hi(D_00132EA8)
    /* 24C84 00123D04 05000224 */  addiu      $v0, $zero, 0x5
    /* 24C88 00123D08 03000010 */  b          .L00123D18
    /* 24C8C 00123D0C A82E62AC */   sw        $v0, %lo(D_00132EA8)($v1)
.align 2
  .L00123D10:
    /* 24C90 00123D10 2463040C */  jal        func_00118C90
    /* 24C94 00123D14 AC2EC48E */   lw        $a0, %lo(D_00132EAC)($s6)
.align 2
  .L00123D18:
    /* 24C98 00123D18 2D100002 */  daddu      $v0, $s0, $zero
.align 2
  .L00123D1C:
    /* 24C9C 00123D1C 8000BFDF */  ld         $ra, 0x80($sp)
    /* 24CA0 00123D20 7000B6DF */  ld         $s6, 0x70($sp)
    /* 24CA4 00123D24 6000B5DF */  ld         $s5, 0x60($sp)
    /* 24CA8 00123D28 5000B4DF */  ld         $s4, 0x50($sp)
    /* 24CAC 00123D2C 4000B3DF */  ld         $s3, 0x40($sp)
    /* 24CB0 00123D30 3000B2DF */  ld         $s2, 0x30($sp)
    /* 24CB4 00123D34 2000B1DF */  ld         $s1, 0x20($sp)
    /* 24CB8 00123D38 1000B0DF */  ld         $s0, 0x10($sp)
    /* 24CBC 00123D3C 0800E003 */  jr         $ra
    /* 24CC0 00123D40 9000BD27 */   addiu     $sp, $sp, 0x90
endlabel func_00123C30
    /* 24CC4 00123D44 00000000 */  nop
