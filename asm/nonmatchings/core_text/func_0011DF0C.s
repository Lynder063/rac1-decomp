nonmatching func_0011DF0C, 0xBC

glabel func_0011DF0C
    /* 1EE8C 0011DF0C CDCDCDCD */  pref       0x0D, -0x3233($14)
    /* 1EE90 0011DF10 2000BD27 */  addiu      $29, $29, 0x20
    /* 1EE94 0011DF14 00000000 */  nop
.align 2
  alabel func_0011DF18
    /* 1EE98 0011DF18 1600073C */  lui        $7, %hi(D_0015ED18)
    /* 1EE9C 0011DF1C D0FFBD27 */  addiu      $29, $29, -0x30
    /* 1EEA0 0011DF20 18EDE58C */  lw         $5, %lo(D_0015ED18)($7)
    /* 1EEA4 0011DF24 FFFF0224 */  addiu      $2, $0, -0x1
    /* 1EEA8 0011DF28 2000BFFF */  sd         $31, 0x20($29)
    /* 1EEAC 0011DF2C 18EDE324 */  addiu      $3, $7, %lo(D_0015ED18)
    /* 1EEB0 0011DF30 1000B1FF */  sd         $17, 0x10($29)
    /* 1EEB4 0011DF34 1100A214 */  bne        $5, $2, .L0011DF7C
    /* 1EEB8 0011DF38 0000B0FF */   sd        $16, 0x0($29)
    /* 1EEBC 0011DF3C 0400628C */  lw         $2, 0x4($3)
    /* 1EEC0 0011DF40 0E004010 */  beqz       $2, .L0011DF7C
    /* 1EEC4 0011DF44 2D280000 */   daddu     $5, $0, $0
    /* 1EEC8 0011DF48 01000624 */  addiu      $6, $0, 0x1
    /* 1EECC 0011DF4C 2D28C000 */  daddu      $5, $6, $0
    /* 1EED0 0011DF50 18EDE424 */  addiu      $4, $7, %lo(D_0015ED18)
    /* 1EED4 0011DF54 00000000 */  nop
.align 2
  .L0011DF58:
    /* 1EED8 0011DF58 0100A364 */  daddiu     $3, $5, 0x1
    /* 1EEDC 0011DF5C 2D306000 */  daddu      $6, $3, $0
    /* 1EEE0 0011DF60 3C100600 */  dsll32     $2, $6, 0
    /* 1EEE4 0011DF64 3F100200 */  dsra32     $2, $2, 0
    /* 1EEE8 0011DF68 80100200 */  sll        $2, $2, 2
    /* 1EEEC 0011DF6C 21104400 */  addu       $2, $2, $4
    /* 1EEF0 0011DF70 0000438C */  lw         $3, 0x0($2)
    /* 1EEF4 0011DF74 F8FF6054 */  bnel       $3, $0, .L0011DF58
    /* 1EEF8 0011DF78 2D28C000 */   daddu     $5, $6, $0
.align 2
  .L0011DF7C:
    /* 1EEFC 0011DF7C 3C880500 */  dsll32     $17, $5, 0
    /* 1EF00 0011DF80 3F881100 */  dsra32     $17, $17, 0
    /* 1EF04 0011DF84 0B002012 */  beqz       $17, .L0011DFB4
    /* 1EF08 0011DF88 1600023C */   lui       $2, %hi(D_0015ED18)
    /* 1EF0C 0011DF8C 80181100 */  sll        $3, $17, 2
    /* 1EF10 0011DF90 18ED4224 */  addiu      $2, $2, %lo(D_0015ED18)
    /* 1EF14 0011DF94 21806200 */  addu       $16, $3, $2
    /* 1EF18 0011DF98 0000028E */  lw         $2, 0x0($16)
    /* 1EF1C 0011DF9C 00000000 */  nop
.align 2
  .L0011DFA0:
    /* 1EF20 0011DFA0 FFFF3126 */  addiu      $17, $17, -0x1
    /* 1EF24 0011DFA4 09F84000 */  jalr       $2
    /* 1EF28 0011DFA8 FCFF1026 */   addiu     $16, $16, -0x4
    /* 1EF2C 0011DFAC FCFF2056 */  bnel       $17, $0, .L0011DFA0
    /* 1EF30 0011DFB0 0000028E */   lw        $2, 0x0($16)
.align 2
  .L0011DFB4:
    /* 1EF34 0011DFB4 2000BFDF */  ld         $31, 0x20($29)
    /* 1EF38 0011DFB8 1000B1DF */  ld         $17, 0x10($29)
    /* 1EF3C 0011DFBC 0000B0DF */  ld         $16, 0x0($29)
    /* 1EF40 0011DFC0 0800E003 */  jr         $31
    /* 1EF44 0011DFC4 3000BD27 */   addiu     $29, $29, 0x30
endlabel func_0011DF0C
