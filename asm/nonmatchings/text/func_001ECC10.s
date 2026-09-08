.align 3
nonmatching func_001ECC10, 0x38

glabel func_001ECC10
    /* EDB90 001ECC10 1800023C */  lui        $2, %hi(D_001872B0)
    /* EDB94 001ECC14 B0724624 */  addiu      $6, $2, %lo(D_001872B0)
    /* EDB98 001ECC18 0200C390 */  lbu        $3, 0x2($6)
    /* EDB9C 001ECC1C 08006010 */  beqz       $3, .L001ECC40
    /* EDBA0 001ECC20 5000C424 */   addiu     $4, $6, 0x50
    /* EDBA4 001ECC24 C000C324 */  addiu      $3, $6, 0xC0
    /* EDBA8 001ECC28 00006278 */  lq         $2, 0x0($3)
    /* EDBAC 001ECC2C 0000827C */  sq         $2, 0x0($4)
    /* EDBB0 001ECC30 D000C524 */  addiu      $5, $6, 0xD0
    /* EDBB4 001ECC34 6000C324 */  addiu      $3, $6, 0x60
    /* EDBB8 001ECC38 0000A278 */  lq         $2, 0x0($5)
    /* EDBBC 001ECC3C 0000627C */  sq         $2, 0x0($3)
.align 2
  .L001ECC40:
    /* EDBC0 001ECC40 0800E003 */  jr         $31
    /* EDBC4 001ECC44 00000000 */   nop
endlabel func_001ECC10
