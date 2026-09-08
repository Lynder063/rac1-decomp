.align 3
/* Handwritten function */
nonmatching func_00228A58, 0x2C8

glabel func_00228A58
    /* 1299D8 00228A58 89830072 */  pcpyld     $16, $16, $0
    /* 1299DC 00228A5C 898B2072 */  pcpyld     $17, $17, $0
    /* 1299E0 00228A60 89934072 */  pcpyld     $18, $18, $0
    /* 1299E4 00228A64 899B6072 */  pcpyld     $19, $19, $0
    /* 1299E8 00228A68 89A38072 */  pcpyld     $20, $20, $0
    /* 1299EC 00228A6C 89ABA072 */  pcpyld     $21, $21, $0
    /* 1299F0 00228A70 89B3C072 */  pcpyld     $22, $22, $0
    /* 1299F4 00228A74 89BBE072 */  pcpyld     $23, $23, $0
    /* 1299F8 00228A78 89FBE073 */  pcpyld     $31, $31, $0
    /* 1299FC 00228A7C 3C93978F */  lw         $23, -0x6CC4($28)
    /* 129A00 00228A80 1D00143C */  lui        $20, %hi(D_001C8880)
    /* 129A04 00228A84 80889426 */  addiu      $20, $20, %lo(D_001C8880)
    /* 129A08 00228A88 1D00153C */  lui        $21, %hi(D_001C8A00)
    /* 129A0C 00228A8C 008AB526 */  addiu      $21, $21, %lo(D_001C8A00)
    /* 129A10 00228A90 1D00163C */  lui        $22, %hi(D_001CAE00)
    /* 129A14 00228A94 00AED626 */  addiu      $22, $22, %lo(D_001CAE00)
    /* 129A18 00228A98 801FB322 */  addi       $19, $21, 0x1F80 /* handwritten instruction */
    /* 129A1C 00228A9C 00000000 */  nop
.align 2
  .L00228AA0:
    /* 129A20 00228AA0 0000908E */  lw         $16, 0x0($20)
    /* 129A24 00228AA4 FFFFF722 */  addi       $23, $23, -0x1 /* handwritten instruction */
    /* 129A28 00228AA8 2400118E */  lw         $17, 0x24($16)
    /* 129A2C 00228AAC FFFF0620 */  addi       $6, $0, -0x1 /* handwritten instruction */
    /* 129A30 00228AB0 00000422 */  addi       $4, $16, 0x0 /* handwritten instruction */
    /* 129A34 00228AB4 08002592 */  lbu        $5, 0x8($17)
    /* 129A38 00228AB8 3842080C */  jal        func_002108E0
    /* 129A3C 00228ABC 00000000 */   nop
    /* 129A40 00228AC0 2C00018E */  lw         $1, 0x2C($16)
    /* 129A44 00228AC4 803A023C */  lui        $2, (0x3A800000 >> 16)
    /* 129A48 00228AC8 04008396 */  lhu        $3, 0x4($20)
    /* 129A4C 00228ACC 00000000 */  nop
    /* 129A50 00228AD0 06008496 */  lhu        $4, 0x6($20)
    /* 129A54 00228AD4 08009422 */  addi       $20, $20, 0x8 /* handwritten instruction */
    /* 129A58 00228AD8 0050A148 */  qmtc2.ni   $1, $vf10
    /* 129A5C 00228ADC 0008A248 */  qmtc2.ni   $2, $vf1
    /* 129A60 00228AE0 0058A348 */  qmtc2.ni   $3, $vf11
    /* 129A64 00228AE4 AA52014B */  vmul.x     $vf10, $vf10, $vf1
    /* 129A68 00228AE8 3E590B4B */  vitof12.x  $vf11, $vf11
    /* 129A6C 00228AEC 0F002292 */  lbu        $2, 0xF($17)
    /* 129A70 00228AF0 1400218E */  lw         $1, 0x14($17)
    /* 129A74 00228AF4 00110200 */  sll        $2, $2, 4
    /* 129A78 00228AF8 22782200 */  sub        $15, $1, $2 /* handwritten instruction */
    /* 129A7C 00228AFC AA520B4B */  vmul.x     $vf10, $vf10, $vf11
    /* 129A80 00228B00 C0000CDA */  lqc2       $vf12, 0xC0($16)
    /* 129A84 00228B04 D0000DDA */  lqc2       $vf13, 0xD0($16)
    /* 129A88 00228B08 E0000EDA */  lqc2       $vf14, 0xE0($16)
    /* 129A8C 00228B0C 2208B302 */  sub        $1, $21, $19 /* handwritten instruction */
    /* 129A90 00228B10 7700201C */  bgtz       $1, .L00228CF0
    /* 129A94 00228B14 10000FDA */   lqc2      $vf15, 0x10($16)
    /* 129A98 00228B18 BD000192 */  lbu        $1, 0xBD($16)
    /* 129A9C 00228B1C 0000AE22 */  addi       $14, $21, 0x0 /* handwritten instruction */
    /* 129AA0 00228B20 8400028E */  lw         $2, 0x84($16)
    /* 129AA4 00228B24 00000000 */  nop
    /* 129AA8 00228B28 8800038E */  lw         $3, 0x88($16)
    /* 129AAC 00228B2C 00000D20 */  addi       $13, $0, 0x0 /* handwritten instruction */
    /* 129AB0 00228B30 00090100 */  sll        $1, $1, 4
    /* 129AB4 00228B34 20083600 */  add        $1, $1, $22 /* handwritten instruction */
    /* 129AB8 00228B38 00002178 */  lq         $1, 0x0($1)
    /* 129ABC 00228B3C 0070193C */  lui        $25, (0x70000000 >> 16)
    /* 129AC0 00228B40 0400A4AE */  sw         $4, 0x4($21)
    /* 129AC4 00228B44 00000C20 */  addi       $12, $0, 0x0 /* handwritten instruction */
    /* 129AC8 00228B48 0800A2AE */  sw         $2, 0x8($21)
    /* 129ACC 00228B4C 0C00A3AE */  sw         $3, 0xC($21)
    /* 129AD0 00228B50 1000A17E */  sq         $1, 0x10($21)
    /* 129AD4 00228B54 2000B522 */  addi       $21, $21, 0x20 /* handwritten instruction */
