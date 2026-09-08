.align 3
/* Handwritten function */
nonmatching func_001EE9F8, 0x1378

glabel func_001EE9F8
    /* EF978 001EE9F8 0070013C */  lui        $1, (0x70001FF0 >> 16)
    /* EF97C 001EE9FC F01F3F7C */  sq         $31, (0x70001FF0 & 0xFFFF)($1)
    /* EF980 001EEA00 1400818C */  lw         $1, 0x14($4)
    /* EF984 001EEA04 0070063C */  lui        $6, (0x70001F14 >> 16)
    /* EF988 001EEA08 00008294 */  lhu        $2, 0x0($4)
    /* EF98C 001EEA0C 40008720 */  addi       $7, $4, 0x40 /* handwritten instruction */
    /* EF990 001EEA10 181FC1AC */  sw         $1, (0x70001F18 & 0xFFFF)($6)
    /* EF994 001EEA14 0020CF20 */  addi       $15, $6, (0x70002000 & 0xFFFF) /* handwritten instruction */
    /* EF998 001EEA18 081FCFAC */  sw         $15, (0x70001F08 & 0xFFFF)($6)
    /* EF99C 001EEA1C 0030CF20 */  addi       $15, $6, (0x70003000 & 0xFFFF) /* handwritten instruction */
    /* EF9A0 001EEA20 0C1FCFAC */  sw         $15, (0x70001F0C & 0xFFFF)($6)
    /* EF9A4 001EEA24 001CCF20 */  addi       $15, $6, (0x70001C00 & 0xFFFF) /* handwritten instruction */
    /* EF9A8 001EEA28 8000F021 */  addi       $16, $15, 0x80 /* handwritten instruction */
    /* EF9AC 001EEA2C 42400200 */  srl        $8, $2, 1
    /* EF9B0 001EEA30 001FD0AC */  sw         $16, (0x70001F00 & 0xFFFF)($6)
    /* EF9B4 001EEA34 01100E3C */  lui        $14, (0x10010000 >> 16)
    /* EF9B8 001EEA38 10D4C7AD */  sw         $7, -0x2BF0($14)
    /* EF9BC 001EEA3C 09000821 */  addi       $8, $8, 0x9 /* handwritten instruction */
    /* EF9C0 001EEA40 20D4C8AD */  sw         $8, -0x2BE0($14)
    /* EF9C4 001EEA44 C0100200 */  sll        $2, $2, 3
    /* EF9C8 001EEA48 80D4CFAD */  sw         $15, -0x2B80($14)
    /* EF9CC 001EEA4C 20104600 */  add        $2, $2, $6 /* handwritten instruction */
    /* EF9D0 001EEA50 781C40FC */  sd         $0, 0x1C78($2)
    /* EF9D4 001EEA54 00010920 */  addi       $9, $0, 0x100 /* handwritten instruction */
    /* EF9D8 001EEA58 00D4C9AD */  sw         $9, -0x2C00($14)
    /* EF9DC 001EEA5C 00890800 */  sll        $17, $8, 4
    /* EF9E0 001EEA60 20882702 */  add        $17, $17, $7 /* handwritten instruction */
    /* EF9E4 001EEA64 041FC5AC */  sw         $5, (0x70001F04 & 0xFFFF)($6)
    /* EF9E8 001EEA68 141FD1AC */  sw         $17, (0x70001F14 & 0xFFFF)($6)
    /* EF9EC 001EEA6C 20380002 */  add        $7, $16, $0 /* handwritten instruction */
.align 2
  .L001EEA70:
    /* EF9F0 001EEA70 781C49DC */  ld         $9, 0x1C78($2)
    /* EF9F4 001EEA74 00000000 */  nop
    /* EF9F8 001EEA78 00000000 */  nop
    /* EF9FC 001EEA7C 00000000 */  nop
    /* EFA00 001EEA80 00000000 */  nop
    /* EFA04 001EEA84 FAFF2011 */  beqz       $9, .L001EEA70
    /* EFA08 001EEA88 00000000 */   nop
    /* EFA0C 001EEA8C 0000E88C */  lw         $8, 0x0($7)
    /* EFA10 001EEA90 00000000 */  nop
    /* EFA14 001EEA94 00000000 */  nop
    /* EFA18 001EEA98 00000000 */  nop
    /* EFA1C 001EEA9C FF000931 */  andi       $9, $8, 0xFF
    /* EFA20 001EEAA0 02520800 */  srl        $10, $8, 8
    /* EFA24 001EEAA4 20D4C9AD */  sw         $9, -0x2BE0($14)
    /* EFA28 001EEAA8 00510A00 */  sll        $10, $10, 4
    /* EFA2C 001EEAAC 10D4CAAD */  sw         $10, -0x2BF0($14)
    /* EFA30 001EEAB0 00200920 */  addi       $9, $0, 0x2000 /* handwritten instruction */
    /* EFA34 001EEAB4 80D4C9AD */  sw         $9, -0x2B80($14)
    /* EFA38 001EEAB8 00010924 */  addiu      $9, $0, 0x100
    /* EFA3C 001EEABC 00D4C9AD */  sw         $9, -0x2C00($14)
    /* EFA40 001EEAC0 00000000 */  nop
    /* EFA44 001EEAC4 6000E1D9 */  lqc2       $vf1, 0x60($15)
    /* EFA48 001EEAC8 07070C20 */  addi       $12, $0, 0x707 /* handwritten instruction */
    /* EFA4C 001EEACC 041FC58C */  lw         $5, (0x70001F04 & 0xFFFF)($6)
    /* EFA50 001EEAD0 89638071 */  pcpyld     $12, $12, $0
    /* EFA54 001EEAD4 0000F9D9 */  lqc2       $vf25, 0x0($15)
    /* EFA58 001EEAD8 FB000120 */  addi       $1, $0, 0xFB /* handwritten instruction */
    /* EFA5C 001EEADC 1000FAD9 */  lqc2       $vf26, 0x10($15)
    /* EFA60 001EEAE0 FFFF0220 */  addi       $2, $0, -0x1 /* handwritten instruction */
    /* EFA64 001EEAE4 FD09E14B */  vabs.xyzw  $vf1, $vf1
    /* EFA68 001EEAE8 00000000 */  nop
    /* EFA6C 001EEAEC 2000FBD9 */  lqc2       $vf27, 0x20($15)
    /* EFA70 001EEAF0 FE000320 */  addi       $3, $0, 0xFE /* handwritten instruction */
    /* EFA74 001EEAF4 3000FCD9 */  lqc2       $vf28, 0x30($15)
    /* EFA78 001EEAF8 000E0D3C */  lui        $13, (0xE000E00 >> 16)
    /* EFA7C 001EEAFC 4000FDD9 */  lqc2       $vf29, 0x40($15)
    /* EFA80 001EEB00 000EAD21 */  addi       $13, $13, (0xE000E00 & 0xFFFF) /* handwritten instruction */
    /* EFA84 001EEB04 5000FED9 */  lqc2       $vf30, 0x50($15)
    /* EFA88 001EEB08 7000FFD9 */  lqc2       $vf31, 0x70($15)
    /* EFA8C 001EEB0C 6C00E14B */  vsub.xyzw  $vf1, $vf0, $vf1
    /* EFA90 001EEB10 0008C148 */  ctc2.ni    $1, $vi1
    /* EFA94 001EEB14 0010A248 */  qmtc2.ni   $2, $vf2
    /* EFA98 001EEB18 0050C348 */  ctc2.ni    $3, $vi10
    /* EFA9C 001EEB1C 7D0BE14B */  .word      0x4BE10B7D    # vsqi.xyzw  $vf1, ($vi1++)
    /* EFAA0 001EEB20 7DCBE14B */  .word      0x4BE1CB7D    # vsqi.xyzw  $vf25, ($vi1++)
    /* EFAA4 001EEB24 7DD3E14B */  .word      0x4BE1D37D    # vsqi.xyzw  $vf26, ($vi1++)
    /* EFAA8 001EEB28 7DDBE14B */  .word      0x4BE1DB7D    # vsqi.xyzw  $vf27, ($vi1++)
    /* EFAAC 001EEB2C 7D13E14B */  .word      0x4BE1137D    # vsqi.xyzw  $vf2, ($vi1++)
    /* EFAB0 001EEB30 00000000 */  nop
.align 2
  .L001EEB34:
    /* EFAB4 001EEB34 00D4C98D */  lw         $9, -0x2C00($14)
    /* EFAB8 001EEB38 00000000 */  nop
    /* EFABC 001EEB3C 00000000 */  nop
    /* EFAC0 001EEB40 00000000 */  nop
    /* EFAC4 001EEB44 00012931 */  andi       $9, $9, 0x100
    /* EFAC8 001EEB48 00000000 */  nop
    /* EFACC 001EEB4C F9FF2015 */  bnez       $9, .L001EEB34
    /* EFAD0 001EEB50 00000000 */   nop
.align 2
  .L001EEB54:
    /* EFAD4 001EEB54 0800E88C */  lw         $8, 0x8($7)
    /* EFAD8 001EEB58 00000000 */  nop
    /* EFADC 001EEB5C 081FD98C */  lw         $25, (0x70001F08 & 0xFFFF)($6)
    /* EFAE0 001EEB60 00000000 */  nop
    /* EFAE4 001EEB64 FF000931 */  andi       $9, $8, 0xFF
    /* EFAE8 001EEB68 02520800 */  srl        $10, $8, 8
    /* EFAEC 001EEB6C 09000011 */  beqz       $8, .L001EEB94
    /* EFAF0 001EEB70 00082F3B */   xori      $15, $25, 0x800
    /* EFAF4 001EEB74 20D4C9AD */  sw         $9, -0x2BE0($14)
    /* EFAF8 001EEB78 00510A00 */  sll        $10, $10, 4
    /* EFAFC 001EEB7C 10D4CAAD */  sw         $10, -0x2BF0($14)
    /* EFB00 001EEB80 00000000 */  nop
    /* EFB04 001EEB84 80D4CFAD */  sw         $15, -0x2B80($14)
    /* EFB08 001EEB88 00010924 */  addiu      $9, $0, 0x100
    /* EFB0C 001EEB8C 00D4C9AD */  sw         $9, -0x2C00($14)
    /* EFB10 001EEB90 00000000 */  nop
.align 2
  .L001EEB94:
    /* EFB14 001EEB94 081FCFAC */  sw         $15, (0x70001F08 & 0xFFFF)($6)
    /* EFB18 001EEB98 00000000 */  nop
    /* EFB1C 001EEB9C 0C1FC48C */  lw         $4, (0x70001F0C & 0xFFFF)($6)
    /* EFB20 001EEBA0 00000000 */  nop
    /* EFB24 001EEBA4 00002A8F */  lw         $10, 0x0($25)
    /* EFB28 001EEBA8 20003D23 */  addi       $29, $25, 0x20 /* handwritten instruction */
    /* EFB2C 001EEBAC 04002E8F */  lw         $14, 0x4($25)
    /* EFB30 001EEBB0 00000000 */  nop
    /* EFB34 001EEBB4 08002F8F */  lw         $15, 0x8($25)
    /* EFB38 001EEBB8 00000000 */  nop
    /* EFB3C 001EEBBC 0C00308F */  lw         $16, 0xC($25)
    /* EFB40 001EEBC0 00000000 */  nop
    /* EFB44 001EEBC4 14002B8F */  lw         $11, 0x14($25)
    /* EFB48 001EEBC8 2040CF01 */  add        $8, $14, $15 /* handwritten instruction */
    /* EFB4C 001EEBCC 1800218F */  lw         $1, 0x18($25)
    /* EFB50 001EEBD0 20401001 */  add        $8, $8, $16 /* handwritten instruction */
    /* EFB54 001EEBD4 1C00228F */  lw         $2, 0x1C($25)
    /* EFB58 001EEBD8 FDFF0821 */  addi       $8, $8, -0x3 /* handwritten instruction */
    /* EFB5C 001EEBDC 0018CE48 */  ctc2.ni    $14, $vi3
    /* EFB60 001EEBE0 20083900 */  add        $1, $1, $25 /* handwritten instruction */
    /* EFB64 001EEBE4 0020CF48 */  ctc2.ni    $15, $vi4
    /* EFB68 001EEBE8 20105900 */  add        $2, $2, $25 /* handwritten instruction */
    /* EFB6C 001EEBEC 0028D048 */  ctc2.ni    $16, $vi5
    /* EFB70 001EEBF0 03001E31 */  andi       $30, $8, 0x3
    /* EFB74 001EEBF4 40700B00 */  sll        $14, $11, 1
    /* EFB78 001EEBF8 80780B00 */  sll        $15, $11, 2
    /* EFB7C 001EEBFC 2070CF01 */  add        $14, $14, $15 /* handwritten instruction */
    /* EFB80 001EEC00 0F00EF21 */  addi       $15, $15, 0xF /* handwritten instruction */
    /* EFB84 001EEC04 0F00CE21 */  addi       $14, $14, 0xF /* handwritten instruction */
    /* EFB88 001EEC08 F0FFEF31 */  andi       $15, $15, 0xFFF0
    /* EFB8C 001EEC0C F0FFCE31 */  andi       $14, $14, 0xFFF0
    /* EFB90 001EEC10 FC000831 */  andi       $8, $8, 0xFC
    /* EFB94 001EEC14 20188F00 */  add        $3, $4, $15 /* handwritten instruction */
    /* EFB98 001EEC18 80400800 */  sll        $8, $8, 2
    /* EFB9C 001EEC1C 20E06E00 */  add        $28, $3, $14 /* handwritten instruction */
    /* EFBA0 001EEC20 20C04800 */  add        $24, $2, $8 /* handwritten instruction */
    /* EFBA4 001EEC24 22708403 */  sub        $14, $28, $4 /* handwritten instruction */
    /* EFBA8 001EEC28 F0FF607C */  sq         $0, -0x10($3)
    /* EFBAC 001EEC2C 02710E00 */  srl        $14, $14, 4
    /* EFBB0 001EEC30 F0FF807F */  sq         $0, -0x10($28)
    /* EFBB4 001EEC34 11004011 */  beqz       $10, .L001EEC7C
    /* EFBB8 001EEC38 101FCEAC */   sw        $14, (0x70001F10 & 0xFFFF)($6)
