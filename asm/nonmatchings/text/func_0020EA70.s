.align 3
/* Handwritten function */
nonmatching func_0020EA70, 0x2D4

glabel func_0020EA70
    /* 10F9F0 0020EA70 AC008C8C */  lw         $12, 0xAC($4)
    /* 10F9F4 0020EA74 1B000E3C */  lui        $14, %hi(D_001B7A60)
    /* 10F9F8 0020EA78 607ACE25 */  addiu      $14, $14, %lo(D_001B7A60)
    /* 10F9FC 0020EA7C 00008F20 */  addi       $15, $4, 0x0 /* handwritten instruction */
    /* 10FA00 0020EA80 0000B820 */  addi       $24, $5, 0x0 /* handwritten instruction */
    /* 10FA04 0020EA84 0040CD21 */  addi       $13, $14, 0x4000 /* handwritten instruction */
    /* 10FA08 0020EA88 A000E18D */  lw         $1, 0xA0($15)
    /* 10FA0C 0020EA8C A100E291 */  lbu        $2, 0xA1($15)
    /* 10FA10 0020EA90 37002004 */  bltz       $1, .L0020EB70
    /* 10FA14 0020EA94 FF002130 */   andi      $1, $1, 0xFF
.align 2
  .L0020EA98:
    /* 10FA18 0020EA98 881E4170 */  pextlb     $3, $2, $1
    /* 10FA1C 0020EA9C 881D6370 */  pextlh     $3, $3, $3
    /* 10FA20 0020EAA0 48267870 */  psubsb     $4, $3, $24
    /* 10FA24 0020EAA4 0000A048 */  qmtc2.ni   $0, $vf0
    /* 10FA28 0020EAA8 80808530 */  andi       $5, $4, 0x8080
    /* 10FA2C 0020EAAC 00320400 */  sll        $6, $4, 8
    /* 10FA30 0020EAB0 0500A01C */  bgtz       $5, .L0020EAC8
    /* 10FA34 0020EAB4 032E0600 */   sra       $5, $6, 24
    /* 10FA38 0020EAB8 0300A01C */  bgtz       $5, .L0020EAC8
    /* 10FA3C 0020EABC 032E0400 */   sra       $5, $4, 24
    /* 10FA40 0020EAC0 2300A018 */  blez       $5, func_0020EB50
    /* 10FA44 0020EAC4 00000000 */   nop
.align 2
  .L0020EAC8:
    /* 10FA48 0020EAC8 80180100 */  sll        $3, $1, 2
    /* 10FA4C 0020EACC 00220200 */  sll        $4, $2, 8
    /* 10FA50 0020EAD0 20586400 */  add        $11, $3, $4 /* handwritten instruction */
    /* 10FA54 0020EAD4 20586E01 */  add        $11, $11, $14 /* handwritten instruction */
    /* 10FA58 0020EAD8 00006395 */  lhu        $3, 0x0($11)
    /* 10FA5C 0020EADC 02006491 */  lbu        $4, 0x2($11)
    /* 10FA60 0020EAE0 40190300 */  sll        $3, $3, 5
    /* 10FA64 0020EAE4 40200400 */  sll        $4, $4, 1
    /* 10FA68 0020EAE8 20186D00 */  add        $3, $3, $13 /* handwritten instruction */
    /* 10FA6C 0020EAEC 20208300 */  add        $4, $4, $3 /* handwritten instruction */
.align 2
  .L0020EAF0:
    /* 10FA70 0020EAF0 93006410 */  beq        $3, $4, .L0020ED40
    /* 10FA74 0020EAF4 00006594 */   lhu       $5, 0x0($3)
    /* 10FA78 0020EAF8 00000000 */  nop
    /* 10FA7C 0020EAFC 00000000 */  nop
    /* 10FA80 0020EB00 00000000 */  nop
    /* 10FA84 0020EB04 00000000 */  nop
    /* 10FA88 0020EB08 F9FFAC14 */  bne        $5, $12, .L0020EAF0
    /* 10FA8C 0020EB0C 02006320 */   addi      $3, $3, 0x2 /* handwritten instruction */
    /* 10FA90 0020EB10 FEFF8594 */  lhu        $5, -0x2($4)
    /* 10FA94 0020EB14 FEFF65A4 */  sh         $5, -0x2($3)
    /* 10FA98 0020EB18 FEFF80A4 */  sh         $0, -0x2($4)
    /* 10FA9C 0020EB1C 00000000 */  nop
    /* 10FAA0 0020EB20 02006491 */  lbu        $4, 0x2($11)
    /* 10FAA4 0020EB24 03006391 */  lbu        $3, 0x3($11)
    /* 10FAA8 0020EB28 FFFF8420 */  addi       $4, $4, -0x1 /* handwritten instruction */
    /* 10FAAC 0020EB2C 01000520 */  addi       $5, $0, 0x1 /* handwritten instruction */
    /* 10FAB0 0020EB30 3F008010 */  beqz       $4, .L0020EC30
    /* 10FAB4 0020EB34 020064A1 */   sb        $4, 0x2($11)
    /* 10FAB8 0020EB38 05006510 */  beq        $3, $5, func_0020EB50
    /* 10FABC 0020EB3C C0280300 */   sll       $5, $3, 3
    /* 10FAC0 0020EB40 FCFFA520 */  addi       $5, $5, -0x4 /* handwritten instruction */
    /* 10FAC4 0020EB44 2228A400 */  sub        $5, $5, $4 /* handwritten instruction */
    /* 10FAC8 0020EB48 3900A01C */  bgtz       $5, .L0020EC30
    /* 10FACC 0020EB4C 00000000 */   nop