.align 2
  alabel func_00228B58
    /* 129AD8 00228B58 63008015 */  bnez       $12, .L00228CE8
    /* 129ADC 00228B5C 0000EB91 */   lbu       $11, 0x0($15)
    /* 129AE0 00228B60 0100EC91 */  lbu        $12, 0x1($15)
    /* 129AE4 00228B64 00000120 */  addi       $1, $0, 0x0 /* handwritten instruction */
    /* 129AE8 00228B68 1D006115 */  bne        $11, $1, .L00228BE0
    /* 129AEC 00228B6C 00000000 */   nop
    /* 129AF0 00228B70 0400E18D */  lw         $1, 0x4($15)
    /* 129AF4 00228B74 0800E28D */  lw         $2, 0x8($15)
    /* 129AF8 00228B78 80090100 */  sll        $1, $1, 6
    /* 129AFC 00228B7C 1000E1D9 */  lqc2       $vf1, 0x10($15)
    /* 129B00 00228B80 20083900 */  add        $1, $1, $25 /* handwritten instruction */
    /* 129B04 00228B84 0100AD21 */  addi       $13, $13, 0x1 /* handwritten instruction */
    /* 129B08 00228B88 000024D8 */  lqc2       $vf4, 0x0($1)
    /* 129B0C 00228B8C 100025D8 */  lqc2       $vf5, 0x10($1)
    /* 129B10 00228B90 200026D8 */  lqc2       $vf6, 0x20($1)
    /* 129B14 00228B94 300027D8 */  lqc2       $vf7, 0x30($1)
    /* 129B18 00228B98 BC21C14B */  .word      0x4BC121BC    # vmulax.xyz ACC, $vf4, $vf1x
    /* 129B1C 00228B9C BD28C14B */  .word      0x4BC128BD    # vmadday.xyz ACC, $vf5, $vf1y
    /* 129B20 00228BA0 BE30C14B */  .word      0x4BC130BE    # vmaddaz.xyz ACC, $vf6, $vf1z
    /* 129B24 00228BA4 4B38C04B */  vmaddw.xyz $vf1, $vf7, $vf0w
    /* 129B28 00228BA8 5808EA4B */  vmulx.xyzw $vf1, $vf1, $vf10x
    /* 129B2C 00228BAC 00000000 */  nop
    /* 129B30 00228BB0 BC61C14B */  .word      0x4BC161BC    # vmulax.xyz ACC, $vf12, $vf1x
    /* 129B34 00228BB4 BD68C14B */  .word      0x4BC168BD    # vmadday.xyz ACC, $vf13, $vf1y
    /* 129B38 00228BB8 BE70C14B */  .word      0x4BC170BE    # vmaddaz.xyz ACC, $vf14, $vf1z
    /* 129B3C 00228BBC 4B78C04B */  vmaddw.xyz $vf1, $vf15, $vf0w
    /* 129B40 00228BC0 0000ABAE */  sw         $11, 0x0($21)
    /* 129B44 00228BC4 0400A2AE */  sw         $2, 0x4($21)
    /* 129B48 00228BC8 0800A0FE */  sd         $0, 0x8($21)
    /* 129B4C 00228BCC 00000000 */  nop
    /* 129B50 00228BD0 1000A1FA */  sqc2       $vf1, 0x10($21)
    /* 129B54 00228BD4 2000B522 */  addi       $21, $21, 0x20 /* handwritten instruction */
    /* 129B58 00228BD8 D6A20808 */  j          func_00228B58
    /* 129B5C 00228BDC 2000EF21 */   addi      $15, $15, 0x20 /* handwritten instruction */