.align 2
  .L001EEC3C:
    /* EFBBC 001EEC3C 0000AE93 */  lbu        $14, 0x0($29)
    /* EFBC0 001EEC40 0100AF93 */  lbu        $15, 0x1($29)
    /* EFBC4 001EEC44 80710E00 */  sll        $14, $14, 6
    /* EFBC8 001EEC48 2070C601 */  add        $14, $14, $6 /* handwritten instruction */
    /* EFBCC 001EEC4C 0008CF48 */  ctc2.ni    $15, $vi1
    /* EFBD0 001EEC50 FFFF4A21 */  addi       $10, $10, -0x1 /* handwritten instruction */
    /* EFBD4 001EEC54 0000C1D9 */  lqc2       $vf1, 0x0($14)
    /* EFBD8 001EEC58 1000C2D9 */  lqc2       $vf2, 0x10($14)
    /* EFBDC 001EEC5C 2000C3D9 */  lqc2       $vf3, 0x20($14)
    /* EFBE0 001EEC60 3000C4D9 */  lqc2       $vf4, 0x30($14)
    /* EFBE4 001EEC64 7D0BE14B */  .word      0x4BE10B7D    # vsqi.xyzw  $vf1, ($vi1++)
    /* EFBE8 001EEC68 7D13E14B */  .word      0x4BE1137D    # vsqi.xyzw  $vf2, ($vi1++)
    /* EFBEC 001EEC6C 7D1BE14B */  .word      0x4BE11B7D    # vsqi.xyzw  $vf3, ($vi1++)
    /* EFBF0 001EEC70 0200BD23 */  addi       $29, $29, 0x2 /* handwritten instruction */
    /* EFBF4 001EEC74 F1FF4015 */  bnez       $10, .L001EEC3C
    /* EFBF8 001EEC78 7D23E14B */   .word      0x4BE1237D    # vsqi.xyzw $vf4, ($vi1++)
.align 2
  .L001EEC7C:
    /* EFBFC 001EEC7C 00002878 */  lq         $8, 0x0($1)
    /* EFC00 001EEC80 00000000 */  nop
    /* EFC04 001EEC84 10002978 */  lq         $9, 0x10($1)
    /* EFC08 001EEC88 00000000 */  nop
    /* EFC0C 001EEC8C 20002A78 */  lq         $10, 0x20($1)
    /* EFC10 001EEC90 A88E8871 */  pextub     $17, $12, $8
    /* EFC14 001EEC94 888DB171 */  pextlh     $17, $13, $17
    /* EFC18 001EEC98 B2020014 */  bnez       $0, .L001EF764
    /* EFC1C 001EEC9C FC881170 */   psllw     $17, $17, 3
    /* EFC20 001EECA0 B0020014 */  bnez       $0, .L001EF764
    /* EFC24 001EECA4 00002FDE */   ld        $15, 0x0($17)
    /* EFC28 001EECA8 A8CD0071 */  pextuh     $25, $8, $0
    /* EFC2C 001EECAC 3E881100 */  dsrl32     $17, $17, 0
    /* EFC30 001EECB0 C2700800 */  srl        $14, $8, 3
    /* EFC34 001EECB4 000031DE */  ld         $17, 0x0($17)
    /* EFC38 001EECB8 88E60870 */  pextlb     $28, $0, $8
    /* EFC3C 001EECBC 3FCC1970 */  psraw      $25, $25, 16
    /* EFC40 001EECC0 A8020014 */  bnez       $0, .L001EF764
    /* EFC44 001EECC4 898B2F72 */   pcpyld    $17, $17, $15
    /* EFC48 001EECC8 A6020014 */  bnez       $0, .L001EF764
    /* EFC4C 001EECCC C01FCE31 */   andi      $14, $14, 0x1FC0
    /* EFC50 001EECD0 00000000 */  nop
    /* EFC54 001EECD4 A3020014 */  bnez       $0, .L001EF764
    /* EFC58 001EECD8 887E1C70 */   pextlb    $15, $0, $28
    /* EFC5C 001EECDC 0008B948 */  qmtc2.ni   $25, $vf1
    /* EFC60 001EECE0 A8E61C70 */  pextub     $28, $0, $28
    /* EFC64 001EECE4 0010B148 */  qmtc2.ni   $17, $vf2
    /* EFC68 001EECE8 2070C601 */  add        $14, $14, $6 /* handwritten instruction */
    /* EFC6C 001EECEC 0018AF48 */  qmtc2.ni   $15, $vf3
    /* EFC70 001EECF0 A8868971 */  pextub     $16, $12, $9
    /* EFC74 001EECF4 0020BC48 */  qmtc2.ni   $28, $vf4
    /* EFC78 001EECF8 8885B071 */  pextlh     $16, $13, $16
    /* EFC7C 001EECFC 99020014 */  bnez       $0, .L001EF764
    /* EFC80 001EED00 FC801070 */   psllw     $16, $16, 3
    /* EFC84 001EED04 0000C5D9 */  lqc2       $vf5, 0x0($14)
    /* EFC88 001EED08 A88E8A71 */  pextub     $17, $12, $10
    /* EFC8C 001EED0C 1000C6D9 */  lqc2       $vf6, 0x10($14)
    /* EFC90 001EED10 888DB171 */  pextlh     $17, $13, $17
    /* EFC94 001EED14 2000C7D9 */  lqc2       $vf7, 0x20($14)
    /* EFC98 001EED18 FC881170 */  psllw      $17, $17, 3
    /* EFC9C 001EED1C 3000C8D9 */  lqc2       $vf8, 0x30($14)
    /* EFCA0 001EED20 A8CD2071 */  pextuh     $25, $9, $0
    /* EFCA4 001EED24 3800004A */  .word      0x4A000038    # vcallms    0x0
    /* EFCA8 001EED28 00000000 */  nop
    /* EFCAC 001EED2C 00000000 */  nop
    /* EFCB0 001EED30 00000000 */  nop
    /* EFCB4 001EED34 8B020014 */  bnez       $0, .L001EF764
    /* EFCB8 001EED38 88E60970 */   pextlb    $28, $0, $9
    /* EFCBC 001EED3C 00001DDE */  ld         $29, 0x0($16)
    /* EFCC0 001EED40 C2700900 */  srl        $14, $9, 3
    /* EFCC4 001EED44 00000000 */  nop
    /* EFCC8 001EED48 00000000 */  nop
    /* EFCCC 001EED4C 3E801000 */  dsrl32     $16, $16, 0
    /* EFCD0 001EED50 00000000 */  nop
    /* EFCD4 001EED54 000010DE */  ld         $16, 0x0($16)
    /* EFCD8 001EED58 00000000 */  nop
    /* EFCDC 001EED5C C01FCE31 */  andi       $14, $14, 0x1FC0
    /* EFCE0 001EED60 00000000 */  nop
    /* EFCE4 001EED64 2070C601 */  add        $14, $14, $6 /* handwritten instruction */
    /* EFCE8 001EED68 00000000 */  nop
    /* EFCEC 001EED6C 00002FDE */  ld         $15, 0x0($17)
    /* EFCF0 001EED70 89831D72 */  pcpyld     $16, $16, $29
    /* EFCF4 001EED74 3E881100 */  dsrl32     $17, $17, 0
    /* EFCF8 001EED78 00000000 */  nop
    /* EFCFC 001EED7C 000031DE */  ld         $17, 0x0($17)
    /* EFD00 001EED80 00000000 */  nop
    /* EFD04 001EED84 77020014 */  bnez       $0, .L001EF764
    /* EFD08 001EED88 3FCC1970 */   psraw     $25, $25, 16
    /* EFD0C 001EED8C 75020014 */  bnez       $0, .L001EF764
    /* EFD10 001EED90 898B2F72 */   pcpyld    $17, $17, $15
    /* EFD14 001EED94 73020014 */  bnez       $0, .L001EF764
    /* EFD18 001EED98 887E1C70 */   pextlb    $15, $0, $28
    /* EFD1C 001EED9C 0008B948 */  qmtc2.ni   $25, $vf1
    /* EFD20 001EEDA0 A8E61C70 */  pextub     $28, $0, $28
    /* EFD24 001EEDA4 0010B048 */  qmtc2.ni   $16, $vf2
    /* EFD28 001EEDA8 00000000 */  nop
    /* EFD2C 001EEDAC 0018AF48 */  qmtc2.ni   $15, $vf3
    /* EFD30 001EEDB0 00000000 */  nop
    /* EFD34 001EEDB4 0020BC48 */  qmtc2.ni   $28, $vf4
    /* EFD38 001EEDB8 00000000 */  nop
    /* EFD3C 001EEDBC 0000C5D9 */  lqc2       $vf5, 0x0($14)
    /* EFD40 001EEDC0 00000000 */  nop
    /* EFD44 001EEDC4 1000C6D9 */  lqc2       $vf6, 0x10($14)
    /* EFD48 001EEDC8 00000000 */  nop
    /* EFD4C 001EEDCC 2000C7D9 */  lqc2       $vf7, 0x20($14)
    /* EFD50 001EEDD0 00000000 */  nop
    /* EFD54 001EEDD4 3000C8D9 */  lqc2       $vf8, 0x30($14)
    /* EFD58 001EEDD8 00000000 */  nop
    /* EFD5C 001EEDDC 0008C048 */  ctc2.ni    $0, $vi1
    /* EFD60 001EEDE0 00000000 */  nop
    /* EFD64 001EEDE4 00000000 */  nop
    /* EFD68 001EEDE8 30002120 */  addi       $1, $1, 0x30 /* handwritten instruction */
    /* EFD6C 001EEDEC 00000000 */  nop
    /* EFD70 001EEDF0 00000000 */  nop
    /* EFD74 001EEDF4 5B020014 */  bnez       $0, .L001EF764
    /* EFD78 001EEDF8 A8CD4071 */   pextuh    $25, $10, $0
    /* EFD7C 001EEDFC 00002778 */  lq         $7, 0x0($1)
    /* EFD80 001EEE00 88E60A70 */  pextlb     $28, $0, $10
    /* EFD84 001EEE04 10002878 */  lq         $8, 0x10($1)
    /* EFD88 001EEE08 00000000 */  nop
    /* EFD8C 001EEE0C 20002978 */  lq         $9, 0x20($1)
    /* EFD90 001EEE10 00000000 */  nop
    /* EFD94 001EEE14 C2700A00 */  srl        $14, $10, 3
    /* EFD98 001EEE18 30002A78 */  lq         $10, 0x30($1)
    /* EFD9C 001EEE1C C01FCE31 */  andi       $14, $14, 0x1FC0
    /* EFDA0 001EEE20 00000000 */  nop
    /* EFDA4 001EEE24 00583648 */  qmfc2.ni   $22, $vf11
    /* EFDA8 001EEE28 3FCC1970 */  psraw      $25, $25, 16
    /* EFDAC 001EEE2C 00000000 */  nop
    /* EFDB0 001EEE30 00000000 */  nop
    /* EFDB4 001EEE34 4B02C006 */  bltz       $22, .L001EF764
    /* EFDB8 001EEE38 887E1C70 */   pextlb    $15, $0, $28
.align 2
  .L001EEE3C:
    /* EFDBC 001EEE3C 0008B948 */  qmtc2.ni   $25, $vf1
    /* EFDC0 001EEE40 A8E61C70 */  pextub     $28, $0, $28
    /* EFDC4 001EEE44 0010B148 */  qmtc2.ni   $17, $vf2
    /* EFDC8 001EEE48 2070C601 */  add        $14, $14, $6 /* handwritten instruction */
    /* EFDCC 001EEE4C 0018AF48 */  qmtc2.ni   $15, $vf3
    /* EFDD0 001EEE50 A8868771 */  pextub     $16, $12, $7
    /* EFDD4 001EEE54 0020BC48 */  qmtc2.ni   $28, $vf4
    /* EFDD8 001EEE58 8885B071 */  pextlh     $16, $13, $16
    /* EFDDC 001EEE5C 0000C5D9 */  lqc2       $vf5, 0x0($14)
    /* EFDE0 001EEE60 FC801070 */  psllw      $16, $16, 3
    /* EFDE4 001EEE64 1000C6D9 */  lqc2       $vf6, 0x10($14)
    /* EFDE8 001EEE68 A88E8871 */  pextub     $17, $12, $8
    /* EFDEC 001EEE6C 2000C7D9 */  lqc2       $vf7, 0x20($14)
    /* EFDF0 001EEE70 888DB171 */  pextlh     $17, $13, $17
    /* EFDF4 001EEE74 3000C8D9 */  lqc2       $vf8, 0x30($14)
    /* EFDF8 001EEE78 FC881170 */  psllw      $17, $17, 3
    /* EFDFC 001EEE7C 0010C048 */  ctc2.ni    $0, $vi2
    /* EFE00 001EEE80 A8CDE070 */  pextuh     $25, $7, $0
    /* EFE04 001EEE84 00001DDE */  ld         $29, 0x0($16)
    /* EFE08 001EEE88 88E60770 */  pextlb     $28, $0, $7
    /* EFE0C 001EEE8C 3E801000 */  dsrl32     $16, $16, 0
    /* EFE10 001EEE90 C2700700 */  srl        $14, $7, 3
    /* EFE14 001EEE94 000010DE */  ld         $16, 0x0($16)
    /* EFE18 001EEE98 00000000 */  nop
    /* EFE1C 001EEE9C C01FCE31 */  andi       $14, $14, 0x1FC0
    /* EFE20 001EEEA0 00000000 */  nop
    /* EFE24 001EEEA4 2070C601 */  add        $14, $14, $6 /* handwritten instruction */
    /* EFE28 001EEEA8 00000000 */  nop
    /* EFE2C 001EEEAC 00002FDE */  ld         $15, 0x0($17)
    /* EFE30 001EEEB0 89831D72 */  pcpyld     $16, $16, $29
    /* EFE34 001EEEB4 3E881100 */  dsrl32     $17, $17, 0
    /* EFE38 001EEEB8 00000000 */  nop
    /* EFE3C 001EEEBC 000031DE */  ld         $17, 0x0($17)
    /* EFE40 001EEEC0 00000000 */  nop
    /* EFE44 001EEEC4 00483D48 */  qmfc2.ni   $29, $vf9
    /* EFE48 001EEEC8 3FCC1970 */  psraw      $25, $25, 16
    /* EFE4C 001EEECC 25020014 */  bnez       $0, .L001EF764
    /* EFE50 001EEED0 898B2F72 */   pcpyld    $17, $17, $15
    /* EFE54 001EEED4 3102A007 */  bltz       $29, .L001EF79C
    /* EFE58 001EEED8 887E1C70 */   pextlb    $15, $0, $28
