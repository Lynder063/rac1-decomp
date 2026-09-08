.align 3
nonmatching func_001ECB98, 0x74

glabel func_001ECB98
    /* EDB18 001ECB98 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* EDB1C 001ECB9C 1800023C */  lui        $v0, %hi(D_001872B0)
    /* EDB20 001ECBA0 0000B07F */  sq         $s0, 0x0($sp)
    /* EDB24 001ECBA4 1000BF7F */  sq         $ra, 0x10($sp)
    /* EDB28 001ECBA8 B0725024 */  addiu      $s0, $v0, %lo(D_001872B0)
    /* EDB2C 001ECBAC 02000392 */  lbu        $v1, 0x2($s0)
    /* EDB30 001ECBB0 13006014 */  bnez       $v1, .L001ECC00
    /* EDB34 001ECBB4 1000BF7B */   lq        $ra, 0x10($sp)
    /* EDB38 001ECBB8 C0000526 */  addiu      $a1, $s0, 0xC0
    /* EDB3C 001ECBBC 50000326 */  addiu      $v1, $s0, 0x50
    /* EDB40 001ECBC0 00006278 */  lq         $v0, 0x0($v1)
    /* EDB44 001ECBC4 0000A27C */  sq         $v0, 0x0($a1)
    /* EDB48 001ECBC8 03000492 */  lbu        $a0, 0x3($s0)
    /* EDB4C 001ECBCC 02000224 */  addiu      $v0, $zero, 0x2
    /* EDB50 001ECBD0 07008214 */  bne        $a0, $v0, .L001ECBF0
    /* EDB54 001ECBD4 60000426 */   addiu     $a0, $s0, 0x60
    /* EDB58 001ECBD8 2D20A000 */  daddu      $a0, $a1, $zero
    /* EDB5C 001ECBDC 1400053C */  lui        $a1, %hi(D_0013F590)
    /* EDB60 001ECBE0 2D308000 */  daddu      $a2, $a0, $zero
    /* EDB64 001ECBE4 F6E6070C */  jal        func_001F9BD8
    /* EDB68 001ECBE8 90F5A524 */   addiu     $a1, $a1, %lo(D_0013F590)
    /* EDB6C 001ECBEC 60000426 */  addiu      $a0, $s0, 0x60
.align 2
  .L001ECBF0:
    /* EDB70 001ECBF0 D0000326 */  addiu      $v1, $s0, 0xD0
    /* EDB74 001ECBF4 00008278 */  lq         $v0, 0x0($a0)
    /* EDB78 001ECBF8 0000627C */  sq         $v0, 0x0($v1)
    /* EDB7C 001ECBFC 1000BF7B */  lq         $ra, 0x10($sp)
.align 2
  .L001ECC00:
    /* EDB80 001ECC00 0000B07B */  lq         $s0, 0x0($sp)
    /* EDB84 001ECC04 0800E003 */  jr         $ra
    /* EDB88 001ECC08 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_001ECB98
    /* EDB8C 001ECC0C 00000000 */  nop
