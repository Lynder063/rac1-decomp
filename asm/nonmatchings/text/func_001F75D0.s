.align 3
nonmatching func_001F75D0, 0x6C

glabel func_001F75D0
    /* F8550 001F75D0 B0FFBD27 */  addiu      $sp, $sp, -0x50
    /* F8554 001F75D4 0000B07F */  sq         $s0, 0x0($sp)
    /* F8558 001F75D8 3000B37F */  sq         $s3, 0x30($sp)
    /* F855C 001F75DC 2D808000 */  daddu      $s0, $a0, $zero
    /* F8560 001F75E0 2000B27F */  sq         $s2, 0x20($sp)
    /* F8564 001F75E4 2D98E000 */  daddu      $s3, $a3, $zero
    /* F8568 001F75E8 1000B17F */  sq         $s1, 0x10($sp)
    /* F856C 001F75EC 2D90C000 */  daddu      $s2, $a2, $zero
    /* F8570 001F75F0 4000BF7F */  sq         $ra, 0x40($sp)
    /* F8574 001F75F4 2D88A000 */  daddu      $s1, $a1, $zero
    /* F8578 001F75F8 1AD2070C */  jal        func_001F4868
    /* F857C 001F75FC 02000424 */   addiu     $a0, $zero, 0x2
    /* F8580 001F7600 1E00093C */  lui        $t1, %hi(D_001DF770)
    /* F8584 001F7604 2D200002 */  daddu      $a0, $s0, $zero
    /* F8588 001F7608 2D282002 */  daddu      $a1, $s1, $zero
    /* F858C 001F760C 2D304002 */  daddu      $a2, $s2, $zero
    /* F8590 001F7610 2D386002 */  daddu      $a3, $s3, $zero
    /* F8594 001F7614 2D404000 */  daddu      $t0, $v0, $zero
    /* F8598 001F7618 1CDC070C */  jal        func_001F7070
    /* F859C 001F761C 70F72925 */   addiu     $t1, $t1, %lo(D_001DF770)
    /* F85A0 001F7620 4000BF7B */  lq         $ra, 0x40($sp)
    /* F85A4 001F7624 3000B37B */  lq         $s3, 0x30($sp)
    /* F85A8 001F7628 2000B27B */  lq         $s2, 0x20($sp)
    /* F85AC 001F762C 1000B17B */  lq         $s1, 0x10($sp)
    /* F85B0 001F7630 0000B07B */  lq         $s0, 0x0($sp)
    /* F85B4 001F7634 0800E003 */  jr         $ra
    /* F85B8 001F7638 5000BD27 */   addiu     $sp, $sp, 0x50
endlabel func_001F75D0
    /* F85BC 001F763C 00000000 */  nop