.align 2
  .L001EEEDC:
    /* EFE5C 001EEEDC 0008B948 */  qmtc2.ni   $25, $vf1
    /* EFE60 001EEEE0 A8E61C70 */  pextub     $28, $0, $28
    /* EFE64 001EEEE4 0010B048 */  qmtc2.ni   $16, $vf2
    /* EFE68 001EEEE8 00000000 */  nop
    /* EFE6C 001EEEEC 0018AF48 */  qmtc2.ni   $15, $vf3
    /* EFE70 001EEEF0 A8CD0071 */  pextuh     $25, $8, $0
    /* EFE74 001EEEF4 0020BC48 */  qmtc2.ni   $28, $vf4
    /* EFE78 001EEEF8 88E60870 */  pextlb     $28, $0, $8
    /* EFE7C 001EEEFC 0000C5D9 */  lqc2       $vf5, 0x0($14)
    /* EFE80 001EEF00 00000000 */  nop
    /* EFE84 001EEF04 1000C6D9 */  lqc2       $vf6, 0x10($14)
    /* EFE88 001EEF08 00000000 */  nop
    /* EFE8C 001EEF0C 2000C7D9 */  lqc2       $vf7, 0x20($14)
    /* EFE90 001EEF10 00000000 */  nop
    /* EFE94 001EEF14 3000C8D9 */  lqc2       $vf8, 0x30($14)
    /* EFE98 001EEF18 3FCC1970 */  psraw      $25, $25, 16
    /* EFE9C 001EEF1C 0008C048 */  ctc2.ni    $0, $vi1
    /* EFEA0 001EEF20 00000000 */  nop
    /* EFEA4 001EEF24 00000000 */  nop
    /* EFEA8 001EEF28 00000000 */  nop
    /* EFEAC 001EEF2C 00000000 */  nop
    /* EFEB0 001EEF30 C2700800 */  srl        $14, $8, 3
    /* EFEB4 001EEF34 00000000 */  nop
    /* EFEB8 001EEF38 00000000 */  nop
    /* EFEBC 001EEF3C 0000607C */  sq         $0, 0x0($3)
    /* EFEC0 001EEF40 00000000 */  nop
    /* EFEC4 001EEF44 00000000 */  nop
    /* EFEC8 001EEF48 00000000 */  nop
    /* EFECC 001EEF4C 00000000 */  nop
    /* EFED0 001EEF50 00000000 */  nop
    /* EFED4 001EEF54 00000000 */  nop
    /* EFED8 001EEF58 00000000 */  nop
    /* EFEDC 001EEF5C 00000000 */  nop
    /* EFEE0 001EEF60 00000000 */  nop
    /* EFEE4 001EEF64 00000000 */  nop
    /* EFEE8 001EEF68 C01FCE31 */  andi       $14, $14, 0x1FC0
    /* EFEEC 001EEF6C 00583748 */  qmfc2.ni   $23, $vf11
    /* EFEF0 001EEF70 887E1C70 */  pextlb     $15, $0, $28
    /* EFEF4 001EEF74 00603448 */  qmfc2.ni   $20, $vf12
    /* EFEF8 001EEF78 A8E61C70 */  pextub     $28, $0, $28
    /* EFEFC 001EEF7C 1502E006 */  bltz       $23, .L001EF7D4
    /* EFF00 001EEF80 00000000 */   nop
.align 2
  .L001EEF84:
    /* EFF04 001EEF84 0008B948 */  qmtc2.ni   $25, $vf1
    /* EFF08 001EEF88 00000000 */  nop
    /* EFF0C 001EEF8C 0010B148 */  qmtc2.ni   $17, $vf2
    /* EFF10 001EEF90 2070C601 */  add        $14, $14, $6 /* handwritten instruction */
    /* EFF14 001EEF94 0018AF48 */  qmtc2.ni   $15, $vf3
    /* EFF18 001EEF98 A8868971 */  pextub     $16, $12, $9
    /* EFF1C 001EEF9C 0020BC48 */  qmtc2.ni   $28, $vf4
    /* EFF20 001EEFA0 8885B071 */  pextlh     $16, $13, $16
    /* EFF24 001EEFA4 EF010014 */  bnez       $0, .L001EF764
    /* EFF28 001EEFA8 FC801070 */   psllw     $16, $16, 3
    /* EFF2C 001EEFAC 0000C5D9 */  lqc2       $vf5, 0x0($14)
    /* EFF30 001EEFB0 A88E8A71 */  pextub     $17, $12, $10
    /* EFF34 001EEFB4 1000C6D9 */  lqc2       $vf6, 0x10($14)
    /* EFF38 001EEFB8 888DB171 */  pextlh     $17, $13, $17
    /* EFF3C 001EEFBC 2000C7D9 */  lqc2       $vf7, 0x20($14)
    /* EFF40 001EEFC0 FC881170 */  psllw      $17, $17, 3
    /* EFF44 001EEFC4 3000C8D9 */  lqc2       $vf8, 0x30($14)
    /* EFF48 001EEFC8 A8CD2071 */  pextuh     $25, $9, $0
    /* EFF4C 001EEFCC 0010C048 */  ctc2.ni    $0, $vi2
    /* EFF50 001EEFD0 88E60970 */  pextlb     $28, $0, $9
    /* EFF54 001EEFD4 00001DDE */  ld         $29, 0x0($16)
    /* EFF58 001EEFD8 C2700900 */  srl        $14, $9, 3
    /* EFF5C 001EEFDC 00000000 */  nop
    /* EFF60 001EEFE0 00000000 */  nop
    /* EFF64 001EEFE4 3E801000 */  dsrl32     $16, $16, 0
    /* EFF68 001EEFE8 00000000 */  nop
    /* EFF6C 001EEFEC 000010DE */  ld         $16, 0x0($16)
    /* EFF70 001EEFF0 00000000 */  nop
    /* EFF74 001EEFF4 C01FCE31 */  andi       $14, $14, 0x1FC0
    /* EFF78 001EEFF8 00000000 */  nop
    /* EFF7C 001EEFFC 2070C601 */  add        $14, $14, $6 /* handwritten instruction */
    /* EFF80 001EF000 00000000 */  nop
    /* EFF84 001EF004 00002FDE */  ld         $15, 0x0($17)
    /* EFF88 001EF008 89831D72 */  pcpyld     $16, $16, $29
    /* EFF8C 001EF00C 3E881100 */  dsrl32     $17, $17, 0
    /* EFF90 001EF010 00000000 */  nop
    /* EFF94 001EF014 000031DE */  ld         $17, 0x0($17)
    /* EFF98 001EF018 00000000 */  nop
    /* EFF9C 001EF01C 00483D48 */  qmfc2.ni   $29, $vf9
    /* EFFA0 001EF020 3FCC1970 */  psraw      $25, $25, 16
    /* EFFA4 001EF024 00503548 */  qmfc2.ni   $21, $vf10
    /* EFFA8 001EF028 898B2F72 */  pcpyld     $17, $17, $15
    /* EFFAC 001EF02C F701A007 */  bltz       $29, .L001EF80C
    /* EFFB0 001EF030 887E1C70 */   pextlb    $15, $0, $28
.align 2
  .L001EF034:
    /* EFFB4 001EF034 0008B948 */  qmtc2.ni   $25, $vf1
    /* EFFB8 001EF038 A8E61C70 */  pextub     $28, $0, $28
    /* EFFBC 001EF03C 0010B048 */  qmtc2.ni   $16, $vf2
    /* EFFC0 001EF040 00000000 */  nop
    /* EFFC4 001EF044 0018AF48 */  qmtc2.ni   $15, $vf3
    /* EFFC8 001EF048 C8A51470 */  ppach      $20, $0, $20
    /* EFFCC 001EF04C 0020BC48 */  qmtc2.ni   $28, $vf4
    /* EFFD0 001EF050 C8AD1570 */  ppach      $21, $0, $21
    /* EFFD4 001EF054 0000C5D9 */  lqc2       $vf5, 0x0($14)
    /* EFFD8 001EF058 C8BDB773 */  ppach      $23, $29, $23
    /* EFFDC 001EF05C 1000C6D9 */  lqc2       $vf6, 0x10($14)
    /* EFFE0 001EF060 00000000 */  nop
    /* EFFE4 001EF064 2000C7D9 */  lqc2       $vf7, 0x20($14)
    /* EFFE8 001EF068 00000000 */  nop
    /* EFFEC 001EF06C 3000C8D9 */  lqc2       $vf8, 0x30($14)
    /* EFFF0 001EF070 00000000 */  nop
    /* EFFF4 001EF074 0008C048 */  ctc2.ni    $0, $vi1
    /* EFFF8 001EF078 00000000 */  nop
    /* EFFFC 001EF07C 00000000 */  nop
    /* F0000 001EF080 40002120 */  addi       $1, $1, 0x40 /* handwritten instruction */
    /* F0004 001EF084 A7005810 */  beq        $2, $24, .L001EF324
    /* F0008 001EF088 00000000 */   nop
.align 2
  .L001EF08C:
    /* F000C 001EF08C 00004B78 */  lq         $11, 0x0($2)
    /* F0010 001EF090 A8CD4071 */  pextuh     $25, $10, $0
    /* F0014 001EF094 00002778 */  lq         $7, 0x0($1)
    /* F0018 001EF098 88E60A70 */  pextlb     $28, $0, $10
    /* F001C 001EF09C 10002878 */  lq         $8, 0x10($1)
    /* F0020 001EF0A0 88760B70 */  pextlb     $14, $0, $11
    /* F0024 001EF0A4 20002978 */  lq         $9, 0x20($1)
    /* F0028 001EF0A8 09BFEE72 */  pmulth     $23, $23, $14
    /* F002C 001EF0AC C2700A00 */  srl        $14, $10, 3
    /* F0030 001EF0B0 30002A78 */  lq         $10, 0x30($1)
    /* F0034 001EF0B4 C01FCE31 */  andi       $14, $14, 0x1FC0
    /* F0038 001EF0B8 00000000 */  nop
    /* F003C 001EF0BC 00583648 */  qmfc2.ni   $22, $vf11
    /* F0040 001EF0C0 3FCC1970 */  psraw      $25, $25, 16
    /* F0044 001EF0C4 00603248 */  qmfc2.ni   $18, $vf12
    /* F0048 001EF0C8 30B90070 */  pmfhl.sh   $23
    /* F004C 001EF0CC DD01C006 */  bltz       $22, .L001EF844
    /* F0050 001EF0D0 887E1C70 */   pextlb    $15, $0, $28
.align 2
  .L001EF0D4:
    /* F0054 001EF0D4 0008B948 */  qmtc2.ni   $25, $vf1
    /* F0058 001EF0D8 A8E61C70 */  pextub     $28, $0, $28
    /* F005C 001EF0DC 0010B148 */  qmtc2.ni   $17, $vf2
    /* F0060 001EF0E0 2070C601 */  add        $14, $14, $6 /* handwritten instruction */
    /* F0064 001EF0E4 0018AF48 */  qmtc2.ni   $15, $vf3
    /* F0068 001EF0E8 A8868771 */  pextub     $16, $12, $7
    /* F006C 001EF0EC 0020BC48 */  qmtc2.ni   $28, $vf4
    /* F0070 001EF0F0 8885B071 */  pextlh     $16, $13, $16
    /* F0074 001EF0F4 0000C5D9 */  lqc2       $vf5, 0x0($14)
    /* F0078 001EF0F8 FC801070 */  psllw      $16, $16, 3
    /* F007C 001EF0FC 1000C6D9 */  lqc2       $vf6, 0x10($14)
    /* F0080 001EF100 A88E8871 */  pextub     $17, $12, $8
    /* F0084 001EF104 2000C7D9 */  lqc2       $vf7, 0x20($14)
    /* F0088 001EF108 888DB171 */  pextlh     $17, $13, $17
    /* F008C 001EF10C 3000C8D9 */  lqc2       $vf8, 0x30($14)
    /* F0090 001EF110 FC881170 */  psllw      $17, $17, 3
    /* F0094 001EF114 0010C048 */  ctc2.ni    $0, $vi2
    /* F0098 001EF118 A8CDE070 */  pextuh     $25, $7, $0
    /* F009C 001EF11C 00001DDE */  ld         $29, 0x0($16)
    /* F00A0 001EF120 88E60770 */  pextlb     $28, $0, $7
    /* F00A4 001EF124 3E801000 */  dsrl32     $16, $16, 0
    /* F00A8 001EF128 C2700700 */  srl        $14, $7, 3
    /* F00AC 001EF12C 000010DE */  ld         $16, 0x0($16)
    /* F00B0 001EF130 F7B91770 */  psrah      $23, $23, 7
    /* F00B4 001EF134 C01FCE31 */  andi       $14, $14, 0x1FC0
    /* F00B8 001EF138 FF01E730 */  andi       $7, $7, 0x1FF
    /* F00BC 001EF13C 2070C601 */  add        $14, $14, $6 /* handwritten instruction */
    /* F00C0 001EF140 00390700 */  sll        $7, $7, 4
    /* F00C4 001EF144 00002FDE */  ld         $15, 0x0($17)
    /* F00C8 001EF148 89831D72 */  pcpyld     $16, $16, $29
    /* F00CC 001EF14C 3E881100 */  dsrl32     $17, $17, 0
    /* F00D0 001EF150 2038E500 */  add        $7, $7, $5 /* handwritten instruction */
    /* F00D4 001EF154 000031DE */  ld         $17, 0x0($17)
    /* F00D8 001EF158 C8951270 */  ppach      $18, $0, $18
    /* F00DC 001EF15C 00483D48 */  qmfc2.ni   $29, $vf9
    /* F00E0 001EF160 3FCC1970 */  psraw      $25, $25, 16
    /* F00E4 001EF164 00503348 */  qmfc2.ni   $19, $vf10
    /* F00E8 001EF168 898B2F72 */  pcpyld     $17, $17, $15
    /* F00EC 001EF16C C301A007 */  bltz       $29, .L001EF87C
    /* F00F0 001EF170 887E1C70 */   pextlb    $15, $0, $28