.align 2
  .L00228BE0:
    /* 129B60 00228BE0 0400E195 */  lhu        $1, 0x4($15)
    /* 129B64 00228BE4 0600E295 */  lhu        $2, 0x6($15)
    /* 129B68 00228BE8 80090100 */  sll        $1, $1, 6
    /* 129B6C 00228BEC 1000E1D9 */  lqc2       $vf1, 0x10($15)
    /* 129B70 00228BF0 80110200 */  sll        $2, $2, 6
    /* 129B74 00228BF4 2000E2D9 */  lqc2       $vf2, 0x20($15)
    /* 129B78 00228BF8 20083900 */  add        $1, $1, $25 /* handwritten instruction */
    /* 129B7C 00228BFC 20105900 */  add        $2, $2, $25 /* handwritten instruction */
    /* 129B80 00228C00 000024D8 */  lqc2       $vf4, 0x0($1)
    /* 129B84 00228C04 100025D8 */  lqc2       $vf5, 0x10($1)
    /* 129B88 00228C08 200026D8 */  lqc2       $vf6, 0x20($1)
    /* 129B8C 00228C0C 300027D8 */  lqc2       $vf7, 0x30($1)
    /* 129B90 00228C10 BC21C14B */  .word      0x4BC121BC    # vmulax.xyz ACC, $vf4, $vf1x
    /* 129B94 00228C14 BD28C14B */  .word      0x4BC128BD    # vmadday.xyz ACC, $vf5, $vf1y
    /* 129B98 00228C18 BE30C14B */  .word      0x4BC130BE    # vmaddaz.xyz ACC, $vf6, $vf1z
    /* 129B9C 00228C1C 4B38C04B */  vmaddw.xyz $vf1, $vf7, $vf0w
    /* 129BA0 00228C20 000044D8 */  lqc2       $vf4, 0x0($2)
    /* 129BA4 00228C24 100045D8 */  lqc2       $vf5, 0x10($2)
    /* 129BA8 00228C28 200046D8 */  lqc2       $vf6, 0x20($2)
    /* 129BAC 00228C2C 300047D8 */  lqc2       $vf7, 0x30($2)
    /* 129BB0 00228C30 BC21C24B */  .word      0x4BC221BC    # vmulax.xyz ACC, $vf4, $vf2x
    /* 129BB4 00228C34 BD28C24B */  .word      0x4BC228BD    # vmadday.xyz ACC, $vf5, $vf2y
    /* 129BB8 00228C38 BE30C24B */  .word      0x4BC230BE    # vmaddaz.xyz ACC, $vf6, $vf2z
    /* 129BBC 00228C3C 8B38C04B */  vmaddw.xyz $vf2, $vf7, $vf0w
    /* 129BC0 00228C40 5808EA4B */  vmulx.xyzw $vf1, $vf1, $vf10x
    /* 129BC4 00228C44 9810EA4B */  vmulx.xyzw $vf2, $vf2, $vf10x
    /* 129BC8 00228C48 0800E38D */  lw         $3, 0x8($15)
    /* 129BCC 00228C4C 0C00E48D */  lw         $4, 0xC($15)
    /* 129BD0 00228C50 BC61C14B */  .word      0x4BC161BC    # vmulax.xyz ACC, $vf12, $vf1x
    /* 129BD4 00228C54 BD68C14B */  .word      0x4BC168BD    # vmadday.xyz ACC, $vf13, $vf1y
    /* 129BD8 00228C58 BE70C14B */  .word      0x4BC170BE    # vmaddaz.xyz ACC, $vf14, $vf1z
    /* 129BDC 00228C5C 4B78C04B */  vmaddw.xyz $vf1, $vf15, $vf0w
    /* 129BE0 00228C60 BC61C24B */  .word      0x4BC261BC    # vmulax.xyz ACC, $vf12, $vf2x
    /* 129BE4 00228C64 BD68C24B */  .word      0x4BC268BD    # vmadday.xyz ACC, $vf13, $vf2y
    /* 129BE8 00228C68 BE70C24B */  .word      0x4BC270BE    # vmaddaz.xyz ACC, $vf14, $vf2z
    /* 129BEC 00228C6C 8B78C04B */  vmaddw.xyz $vf2, $vf15, $vf0w
    /* 129BF0 00228C70 0D006004 */  bltz       $3, .L00228CA8
    /* 129BF4 00228C74 22080300 */   neg       $1, $3 /* handwritten instruction */
