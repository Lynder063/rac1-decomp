.align 3
nonmatching func_0021E2D0, 0x6C

glabel func_0021E2D0
    /* 11F250 0021E2D0 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 11F254 0021E2D4 1500033C */  lui        $v1, %hi(D_001517D8)
    /* 11F258 0021E2D8 0000B07F */  sq         $s0, 0x0($sp)
    /* 11F25C 0021E2DC D8176284 */  lh         $v0, %lo(D_001517D8)($v1)
    /* 11F260 0021E2E0 2D808000 */  daddu      $s0, $a0, $zero
    /* 11F264 0021E2E4 07004010 */  beqz       $v0, .L0021E304
    /* 11F268 0021E2E8 1000BF7F */   sq        $ra, 0x10($sp)
    /* 11F26C 0021E2EC 5000038E */  lw         $v1, 0x50($s0)
    /* 11F270 0021E2F0 01000224 */  addiu      $v0, $zero, 0x1
    /* 11F274 0021E2F4 03006214 */  bne        $v1, $v0, .L0021E304
    /* 11F278 0021E2F8 00000000 */   nop
    /* 11F27C 0021E2FC 625D080C */  jal        func_00217588
    /* 11F280 0021E300 00000000 */   nop
.align 2
  .L0021E304:
    /* 11F284 0021E304 549B080C */  jal        func_00226D50
    /* 11F288 0021E308 01000424 */   addiu     $a0, $zero, 0x1
    /* 11F28C 0021E30C 5400058E */  lw         $a1, 0x54($s0)
    /* 11F290 0021E310 0500A010 */  beqz       $a1, .L0021E328
    /* 11F294 0021E314 1A00023C */   lui       $v0, %hi(D_001997FC)
    /* 11F298 0021E318 3800038E */  lw         $v1, 0x38($s0)
    /* 11F29C 0021E31C 1600013C */  lui        $at, %hi(D_0015F780)
    /* 11F2A0 0021E320 80F725AC */  sw         $a1, %lo(D_0015F780)($at)
    /* 11F2A4 0021E324 FC9743AC */  sw         $v1, %lo(D_001997FC)($v0)
.align 2
  .L0021E328:
    /* 11F2A8 0021E328 1000BF7B */  lq         $ra, 0x10($sp)
    /* 11F2AC 0021E32C 2D100000 */  daddu      $v0, $zero, $zero
    /* 11F2B0 0021E330 0000B07B */  lq         $s0, 0x0($sp)
    /* 11F2B4 0021E334 0800E003 */  jr         $ra
    /* 11F2B8 0021E338 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_0021E2D0
    /* 11F2BC 0021E33C 00000000 */  nop