.align 2
  .L001EF174:
    /* F00F4 001EF174 0008B948 */  qmtc2.ni   $25, $vf1
    /* F00F8 001EF178 A8E61C70 */  pextub     $28, $0, $28
    /* F00FC 001EF17C 0010B048 */  qmtc2.ni   $16, $vf2
    /* F0100 001EF180 C89D1370 */  ppach      $19, $0, $19
    /* F0104 001EF184 0018AF48 */  qmtc2.ni   $15, $vf3
    /* F0108 001EF188 A8CD0071 */  pextuh     $25, $8, $0
    /* F010C 001EF18C 0020BC48 */  qmtc2.ni   $28, $vf4
    /* F0110 001EF190 88E60870 */  pextlb     $28, $0, $8
    /* F0114 001EF194 0000C5D9 */  lqc2       $vf5, 0x0($14)
    /* F0118 001EF198 C8B5B673 */  ppach      $22, $29, $22
    /* F011C 001EF19C 1000C6D9 */  lqc2       $vf6, 0x10($14)
    /* F0120 001EF1A0 A85E0B70 */  pextub     $11, $0, $11
    /* F0124 001EF1A4 2000C7D9 */  lqc2       $vf7, 0x20($14)
    /* F0128 001EF1A8 09B7CB72 */  pmulth     $22, $22, $11
    /* F012C 001EF1AC 3000C8D9 */  lqc2       $vf8, 0x30($14)
    /* F0130 001EF1B0 3FCC1970 */  psraw      $25, $25, 16
    /* F0134 001EF1B4 0008C048 */  ctc2.ni    $0, $vi1
    /* F0138 001EF1B8 00000000 */  nop
    /* F013C 001EF1BC 000074B4 */  sdr        $20, 0x0($3)
    /* F0140 001EF1C0 C2700800 */  srl        $14, $8, 3
    /* F0144 001EF1C4 060075B4 */  sdr        $21, 0x6($3)
    /* F0148 001EF1C8 30B10070 */  pmfhl.sh   $22
    /* F014C 001EF1CC 0D0075B0 */  sdl        $21, 0xD($3)
    /* F0150 001EF1D0 FF010831 */  andi       $8, $8, 0x1FF
    /* F0154 001EF1D4 0C0072B4 */  sdr        $18, 0xC($3)
    /* F0158 001EF1D8 F7B11670 */  psrah      $22, $22, 7
    /* F015C 001EF1DC 130072B0 */  sdl        $18, 0x13($3)
    /* F0160 001EF1E0 C8B6D772 */  ppacb      $22, $22, $23
    /* F0164 001EF1E4 120073B4 */  sdr        $19, 0x12($3)
    /* F0168 001EF1E8 00410800 */  sll        $8, $8, 4
    /* F016C 001EF1EC 0000967C */  sq         $22, 0x0($4)
    /* F0170 001EF1F0 20400501 */  add        $8, $8, $5 /* handwritten instruction */
    /* F0174 001EF1F4 0800F6AC */  sw         $22, 0x8($7)
    /* F0178 001EF1F8 3EB01600 */  dsrl32     $22, $22, 0
    /* F017C 001EF1FC 0000F4FC */  sd         $20, 0x0($7)
    /* F0180 001EF200 C01FCE31 */  andi       $14, $14, 0x1FC0
    /* F0184 001EF204 00583748 */  qmfc2.ni   $23, $vf11
    /* F0188 001EF208 887E1C70 */  pextlb     $15, $0, $28
    /* F018C 001EF20C 00603448 */  qmfc2.ni   $20, $vf12
    /* F0190 001EF210 A8E61C70 */  pextub     $28, $0, $28
    /* F0194 001EF214 A701E006 */  bltz       $23, .L001EF8B4
    /* F0198 001EF218 080016AD */   sw        $22, 0x8($8)
.align 2
  .L001EF21C:
    /* F019C 001EF21C 0008B948 */  qmtc2.ni   $25, $vf1
    /* F01A0 001EF220 A9B3C072 */  pcpyud     $22, $22, $0
    /* F01A4 001EF224 0010B148 */  qmtc2.ni   $17, $vf2
    /* F01A8 001EF228 2070C601 */  add        $14, $14, $6 /* handwritten instruction */
    /* F01AC 001EF22C 0018AF48 */  qmtc2.ni   $15, $vf3
    /* F01B0 001EF230 A8868971 */  pextub     $16, $12, $9
    /* F01B4 001EF234 0020BC48 */  qmtc2.ni   $28, $vf4
    /* F01B8 001EF238 8885B071 */  pextlh     $16, $13, $16
    /* F01BC 001EF23C 000015FD */  sd         $21, 0x0($8)
    /* F01C0 001EF240 FC801070 */  psllw      $16, $16, 3
    /* F01C4 001EF244 0000C5D9 */  lqc2       $vf5, 0x0($14)
    /* F01C8 001EF248 A88E8A71 */  pextub     $17, $12, $10
    /* F01CC 001EF24C 1000C6D9 */  lqc2       $vf6, 0x10($14)
    /* F01D0 001EF250 888DB171 */  pextlh     $17, $13, $17
    /* F01D4 001EF254 2000C7D9 */  lqc2       $vf7, 0x20($14)
    /* F01D8 001EF258 FC881170 */  psllw      $17, $17, 3
    /* F01DC 001EF25C 3000C8D9 */  lqc2       $vf8, 0x30($14)
    /* F01E0 001EF260 A8CD2071 */  pextuh     $25, $9, $0
    /* F01E4 001EF264 0010C048 */  ctc2.ni    $0, $vi2
    /* F01E8 001EF268 88E60970 */  pextlb     $28, $0, $9
    /* F01EC 001EF26C 00001DDE */  ld         $29, 0x0($16)
    /* F01F0 001EF270 C2700900 */  srl        $14, $9, 3
    /* F01F4 001EF274 10004220 */  addi       $2, $2, 0x10 /* handwritten instruction */
    /* F01F8 001EF278 00000000 */  nop
    /* F01FC 001EF27C 3E801000 */  dsrl32     $16, $16, 0
    /* F0200 001EF280 FF012931 */  andi       $9, $9, 0x1FF
    /* F0204 001EF284 000010DE */  ld         $16, 0x0($16)
    /* F0208 001EF288 00490900 */  sll        $9, $9, 4
    /* F020C 001EF28C C01FCE31 */  andi       $14, $14, 0x1FC0
    /* F0210 001EF290 20482501 */  add        $9, $9, $5 /* handwritten instruction */
    /* F0214 001EF294 2070C601 */  add        $14, $14, $6 /* handwritten instruction */
    /* F0218 001EF298 080036AD */  sw         $22, 0x8($9)
    /* F021C 001EF29C 00002FDE */  ld         $15, 0x0($17)
    /* F0220 001EF2A0 89831D72 */  pcpyld     $16, $16, $29
    /* F0224 001EF2A4 3E881100 */  dsrl32     $17, $17, 0
    /* F0228 001EF2A8 000032FD */  sd         $18, 0x0($9)
    /* F022C 001EF2AC 000031DE */  ld         $17, 0x0($17)
    /* F0230 001EF2B0 18006320 */  addi       $3, $3, 0x18 /* handwritten instruction */
    /* F0234 001EF2B4 00483D48 */  qmfc2.ni   $29, $vf9
    /* F0238 001EF2B8 3FCC1970 */  psraw      $25, $25, 16
    /* F023C 001EF2BC 00503548 */  qmfc2.ni   $21, $vf10
    /* F0240 001EF2C0 898B2F72 */  pcpyld     $17, $17, $15
    /* F0244 001EF2C4 8901A007 */  bltz       $29, .L001EF8EC
    /* F0248 001EF2C8 887E1C70 */   pextlb    $15, $0, $28
.align 2
  .L001EF2CC:
    /* F024C 001EF2CC 0008B948 */  qmtc2.ni   $25, $vf1
    /* F0250 001EF2D0 A8E61C70 */  pextub     $28, $0, $28
    /* F0254 001EF2D4 0010B048 */  qmtc2.ni   $16, $vf2
    /* F0258 001EF2D8 10008420 */  addi       $4, $4, 0x10 /* handwritten instruction */
    /* F025C 001EF2DC 0018AF48 */  qmtc2.ni   $15, $vf3
    /* F0260 001EF2E0 C8A51470 */  ppach      $20, $0, $20
    /* F0264 001EF2E4 0020BC48 */  qmtc2.ni   $28, $vf4
    /* F0268 001EF2E8 C8AD1570 */  ppach      $21, $0, $21
    /* F026C 001EF2EC 0000C5D9 */  lqc2       $vf5, 0x0($14)
    /* F0270 001EF2F0 C8BDB773 */  ppach      $23, $29, $23
    /* F0274 001EF2F4 1000C6D9 */  lqc2       $vf6, 0x10($14)
    /* F0278 001EF2F8 3EB01600 */  dsrl32     $22, $22, 0
    /* F027C 001EF2FC 2000C7D9 */  lqc2       $vf7, 0x20($14)
    /* F0280 001EF300 FF015931 */  andi       $25, $10, 0x1FF
    /* F0284 001EF304 3000C8D9 */  lqc2       $vf8, 0x30($14)
    /* F0288 001EF308 00C91900 */  sll        $25, $25, 4
    /* F028C 001EF30C 0008C048 */  ctc2.ni    $0, $vi1
    /* F0290 001EF310 20C82503 */  add        $25, $25, $5 /* handwritten instruction */
    /* F0294 001EF314 080036AF */  sw         $22, 0x8($25)
    /* F0298 001EF318 40002120 */  addi       $1, $1, 0x40 /* handwritten instruction */
    /* F029C 001EF31C 5BFF5814 */  bne        $2, $24, .L001EF08C
    /* F02A0 001EF320 000033FF */   sd        $19, 0x0($25)
.align 2
  .L001EF324:
    /* F02A4 001EF324 00004BDC */  ld         $11, 0x0($2)
    /* F02A8 001EF328 00000000 */  nop
    /* F02AC 001EF32C F4FF2A8C */  lw         $10, -0xC($1)
    /* F02B0 001EF330 00000000 */  nop
    /* F02B4 001EF334 081FD08C */  lw         $16, (0x70001F08 & 0xFFFF)($6)
    /* F02B8 001EF338 885E0B70 */  pextlb     $11, $0, $11
    /* F02BC 001EF33C 00510A00 */  sll        $10, $10, 4
    /* F02C0 001EF340 0008103A */  xori       $16, $16, 0x800
    /* F02C4 001EF344 F01F4731 */  andi       $7, $10, 0x1FF0
    /* F02C8 001EF348 02540A00 */  srl        $10, $10, 16
    /* F02CC 001EF34C 2038E500 */  add        $7, $7, $5 /* handwritten instruction */
    /* F02D0 001EF350 F01F4A31 */  andi       $10, $10, 0x1FF0
    /* F02D4 001EF354 00583648 */  qmfc2.ni   $22, $vf11
    /* F02D8 001EF358 20404501 */  add        $8, $10, $5 /* handwritten instruction */
    /* F02DC 001EF35C 00603248 */  qmfc2.ni   $18, $vf12
    /* F02E0 001EF360 00000000 */  nop
    /* F02E4 001EF364 6F01C006 */  bltz       $22, .L001EF924
    /* F02E8 001EF368 0000118E */   lw        $17, 0x0($16)
