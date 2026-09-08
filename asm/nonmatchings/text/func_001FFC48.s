.align 3
nonmatching func_001FFC48, 0x68

glabel func_001FFC48
    /* 100BC8 001FFC48 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 100BCC 001FFC4C 0000B07F */  sq         $s0, 0x0($sp)
    /* 100BD0 001FFC50 1000BF7F */  sq         $ra, 0x10($sp)
    /* 100BD4 001FFC54 2D808000 */  daddu      $s0, $a0, $zero
    /* 100BD8 001FFC58 4CFF070C */  jal        func_001FFD30
    /* 100BDC 001FFC5C 2000058E */   lw        $a1, 0x20($s0)
    /* 100BE0 001FFC60 3000078E */  lw         $a3, 0x30($s0)
    /* 100BE4 001FFC64 2400028E */  lw         $v0, 0x24($s0)
    /* 100BE8 001FFC68 3400038E */  lw         $v1, 0x34($s0)
    /* 100BEC 001FFC6C 3800048E */  lw         $a0, 0x38($s0)
    /* 100BF0 001FFC70 2C00058E */  lw         $a1, 0x2C($s0)
    /* 100BF4 001FFC74 2800068E */  lw         $a2, 0x28($s0)
    /* 100BF8 001FFC78 040002AE */  sw         $v0, 0x4($s0)
    /* 100BFC 001FFC7C 140003AE */  sw         $v1, 0x14($s0)
    /* 100C00 001FFC80 180004AE */  sw         $a0, 0x18($s0)
    /* 100C04 001FFC84 0C0005AE */  sw         $a1, 0xC($s0)
    /* 100C08 001FFC88 080006AE */  sw         $a2, 0x8($s0)
    /* 100C0C 001FFC8C 0300E010 */  beqz       $a3, .L001FFC9C
    /* 100C10 001FFC90 100007AE */   sw        $a3, 0x10($s0)
    /* 100C14 001FFC94 09F8E000 */  jalr       $a3
    /* 100C18 001FFC98 2D200002 */   daddu     $a0, $s0, $zero
.align 2
  .L001FFC9C:
    /* 100C1C 001FFC9C 680000AE */  sw         $zero, 0x68($s0)
    /* 100C20 001FFCA0 1000BF7B */  lq         $ra, 0x10($sp)
    /* 100C24 001FFCA4 0000B07B */  lq         $s0, 0x0($sp)
    /* 100C28 001FFCA8 0800E003 */  jr         $ra
    /* 100C2C 001FFCAC 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_001FFC48
