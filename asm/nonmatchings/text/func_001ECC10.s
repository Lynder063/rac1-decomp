.align 3
nonmatching func_001ECC10, 0x38

glabel func_001ECC10
    /* EDB90 001ECC10 1800023C */  lui        $v0, %hi(D_001872B0)
    /* EDB94 001ECC14 B0724624 */  addiu      $a2, $v0, %lo(D_001872B0)
    /* EDB98 001ECC18 0200C390 */  lbu        $v1, 0x2($a2)
    /* EDB9C 001ECC1C 08006010 */  beqz       $v1, .L001ECC40
    /* EDBA0 001ECC20 5000C424 */   addiu     $a0, $a2, 0x50
    /* EDBA4 001ECC24 C000C324 */  addiu      $v1, $a2, 0xC0
    /* EDBA8 001ECC28 00006278 */  lq         $v0, 0x0($v1)
    /* EDBAC 001ECC2C 0000827C */  sq         $v0, 0x0($a0)
    /* EDBB0 001ECC30 D000C524 */  addiu      $a1, $a2, 0xD0
    /* EDBB4 001ECC34 6000C324 */  addiu      $v1, $a2, 0x60
    /* EDBB8 001ECC38 0000A278 */  lq         $v0, 0x0($a1)
    /* EDBBC 001ECC3C 0000627C */  sq         $v0, 0x0($v1)
.align 2
  .L001ECC40:
    /* EDBC0 001ECC40 0800E003 */  jr         $ra
    /* EDBC4 001ECC44 00000000 */   nop
endlabel func_001ECC10
