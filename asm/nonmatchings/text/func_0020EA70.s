.align 3
/* Handwritten function */
nonmatching func_0020EA70, 0x2D4

glabel func_0020EA70
    /* 10F9F0 0020EA70 AC008C8C */  lw         $t4, 0xAC($a0)
    /* 10F9F4 0020EA74 1B000E3C */  lui        $t6, %hi(D_001B7A60)
    /* 10F9F8 0020EA78 607ACE25 */  addiu      $t6, $t6, %lo(D_001B7A60)
    /* 10F9FC 0020EA7C 00008F20 */  addi       $t7, $a0, 0x0 /* handwritten instruction */
    /* 10FA00 0020EA80 0000B820 */  addi       $t8, $a1, 0x0 /* handwritten instruction */
    /* 10FA04 0020EA84 0040CD21 */  addi       $t5, $t6, 0x4000 /* handwritten instruction */
    /* 10FA08 0020EA88 A000E18D */  lw         $at, 0xA0($t7)
    /* 10FA0C 0020EA8C A100E291 */  lbu        $v0, 0xA1($t7)
    /* 10FA10 0020EA90 37002004 */  bltz       $at, .L0020EB70
    /* 10FA14 0020EA94 FF002130 */   andi      $at, $at, 0xFF
.align 2
  .L0020EA98:
    /* 10FA18 0020EA98 881E4170 */  pextlb     $v1, $v0, $at
    /* 10FA1C 0020EA9C 881D6370 */  pextlh     $v1, $v1, $v1
    /* 10FA20 0020EAA0 48267870 */  psubsb     $a0, $v1, $t8
    /* 10FA24 0020EAA4 0000A048 */  qmtc2.ni   $zero, $vf0
    /* 10FA28 0020EAA8 80808530 */  andi       $a1, $a0, 0x8080
    /* 10FA2C 0020EAAC 00320400 */  sll        $a2, $a0, 8
    /* 10FA30 0020EAB0 0500A01C */  bgtz       $a1, .L0020EAC8
    /* 10FA34 0020EAB4 032E0600 */   sra       $a1, $a2, 24
    /* 10FA38 0020EAB8 0300A01C */  bgtz       $a1, .L0020EAC8
    /* 10FA3C 0020EABC 032E0400 */   sra       $a1, $a0, 24
    /* 10FA40 0020EAC0 2300A018 */  blez       $a1, func_0020EB50
    /* 10FA44 0020EAC4 00000000 */   nop
.align 2
  .L0020EAC8:
    /* 10FA48 0020EAC8 80180100 */  sll        $v1, $at, 2
    /* 10FA4C 0020EACC 00220200 */  sll        $a0, $v0, 8
    /* 10FA50 0020EAD0 20586400 */  add        $t3, $v1, $a0 /* handwritten instruction */
    /* 10FA54 0020EAD4 20586E01 */  add        $t3, $t3, $t6 /* handwritten instruction */
    /* 10FA58 0020EAD8 00006395 */  lhu        $v1, 0x0($t3)
    /* 10FA5C 0020EADC 02006491 */  lbu        $a0, 0x2($t3)
    /* 10FA60 0020EAE0 40190300 */  sll        $v1, $v1, 5
    /* 10FA64 0020EAE4 40200400 */  sll        $a0, $a0, 1
    /* 10FA68 0020EAE8 20186D00 */  add        $v1, $v1, $t5 /* handwritten instruction */
    /* 10FA6C 0020EAEC 20208300 */  add        $a0, $a0, $v1 /* handwritten instruction */
.align 2
  .L0020EAF0:
    /* 10FA70 0020EAF0 93006410 */  beq        $v1, $a0, .L0020ED40
    /* 10FA74 0020EAF4 00006594 */   lhu       $a1, 0x0($v1)
    /* 10FA78 0020EAF8 00000000 */  nop
    /* 10FA7C 0020EAFC 00000000 */  nop
    /* 10FA80 0020EB00 00000000 */  nop
    /* 10FA84 0020EB04 00000000 */  nop
    /* 10FA88 0020EB08 F9FFAC14 */  bne        $a1, $t4, .L0020EAF0
    /* 10FA8C 0020EB0C 02006320 */   addi      $v1, $v1, 0x2 /* handwritten instruction */
    /* 10FA90 0020EB10 FEFF8594 */  lhu        $a1, -0x2($a0)
    /* 10FA94 0020EB14 FEFF65A4 */  sh         $a1, -0x2($v1)
    /* 10FA98 0020EB18 FEFF80A4 */  sh         $zero, -0x2($a0)
    /* 10FA9C 0020EB1C 00000000 */  nop
    /* 10FAA0 0020EB20 02006491 */  lbu        $a0, 0x2($t3)
    /* 10FAA4 0020EB24 03006391 */  lbu        $v1, 0x3($t3)
    /* 10FAA8 0020EB28 FFFF8420 */  addi       $a0, $a0, -0x1 /* handwritten instruction */
    /* 10FAAC 0020EB2C 01000520 */  addi       $a1, $zero, 0x1 /* handwritten instruction */
    /* 10FAB0 0020EB30 3F008010 */  beqz       $a0, .L0020EC30
    /* 10FAB4 0020EB34 020064A1 */   sb        $a0, 0x2($t3)
    /* 10FAB8 0020EB38 05006510 */  beq        $v1, $a1, func_0020EB50
    /* 10FABC 0020EB3C C0280300 */   sll       $a1, $v1, 3
    /* 10FAC0 0020EB40 FCFFA520 */  addi       $a1, $a1, -0x4 /* handwritten instruction */
    /* 10FAC4 0020EB44 2228A400 */  sub        $a1, $a1, $a0 /* handwritten instruction */
    /* 10FAC8 0020EB48 3900A01C */  bgtz       $a1, .L0020EC30
    /* 10FACC 0020EB4C 00000000 */   nop
