.align 3
nonmatching func_001FFC48, 0x68

glabel func_001FFC48
    /* 100BC8 001FFC48 E0FFBD27 */  addiu      $29, $29, -0x20
    /* 100BCC 001FFC4C 0000B07F */  sq         $16, 0x0($29)
    /* 100BD0 001FFC50 1000BF7F */  sq         $31, 0x10($29)
    /* 100BD4 001FFC54 2D808000 */  daddu      $16, $4, $0
    /* 100BD8 001FFC58 4CFF070C */  jal        func_001FFD30
    /* 100BDC 001FFC5C 2000058E */   lw        $5, 0x20($16)
    /* 100BE0 001FFC60 3000078E */  lw         $7, 0x30($16)
    /* 100BE4 001FFC64 2400028E */  lw         $2, 0x24($16)
    /* 100BE8 001FFC68 3400038E */  lw         $3, 0x34($16)
    /* 100BEC 001FFC6C 3800048E */  lw         $4, 0x38($16)
    /* 100BF0 001FFC70 2C00058E */  lw         $5, 0x2C($16)
    /* 100BF4 001FFC74 2800068E */  lw         $6, 0x28($16)
    /* 100BF8 001FFC78 040002AE */  sw         $2, 0x4($16)
    /* 100BFC 001FFC7C 140003AE */  sw         $3, 0x14($16)
    /* 100C00 001FFC80 180004AE */  sw         $4, 0x18($16)
    /* 100C04 001FFC84 0C0005AE */  sw         $5, 0xC($16)
    /* 100C08 001FFC88 080006AE */  sw         $6, 0x8($16)
    /* 100C0C 001FFC8C 0300E010 */  beqz       $7, .L001FFC9C
    /* 100C10 001FFC90 100007AE */   sw        $7, 0x10($16)
    /* 100C14 001FFC94 09F8E000 */  jalr       $7
    /* 100C18 001FFC98 2D200002 */   daddu     $4, $16, $0
.align 2
  .L001FFC9C:
    /* 100C1C 001FFC9C 680000AE */  sw         $0, 0x68($16)
    /* 100C20 001FFCA0 1000BF7B */  lq         $31, 0x10($29)
    /* 100C24 001FFCA4 0000B07B */  lq         $16, 0x0($29)
    /* 100C28 001FFCA8 0800E003 */  jr         $31
    /* 100C2C 001FFCAC 2000BD27 */   addiu     $29, $29, 0x20
endlabel func_001FFC48
