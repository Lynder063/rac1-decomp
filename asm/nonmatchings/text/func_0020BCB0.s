.align 3
nonmatching func_0020BCB0, 0xBC

glabel func_0020BCB0
    /* 10CC30 0020BCB0 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 10CC34 0020BCB4 0000B07F */  sq         $s0, 0x0($sp)
    /* 10CC38 0020BCB8 2000B27F */  sq         $s2, 0x20($sp)
    /* 10CC3C 0020BCBC 2D808000 */  daddu      $s0, $a0, $zero
    /* 10CC40 0020BCC0 1000B17F */  sq         $s1, 0x10($sp)
    /* 10CC44 0020BCC4 2D90A000 */  daddu      $s2, $a1, $zero
    /* 10CC48 0020BCC8 3000BF7F */  sq         $ra, 0x30($sp)
    /* 10CC4C 0020BCCC E22E080C */  jal        func_0020BB88
    /* 10CC50 0020BCD0 2D88C000 */   daddu     $s1, $a2, $zero
    /* 10CC54 0020BCD4 10001026 */  addiu      $s0, $s0, 0x10
    /* 10CC58 0020BCD8 1C000324 */  addiu      $v1, $zero, 0x1C
    /* 10CC5C 0020BCDC C0000424 */  addiu      $a0, $zero, 0xC0
    /* 10CC60 0020BCE0 18904402 */  mult       $s2, $s2, $a0
    /* 10CC64 0020BCE4 18882302 */  mult       $s1, $s1, $v1
    /* 10CC68 0020BCE8 1400033C */  lui        $v1, %hi(D_0013D390)
    /* 10CC6C 0020BCEC 0100422C */  sltiu      $v0, $v0, 0x1
    /* 10CC70 0020BCF0 90D36324 */  addiu      $v1, $v1, %lo(D_0013D390)
    /* 10CC74 0020BCF4 3000BF7B */  lq         $ra, 0x30($sp)
    /* 10CC78 0020BCF8 30006624 */  addiu      $a2, $v1, 0x30
    /* 10CC7C 0020BCFC 21883202 */  addu       $s1, $s1, $s2
    /* 10CC80 0020BD00 21207100 */  addu       $a0, $v1, $s1
    /* 10CC84 0020BD04 2000B27B */  lq         $s2, 0x20($sp)
    /* 10CC88 0020BD08 380082AC */  sw         $v0, 0x38($a0)
    /* 10CC8C 0020BD0C 2D288000 */  daddu      $a1, $a0, $zero
    /* 10CC90 0020BD10 2D188000 */  daddu      $v1, $a0, $zero
    /* 10CC94 0020BD14 2D388000 */  daddu      $a3, $a0, $zero
    /* 10CC98 0020BD18 2D408000 */  daddu      $t0, $a0, $zero
    /* 10CC9C 0020BD1C 21882602 */  addu       $s1, $s1, $a2
    /* 10CCA0 0020BD20 0000048E */  lw         $a0, 0x0($s0)
    /* 10CCA4 0020BD24 0C001026 */  addiu      $s0, $s0, 0xC
    /* 10CCA8 0020BD28 2000A4AC */  sw         $a0, 0x20($a1)
    /* 10CCAC 0020BD2C 0000028E */  lw         $v0, 0x0($s0)
    /* 10CCB0 0020BD30 0C001026 */  addiu      $s0, $s0, 0xC
    /* 10CCB4 0020BD34 2400E2AC */  sw         $v0, 0x24($a3)
    /* 10CCB8 0020BD38 0000048E */  lw         $a0, 0x0($s0)
    /* 10CCBC 0020BD3C 0C001026 */  addiu      $s0, $s0, 0xC
    /* 10CCC0 0020BD40 280004AD */  sw         $a0, 0x28($t0)
    /* 10CCC4 0020BD44 0000028E */  lw         $v0, 0x0($s0)
    /* 10CCC8 0020BD48 2C0062AC */  sw         $v0, 0x2C($v1)
    /* 10CCCC 0020BD4C 1300026A */  ldl        $v0, 0x13($s0)
    /* 10CCD0 0020BD50 0C00026E */  ldr        $v0, 0xC($s0)
    /* 10CCD4 0020BD54 070022B2 */  sdl        $v0, 0x7($s1)
    /* 10CCD8 0020BD58 000022B6 */  sdr        $v0, 0x0($s1)
    /* 10CCDC 0020BD5C 1000B17B */  lq         $s1, 0x10($sp)
    /* 10CCE0 0020BD60 0000B07B */  lq         $s0, 0x0($sp)
    /* 10CCE4 0020BD64 0800E003 */  jr         $ra
    /* 10CCE8 0020BD68 4000BD27 */   addiu     $sp, $sp, 0x40
endlabel func_0020BCB0
    /* 10CCEC 0020BD6C 00000000 */  nop