.align 2
  alabel func_0020EB50
    /* 10FAD0 0020EB50 A200E391 */  lbu        $v1, 0xA2($t7)
    /* 10FAD4 0020EB54 A300E491 */  lbu        $a0, 0xA3($t7)
    /* 10FAD8 0020EB58 CFFF2314 */  bne        $at, $v1, .L0020EA98
    /* 10FADC 0020EB5C 01002120 */   addi      $at, $at, 0x1 /* handwritten instruction */
    /* 10FAE0 0020EB60 A000E191 */  lbu        $at, 0xA0($t7)
    /* 10FAE4 0020EB64 00000000 */  nop
    /* 10FAE8 0020EB68 CBFF4414 */  bne        $v0, $a0, .L0020EA98
    /* 10FAEC 0020EB6C 01004220 */   addi      $v0, $v0, 0x1 /* handwritten instruction */
.align 2
  .L0020EB70:
    /* 10FAF0 0020EB70 A000F98D */  lw         $t9, 0xA0($t7)
    /* 10FAF4 0020EB74 FF000133 */  andi       $at, $t8, 0xFF
    /* 10FAF8 0020EB78 A000F8AD */  sw         $t8, 0xA0($t7)
    /* 10FAFC 0020EB7C 00FF0233 */  andi       $v0, $t8, 0xFF00
    /* 10FB00 0020EB80 29000007 */  bltz       $t8, .L0020EC28
    /* 10FB04 0020EB84 02120200 */   srl       $v0, $v0, 8
.align 2
  .L0020EB88:
    /* 10FB08 0020EB88 881E4170 */  pextlb     $v1, $v0, $at
    /* 10FB0C 0020EB8C 881D6370 */  pextlh     $v1, $v1, $v1
    /* 10FB10 0020EB90 48267970 */  psubsb     $a0, $v1, $t9
    /* 10FB14 0020EB94 0000A048 */  qmtc2.ni   $zero, $vf0
    /* 10FB18 0020EB98 80808530 */  andi       $a1, $a0, 0x8080
    /* 10FB1C 0020EB9C 00320400 */  sll        $a2, $a0, 8
    /* 10FB20 0020EBA0 0500A01C */  bgtz       $a1, .L0020EBB8
    /* 10FB24 0020EBA4 032E0600 */   sra       $a1, $a2, 24
    /* 10FB28 0020EBA8 0300A01C */  bgtz       $a1, .L0020EBB8
    /* 10FB2C 0020EBAC 032E0400 */   sra       $a1, $a0, 24
    /* 10FB30 0020EBB0 1500A018 */  blez       $a1, .L0020EC08
    /* 10FB34 0020EBB4 00000000 */   nop
.align 2
  .L0020EBB8:
    /* 10FB38 0020EBB8 80180100 */  sll        $v1, $at, 2
    /* 10FB3C 0020EBBC 00220200 */  sll        $a0, $v0, 8
    /* 10FB40 0020EBC0 20586400 */  add        $t3, $v1, $a0 /* handwritten instruction */
    /* 10FB44 0020EBC4 20586E01 */  add        $t3, $t3, $t6 /* handwritten instruction */
    /* 10FB48 0020EBC8 03006491 */  lbu        $a0, 0x3($t3)
    /* 10FB4C 0020EBCC 02006391 */  lbu        $v1, 0x2($t3)
    /* 10FB50 0020EBD0 37008010 */  beqz       $a0, .L0020ECB0
    /* 10FB54 0020EBD4 00290400 */   sll       $a1, $a0, 4
    /* 10FB58 0020EBD8 2228A300 */  sub        $a1, $a1, $v1 /* handwritten instruction */
    /* 10FB5C 0020EBDC 00000000 */  nop
    /* 10FB60 0020EBE0 3300A018 */  blez       $a1, .L0020ECB0
    /* 10FB64 0020EBE4 00000000 */   nop