.align 2
  alabel func_0020EB50
    /* 10FAD0 0020EB50 A200E391 */  lbu        $3, 0xA2($15)
    /* 10FAD4 0020EB54 A300E491 */  lbu        $4, 0xA3($15)
    /* 10FAD8 0020EB58 CFFF2314 */  bne        $1, $3, .L0020EA98
    /* 10FADC 0020EB5C 01002120 */   addi      $1, $1, 0x1 /* handwritten instruction */
    /* 10FAE0 0020EB60 A000E191 */  lbu        $1, 0xA0($15)
    /* 10FAE4 0020EB64 00000000 */  nop
    /* 10FAE8 0020EB68 CBFF4414 */  bne        $2, $4, .L0020EA98
    /* 10FAEC 0020EB6C 01004220 */   addi      $2, $2, 0x1 /* handwritten instruction */
.align 2
  .L0020EB70:
    /* 10FAF0 0020EB70 A000F98D */  lw         $25, 0xA0($15)
    /* 10FAF4 0020EB74 FF000133 */  andi       $1, $24, 0xFF
    /* 10FAF8 0020EB78 A000F8AD */  sw         $24, 0xA0($15)
    /* 10FAFC 0020EB7C 00FF0233 */  andi       $2, $24, 0xFF00
    /* 10FB00 0020EB80 29000007 */  bltz       $24, .L0020EC28
    /* 10FB04 0020EB84 02120200 */   srl       $2, $2, 8
.align 2
  .L0020EB88:
    /* 10FB08 0020EB88 881E4170 */  pextlb     $3, $2, $1
    /* 10FB0C 0020EB8C 881D6370 */  pextlh     $3, $3, $3
    /* 10FB10 0020EB90 48267970 */  psubsb     $4, $3, $25
    /* 10FB14 0020EB94 0000A048 */  qmtc2.ni   $0, $vf0
    /* 10FB18 0020EB98 80808530 */  andi       $5, $4, 0x8080
    /* 10FB1C 0020EB9C 00320400 */  sll        $6, $4, 8
    /* 10FB20 0020EBA0 0500A01C */  bgtz       $5, .L0020EBB8
    /* 10FB24 0020EBA4 032E0600 */   sra       $5, $6, 24
    /* 10FB28 0020EBA8 0300A01C */  bgtz       $5, .L0020EBB8
    /* 10FB2C 0020EBAC 032E0400 */   sra       $5, $4, 24
    /* 10FB30 0020EBB0 1500A018 */  blez       $5, .L0020EC08
    /* 10FB34 0020EBB4 00000000 */   nop
.align 2
  .L0020EBB8:
    /* 10FB38 0020EBB8 80180100 */  sll        $3, $1, 2
    /* 10FB3C 0020EBBC 00220200 */  sll        $4, $2, 8
    /* 10FB40 0020EBC0 20586400 */  add        $11, $3, $4 /* handwritten instruction */
    /* 10FB44 0020EBC4 20586E01 */  add        $11, $11, $14 /* handwritten instruction */
    /* 10FB48 0020EBC8 03006491 */  lbu        $4, 0x3($11)
    /* 10FB4C 0020EBCC 02006391 */  lbu        $3, 0x2($11)
    /* 10FB50 0020EBD0 37008010 */  beqz       $4, .L0020ECB0
    /* 10FB54 0020EBD4 00290400 */   sll       $5, $4, 4
    /* 10FB58 0020EBD8 2228A300 */  sub        $5, $5, $3 /* handwritten instruction */
    /* 10FB5C 0020EBDC 00000000 */  nop
    /* 10FB60 0020EBE0 3300A018 */  blez       $5, .L0020ECB0
    /* 10FB64 0020EBE4 00000000 */   nop
