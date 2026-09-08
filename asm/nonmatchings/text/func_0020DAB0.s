.align 3
nonmatching func_0020DAB0, 0x48

glabel func_0020DAB0
    /* 10EA30 0020DAB0 1B00023C */  lui        $v0, %hi(D_001B2F40)
    /* 10EA34 0020DAB4 FF000624 */  addiu      $a2, $zero, 0xFF
    /* 10EA38 0020DAB8 402F4424 */  addiu      $a0, $v0, %lo(D_001B2F40)
    /* 10EA3C 0020DABC 0F000524 */  addiu      $a1, $zero, 0xF
.align 2
  .L0020DAC0:
    /* 10EA40 0020DAC0 0000838C */  lw         $v1, 0x0($a0)
    /* 10EA44 0020DAC4 08006010 */  beqz       $v1, .L0020DAE8
    /* 10EA48 0020DAC8 FFFFA524 */   addiu     $a1, $a1, -0x1
    /* 10EA4C 0020DACC 20006290 */  lbu        $v0, 0x20($v1)
    /* 10EA50 0020DAD0 80004230 */  andi       $v0, $v0, 0x80
    /* 10EA54 0020DAD4 04004054 */  bnel       $v0, $zero, .L0020DAE8
    /* 10EA58 0020DAD8 000080AC */   sw        $zero, 0x0($a0)
    /* 10EA5C 0020DADC 52006290 */  lbu        $v0, 0x52($v1)
    /* 10EA60 0020DAE0 01004654 */  bnel       $v0, $a2, .L0020DAE8
    /* 10EA64 0020DAE4 000080AC */   sw        $zero, 0x0($a0)
.align 2
  .L0020DAE8:
    /* 10EA68 0020DAE8 F5FFA104 */  bgez       $a1, .L0020DAC0
    /* 10EA6C 0020DAEC 04008424 */   addiu     $a0, $a0, 0x4
    /* 10EA70 0020DAF0 0800E003 */  jr         $ra
    /* 10EA74 0020DAF4 00000000 */   nop
endlabel func_0020DAB0
