.align 3
nonmatching func_001FFD30, 0x68

glabel func_001FFD30
    /* 100CB0 001FFD30 E0FFBD27 */  addiu      $29, $29, -0x20
    /* 100CB4 001FFD34 0000B07F */  sq         $16, 0x0($29)
    /* 100CB8 001FFD38 2D808000 */  daddu      $16, $4, $0
    /* 100CBC 001FFD3C 1000BF7F */  sq         $31, 0x10($29)
    /* 100CC0 001FFD40 9AFD070C */  jal        func_001FF668
    /* 100CC4 001FFD44 2D20A000 */   daddu     $4, $5, $0
    /* 100CC8 001FFD48 1A00063C */  lui        $6, %hi(D_0019A4E8)
    /* 100CCC 001FFD4C C0200200 */  sll        $4, $2, 3
    /* 100CD0 001FFD50 E8A4C624 */  addiu      $6, $6, %lo(D_0019A4E8)
    /* 100CD4 001FFD54 1000BF7B */  lq         $31, 0x10($29)
    /* 100CD8 001FFD58 1C00C38C */  lw         $3, 0x1C($6)
    /* 100CDC 001FFD5C 21188300 */  addu       $3, $4, $3
    /* 100CE0 001FFD60 00006594 */  lhu        $5, 0x0($3)
    /* 100CE4 001FFD64 400002A6 */  sh         $2, 0x40($16)
    /* 100CE8 001FFD68 000005AE */  sw         $5, 0x0($16)
    /* 100CEC 001FFD6C 1C00C28C */  lw         $2, 0x1C($6)
    /* 100CF0 001FFD70 21108200 */  addu       $2, $4, $2
    /* 100CF4 001FFD74 06004390 */  lbu        $3, 0x6($2)
    /* 100CF8 001FFD78 420003A2 */  sb         $3, 0x42($16)
    /* 100CFC 001FFD7C 1C00C28C */  lw         $2, 0x1C($6)
    /* 100D00 001FFD80 21208200 */  addu       $4, $4, $2
    /* 100D04 001FFD84 04008394 */  lhu        $3, 0x4($4)
    /* 100D08 001FFD88 440003AE */  sw         $3, 0x44($16)
    /* 100D0C 001FFD8C 0000B07B */  lq         $16, 0x0($29)
    /* 100D10 001FFD90 0800E003 */  jr         $31
    /* 100D14 001FFD94 2000BD27 */   addiu     $29, $29, 0x20
endlabel func_001FFD30