.align 2
  alabel func_0020EBE8
    /* 10FB68 0020EBE8 00006495 */  lhu        $4, 0x0($11)
    /* 10FB6C 0020EBEC 01006520 */  addi       $5, $3, 0x1 /* handwritten instruction */
    /* 10FB70 0020EBF0 020065A1 */  sb         $5, 0x2($11)
    /* 10FB74 0020EBF4 40180300 */  sll        $3, $3, 1
    /* 10FB78 0020EBF8 40210400 */  sll        $4, $4, 5
    /* 10FB7C 0020EBFC 20186D00 */  add        $3, $3, $13 /* handwritten instruction */
    /* 10FB80 0020EC00 20186400 */  add        $3, $3, $4 /* handwritten instruction */
    /* 10FB84 0020EC04 00006CA4 */  sh         $12, 0x0($3)
.align 2
  .L0020EC08:
    /* 10FB88 0020EC08 A200E391 */  lbu        $3, 0xA2($15)
    /* 10FB8C 0020EC0C A300E491 */  lbu        $4, 0xA3($15)
    /* 10FB90 0020EC10 DDFF2314 */  bne        $1, $3, .L0020EB88
    /* 10FB94 0020EC14 01002120 */   addi      $1, $1, 0x1 /* handwritten instruction */
    /* 10FB98 0020EC18 A000E191 */  lbu        $1, 0xA0($15)
    /* 10FB9C 0020EC1C 00000000 */  nop
    /* 10FBA0 0020EC20 D9FF4414 */  bne        $2, $4, .L0020EB88
    /* 10FBA4 0020EC24 01004220 */   addi      $2, $2, 0x1 /* handwritten instruction */
.align 2
  .L0020EC28:
    /* 10FBA8 0020EC28 0800E003 */  jr         $31
    /* 10FBAC 0020EC2C 00000000 */   nop
.align 2
  .L0020EC30:
    /* 10FBB0 0020EC30 890B2070 */  pcpyld     $1, $1, $0
    /* 10FBB4 0020EC34 89134070 */  pcpyld     $2, $2, $0
    /* 10FBB8 0020EC38 00006495 */  lhu        $4, 0x0($11)
    /* 10FBBC 0020EC3C 89FBE073 */  pcpyld     $31, $31, $0
    /* 10FBC0 0020EC40 643A080C */  jal        func_0020E990
    /* 10FBC4 0020EC44 03006591 */   lbu       $5, 0x3($11)
    /* 10FBC8 0020EC48 03006491 */  lbu        $4, 0x3($11)
    /* 10FBCC 0020EC4C 00006A85 */  lh         $10, 0x0($11)
    /* 10FBD0 0020EC50 42200400 */  srl        $4, $4, 1
    /* 10FBD4 0020EC54 000060A5 */  sh         $0, 0x0($11)
    /* 10FBD8 0020EC58 11008010 */  beqz       $4, .L0020ECA0
    /* 10FBDC 0020EC5C 030064A1 */   sb        $4, 0x3($11)
    /* 10FBE0 0020EC60 7C3A080C */  jal        func_0020E9F0
    /* 10FBE4 0020EC64 00000000 */   nop
    /* 10FBE8 0020EC68 000062A5 */  sh         $2, 0x0($11)
    /* 10FBEC 0020EC6C 40090A00 */  sll        $1, $10, 5
    /* 10FBF0 0020EC70 03006381 */  lb         $3, 0x3($11)
    /* 10FBF4 0020EC74 40110200 */  sll        $2, $2, 5
    /* 10FBF8 0020EC78 20082D00 */  add        $1, $1, $13 /* handwritten instruction */
    /* 10FBFC 0020EC7C 20104D00 */  add        $2, $2, $13 /* handwritten instruction */
.align 2
  .L0020EC80:
    /* 10FC00 0020EC80 00002478 */  lq         $4, 0x0($1)
    /* 10FC04 0020EC84 10002578 */  lq         $5, 0x10($1)
    /* 10FC08 0020EC88 0000447C */  sq         $4, 0x0($2)
    /* 10FC0C 0020EC8C FFFF6320 */  addi       $3, $3, -0x1 /* handwritten instruction */
    /* 10FC10 0020EC90 1000457C */  sq         $5, 0x10($2)
    /* 10FC14 0020EC94 20002120 */  addi       $1, $1, 0x20 /* handwritten instruction */
    /* 10FC18 0020EC98 F9FF601C */  bgtz       $3, .L0020EC80
    /* 10FC1C 0020EC9C 20004220 */   addi      $2, $2, 0x20 /* handwritten instruction */
