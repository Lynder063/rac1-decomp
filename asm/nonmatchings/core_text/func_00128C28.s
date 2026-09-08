.align 3
nonmatching func_00128C28, 0x64

glabel func_00128C28
    /* 29BA8 00128C28 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 29BAC 00128C2C 05000524 */  addiu      $a1, $zero, 0x5
    /* 29BB0 00128C30 0000B0FF */  sd         $s0, 0x0($sp)
    /* 29BB4 00128C34 1000BFFF */  sd         $ra, 0x10($sp)
    /* 29BB8 00128C38 96A2040C */  jal        func_00128A58
    /* 29BBC 00128C3C 2D808000 */   daddu     $s0, $a0, $zero
    /* 29BC0 00128C40 B40102AE */  sw         $v0, 0x1B4($s0)
    /* 29BC4 00128C44 2D200002 */  daddu      $a0, $s0, $zero
    /* 29BC8 00128C48 96A2040C */  jal        func_00128A58
    /* 29BCC 00128C4C 01000524 */   addiu     $a1, $zero, 0x1
    /* 29BD0 00128C50 0A004010 */  beqz       $v0, .L00128C7C
    /* 29BD4 00128C54 1000BFDF */   ld        $ra, 0x10($sp)
    /* 29BD8 00128C58 2D200002 */  daddu      $a0, $s0, $zero
    /* 29BDC 00128C5C 96A2040C */  jal        func_00128A58
    /* 29BE0 00128C60 01000524 */   addiu     $a1, $zero, 0x1
    /* 29BE4 00128C64 2D200002 */  daddu      $a0, $s0, $zero
    /* 29BE8 00128C68 5AA2040C */  jal        func_00128968
    /* 29BEC 00128C6C 07000524 */   addiu     $a1, $zero, 0x7
    /* 29BF0 00128C70 60A4040C */  jal        func_00129180
    /* 29BF4 00128C74 2D200002 */   daddu     $a0, $s0, $zero
    /* 29BF8 00128C78 1000BFDF */  ld         $ra, 0x10($sp)
.align 2
  .L00128C7C:
    /* 29BFC 00128C7C 2D100000 */  daddu      $v0, $zero, $zero
    /* 29C00 00128C80 0000B0DF */  ld         $s0, 0x0($sp)
    /* 29C04 00128C84 0800E003 */  jr         $ra
    /* 29C08 00128C88 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_00128C28
    /* 29C0C 00128C8C 00000000 */  nop
