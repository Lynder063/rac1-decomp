.align 3
nonmatching func_0020DAB0, 0x48

glabel func_0020DAB0
    /* 10EA30 0020DAB0 1B00023C */  lui        $2, %hi(D_001B2F40)
    /* 10EA34 0020DAB4 FF000624 */  addiu      $6, $0, 0xFF
    /* 10EA38 0020DAB8 402F4424 */  addiu      $4, $2, %lo(D_001B2F40)
    /* 10EA3C 0020DABC 0F000524 */  addiu      $5, $0, 0xF
.align 2
  .L0020DAC0:
    /* 10EA40 0020DAC0 0000838C */  lw         $3, 0x0($4)
    /* 10EA44 0020DAC4 08006010 */  beqz       $3, .L0020DAE8
    /* 10EA48 0020DAC8 FFFFA524 */   addiu     $5, $5, -0x1
    /* 10EA4C 0020DACC 20006290 */  lbu        $2, 0x20($3)
    /* 10EA50 0020DAD0 80004230 */  andi       $2, $2, 0x80
    /* 10EA54 0020DAD4 04004054 */  bnel       $2, $0, .L0020DAE8
    /* 10EA58 0020DAD8 000080AC */   sw        $0, 0x0($4)
    /* 10EA5C 0020DADC 52006290 */  lbu        $2, 0x52($3)
    /* 10EA60 0020DAE0 01004654 */  bnel       $2, $6, .L0020DAE8
    /* 10EA64 0020DAE4 000080AC */   sw        $0, 0x0($4)
.align 2
  .L0020DAE8:
    /* 10EA68 0020DAE8 F5FFA104 */  bgez       $5, .L0020DAC0
    /* 10EA6C 0020DAEC 04008424 */   addiu     $4, $4, 0x4
    /* 10EA70 0020DAF0 0800E003 */  jr         $31
    /* 10EA74 0020DAF4 00000000 */   nop
endlabel func_0020DAB0
