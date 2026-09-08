.align 3
nonmatching func_0012EF48, 0x9C

glabel func_0012EF48
    /* 2FEC8 0012EF48 E0FFBD27 */  addiu      $29, $29, -0x20
    /* 2FECC 0012EF4C 8C80828F */  lw         $2, -0x7F74($28)
    /* 2FED0 0012EF50 0000B07F */  sq         $16, 0x0($29)
    /* 2FED4 0012EF54 1000BF7F */  sq         $31, 0x10($29)
    /* 2FED8 0012EF58 05004014 */  bnez       $2, .L0012EF70
    /* 2FEDC 0012EF5C 2D808000 */   daddu     $16, $4, $0
    /* 2FEE0 0012EF60 CC83040C */  jal        func_00120F30
    /* 2FEE4 0012EF64 00000000 */   nop
    /* 2FEE8 0012EF68 1B000010 */  b          .L0012EFD8
    /* 2FEEC 0012EF6C 1000BF7B */   lq        $31, 0x10($29)
.align 2
  .L0012EF70:
    /* 2FEF0 0012EF70 6063040C */  jal        func_00118D80
    /* 2FEF4 0012EF74 2D200000 */   daddu     $4, $0, $0
    /* 2FEF8 0012EF78 1300043C */  lui        $4, %hi(D_00137C00)
    /* 2FEFC 0012EF7C 01000324 */  addiu      $3, $0, 0x1
    /* 2FF00 0012EF80 007C828C */  lw         $2, %lo(D_00137C00)($4)
    /* 2FF04 0012EF84 0100422C */  sltiu      $2, $2, 0x1
    /* 2FF08 0012EF88 11004310 */  beq        $2, $3, .L0012EFD0
    /* 2FF0C 0012EF8C 988082AF */   sw        $2, -0x7F68($28)
    /* 2FF10 0012EF90 03000316 */  bne        $16, $3, .L0012EFA0
    /* 2FF14 0012EF94 00000000 */   nop
    /* 2FF18 0012EF98 0E000010 */  b          .L0012EFD4
    /* 2FF1C 0012EF9C 01000224 */   addiu     $2, $0, 0x1
.align 2
  .L0012EFA0:
    /* 2FF20 0012EFA0 0C004014 */  bnez       $2, .L0012EFD4
    /* 2FF24 0012EFA4 2D100000 */   daddu     $2, $0, $0
    /* 2FF28 0012EFA8 2D808000 */  daddu      $16, $4, $0
    /* 2FF2C 0012EFAC 00000000 */  nop
.align 2
  .L0012EFB0:
    /* 2FF30 0012EFB0 70B7040C */  jal        func_0012DDC0
    /* 2FF34 0012EFB4 00000000 */   nop
    /* 2FF38 0012EFB8 6063040C */  jal        func_00118D80
    /* 2FF3C 0012EFBC 2D200000 */   daddu     $4, $0, $0
    /* 2FF40 0012EFC0 007C028E */  lw         $2, %lo(D_00137C00)($16)
    /* 2FF44 0012EFC4 0100422C */  sltiu      $2, $2, 0x1
    /* 2FF48 0012EFC8 F9FF4010 */  beqz       $2, .L0012EFB0
    /* 2FF4C 0012EFCC 988082AF */   sw        $2, -0x7F68($28)
.align 2
  .L0012EFD0:
    /* 2FF50 0012EFD0 2D100000 */  daddu      $2, $0, $0
.align 2
  .L0012EFD4:
    /* 2FF54 0012EFD4 1000BF7B */  lq         $31, 0x10($29)
.align 2
  .L0012EFD8:
    /* 2FF58 0012EFD8 0000B07B */  lq         $16, 0x0($29)
    /* 2FF5C 0012EFDC 0800E003 */  jr         $31
    /* 2FF60 0012EFE0 2000BD27 */   addiu     $29, $29, 0x20
endlabel func_0012EF48
    /* 2FF64 0012EFE4 00000000 */  nop