.align 2
  alabel func_0020EBE8
    /* 10FB68 0020EBE8 00006495 */  lhu        $a0, 0x0($t3)
    /* 10FB6C 0020EBEC 01006520 */  addi       $a1, $v1, 0x1 /* handwritten instruction */
    /* 10FB70 0020EBF0 020065A1 */  sb         $a1, 0x2($t3)
    /* 10FB74 0020EBF4 40180300 */  sll        $v1, $v1, 1
    /* 10FB78 0020EBF8 40210400 */  sll        $a0, $a0, 5
    /* 10FB7C 0020EBFC 20186D00 */  add        $v1, $v1, $t5 /* handwritten instruction */
    /* 10FB80 0020EC00 20186400 */  add        $v1, $v1, $a0 /* handwritten instruction */
    /* 10FB84 0020EC04 00006CA4 */  sh         $t4, 0x0($v1)
.align 2
  .L0020EC08:
    /* 10FB88 0020EC08 A200E391 */  lbu        $v1, 0xA2($t7)
    /* 10FB8C 0020EC0C A300E491 */  lbu        $a0, 0xA3($t7)
    /* 10FB90 0020EC10 DDFF2314 */  bne        $at, $v1, .L0020EB88
    /* 10FB94 0020EC14 01002120 */   addi      $at, $at, 0x1 /* handwritten instruction */
    /* 10FB98 0020EC18 A000E191 */  lbu        $at, 0xA0($t7)
    /* 10FB9C 0020EC1C 00000000 */  nop
    /* 10FBA0 0020EC20 D9FF4414 */  bne        $v0, $a0, .L0020EB88
    /* 10FBA4 0020EC24 01004220 */   addi      $v0, $v0, 0x1 /* handwritten instruction */
.align 2
  .L0020EC28:
    /* 10FBA8 0020EC28 0800E003 */  jr         $ra
    /* 10FBAC 0020EC2C 00000000 */   nop
.align 2
  .L0020EC30:
    /* 10FBB0 0020EC30 890B2070 */  pcpyld     $at, $at, $zero
    /* 10FBB4 0020EC34 89134070 */  pcpyld     $v0, $v0, $zero
    /* 10FBB8 0020EC38 00006495 */  lhu        $a0, 0x0($t3)
    /* 10FBBC 0020EC3C 89FBE073 */  pcpyld     $ra, $ra, $zero
    /* 10FBC0 0020EC40 643A080C */  jal        func_0020E990
    /* 10FBC4 0020EC44 03006591 */   lbu       $a1, 0x3($t3)
    /* 10FBC8 0020EC48 03006491 */  lbu        $a0, 0x3($t3)
    /* 10FBCC 0020EC4C 00006A85 */  lh         $t2, 0x0($t3)
    /* 10FBD0 0020EC50 42200400 */  srl        $a0, $a0, 1
    /* 10FBD4 0020EC54 000060A5 */  sh         $zero, 0x0($t3)
    /* 10FBD8 0020EC58 11008010 */  beqz       $a0, .L0020ECA0
    /* 10FBDC 0020EC5C 030064A1 */   sb        $a0, 0x3($t3)
    /* 10FBE0 0020EC60 7C3A080C */  jal        func_0020E9F0
    /* 10FBE4 0020EC64 00000000 */   nop
    /* 10FBE8 0020EC68 000062A5 */  sh         $v0, 0x0($t3)
    /* 10FBEC 0020EC6C 40090A00 */  sll        $at, $t2, 5
    /* 10FBF0 0020EC70 03006381 */  lb         $v1, 0x3($t3)
    /* 10FBF4 0020EC74 40110200 */  sll        $v0, $v0, 5
    /* 10FBF8 0020EC78 20082D00 */  add        $at, $at, $t5 /* handwritten instruction */
    /* 10FBFC 0020EC7C 20104D00 */  add        $v0, $v0, $t5 /* handwritten instruction */
.align 2
  .L0020EC80:
    /* 10FC00 0020EC80 00002478 */  lq         $a0, 0x0($at)
    /* 10FC04 0020EC84 10002578 */  lq         $a1, 0x10($at)
    /* 10FC08 0020EC88 0000447C */  sq         $a0, 0x0($v0)
    /* 10FC0C 0020EC8C FFFF6320 */  addi       $v1, $v1, -0x1 /* handwritten instruction */
    /* 10FC10 0020EC90 1000457C */  sq         $a1, 0x10($v0)
    /* 10FC14 0020EC94 20002120 */  addi       $at, $at, 0x20 /* handwritten instruction */
    /* 10FC18 0020EC98 F9FF601C */  bgtz       $v1, .L0020EC80
    /* 10FC1C 0020EC9C 20004220 */   addi      $v0, $v0, 0x20 /* handwritten instruction */