.align 2
  .L0020ECA0:
    /* 10FC20 0020ECA0 A90B2070 */  pcpyud     $1, $1, $0
    /* 10FC24 0020ECA4 A9134070 */  pcpyud     $2, $2, $0
    /* 10FC28 0020ECA8 D43A0808 */  j          func_0020EB50
    /* 10FC2C 0020ECAC A9FBE073 */   pcpyud    $31, $31, $0
.align 2
  .L0020ECB0:
    /* 10FC30 0020ECB0 03006A91 */  lbu        $10, 0x3($11)
    /* 10FC34 0020ECB4 89FBE073 */  pcpyld     $31, $31, $0
    /* 10FC38 0020ECB8 890B2070 */  pcpyld     $1, $1, $0
    /* 10FC3C 0020ECBC 89134070 */  pcpyld     $2, $2, $0
    /* 10FC40 0020ECC0 40200A00 */  sll        $4, $10, 1
    /* 10FC44 0020ECC4 01000120 */  addi       $1, $0, 0x1 /* handwritten instruction */
    /* 10FC48 0020ECC8 C8208170 */  pmaxw      $4, $4, $1
    /* 10FC4C 0020ECCC 0000A048 */  qmtc2.ni   $0, $vf0
    /* 10FC50 0020ECD0 7C3A080C */  jal        func_0020E9F0
    /* 10FC54 0020ECD4 030064A1 */   sb        $4, 0x3($11)
    /* 10FC58 0020ECD8 00006495 */  lhu        $4, 0x0($11)
    /* 10FC5C 0020ECDC 00004521 */  addi       $5, $10, 0x0 /* handwritten instruction */
    /* 10FC60 0020ECE0 11004011 */  beqz       $10, .L0020ED28
    /* 10FC64 0020ECE4 000062A5 */   sh        $2, 0x0($11)
    /* 10FC68 0020ECE8 643A080C */  jal        func_0020E990
    /* 10FC6C 0020ECEC 40510400 */   sll       $10, $4, 5
    /* 10FC70 0020ECF0 00006295 */  lhu        $2, 0x0($11)
    /* 10FC74 0020ECF4 20084D01 */  add        $1, $10, $13 /* handwritten instruction */
    /* 10FC78 0020ECF8 03006391 */  lbu        $3, 0x3($11)
    /* 10FC7C 0020ECFC 40110200 */  sll        $2, $2, 5
    /* 10FC80 0020ED00 20104D00 */  add        $2, $2, $13 /* handwritten instruction */
    /* 10FC84 0020ED04 42180300 */  srl        $3, $3, 1
.align 2
  .L0020ED08:
    /* 10FC88 0020ED08 00002478 */  lq         $4, 0x0($1)
    /* 10FC8C 0020ED0C 10002578 */  lq         $5, 0x10($1)
    /* 10FC90 0020ED10 0000447C */  sq         $4, 0x0($2)
    /* 10FC94 0020ED14 FFFF6320 */  addi       $3, $3, -0x1 /* handwritten instruction */
    /* 10FC98 0020ED18 1000457C */  sq         $5, 0x10($2)
    /* 10FC9C 0020ED1C 20004220 */  addi       $2, $2, 0x20 /* handwritten instruction */
    /* 10FCA0 0020ED20 F9FF601C */  bgtz       $3, .L0020ED08
    /* 10FCA4 0020ED24 20002120 */   addi      $1, $1, 0x20 /* handwritten instruction */
.align 2
  .L0020ED28:
    /* 10FCA8 0020ED28 A90B2070 */  pcpyud     $1, $1, $0
    /* 10FCAC 0020ED2C 0000A048 */  qmtc2.ni   $0, $vf0
    /* 10FCB0 0020ED30 A9134070 */  pcpyud     $2, $2, $0
    /* 10FCB4 0020ED34 02006391 */  lbu        $3, 0x2($11)
    /* 10FCB8 0020ED38 FA3A0808 */  j          func_0020EBE8
    /* 10FCBC 0020ED3C A9FBE073 */   pcpyud    $31, $31, $0
.align 2
  .L0020ED40:
    /* 10FCC0 0020ED40 34000000 */  teq        $0, $0, 0 /* handwritten instruction */
endlabel func_0020EA70
    /* 10FCC4 0020ED44 00000000 */  nop
