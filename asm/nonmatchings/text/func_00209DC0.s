.align 3
nonmatching func_00209DC0, 0xA8

glabel func_00209DC0
    /* 10AD40 00209DC0 B0FFBD27 */  addiu      $sp, $sp, -0x50
    /* 10AD44 00209DC4 1000B07F */  sq         $s0, 0x10($sp)
    /* 10AD48 00209DC8 2D28A003 */  daddu      $a1, $sp, $zero
    /* 10AD4C 00209DCC 4000BF7F */  sq         $ra, 0x40($sp)
    /* 10AD50 00209DD0 1300103C */  lui        $s0, %hi(D_00137C80)
    /* 10AD54 00209DD4 3000B27F */  sq         $s2, 0x30($sp)
    /* 10AD58 00209DD8 807C1026 */  addiu      $s0, $s0, %lo(D_00137C80)
    /* 10AD5C 00209DDC 2000B17F */  sq         $s1, 0x20($sp)
    /* 10AD60 00209DE0 0400A637 */  ori        $a2, $sp, 0x4
    /* 10AD64 00209DE4 1400048E */  lw         $a0, 0x14($s0)
    /* 10AD68 00209DE8 C4F7070C */  jal        func_001FDF10
    /* 10AD6C 00209DEC C0220400 */   sll       $a0, $a0, 11
    /* 10AD70 00209DF0 D25D080C */  jal        func_00217748
    /* 10AD74 00209DF4 01000424 */   addiu     $a0, $zero, 0x1
    /* 10AD78 00209DF8 0000A48F */  lw         $a0, 0x0($sp)
    /* 10AD7C 00209DFC 1400068E */  lw         $a2, 0x14($s0)
    /* 10AD80 00209E00 B25D080C */  jal        func_002176C8
    /* 10AD84 00209E04 1000058E */   lw        $a1, 0x10($s0)
    /* 10AD88 00209E08 0000A38F */  lw         $v1, 0x0($sp)
    /* 10AD8C 00209E0C 1600123C */  lui        $s2, %hi(D_0015EEF0)
    /* 10AD90 00209E10 F0EE528E */  lw         $s2, %lo(D_0015EEF0)($s2)
    /* 10AD94 00209E14 1000648C */  lw         $a0, 0x10($v1)
    /* 10AD98 00209E18 1600113C */  lui        $s1, %hi(D_0015EEEC)
    /* 10AD9C 00209E1C ECEE318E */  lw         $s1, %lo(D_0015EEEC)($s1)
    /* 10ADA0 00209E20 1600103C */  lui        $s0, %hi(D_0015EEE8)
    /* 10ADA4 00209E24 E8EE108E */  lw         $s0, %lo(D_0015EEE8)($s0)
    /* 10ADA8 00209E28 3A27080C */  jal        func_00209CE8
    /* 10ADAC 00209E2C 21206400 */   addu      $a0, $v1, $a0
    /* 10ADB0 00209E30 1600013C */  lui        $at, %hi(D_0015EEF0)
    /* 10ADB4 00209E34 F0EE32AC */  sw         $s2, %lo(D_0015EEF0)($at)
    /* 10ADB8 00209E38 1600013C */  lui        $at, %hi(D_0015EEEC)
    /* 10ADBC 00209E3C ECEE31AC */  sw         $s1, %lo(D_0015EEEC)($at)
    /* 10ADC0 00209E40 1600013C */  lui        $at, %hi(D_0015EEE8)
    /* 10ADC4 00209E44 E8EE30AC */  sw         $s0, %lo(D_0015EEE8)($at)
    /* 10ADC8 00209E48 4000BF7B */  lq         $ra, 0x40($sp)
    /* 10ADCC 00209E4C 3000B27B */  lq         $s2, 0x30($sp)
    /* 10ADD0 00209E50 2000B17B */  lq         $s1, 0x20($sp)
    /* 10ADD4 00209E54 1000B07B */  lq         $s0, 0x10($sp)
    /* 10ADD8 00209E58 1600013C */  lui        $at, %hi(D_0015EE84)
    /* 10ADDC 00209E5C 84EE20AC */  sw         $zero, %lo(D_0015EE84)($at)
    /* 10ADE0 00209E60 0800E003 */  jr         $ra
    /* 10ADE4 00209E64 5000BD27 */   addiu     $sp, $sp, 0x50
endlabel func_00209DC0