.align 2
  alabel func_00228C78
    /* 129BF8 00228C78 13008004 */  bltz       $4, .L00228CC8
    /* 129BFC 00228C7C 22080400 */   neg       $1, $4 /* handwritten instruction */
.align 2
  alabel func_00228C80
    /* 129C00 00228C80 0000ABAE */  sw         $11, 0x0($21)
    /* 129C04 00228C84 0C00A0AE */  sw         $0, 0xC($21)
    /* 129C08 00228C88 0400A3AE */  sw         $3, 0x4($21)
    /* 129C0C 00228C8C 0800A4AE */  sw         $4, 0x8($21)
    /* 129C10 00228C90 1000A1FA */  sqc2       $vf1, 0x10($21)
    /* 129C14 00228C94 2000A2FA */  sqc2       $vf2, 0x20($21)
    /* 129C18 00228C98 3000B522 */  addi       $21, $21, 0x30 /* handwritten instruction */
    /* 129C1C 00228C9C 0100AD21 */  addi       $13, $13, 0x1 /* handwritten instruction */
    /* 129C20 00228CA0 D6A20808 */  j          func_00228B58
    /* 129C24 00228CA4 3000EF21 */   addi      $15, $15, 0x30 /* handwritten instruction */
.align 2
  .L00228CA8:
    /* 129C28 00228CA8 00090100 */  sll        $1, $1, 4
    /* 129C2C 00228CAC 0020A148 */  qmtc2.ni   $1, $vf4
    /* 129C30 00228CB0 EC08C24B */  vsub.xyz   $vf3, $vf1, $vf2
    /* 129C34 00228CB4 3E21044B */  vitof12.x  $vf4, $vf4
    /* 129C38 00228CB8 D818C44B */  vmulx.xyz  $vf3, $vf3, $vf4x
    /* 129C3C 00228CBC 6808C34B */  vadd.xyz   $vf1, $vf1, $vf3
    /* 129C40 00228CC0 1EA30808 */  j          func_00228C78
    /* 129C44 00228CC4 00000320 */   addi      $3, $0, 0x0 /* handwritten instruction */
.align 2
  .L00228CC8:
    /* 129C48 00228CC8 00090100 */  sll        $1, $1, 4
    /* 129C4C 00228CCC 0020A148 */  qmtc2.ni   $1, $vf4
    /* 129C50 00228CD0 EC10C14B */  vsub.xyz   $vf3, $vf2, $vf1
    /* 129C54 00228CD4 3E21044B */  vitof12.x  $vf4, $vf4
    /* 129C58 00228CD8 D818C44B */  vmulx.xyz  $vf3, $vf3, $vf4x
    /* 129C5C 00228CDC A810C34B */  vadd.xyz   $vf2, $vf2, $vf3
    /* 129C60 00228CE0 20A30808 */  j          func_00228C80
    /* 129C64 00228CE4 00000420 */   addi      $4, $0, 0x0 /* handwritten instruction */
.align 2
  .L00228CE8:
    /* 129C68 00228CE8 6DFFE01E */  bgtz       $23, .L00228AA0
    /* 129C6C 00228CEC 0000CDAD */   sw        $13, 0x0($14)
.align 2
  .L00228CF0:
    /* 129C70 00228CF0 0000A07E */  sq         $0, 0x0($21)
    /* 129C74 00228CF4 00000000 */  nop
    /* 129C78 00228CF8 A9FBE073 */  pcpyud     $31, $31, $0
    /* 129C7C 00228CFC A9830072 */  pcpyud     $16, $16, $0
    /* 129C80 00228D00 A98B2072 */  pcpyud     $17, $17, $0
    /* 129C84 00228D04 A9934072 */  pcpyud     $18, $18, $0
    /* 129C88 00228D08 A99B6072 */  pcpyud     $19, $19, $0
    /* 129C8C 00228D0C A9A38072 */  pcpyud     $20, $20, $0
    /* 129C90 00228D10 A9ABA072 */  pcpyud     $21, $21, $0
    /* 129C94 00228D14 A9B3C072 */  pcpyud     $22, $22, $0
    /* 129C98 00228D18 0800E003 */  jr         $31
    /* 129C9C 00228D1C A9BBE072 */   pcpyud    $23, $23, $0
endlabel func_00228A58