.align 2
  .L0020ECA0:
    /* 10FC20 0020ECA0 A90B2070 */  pcpyud     $at, $at, $zero
    /* 10FC24 0020ECA4 A9134070 */  pcpyud     $v0, $v0, $zero
    /* 10FC28 0020ECA8 D43A0808 */  j          func_0020EB50
    /* 10FC2C 0020ECAC A9FBE073 */   pcpyud    $ra, $ra, $zero
.align 2
  .L0020ECB0:
    /* 10FC30 0020ECB0 03006A91 */  lbu        $t2, 0x3($t3)
    /* 10FC34 0020ECB4 89FBE073 */  pcpyld     $ra, $ra, $zero
    /* 10FC38 0020ECB8 890B2070 */  pcpyld     $at, $at, $zero
    /* 10FC3C 0020ECBC 89134070 */  pcpyld     $v0, $v0, $zero
    /* 10FC40 0020ECC0 40200A00 */  sll        $a0, $t2, 1
    /* 10FC44 0020ECC4 01000120 */  addi       $at, $zero, 0x1 /* handwritten instruction */
    /* 10FC48 0020ECC8 C8208170 */  pmaxw      $a0, $a0, $at
    /* 10FC4C 0020ECCC 0000A048 */  qmtc2.ni   $zero, $vf0
    /* 10FC50 0020ECD0 7C3A080C */  jal        func_0020E9F0
    /* 10FC54 0020ECD4 030064A1 */   sb        $a0, 0x3($t3)
    /* 10FC58 0020ECD8 00006495 */  lhu        $a0, 0x0($t3)
    /* 10FC5C 0020ECDC 00004521 */  addi       $a1, $t2, 0x0 /* handwritten instruction */
    /* 10FC60 0020ECE0 11004011 */  beqz       $t2, .L0020ED28
    /* 10FC64 0020ECE4 000062A5 */   sh        $v0, 0x0($t3)
    /* 10FC68 0020ECE8 643A080C */  jal        func_0020E990
    /* 10FC6C 0020ECEC 40510400 */   sll       $t2, $a0, 5
    /* 10FC70 0020ECF0 00006295 */  lhu        $v0, 0x0($t3)
    /* 10FC74 0020ECF4 20084D01 */  add        $at, $t2, $t5 /* handwritten instruction */
    /* 10FC78 0020ECF8 03006391 */  lbu        $v1, 0x3($t3)
    /* 10FC7C 0020ECFC 40110200 */  sll        $v0, $v0, 5
    /* 10FC80 0020ED00 20104D00 */  add        $v0, $v0, $t5 /* handwritten instruction */
    /* 10FC84 0020ED04 42180300 */  srl        $v1, $v1, 1
.align 2
  .L0020ED08:
    /* 10FC88 0020ED08 00002478 */  lq         $a0, 0x0($at)
    /* 10FC8C 0020ED0C 10002578 */  lq         $a1, 0x10($at)
    /* 10FC90 0020ED10 0000447C */  sq         $a0, 0x0($v0)
    /* 10FC94 0020ED14 FFFF6320 */  addi       $v1, $v1, -0x1 /* handwritten instruction */
    /* 10FC98 0020ED18 1000457C */  sq         $a1, 0x10($v0)
    /* 10FC9C 0020ED1C 20004220 */  addi       $v0, $v0, 0x20 /* handwritten instruction */
    /* 10FCA0 0020ED20 F9FF601C */  bgtz       $v1, .L0020ED08
    /* 10FCA4 0020ED24 20002120 */   addi      $at, $at, 0x20 /* handwritten instruction */
.align 2
  .L0020ED28:
    /* 10FCA8 0020ED28 A90B2070 */  pcpyud     $at, $at, $zero
    /* 10FCAC 0020ED2C 0000A048 */  qmtc2.ni   $zero, $vf0
    /* 10FCB0 0020ED30 A9134070 */  pcpyud     $v0, $v0, $zero
    /* 10FCB4 0020ED34 02006391 */  lbu        $v1, 0x2($t3)
    /* 10FCB8 0020ED38 FA3A0808 */  j          func_0020EBE8
    /* 10FCBC 0020ED3C A9FBE073 */   pcpyud    $ra, $ra, $zero
.align 2
  .L0020ED40:
    /* 10FCC0 0020ED40 34000000 */  teq        $zero, $zero, 0 /* handwritten instruction */
endlabel func_0020EA70
    /* 10FCC4 0020ED44 00000000 */  nop