.align 2
  .L001EF36C:
    /* F02EC 001EF36C 000074B4 */  sdr        $20, 0x0($3)
    /* F02F0 001EF370 09BFEB72 */  pmulth     $23, $23, $11
    /* F02F4 001EF374 060075B4 */  sdr        $21, 0x6($3)
    /* F02F8 001EF378 20000922 */  addi       $9, $16, 0x20 /* handwritten instruction */
    /* F02FC 001EF37C 10000F8E */  lw         $15, 0x10($16)
    /* F0300 001EF380 20883102 */  add        $17, $17, $17 /* handwritten instruction */
    /* F0304 001EF384 0D0075B0 */  sdl        $21, 0xD($3)
    /* F0308 001EF388 01101C3C */  lui        $28, (0x10010000 >> 16)
    /* F030C 001EF38C 0000F4FC */  sd         $20, 0x0($7)
    /* F0310 001EF390 30B90070 */  pmfhl.sh   $23
    /* F0314 001EF394 000015FD */  sd         $21, 0x0($8)
    /* F0318 001EF398 F7B91770 */  psrah      $23, $23, 7
    /* F031C 001EF39C 00D4998F */  lw         $25, -0x2C00($28) /* Failed to symbolize address 0x1000D400 for %gp_rel. Make sure this address is within the recognized valid address space. Please specify a gp_value. */
    /* F0320 001EF3A0 C8BE1770 */  ppacb      $23, $0, $23
    /* F0324 001EF3A4 000097FC */  sd         $23, 0x0($4)
    /* F0328 001EF3A8 80780F00 */  sll        $15, $15, 2
    /* F032C 001EF3AC 0010C048 */  ctc2.ni    $0, $vi2
    /* F0330 001EF3B0 06003122 */  addi       $17, $17, 0x6 /* handwritten instruction */
    /* F0334 001EF3B4 0800F7AC */  sw         $23, 0x8($7)
    /* F0338 001EF3B8 3EB81700 */  dsrl32     $23, $23, 0
    /* F033C 001EF3BC 080017AD */  sw         $23, 0x8($8)
    /* F0340 001EF3C0 F8003132 */  andi       $17, $17, 0xF8
    /* F0344 001EF3C4 08004BDC */  ld         $11, 0x8($2)
    /* F0348 001EF3C8 20483101 */  add        $9, $9, $17 /* handwritten instruction */
    /* F034C 001EF3CC F8FF2A8C */  lw         $10, -0x8($1)
    /* F0350 001EF3D0 42730500 */  srl        $14, $5, 13
    /* F0354 001EF3D4 E3000014 */  bnez       $0, .L001EF764
    /* F0358 001EF3D8 885E0B70 */   pextlb    $11, $0, $11
    /* F035C 001EF3DC 00510A00 */  sll        $10, $10, 4
    /* F0360 001EF3E0 08002921 */  addi       $9, $9, 0x8 /* handwritten instruction */
    /* F0364 001EF3E4 F01F4731 */  andi       $7, $10, 0x1FF0
    /* F0368 001EF3E8 02540A00 */  srl        $10, $10, 16
    /* F036C 001EF3EC DD000014 */  bnez       $0, .L001EF764
    /* F0370 001EF3F0 C8951270 */   ppach     $18, $0, $18
    /* F0374 001EF3F4 00483D48 */  qmfc2.ni   $29, $vf9
    /* F0378 001EF3F8 2038E500 */  add        $7, $7, $5 /* handwritten instruction */
    /* F037C 001EF3FC 00503348 */  qmfc2.ni   $19, $vf10
    /* F0380 001EF400 F01F4A31 */  andi       $10, $10, 0x1FF0
    /* F0384 001EF404 5501A007 */  bltz       $29, .L001EF95C
    /* F0388 001EF408 20404501 */   add       $8, $10, $5 /* handwritten instruction */
.align 2
  .L001EF40C:
    /* F038C 001EF40C 00D09C8F */  lw         $28, -0x3000($28)
    /* F0390 001EF410 C8B5B673 */  ppach      $22, $29, $22
    /* F0394 001EF414 0C0072B4 */  sdr        $18, 0xC($3)
    /* F0398 001EF418 09B7CB72 */  pmulth     $22, $22, $11
    /* F039C 001EF41C 130072B0 */  sdl        $18, 0x13($3)
    /* F03A0 001EF420 C89D1370 */  ppach      $19, $0, $19
    /* F03A4 001EF424 00000000 */  nop
    /* F03A8 001EF428 12006320 */  addi       $3, $3, 0x12 /* handwritten instruction */
    /* F03AC 001EF42C E9760E70 */  pcpyh      $14, $14
    /* F03B0 001EF430 F8FF31DD */  ld         $17, -0x8($9)
    /* F03B4 001EF434 0000F2FC */  sd         $18, 0x0($7)
    /* F03B8 001EF438 30B90070 */  pmfhl.sh   $23
    /* F03BC 001EF43C C9000014 */  bnez       $0, .L001EF764
    /* F03C0 001EF440 F7B91770 */   psrah     $23, $23, 7
    /* F03C4 001EF444 C7000014 */  bnez       $0, .L001EF764
    /* F03C8 001EF448 C8BE1770 */   ppacb     $23, $0, $23
    /* F03CC 001EF44C 0008C048 */  ctc2.ni    $0, $vi1
    /* F03D0 001EF450 888DD171 */  pextlh     $17, $14, $17
    /* F03D4 001EF454 080097FC */  sd         $23, 0x8($4)
    /* F03D8 001EF458 0C008420 */  addi       $4, $4, 0xC /* handwritten instruction */
    /* F03DC 001EF45C C1000014 */  bnez       $0, .L001EF764
    /* F03E0 001EF460 FE801170 */   psrlw     $16, $17, 3
    /* F03E4 001EF464 5D00C013 */  beqz       $30, .L001EF5DC
    /* F03E8 001EF468 0800F7AC */   sw        $23, 0x8($7)
    /* F03EC 001EF46C 000073B4 */  sdr        $19, 0x0($3)
    /* F03F0 001EF470 3EB81700 */  dsrl32     $23, $23, 0
    /* F03F4 001EF474 000013FD */  sd         $19, 0x0($8)
    /* F03F8 001EF478 FFFFDE23 */  addi       $30, $30, -0x1 /* handwritten instruction */
    /* F03FC 001EF47C 06006320 */  addi       $3, $3, 0x6 /* handwritten instruction */
    /* F0400 001EF480 04008420 */  addi       $4, $4, 0x4 /* handwritten instruction */
    /* F0404 001EF484 5500C013 */  beqz       $30, .L001EF5DC
    /* F0408 001EF488 080017AD */   sw        $23, 0x8($8)
    /* F040C 001EF48C FFFFDE23 */  addi       $30, $30, -0x1 /* handwritten instruction */
    /* F0410 001EF490 00000000 */  nop
    /* F0414 001EF494 00000000 */  nop
    /* F0418 001EF498 00000000 */  nop
    /* F041C 001EF49C 00000000 */  nop
    /* F0420 001EF4A0 00000000 */  nop
    /* F0424 001EF4A4 00583648 */  qmfc2.ni   $22, $vf11
    /* F0428 001EF4A8 00000000 */  nop
    /* F042C 001EF4AC 00603248 */  qmfc2.ni   $18, $vf12
    /* F0430 001EF4B0 00000000 */  nop
    /* F0434 001EF4B4 3701C006 */  bltz       $22, .L001EF994
    /* F0438 001EF4B8 00000000 */   nop
.align 2
  .L001EF4BC:
    /* F043C 001EF4BC A9000014 */  bnez       $0, .L001EF764
    /* F0440 001EF4C0 C8951270 */   ppach     $18, $0, $18
    /* F0444 001EF4C4 00000000 */  nop
    /* F0448 001EF4C8 00000000 */  nop
    /* F044C 001EF4CC 00000000 */  nop
    /* F0450 001EF4D0 00000000 */  nop
    /* F0454 001EF4D4 00000000 */  nop
    /* F0458 001EF4D8 00000000 */  nop
    /* F045C 001EF4DC 00000000 */  nop
    /* F0460 001EF4E0 00000000 */  nop
    /* F0464 001EF4E4 00000000 */  nop
    /* F0468 001EF4E8 00000000 */  nop
    /* F046C 001EF4EC 00000000 */  nop
    /* F0470 001EF4F0 00000000 */  nop
    /* F0474 001EF4F4 00000000 */  nop
    /* F0478 001EF4F8 00000000 */  nop
    /* F047C 001EF4FC 00000000 */  nop
    /* F0480 001EF500 00000000 */  nop
    /* F0484 001EF504 0010C048 */  ctc2.ni    $0, $vi2
    /* F0488 001EF508 00000000 */  nop
    /* F048C 001EF50C 00000000 */  nop
    /* F0490 001EF510 00000000 */  nop
    /* F0494 001EF514 00000000 */  nop
    /* F0498 001EF518 00000000 */  nop
    /* F049C 001EF51C 10004BDC */  ld         $11, 0x10($2)
    /* F04A0 001EF520 00000000 */  nop
    /* F04A4 001EF524 FCFF2A8C */  lw         $10, -0x4($1)
    /* F04A8 001EF528 00000000 */  nop
    /* F04AC 001EF52C 8D000014 */  bnez       $0, .L001EF764
    /* F04B0 001EF530 885E0B70 */   pextlb    $11, $0, $11
    /* F04B4 001EF534 00510A00 */  sll        $10, $10, 4
    /* F04B8 001EF538 00000000 */  nop
    /* F04BC 001EF53C F01F4731 */  andi       $7, $10, 0x1FF0
    /* F04C0 001EF540 02540A00 */  srl        $10, $10, 16
    /* F04C4 001EF544 00000000 */  nop
    /* F04C8 001EF548 00000000 */  nop
    /* F04CC 001EF54C 00483D48 */  qmfc2.ni   $29, $vf9
    /* F04D0 001EF550 2038E500 */  add        $7, $7, $5 /* handwritten instruction */
    /* F04D4 001EF554 00503348 */  qmfc2.ni   $19, $vf10
    /* F04D8 001EF558 F01F4A31 */  andi       $10, $10, 0x1FF0
    /* F04DC 001EF55C 1B01A007 */  bltz       $29, .L001EF9CC
    /* F04E0 001EF560 20404501 */   add       $8, $10, $5 /* handwritten instruction */
.align 2
  .L001EF564:
    /* F04E4 001EF564 7F000014 */  bnez       $0, .L001EF764
    /* F04E8 001EF568 C8B5B673 */   ppach     $22, $29, $22
    /* F04EC 001EF56C 000072B4 */  sdr        $18, 0x0($3)
    /* F04F0 001EF570 09B7CB72 */  pmulth     $22, $22, $11
    /* F04F4 001EF574 7B000014 */  bnez       $0, .L001EF764
    /* F04F8 001EF578 C89D1370 */   ppach     $19, $0, $19
    /* F04FC 001EF57C 06006320 */  addi       $3, $3, 0x6 /* handwritten instruction */
    /* F0500 001EF580 00000000 */  nop
    /* F0504 001EF584 00000000 */  nop
    /* F0508 001EF588 00000000 */  nop
    /* F050C 001EF58C 0000F2FC */  sd         $18, 0x0($7)
    /* F0510 001EF590 30B90070 */  pmfhl.sh   $23
    /* F0514 001EF594 73000014 */  bnez       $0, .L001EF764
    /* F0518 001EF598 F7B91770 */   psrah     $23, $23, 7
    /* F051C 001EF59C 71000014 */  bnez       $0, .L001EF764
    /* F0520 001EF5A0 C8BE1770 */   ppacb     $23, $0, $23
    /* F0524 001EF5A4 00000000 */  nop
    /* F0528 001EF5A8 00000000 */  nop
    /* F052C 001EF5AC 000097FC */  sd         $23, 0x0($4)
    /* F0530 001EF5B0 04008420 */  addi       $4, $4, 0x4 /* handwritten instruction */
    /* F0534 001EF5B4 0900C013 */  beqz       $30, .L001EF5DC
    /* F0538 001EF5B8 0800F7AC */   sw        $23, 0x8($7)
    /* F053C 001EF5BC 000073B4 */  sdr        $19, 0x0($3)
    /* F0540 001EF5C0 3EB81700 */  dsrl32     $23, $23, 0
    /* F0544 001EF5C4 070073B0 */  sdl        $19, 0x7($3)
    /* F0548 001EF5C8 06006320 */  addi       $3, $3, 0x6 /* handwritten instruction */
    /* F054C 001EF5CC 000013FD */  sd         $19, 0x0($8)
    /* F0550 001EF5D0 04008420 */  addi       $4, $4, 0x4 /* handwritten instruction */
    /* F0554 001EF5D4 080017AD */  sw         $23, 0x8($8)
    /* F0558 001EF5D8 00000000 */  nop
.align 2
  .L001EF5DC:
    /* F055C 001EF5DC 2900E011 */  beqz       $15, .L001EF684
    /* F0560 001EF5E0 2078E401 */   add       $15, $15, $4 /* handwritten instruction */
