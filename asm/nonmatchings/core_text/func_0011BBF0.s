.align 3
nonmatching func_0011BBF0, 0x4C

glabel func_0011BBF0
    /* 1CB70 0011BBF0 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 1CB74 0011BBF4 FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 1CB78 0011BBF8 2000B0FF */  sd         $s0, 0x20($sp)
    /* 1CB7C 0011BBFC 1300103C */  lui        $s0, %hi(D_0012FD9C)
    /* 1CB80 0011BC00 3000BFFF */  sd         $ra, 0x30($sp)
    /* 1CB84 0011BC04 9CFD028E */  lw         $v0, %lo(D_0012FD9C)($s0)
    /* 1CB88 0011BC08 09004314 */  bne        $v0, $v1, .L0011BC30
    /* 1CB8C 0011BC0C 3000BFDF */   ld        $ra, 0x30($sp)
    /* 1CB90 0011BC10 01000224 */  addiu      $v0, $zero, 0x1
    /* 1CB94 0011BC14 1400A0AF */  sw         $zero, 0x14($sp)
    /* 1CB98 0011BC18 0400A2AF */  sw         $v0, 0x4($sp)
    /* 1CB9C 0011BC1C 2D20A003 */  daddu      $a0, $sp, $zero
    /* 1CBA0 0011BC20 1C63040C */  jal        func_00118C70
    /* 1CBA4 0011BC24 0800A2AF */   sw        $v0, 0x8($sp)
    /* 1CBA8 0011BC28 9CFD02AE */  sw         $v0, %lo(D_0012FD9C)($s0)
    /* 1CBAC 0011BC2C 3000BFDF */  ld         $ra, 0x30($sp)
.align 2
  .L0011BC30:
    /* 1CBB0 0011BC30 2000B0DF */  ld         $s0, 0x20($sp)
    /* 1CBB4 0011BC34 0800E003 */  jr         $ra
    /* 1CBB8 0011BC38 4000BD27 */   addiu     $sp, $sp, 0x40
endlabel func_0011BBF0
    /* 1CBBC 0011BC3C 00000000 */  nop
