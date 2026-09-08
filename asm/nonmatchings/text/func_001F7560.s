.align 3
nonmatching func_001F7560, 0x6C

glabel func_001F7560
    /* F84E0 001F7560 B0FFBD27 */  addiu      $sp, $sp, -0x50
    /* F84E4 001F7564 0000B07F */  sq         $s0, 0x0($sp)
    /* F84E8 001F7568 3000B37F */  sq         $s3, 0x30($sp)
    /* F84EC 001F756C 2D808000 */  daddu      $s0, $a0, $zero
    /* F84F0 001F7570 2000B27F */  sq         $s2, 0x20($sp)
    /* F84F4 001F7574 2D98E000 */  daddu      $s3, $a3, $zero
    /* F84F8 001F7578 1000B17F */  sq         $s1, 0x10($sp)
    /* F84FC 001F757C 2D90C000 */  daddu      $s2, $a2, $zero
    /* F8500 001F7580 4000BF7F */  sq         $ra, 0x40($sp)
    /* F8504 001F7584 2D88A000 */  daddu      $s1, $a1, $zero
    /* F8508 001F7588 1AD2070C */  jal        func_001F4868
    /* F850C 001F758C 01000424 */   addiu     $a0, $zero, 0x1
    /* F8510 001F7590 1E00093C */  lui        $t1, %hi(D_001DF3D0)
    /* F8514 001F7594 2D200002 */  daddu      $a0, $s0, $zero
    /* F8518 001F7598 2D282002 */  daddu      $a1, $s1, $zero
    /* F851C 001F759C 2D304002 */  daddu      $a2, $s2, $zero
    /* F8520 001F75A0 2D386002 */  daddu      $a3, $s3, $zero
    /* F8524 001F75A4 2D404000 */  daddu      $t0, $v0, $zero
    /* F8528 001F75A8 1CDC070C */  jal        func_001F7070
    /* F852C 001F75AC D0F32925 */   addiu     $t1, $t1, %lo(D_001DF3D0)
    /* F8530 001F75B0 4000BF7B */  lq         $ra, 0x40($sp)
    /* F8534 001F75B4 3000B37B */  lq         $s3, 0x30($sp)
    /* F8538 001F75B8 2000B27B */  lq         $s2, 0x20($sp)
    /* F853C 001F75BC 1000B17B */  lq         $s1, 0x10($sp)
    /* F8540 001F75C0 0000B07B */  lq         $s0, 0x0($sp)
    /* F8544 001F75C4 0800E003 */  jr         $ra
    /* F8548 001F75C8 5000BD27 */   addiu     $sp, $sp, 0x50
endlabel func_001F7560
    /* F854C 001F75CC 00000000 */  nop