.align 2
  .L001EF5E4:
    /* F0564 001EF5E4 0000077A */  lq         $7, 0x0($16)
    /* F0568 001EF5E8 3E801000 */  dsrl32     $16, $16, 0
    /* F056C 001EF5EC 000031DD */  ld         $17, 0x0($9)
    /* F0570 001EF5F0 06006320 */  addi       $3, $3, 0x6 /* handwritten instruction */
    /* F0574 001EF5F4 A943E070 */  pcpyud     $8, $7, $0
    /* F0578 001EF5F8 FAFF67B4 */  sdr        $7, -0x6($3)
    /* F057C 001EF5FC 010067B0 */  sdl        $7, 0x1($3)
    /* F0580 001EF600 04008420 */  addi       $4, $4, 0x4 /* handwritten instruction */
    /* F0584 001EF604 1F008F10 */  beq        $4, $15, .L001EF684
    /* F0588 001EF608 FCFF88AC */   sw        $8, -0x4($4)
    /* F058C 001EF60C 0000077A */  lq         $7, 0x0($16)
    /* F0590 001EF610 A9830072 */  pcpyud     $16, $16, $0
    /* F0594 001EF614 08002921 */  addi       $9, $9, 0x8 /* handwritten instruction */
    /* F0598 001EF618 06006320 */  addi       $3, $3, 0x6 /* handwritten instruction */
    /* F059C 001EF61C A943E070 */  pcpyud     $8, $7, $0
    /* F05A0 001EF620 FAFF67B4 */  sdr        $7, -0x6($3)
    /* F05A4 001EF624 010067B0 */  sdl        $7, 0x1($3)
    /* F05A8 001EF628 04008420 */  addi       $4, $4, 0x4 /* handwritten instruction */
    /* F05AC 001EF62C 15008F10 */  beq        $4, $15, .L001EF684
    /* F05B0 001EF630 FCFF88AC */   sw        $8, -0x4($4)
    /* F05B4 001EF634 0000077A */  lq         $7, 0x0($16)
    /* F05B8 001EF638 888DD171 */  pextlh     $17, $14, $17
    /* F05BC 001EF63C 3E801000 */  dsrl32     $16, $16, 0
    /* F05C0 001EF640 06006320 */  addi       $3, $3, 0x6 /* handwritten instruction */
    /* F05C4 001EF644 A943E070 */  pcpyud     $8, $7, $0
    /* F05C8 001EF648 FAFF67B4 */  sdr        $7, -0x6($3)
    /* F05CC 001EF64C 010067B0 */  sdl        $7, 0x1($3)
    /* F05D0 001EF650 04008420 */  addi       $4, $4, 0x4 /* handwritten instruction */
    /* F05D4 001EF654 0B008F10 */  beq        $4, $15, .L001EF684
    /* F05D8 001EF658 FCFF88AC */   sw        $8, -0x4($4)
    /* F05DC 001EF65C 0000077A */  lq         $7, 0x0($16)
    /* F05E0 001EF660 FE801170 */  psrlw      $16, $17, 3
    /* F05E4 001EF664 00000000 */  nop
    /* F05E8 001EF668 06006320 */  addi       $3, $3, 0x6 /* handwritten instruction */
    /* F05EC 001EF66C A943E070 */  pcpyud     $8, $7, $0
    /* F05F0 001EF670 FAFF67B4 */  sdr        $7, -0x6($3)
    /* F05F4 001EF674 010067B0 */  sdl        $7, 0x1($3)
    /* F05F8 001EF678 04008420 */  addi       $4, $4, 0x4 /* handwritten instruction */
    /* F05FC 001EF67C D9FF8F14 */  bne        $4, $15, .L001EF5E4
    /* F0600 001EF680 FCFF88AC */   sw        $8, -0x4($4)
.align 2
  .L001EF684:
    /* F0604 001EF684 001FC78C */  lw         $7, (0x70001F00 & 0xFFFF)($6)
    /* F0608 001EF688 01100E3C */  lui        $14, (0x10010000 >> 16)
    /* F060C 001EF68C 101FCF8C */  lw         $15, (0x70001F10 & 0xFFFF)($6)
    /* F0610 001EF690 00013933 */  andi       $25, $25, 0x100
    /* F0614 001EF694 09002013 */  beqz       $25, .L001EF6BC
    /* F0618 001EF698 00019C33 */   andi      $28, $28, 0x100
.align 2
  .L001EF69C:
    /* F061C 001EF69C 00D4C98D */  lw         $9, -0x2C00($14)
    /* F0620 001EF6A0 00000000 */  nop
    /* F0624 001EF6A4 00000000 */  nop
    /* F0628 001EF6A8 00000000 */  nop
    /* F062C 001EF6AC 00012931 */  andi       $9, $9, 0x100
    /* F0630 001EF6B0 00000000 */  nop
    /* F0634 001EF6B4 F9FF2015 */  bnez       $9, .L001EF69C
    /* F0638 001EF6B8 00000000 */   nop
.align 2
  .L001EF6BC:
    /* F063C 001EF6BC 09008013 */  beqz       $28, .L001EF6E4
    /* F0640 001EF6C0 0400E88C */   lw        $8, 0x4($7)
.align 2
  .L001EF6C4:
    /* F0644 001EF6C4 00D0C98D */  lw         $9, -0x3000($14)
    /* F0648 001EF6C8 00000000 */  nop
    /* F064C 001EF6CC 00000000 */  nop
    /* F0650 001EF6D0 00000000 */  nop
    /* F0654 001EF6D4 00012931 */  andi       $9, $9, 0x100
    /* F0658 001EF6D8 00000000 */  nop
    /* F065C 001EF6DC F9FF2015 */  bnez       $9, .L001EF6C4
    /* F0660 001EF6E0 00000000 */   nop
.align 2
  .L001EF6E4:
    /* F0664 001EF6E4 0C1FCA8C */  lw         $10, (0x70001F0C & 0xFFFF)($6)
    /* F0668 001EF6E8 0800E720 */  addi       $7, $7, 0x8 /* handwritten instruction */
    /* F066C 001EF6EC 20D0CFAD */  sw         $15, -0x2FE0($14)
    /* F0670 001EF6F0 00000000 */  nop
    /* F0674 001EF6F4 10D0C8AD */  sw         $8, -0x2FF0($14)
    /* F0678 001EF6F8 00000000 */  nop
    /* F067C 001EF6FC 80D0CAAD */  sw         $10, -0x2F80($14)
    /* F0680 001EF700 00010924 */  addiu      $9, $0, 0x100
    /* F0684 001EF704 00D0C9AD */  sw         $9, -0x3000($14)
    /* F0688 001EF708 00000000 */  nop
    /* F068C 001EF70C 0000E88C */  lw         $8, 0x0($7)
    /* F0690 001EF710 00044A39 */  xori       $10, $10, 0x400
    /* F0694 001EF714 001FC7AC */  sw         $7, (0x70001F00 & 0xFFFF)($6)
    /* F0698 001EF718 00000000 */  nop
    /* F069C 001EF71C 0DFD0015 */  bnez       $8, .L001EEB54
    /* F06A0 001EF720 0C1FCAAC */   sw        $10, (0x70001F0C & 0xFFFF)($6)
.align 2
  .L001EF724:
    /* F06A4 001EF724 00D0C98D */  lw         $9, -0x3000($14)
    /* F06A8 001EF728 00000000 */  nop
    /* F06AC 001EF72C 00000000 */  nop
    /* F06B0 001EF730 00000000 */  nop
    /* F06B4 001EF734 00012931 */  andi       $9, $9, 0x100
    /* F06B8 001EF738 00000000 */  nop
    /* F06BC 001EF73C F9FF2015 */  bnez       $9, .L001EF724
    /* F06C0 001EF740 00000000 */   nop
    /* F06C4 001EF744 181FC48C */  lw         $4, (0x70001F18 & 0xFFFF)($6)
    /* F06C8 001EF748 00000000 */  nop
    /* F06CC 001EF74C 141FC28C */  lw         $2, (0x70001F14 & 0xFFFF)($6)
    /* F06D0 001EF750 0070013C */  lui        $1, (0x70001FF0 >> 16)
    /* F06D4 001EF754 AB008014 */  bnez       $4, .L001EFA04
    /* F06D8 001EF758 F01F3F78 */   lq        $31, (0x70001FF0 & 0xFFFF)($1)
    /* F06DC 001EF75C 0800E003 */  jr         $31
    /* F06E0 001EF760 00000000 */   nop
.align 2
  .L001EF764:
    /* F06E4 001EF764 00583648 */  qmfc2.ni   $22, $vf11
    /* F06E8 001EF768 00000000 */  nop
.align 2
  .L001EF76C:
    /* F06EC 001EF76C 00000000 */  nop
    /* F06F0 001EF770 00000000 */  nop
    /* F06F4 001EF774 B1FDC106 */  bgez       $22, .L001EEE3C
    /* F06F8 001EF778 00000000 */   nop
    /* F06FC 001EF77C 00583648 */  qmfc2.ni   $22, $vf11
    /* F0700 001EF780 00000000 */  nop
    /* F0704 001EF784 00000000 */  nop
    /* F0708 001EF788 00000000 */  nop
    /* F070C 001EF78C ABFDC106 */  bgez       $22, .L001EEE3C
    /* F0710 001EF790 00000000 */   nop
    /* F0714 001EF794 F5FF0010 */  b          .L001EF76C
    /* F0718 001EF798 00583648 */   qmfc2.ni  $22, $vf11
.align 2
  .L001EF79C:
    /* F071C 001EF79C 00483D48 */  qmfc2.ni   $29, $vf9
    /* F0720 001EF7A0 00000000 */  nop
.align 2
  .L001EF7A4:
    /* F0724 001EF7A4 00000000 */  nop
    /* F0728 001EF7A8 00000000 */  nop
    /* F072C 001EF7AC CBFDA107 */  bgez       $29, .L001EEEDC
    /* F0730 001EF7B0 00000000 */   nop
    /* F0734 001EF7B4 00483D48 */  qmfc2.ni   $29, $vf9
    /* F0738 001EF7B8 00000000 */  nop
    /* F073C 001EF7BC 00000000 */  nop
    /* F0740 001EF7C0 00000000 */  nop
    /* F0744 001EF7C4 C5FDA107 */  bgez       $29, .L001EEEDC
    /* F0748 001EF7C8 00000000 */   nop
    /* F074C 001EF7CC F5FF0010 */  b          .L001EF7A4
    /* F0750 001EF7D0 00483D48 */   qmfc2.ni  $29, $vf9
.align 2
  .L001EF7D4:
    /* F0754 001EF7D4 00583748 */  qmfc2.ni   $23, $vf11
    /* F0758 001EF7D8 00000000 */  nop
.align 2
  .L001EF7DC:
    /* F075C 001EF7DC 00603448 */  qmfc2.ni   $20, $vf12
    /* F0760 001EF7E0 00000000 */  nop
    /* F0764 001EF7E4 E7FDE106 */  bgez       $23, .L001EEF84
    /* F0768 001EF7E8 00000000 */   nop
    /* F076C 001EF7EC 00583748 */  qmfc2.ni   $23, $vf11
    /* F0770 001EF7F0 00000000 */  nop
    /* F0774 001EF7F4 00603448 */  qmfc2.ni   $20, $vf12
    /* F0778 001EF7F8 00000000 */  nop
    /* F077C 001EF7FC E1FDE106 */  bgez       $23, .L001EEF84
    /* F0780 001EF800 00000000 */   nop
    /* F0784 001EF804 F5FF0010 */  b          .L001EF7DC
    /* F0788 001EF808 00583748 */   qmfc2.ni  $23, $vf11
.align 2
  .L001EF80C:
    /* F078C 001EF80C 00483D48 */  qmfc2.ni   $29, $vf9
    /* F0790 001EF810 00000000 */  nop
.align 2
  .L001EF814:
    /* F0794 001EF814 00503548 */  qmfc2.ni   $21, $vf10
    /* F0798 001EF818 00000000 */  nop
    /* F079C 001EF81C 05FEA107 */  bgez       $29, .L001EF034
    /* F07A0 001EF820 00000000 */   nop
    /* F07A4 001EF824 00483D48 */  qmfc2.ni   $29, $vf9
    /* F07A8 001EF828 00000000 */  nop
    /* F07AC 001EF82C 00503548 */  qmfc2.ni   $21, $vf10
    /* F07B0 001EF830 00000000 */  nop
    /* F07B4 001EF834 FFFDA107 */  bgez       $29, .L001EF034
    /* F07B8 001EF838 00000000 */   nop
    /* F07BC 001EF83C F5FF0010 */  b          .L001EF814
    /* F07C0 001EF840 00483D48 */   qmfc2.ni  $29, $vf9
.align 2
  .L001EF844:
    /* F07C4 001EF844 00583648 */  qmfc2.ni   $22, $vf11
    /* F07C8 001EF848 00000000 */  nop
.align 2
  .L001EF84C:
    /* F07CC 001EF84C 00603248 */  qmfc2.ni   $18, $vf12
    /* F07D0 001EF850 00000000 */  nop
    /* F07D4 001EF854 1FFEC106 */  bgez       $22, .L001EF0D4
    /* F07D8 001EF858 00000000 */   nop
    /* F07DC 001EF85C 00583648 */  qmfc2.ni   $22, $vf11
    /* F07E0 001EF860 00000000 */  nop
    /* F07E4 001EF864 00603248 */  qmfc2.ni   $18, $vf12
    /* F07E8 001EF868 00000000 */  nop
    /* F07EC 001EF86C 19FEC106 */  bgez       $22, .L001EF0D4
    /* F07F0 001EF870 00000000 */   nop
    /* F07F4 001EF874 F5FF0010 */  b          .L001EF84C
    /* F07F8 001EF878 00583648 */   qmfc2.ni  $22, $vf11
.align 2
  .L001EF87C:
    /* F07FC 001EF87C 00483D48 */  qmfc2.ni   $29, $vf9
    /* F0800 001EF880 00000000 */  nop
.align 2
  .L001EF884:
    /* F0804 001EF884 00503348 */  qmfc2.ni   $19, $vf10
    /* F0808 001EF888 00000000 */  nop
    /* F080C 001EF88C 39FEA107 */  bgez       $29, .L001EF174
    /* F0810 001EF890 00000000 */   nop
    /* F0814 001EF894 00483D48 */  qmfc2.ni   $29, $vf9
    /* F0818 001EF898 00000000 */  nop
    /* F081C 001EF89C 00503348 */  qmfc2.ni   $19, $vf10
    /* F0820 001EF8A0 00000000 */  nop
    /* F0824 001EF8A4 33FEA107 */  bgez       $29, .L001EF174
    /* F0828 001EF8A8 00000000 */   nop
    /* F082C 001EF8AC F5FF0010 */  b          .L001EF884
    /* F0830 001EF8B0 00483D48 */   qmfc2.ni  $29, $vf9
.align 2
  .L001EF8B4:
    /* F0834 001EF8B4 00583748 */  qmfc2.ni   $23, $vf11
    /* F0838 001EF8B8 00000000 */  nop
