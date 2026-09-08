.align 3
nonmatching func_001FFD30, 0x68

glabel func_001FFD30
    /* 100CB0 001FFD30 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 100CB4 001FFD34 0000B07F */  sq         $s0, 0x0($sp)
    /* 100CB8 001FFD38 2D808000 */  daddu      $s0, $a0, $zero
    /* 100CBC 001FFD3C 1000BF7F */  sq         $ra, 0x10($sp)
    /* 100CC0 001FFD40 9AFD070C */  jal        func_001FF668
    /* 100CC4 001FFD44 2D20A000 */   daddu     $a0, $a1, $zero
    /* 100CC8 001FFD48 1A00063C */  lui        $a2, %hi(D_0019A4E8)
    /* 100CCC 001FFD4C C0200200 */  sll        $a0, $v0, 3
    /* 100CD0 001FFD50 E8A4C624 */  addiu      $a2, $a2, %lo(D_0019A4E8)
    /* 100CD4 001FFD54 1000BF7B */  lq         $ra, 0x10($sp)
    /* 100CD8 001FFD58 1C00C38C */  lw         $v1, 0x1C($a2)
    /* 100CDC 001FFD5C 21188300 */  addu       $v1, $a0, $v1
    /* 100CE0 001FFD60 00006594 */  lhu        $a1, 0x0($v1)
    /* 100CE4 001FFD64 400002A6 */  sh         $v0, 0x40($s0)
    /* 100CE8 001FFD68 000005AE */  sw         $a1, 0x0($s0)
    /* 100CEC 001FFD6C 1C00C28C */  lw         $v0, 0x1C($a2)
    /* 100CF0 001FFD70 21108200 */  addu       $v0, $a0, $v0
    /* 100CF4 001FFD74 06004390 */  lbu        $v1, 0x6($v0)
    /* 100CF8 001FFD78 420003A2 */  sb         $v1, 0x42($s0)
    /* 100CFC 001FFD7C 1C00C28C */  lw         $v0, 0x1C($a2)
    /* 100D00 001FFD80 21208200 */  addu       $a0, $a0, $v0
    /* 100D04 001FFD84 04008394 */  lhu        $v1, 0x4($a0)
    /* 100D08 001FFD88 440003AE */  sw         $v1, 0x44($s0)
    /* 100D0C 001FFD8C 0000B07B */  lq         $s0, 0x0($sp)
    /* 100D10 001FFD90 0800E003 */  jr         $ra
    /* 100D14 001FFD94 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_001FFD30