.align 2
  .L001EF8BC:
    /* F083C 001EF8BC 00603448 */  qmfc2.ni   $20, $vf12
    /* F0840 001EF8C0 00000000 */  nop
    /* F0844 001EF8C4 55FEE106 */  bgez       $23, .L001EF21C
    /* F0848 001EF8C8 00000000 */   nop
    /* F084C 001EF8CC 00583748 */  qmfc2.ni   $23, $vf11
    /* F0850 001EF8D0 00000000 */  nop
    /* F0854 001EF8D4 00603448 */  qmfc2.ni   $20, $vf12
    /* F0858 001EF8D8 00000000 */  nop
    /* F085C 001EF8DC 4FFEE106 */  bgez       $23, .L001EF21C
    /* F0860 001EF8E0 00000000 */   nop
    /* F0864 001EF8E4 F5FF0010 */  b          .L001EF8BC
    /* F0868 001EF8E8 00583748 */   qmfc2.ni  $23, $vf11
.align 2
  .L001EF8EC:
    /* F086C 001EF8EC 00483D48 */  qmfc2.ni   $29, $vf9
    /* F0870 001EF8F0 00000000 */  nop
.align 2
  .L001EF8F4:
    /* F0874 001EF8F4 00503548 */  qmfc2.ni   $21, $vf10
    /* F0878 001EF8F8 00000000 */  nop
    /* F087C 001EF8FC 73FEA107 */  bgez       $29, .L001EF2CC
    /* F0880 001EF900 00000000 */   nop
    /* F0884 001EF904 00483D48 */  qmfc2.ni   $29, $vf9
    /* F0888 001EF908 00000000 */  nop
    /* F088C 001EF90C 00503548 */  qmfc2.ni   $21, $vf10
    /* F0890 001EF910 00000000 */  nop
    /* F0894 001EF914 6DFEA107 */  bgez       $29, .L001EF2CC
    /* F0898 001EF918 00000000 */   nop
    /* F089C 001EF91C F5FF0010 */  b          .L001EF8F4
    /* F08A0 001EF920 00483D48 */   qmfc2.ni  $29, $vf9
.align 2
  .L001EF924:
    /* F08A4 001EF924 00583648 */  qmfc2.ni   $22, $vf11
    /* F08A8 001EF928 00000000 */  nop
.align 2
  .L001EF92C:
    /* F08AC 001EF92C 00603248 */  qmfc2.ni   $18, $vf12
    /* F08B0 001EF930 00000000 */  nop
    /* F08B4 001EF934 8DFEC106 */  bgez       $22, .L001EF36C
    /* F08B8 001EF938 00000000 */   nop
    /* F08BC 001EF93C 00583648 */  qmfc2.ni   $22, $vf11
    /* F08C0 001EF940 00000000 */  nop
    /* F08C4 001EF944 00603248 */  qmfc2.ni   $18, $vf12
    /* F08C8 001EF948 00000000 */  nop
    /* F08CC 001EF94C 87FEC106 */  bgez       $22, .L001EF36C
    /* F08D0 001EF950 00000000 */   nop
    /* F08D4 001EF954 F5FF0010 */  b          .L001EF92C
    /* F08D8 001EF958 00583648 */   qmfc2.ni  $22, $vf11
.align 2
  .L001EF95C:
    /* F08DC 001EF95C 00483D48 */  qmfc2.ni   $29, $vf9
    /* F08E0 001EF960 00000000 */  nop
.align 2
  .L001EF964:
    /* F08E4 001EF964 00503348 */  qmfc2.ni   $19, $vf10
    /* F08E8 001EF968 00000000 */  nop
    /* F08EC 001EF96C A7FEA107 */  bgez       $29, .L001EF40C
    /* F08F0 001EF970 00000000 */   nop
    /* F08F4 001EF974 00483D48 */  qmfc2.ni   $29, $vf9
    /* F08F8 001EF978 00000000 */  nop
    /* F08FC 001EF97C 00503348 */  qmfc2.ni   $19, $vf10
    /* F0900 001EF980 00000000 */  nop
    /* F0904 001EF984 A1FEA107 */  bgez       $29, .L001EF40C
    /* F0908 001EF988 00000000 */   nop
    /* F090C 001EF98C F5FF0010 */  b          .L001EF964
    /* F0910 001EF990 00483D48 */   qmfc2.ni  $29, $vf9
.align 2
  .L001EF994:
    /* F0914 001EF994 00583648 */  qmfc2.ni   $22, $vf11
    /* F0918 001EF998 00000000 */  nop
.align 2
  .L001EF99C:
    /* F091C 001EF99C 00603248 */  qmfc2.ni   $18, $vf12
    /* F0920 001EF9A0 00000000 */  nop
    /* F0924 001EF9A4 C5FEC106 */  bgez       $22, .L001EF4BC
    /* F0928 001EF9A8 00000000 */   nop
    /* F092C 001EF9AC 00583648 */  qmfc2.ni   $22, $vf11
    /* F0930 001EF9B0 00000000 */  nop
    /* F0934 001EF9B4 00603248 */  qmfc2.ni   $18, $vf12
    /* F0938 001EF9B8 00000000 */  nop
    /* F093C 001EF9BC BFFEC106 */  bgez       $22, .L001EF4BC
    /* F0940 001EF9C0 00000000 */   nop
    /* F0944 001EF9C4 F5FF0010 */  b          .L001EF99C
    /* F0948 001EF9C8 00583648 */   qmfc2.ni  $22, $vf11
.align 2
  .L001EF9CC:
    /* F094C 001EF9CC 00483D48 */  qmfc2.ni   $29, $vf9
    /* F0950 001EF9D0 00000000 */  nop
.align 2
  .L001EF9D4:
    /* F0954 001EF9D4 00503548 */  qmfc2.ni   $21, $vf10
    /* F0958 001EF9D8 00000000 */  nop
    /* F095C 001EF9DC E1FEA107 */  bgez       $29, .L001EF564
    /* F0960 001EF9E0 00000000 */   nop
    /* F0964 001EF9E4 00483D48 */  qmfc2.ni   $29, $vf9
    /* F0968 001EF9E8 00000000 */  nop
    /* F096C 001EF9EC 00503548 */  qmfc2.ni   $21, $vf10
    /* F0970 001EF9F0 00000000 */  nop
    /* F0974 001EF9F4 DBFEA107 */  bgez       $29, .L001EF564
    /* F0978 001EF9F8 00000000 */   nop
    /* F097C 001EF9FC F5FF0010 */  b          .L001EF9D4
    /* F0980 001EFA00 00483D48 */   qmfc2.ni  $29, $vf9
.align 2
  .L001EFA04:
    /* F0984 001EFA04 0110193C */  lui        $25, (0x10010000 >> 16)
    /* F0988 001EFA08 021C0400 */  srl        $3, $4, 16
    /* F098C 001EFA0C 10D422AF */  sw         $2, -0x2BF0($25)
    /* F0990 001EFA10 0070183C */  lui        $24, (0x70003000 >> 16)
    /* F0994 001EFA14 20D423AF */  sw         $3, -0x2BE0($25)
    /* F0998 001EFA18 001C0F23 */  addi       $15, $24, (0x70001C00 & 0xFFFF) /* handwritten instruction */
    /* F099C 001EFA1C 80D42FAF */  sw         $15, -0x2B80($25)
    /* F09A0 001EFA20 00190300 */  sll        $3, $3, 4
    /* F09A4 001EFA24 2078E301 */  add        $15, $15, $3 /* handwritten instruction */
    /* F09A8 001EFA28 20E04300 */  add        $28, $2, $3 /* handwritten instruction */
    /* F09AC 001EFA2C F8FFEF21 */  addi       $15, $15, -0x8 /* handwritten instruction */
    /* F09B0 001EFA30 00201023 */  addi       $16, $24, (0x70002000 & 0xFFFF) /* handwritten instruction */
    /* F09B4 001EFA34 0000EFFD */  sd         $15, 0x0($15)
    /* F09B8 001EFA38 00010120 */  addi       $1, $0, 0x100 /* handwritten instruction */
    /* F09BC 001EFA3C 00D421AF */  sw         $1, -0x2C00($25)
    /* F09C0 001EFA40 FFFF9D30 */  andi       $29, $4, 0xFFFF
    /* F09C4 001EFA44 401C1E23 */  addi       $30, $24, (0x70001C40 & 0xFFFF) /* handwritten instruction */
    /* F09C8 001EFA48 07070C20 */  addi       $12, $0, 0x707 /* handwritten instruction */
    /* F09CC 001EFA4C 803E013C */  lui        $1, (0x3E800000 >> 16)
    /* F09D0 001EFA50 8047033C */  lui        $3, (0x47800080 >> 16)
    /* F09D4 001EFA54 0008A148 */  qmtc2.ni   $1, $vf1
    /* F09D8 001EFA58 70006234 */  ori        $2, $3, (0x47800070 & 0xFFFF)
    /* F09DC 001EFA5C 0010A248 */  qmtc2.ni   $2, $vf2
    /* F09E0 001EFA60 80006334 */  ori        $3, $3, (0x47800080 & 0xFFFF)
    /* F09E4 001EFA64 0018A348 */  qmtc2.ni   $3, $vf3
    /* F09E8 001EFA68 18E7C14B */  vmulx.xyz  $vf28, $vf28, $vf1x
    /* F09EC 001EFA6C 58EFC14B */  vmulx.xyz  $vf29, $vf29, $vf1x
    /* F09F0 001EFA70 98F7C14B */  vmulx.xyz  $vf30, $vf30, $vf1x
    /* F09F4 001EFA74 3D1B3F4A */  .word      0x4A3F1B3D    # vmr32.w    $vf31, $vf3
    /* F09F8 001EFA78 C007C24B */  vaddx.xyz  $vf31, $vf0, $vf2x
.align 2
  .L001EFA7C:
    /* F09FC 001EFA7C 0000E1DD */  ld         $1, 0x0($15)
    /* F0A00 001EFA80 00000000 */  nop
    /* F0A04 001EFA84 00000000 */  nop
    /* F0A08 001EFA88 00000000 */  nop
    /* F0A0C 001EFA8C 00000000 */  nop
    /* F0A10 001EFA90 FAFF2014 */  bnez       $1, .L001EFA7C
    /* F0A14 001EFA94 00000000 */   nop
    /* F0A18 001EFA98 0000C18F */  lw         $1, 0x0($30)
    /* F0A1C 001EFA9C 00000000 */  nop
    /* F0A20 001EFAA0 80D430AF */  sw         $16, -0x2B80($25)
    /* F0A24 001EFAA4 00000000 */  nop
    /* F0A28 001EFAA8 FF002230 */  andi       $2, $1, 0xFF
    /* F0A2C 001EFAAC 020A0100 */  srl        $1, $1, 8
    /* F0A30 001EFAB0 20D422AF */  sw         $2, -0x2BE0($25)
    /* F0A34 001EFAB4 00090100 */  sll        $1, $1, 4
    /* F0A38 001EFAB8 10D421AF */  sw         $1, -0x2BF0($25)
    /* F0A3C 001EFABC 00110200 */  sll        $2, $2, 4
    /* F0A40 001EFAC0 20880202 */  add        $17, $16, $2 /* handwritten instruction */
    /* F0A44 001EFAC4 F0FF3122 */  addi       $17, $17, -0x10 /* handwritten instruction */
    /* F0A48 001EFAC8 00010120 */  addi       $1, $0, 0x100 /* handwritten instruction */
    /* F0A4C 001EFACC 000020FE */  sd         $0, 0x0($17)
    /* F0A50 001EFAD0 00D421AF */  sw         $1, -0x2C00($25)
    /* F0A54 001EFAD4 0008103A */  xori       $16, $16, 0x800
    /* F0A58 001EFAD8 001C16DB */  lqc2       $vf22, (0x70001C00 & 0xFFFF)($24)
    /* F0A5C 001EFADC 101C17DB */  lqc2       $vf23, (0x70001C10 & 0xFFFF)($24)
    /* F0A60 001EFAE0 201C18DB */  lqc2       $vf24, (0x70001C20 & 0xFFFF)($24)
    /* F0A64 001EFAE4 886CAD71 */  pextlw     $13, $13, $13
.align 2
  .L001EFAE8:
    /* F0A68 001EFAE8 9F002012 */  beqz       $17, .L001EFD68
    /* F0A6C 001EFAEC 0008103A */   xori      $16, $16, 0x800
.align 2
  .L001EFAF0:
    /* F0A70 001EFAF0 000024DE */  ld         $4, 0x0($17)
    /* F0A74 001EFAF4 0110193C */  lui        $25, (0x10010000 >> 16)
    /* F0A78 001EFAF8 0800C18F */  lw         $1, 0x8($30)
    /* F0A7C 001EFAFC 0008033A */  xori       $3, $16, 0x800
    /* F0A80 001EFB00 00000000 */  nop
    /* F0A84 001EFB04 FAFF8010 */  beqz       $4, .L001EFAF0
    /* F0A88 001EFB08 0400CF8F */   lw        $15, 0x4($30)
    /* F0A8C 001EFB0C 0F002010 */  beqz       $1, .L001EFB4C
    /* F0A90 001EFB10 00001120 */   addi      $17, $0, 0x0 /* handwritten instruction */
    /* F0A94 001EFB14 FF002230 */  andi       $2, $1, 0xFF
    /* F0A98 001EFB18 020A0100 */  srl        $1, $1, 8
    /* F0A9C 001EFB1C 80D423AF */  sw         $3, -0x2B80($25)
    /* F0AA0 001EFB20 00090100 */  sll        $1, $1, 4
    /* F0AA4 001EFB24 20D422AF */  sw         $2, -0x2BE0($25)
    /* F0AA8 001EFB28 00110200 */  sll        $2, $2, 4
    /* F0AAC 001EFB2C 10D421AF */  sw         $1, -0x2BF0($25)
    /* F0AB0 001EFB30 20886200 */  add        $17, $3, $2 /* handwritten instruction */
    /* F0AB4 001EFB34 F0FF3122 */  addi       $17, $17, -0x10 /* handwritten instruction */
    /* F0AB8 001EFB38 00000000 */  nop
    /* F0ABC 001EFB3C 000020FE */  sd         $0, 0x0($17)
    /* F0AC0 001EFB40 00010120 */  addi       $1, $0, 0x100 /* handwritten instruction */
    /* F0AC4 001EFB44 00D421AF */  sw         $1, -0x2C00($25)
    /* F0AC8 001EFB48 00000000 */  nop
.align 2
  .L001EFB4C:
    /* F0ACC 001EFB4C 10000122 */  addi       $1, $16, 0x10 /* handwritten instruction */
    /* F0AD0 001EFB50 0000198E */  lw         $25, 0x0($16)
    /* F0AD4 001EFB54 00300323 */  addi       $3, $24, (0x70003000 & 0xFFFF) /* handwritten instruction */
    /* F0AD8 001EFB58 0400048E */  lw         $4, 0x4($16)
    /* F0ADC 001EFB5C 0800058E */  lw         $5, 0x8($16)
    /* F0AE0 001EFB60 00391900 */  sll        $7, $25, 4
    /* F0AE4 001EFB64 0C000E8E */  lw         $14, 0xC($16)
    /* F0AE8 001EFB68 2038E100 */  add        $7, $7, $1 /* handwritten instruction */
    /* F0AEC 001EFB6C 20208300 */  add        $4, $4, $3 /* handwritten instruction */
    /* F0AF0 001EFB70 2028A300 */  add        $5, $5, $3 /* handwritten instruction */
    /* F0AF4 001EFB74 2030C301 */  add        $6, $14, $3 /* handwritten instruction */
    /* F0AF8 001EFB78 F0FF807C */  sq         $0, -0x10($4)
    /* F0AFC 001EFB7C F0FFA07C */  sq         $0, -0x10($5)
    /* F0B00 001EFB80 02710E00 */  srl        $14, $14, 4
    /* F0B04 001EFB84 F0FFC07C */  sq         $0, -0x10($6)
    /* F0B08 001EFB88 FFFF0220 */  addi       $2, $0, -0x1 /* handwritten instruction */
    /* F0B0C 001EFB8C 0000E07C */  sq         $0, 0x0($7)
    /* F0B10 001EFB90 0800DE23 */  addi       $30, $30, 0x8 /* handwritten instruction */
.align 2
  alabel func_001EFB94
    /* F0B14 001EFB94 06002794 */  lhu        $7, 0x6($1)
    /* F0B18 001EFB98 01004220 */  addi       $2, $2, 0x1 /* handwritten instruction */
    /* F0B1C 001EFB9C 000026DC */  ld         $6, 0x0($1)
    /* F0B20 001EFBA0 00000000 */  nop
    /* F0B24 001EFBA4 88468771 */  pextlb     $8, $12, $7
    /* F0B28 001EFBA8 0B002990 */  lbu        $9, 0xB($1)
    /* F0B2C 001EFBAC 8845A871 */  pextlh     $8, $13, $8
    /* F0B30 001EFBB0 08002A8C */  lw         $10, 0x8($1)
    /* F0B34 001EFBB4 FC400870 */  psllw      $8, $8, 3
    /* F0B38 001EFBB8 0C002B8C */  lw         $11, 0xC($1)
    /* F0B3C 001EFBBC 000007DD */  ld         $7, 0x0($8)
    /* F0B40 001EFBC0 8835C070 */  pextlh     $6, $6, $0
    /* F0B44 001EFBC4 3E400800 */  dsrl32     $8, $8, 0
    /* F0B48 001EFBC8 FEFF2921 */  addi       $9, $9, -0x2 /* handwritten instruction */
    /* F0B4C 001EFBCC 000008DD */  ld         $8, 0x0($8)
    /* F0B50 001EFBD0 3F340670 */  psraw      $6, $6, 16
    /* F0B54 001EFBD4 88560A70 */  pextlb     $10, $0, $10
    /* F0B58 001EFBD8 0000A048 */  qmtc2.ni   $0, $vf0
    /* F0B5C 001EFBDC 0038A648 */  qmtc2.ni   $6, $vf7
    /* F0B60 001EFBE0 893B0771 */  pcpyld     $7, $8, $7
    /* F0B64 001EFBE4 1B002005 */  bltz       $9, .L001EFC54
    /* F0B68 001EFBE8 0040A748 */   qmtc2.ni  $7, $vf8
    /* F0B6C 001EFBEC 885E0B70 */  pextlb     $11, $0, $11
    /* F0B70 001EFBF0 FC500A70 */  psllw      $10, $10, 3
    /* F0B74 001EFBF4 885D0B70 */  pextlh     $11, $0, $11
    /* F0B78 001EFBF8 8855AA71 */  pextlh     $10, $13, $10
    /* F0B7C 001EFBFC 3C590B70 */  psllw      $11, $11, 4
    /* F0B80 001EFC00 0000A048 */  qmtc2.ni   $0, $vf0
    /* F0B84 001EFC04 FC500A70 */  psllw      $10, $10, 3
    /* F0B88 001EFC08 0048AB48 */  qmtc2.ni   $11, $vf9
    /* F0B8C 001EFC0C 00004AD9 */  lqc2       $vf10, 0x0($10)
    /* F0B90 001EFC10 10004BD9 */  lqc2       $vf11, 0x10($10)
    /* F0B94 001EFC14 20004CD9 */  lqc2       $vf12, 0x20($10)
    /* F0B98 001EFC18 21010B20 */  addi       $11, $0, 0x121 /* handwritten instruction */
    /* F0B9C 001EFC1C 30004DD9 */  lqc2       $vf13, 0x30($10)
    /* F0BA0 001EFC20 3E500A00 */  dsrl32     $10, $10, 0
    /* F0BA4 001EFC24 00004ED9 */  lqc2       $vf14, 0x0($10)
    /* F0BA8 001EFC28 10004FD9 */  lqc2       $vf15, 0x10($10)
    /* F0BAC 001EFC2C 200050D9 */  lqc2       $vf16, 0x20($10)
    /* F0BB0 001EFC30 300051D9 */  lqc2       $vf17, 0x30($10)
    /* F0BB4 001EFC34 11002011 */  beqz       $9, func_001EFC7C
    /* F0BB8 001EFC38 A9534071 */   pcpyud    $10, $10, $0
    /* F0BBC 001EFC3C 000052D9 */  lqc2       $vf18, 0x0($10)
    /* F0BC0 001EFC40 100053D9 */  lqc2       $vf19, 0x10($10)
    /* F0BC4 001EFC44 200054D9 */  lqc2       $vf20, 0x20($10)
    /* F0BC8 001EFC48 11010B20 */  addi       $11, $0, 0x111 /* handwritten instruction */
    /* F0BCC 001EFC4C 1FBF0708 */  j          func_001EFC7C
    /* F0BD0 001EFC50 300055D9 */   lqc2      $vf21, 0x30($10)
.align 2
  .L001EFC54:
    /* F0BD4 001EFC54 FF004A31 */  andi       $10, $10, 0xFF
    /* F0BD8 001EFC58 00700B3C */  lui        $11, (0x70000030 >> 16)
    /* F0BDC 001EFC5C 80510A00 */  sll        $10, $10, 6
    /* F0BE0 001EFC60 25504B01 */  or         $10, $10, $11
    /* F0BE4 001EFC64 00004AD9 */  lqc2       $vf10, (0x70000000 & 0xFFFF)($10)
    /* F0BE8 001EFC68 10004BD9 */  lqc2       $vf11, (0x70000010 & 0xFFFF)($10)
    /* F0BEC 001EFC6C 20004CD9 */  lqc2       $vf12, (0x70000020 & 0xFFFF)($10)
    /* F0BF0 001EFC70 00000000 */  nop
    /* F0BF4 001EFC74 30004DD9 */  lqc2       $vf13, (0x70000030 & 0xFFFF)($10)
    /* F0BF8 001EFC78 2D010B20 */  addi       $11, $0, 0x12D /* handwritten instruction */
.align 2
  alabel func_001EFC7C
    /* F0BFC 001EFC7C 00D8CB48 */  ctc2.ni    $11, $vi27
    /* F0C00 001EFC80 00000000 */  nop
    /* F0C04 001EFC84 01082648 */  qmfc2.i    $6, $vf1
    /* F0C08 001EFC88 00000000 */  nop
    /* F0C0C 001EFC8C 00102748 */  qmfc2.ni   $7, $vf2
    /* F0C10 001EFC90 10002120 */  addi       $1, $1, 0x10 /* handwritten instruction */
    /* F0C14 001EFC94 00182848 */  qmfc2.ni   $8, $vf3
    /* F0C18 001EFC98 C8350670 */  ppach      $6, $0, $6
    /* F0C1C 001EFC9C 28004010 */  beqz       $2, .L001EFD40
    /* F0C20 001EFCA0 39D8004A */   vcallmsr  $vi27
    /* F0C24 001EFCA4 000086A4 */  sh         $6, 0x0($4)
    /* F0C28 001EFCA8 3A340600 */  dsrl       $6, $6, 16
    /* F0C2C 001EFCAC 020086A4 */  sh         $6, 0x2($4)
    /* F0C30 001EFCB0 3A340600 */  dsrl       $6, $6, 16
    /* F0C34 001EFCB4 040086A4 */  sh         $6, 0x4($4)
    /* F0C38 001EFCB8 06008420 */  addi       $4, $4, 0x6 /* handwritten instruction */
    /* F0C3C 001EFCBC C83D0770 */  ppach      $7, $0, $7
    /* F0C40 001EFCC0 0000A048 */  qmtc2.ni   $0, $vf0
    /* F0C44 001EFCC4 C83E0770 */  ppacb      $7, $0, $7
    /* F0C48 001EFCC8 0000A048 */  qmtc2.ni   $0, $vf0
    /* F0C4C 001EFCCC 0000A7AC */  sw         $7, 0x0($5)
    /* F0C50 001EFCD0 7F400870 */  psraw      $8, $8, 1
    /* F0C54 001EFCD4 C8450870 */  ppach      $8, $0, $8
    /* F0C58 001EFCD8 0300BDA0 */  sb         $29, 0x3($5)
    /* F0C5C 001EFCDC 000068AC */  sw         $8, 0x0($3)
    /* F0C60 001EFCE0 04006320 */  addi       $3, $3, 0x4 /* handwritten instruction */
    /* F0C64 001EFCE4 ABFF5914 */  bne        $2, $25, func_001EFB94
    /* F0C68 001EFCE8 0400A520 */   addi      $5, $5, 0x4 /* handwritten instruction */
    /* F0C6C 001EFCEC 0110193C */  lui        $25, (0x10010000 >> 16)
    /* F0C70 001EFCF0 20D02EAF */  sw         $14, -0x2FE0($25)
    /* F0C74 001EFCF4 10D02FAF */  sw         $15, -0x2FF0($25)
    /* F0C78 001EFCF8 00300120 */  addi       $1, $0, 0x3000 /* handwritten instruction */
    /* F0C7C 001EFCFC 80D021AF */  sw         $1, -0x2F80($25)
    /* F0C80 001EFD00 00010124 */  addiu      $1, $0, 0x100
    /* F0C84 001EFD04 00D021AF */  sw         $1, -0x3000($25)
    /* F0C88 001EFD08 00000000 */  nop
.align 2
  alabel func_001EFD0C
    /* F0C8C 001EFD0C 00D0218F */  lw         $1, -0x3000($25)
    /* F0C90 001EFD10 00012130 */  andi       $1, $1, 0x100
    /* F0C94 001EFD14 74FF2010 */  beqz       $1, .L001EFAE8
    /* F0C98 001EFD18 10000120 */   addi      $1, $0, 0x10 /* handwritten instruction */
.align 2
  .L001EFD1C:
    /* F0C9C 001EFD1C FFFF2120 */  addi       $1, $1, -0x1 /* handwritten instruction */
    /* F0CA0 001EFD20 00000000 */  nop
    /* F0CA4 001EFD24 00000000 */  nop
    /* F0CA8 001EFD28 00000000 */  nop
    /* F0CAC 001EFD2C 00000000 */  nop
    /* F0CB0 001EFD30 FAFF2014 */  bnez       $1, .L001EFD1C
    /* F0CB4 001EFD34 00000000 */   nop
    /* F0CB8 001EFD38 43BF0708 */  j          func_001EFD0C
    /* F0CBC 001EFD3C 00000000 */   nop
.align 2
  .L001EFD40:
    /* F0CC0 001EFD40 C8000070 */  pmaxw      $0, $0, $0
    /* F0CC4 001EFD44 C8000070 */  pmaxw      $0, $0, $0
    /* F0CC8 001EFD48 C8000070 */  pmaxw      $0, $0, $0
    /* F0CCC 001EFD4C C8000070 */  pmaxw      $0, $0, $0
    /* F0CD0 001EFD50 C8000070 */  pmaxw      $0, $0, $0
    /* F0CD4 001EFD54 C8000070 */  pmaxw      $0, $0, $0
    /* F0CD8 001EFD58 C8000070 */  pmaxw      $0, $0, $0
    /* F0CDC 001EFD5C C8000070 */  pmaxw      $0, $0, $0
    /* F0CE0 001EFD60 E5BE0708 */  j          func_001EFB94
    /* F0CE4 001EFD64 00000000 */   nop
.align 2
  .L001EFD68:
    /* F0CE8 001EFD68 0800E003 */  jr         $31
    /* F0CEC 001EFD6C 00008223 */   addi      $2, $28, 0x0 /* handwritten instruction */
endlabel func_001EE9F8
