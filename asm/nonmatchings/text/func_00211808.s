.align 3
/* Handwritten function */
nonmatching func_00211808, 0xA50

glabel func_00211808
    /* 112788 00211808 1B00073C */  lui        $7, %hi(D_001B3180)
    /* 11278C 0021180C 8031E724 */  addiu      $7, $7, %lo(D_001B3180)
    /* 112790 00211810 24008F8C */  lw         $15, 0x24($4)
    /* 112794 00211814 68008C8C */  lw         $12, 0x68($4)
    /* 112798 00211818 0800EA91 */  lbu        $10, 0x8($15)
    /* 11279C 0021181C 0010083C */  lui        $8, (0x1000D400 >> 16)
    /* 1127A0 00211820 6C008D8C */  lw         $13, 0x6C($4)
    /* 1127A4 00211824 00D40835 */  ori        $8, $8, (0x1000D400 & 0xFFFF)
    /* 1127A8 00211828 89024011 */  beqz       $10, .L00212250
    /* 1127AC 0021182C 5400898C */   lw        $9, 0x54($4)
    /* 1127B0 00211830 1800EB8D */  lw         $11, 0x18($15)
    /* 1127B4 00211834 00300134 */  ori        $1, $0, 0x3000
    /* 1127B8 00211838 0000EAA4 */  sh         $10, 0x0($7)
    /* 1127BC 0021183C 10008C21 */  addi       $12, $12, 0x10 /* handwritten instruction */
    /* 1127C0 00211840 0200E1A4 */  sh         $1, 0x2($7)
    /* 1127C4 00211844 1000AD21 */  addi       $13, $13, 0x10 /* handwritten instruction */
    /* 1127C8 00211848 0400EBAC */  sw         $11, 0x4($7)
    /* 1127CC 0021184C 2DC08000 */  daddu      $24, $4, $0
    /* 1127D0 00211850 F6FF8485 */  lh         $4, -0xA($12)
    /* 1127D4 00211854 2DC8A000 */  daddu      $25, $5, $0
    /* 1127D8 00211858 1200E1A4 */  sh         $1, 0x12($7)
    /* 1127DC 0021185C 00700E3C */  lui        $14, (0x70001FF4 >> 16)
    /* 1127E0 00211860 1000E4A4 */  sh         $4, 0x10($7)
    /* 1127E4 00211864 00090A00 */  sll        $1, $10, 4
    /* 1127E8 00211868 1400ECAC */  sw         $12, 0x14($7)
    /* 1127EC 0021186C 20082E00 */  add        $1, $1, $14 /* handwritten instruction */
    /* 1127F0 00211870 F6FFAB95 */  lhu        $11, -0xA($13)
    /* 1127F4 00211874 00202120 */  addi       $1, $1, 0x2000 /* handwritten instruction */
    /* 1127F8 00211878 2400EDAC */  sw         $13, 0x24($7)
    /* 1127FC 0021187C 00210400 */  sll        $4, $4, 4
    /* 112800 00211880 2000EBAC */  sw         $11, 0x20($7)
    /* 112804 00211884 20208100 */  add        $4, $4, $1 /* handwritten instruction */
    /* 112808 00211888 03002015 */  bnez       $9, .L00211898
    /* 11280C 0021188C 00000000 */   nop
    /* 112810 00211890 1200E0A4 */  sh         $0, 0x12($7)
    /* 112814 00211894 00000000 */  nop
.align 2
  .L00211898:
    /* 112818 00211898 0F000000 */  sync
    /* 11281C 0021189C 00000000 */  nop
    /* 112820 002118A0 0000FCBC */  cache      0x1C, 0x0($7) /* handwritten instruction */
    /* 112824 002118A4 0F000000 */  sync
    /* 112828 002118A8 00590B00 */  sll        $11, $11, 4
    /* 11282C 002118AC FFFF0220 */  addi       $2, $0, -0x1 /* handwritten instruction */
    /* 112830 002118B0 FCFF22AC */  sw         $2, -0x4($1)
    /* 112834 002118B4 20586401 */  add        $11, $11, $4 /* handwritten instruction */
    /* 112838 002118B8 FCFF82AC */  sw         $2, -0x4($4)
    /* 11283C 002118BC 5800E04B */  vmulx.xyzw $vf1, $vf0, $vf0x
    /* 112840 002118C0 FCFF62AD */  sw         $2, -0x4($11)
    /* 112844 002118C4 9800E04B */  vmulx.xyzw $vf2, $vf0, $vf0x
    /* 112848 002118C8 300007AD */  sw         $7, 0x30($8)
    /* 11284C 002118CC 0020C735 */  ori        $7, $14, (0x70002000 & 0xFFFF)
    /* 112850 002118D0 FAFF8285 */  lh         $2, -0x6($12)
    /* 112854 002118D4 3D03E34B */  .word      0x4BE3033D    # vmr32.xyzw $vf3, $vf0
    /* 112858 002118D8 FEFF8385 */  lh         $3, -0x2($12)
    /* 11285C 002118DC 0301C04B */  vaddw.xyz  $vf4, $vf0, $vf0w
    /* 112860 002118E0 800007AD */  sw         $7, 0x80($8)
    /* 112864 002118E4 04010734 */  ori        $7, $0, 0x104
    /* 112868 002118E8 FAFFA585 */  lh         $5, -0x6($13)
    /* 11286C 002118EC 2C01204A */  vsub.w     $vf4, $vf0, $vf0
    /* 112870 002118F0 FEFFA685 */  lh         $6, -0x2($13)
    /* 112874 002118F4 4308004B */  vaddw.x    $vf1, $vf1, $vf0w
    /* 112878 002118F8 000007AD */  sw         $7, 0x0($8)
    /* 11287C 002118FC 8310804A */  vaddw.y    $vf2, $vf2, $vf0w
    /* 112880 00211900 0038A948 */  qmtc2.ni   $9, $vf7
    /* 112884 00211904 4701004B */  vsubw.x    $vf5, $vf0, $vf0w
    /* 112888 00211908 AC21074B */  vsub.x     $vf6, $vf4, $vf7
    /* 11288C 0021190C 00000000 */  nop
    /* 112890 00211910 C0FFC921 */  addi       $9, $14, -0x40 /* handwritten instruction */
    /* 112894 00211914 80390A00 */  sll        $7, $10, 6
    /* 112898 00211918 2038E900 */  add        $7, $7, $9 /* handwritten instruction */
    /* 11289C 0021191C 00000000 */  nop
.align 2
  .L00211920:
    /* 1128A0 00211920 40002921 */  addi       $9, $9, 0x40 /* handwritten instruction */
    /* 1128A4 00211924 000024F9 */  sqc2       $vf4, 0x0($9)
    /* 1128A8 00211928 00000000 */  nop
    /* 1128AC 0021192C 00000000 */  nop
    /* 1128B0 00211930 00000000 */  nop
    /* 1128B4 00211934 FAFFE914 */  bne        $7, $9, .L00211920
    /* 1128B8 00211938 100024F9 */   sqc2      $vf4, 0x10($9)
    /* 1128BC 0021193C 50000793 */  lbu        $7, 0x50($24)
    /* 1128C0 00211940 00000000 */  nop
    /* 1128C4 00211944 51000893 */  lbu        $8, 0x51($24)
    /* 1128C8 00211948 52000993 */  lbu        $9, 0x52($24)
    /* 1128CC 0021194C 22400701 */  sub        $8, $8, $7 /* handwritten instruction */
    /* 1128D0 00211950 53000793 */  lbu        $7, 0x53($24)
    /* 1128D4 00211954 FEFF0831 */  andi       $8, $8, 0xFFFE
    /* 1128D8 00211958 22382701 */  sub        $7, $9, $7 /* handwritten instruction */
    /* 1128DC 0021195C 20400701 */  add        $8, $8, $7 /* handwritten instruction */
    /* 1128E0 00211960 A8400071 */  pceqw      $8, $8, $0
    /* 1128E4 00211964 00040831 */  andi       $8, $8, 0x400
    /* 1128E8 00211968 89CB1971 */  pcpyld     $25, $8, $25
.align 2
  .L0021196C:
    /* 1128EC 0021196C FCFF278C */  lw         $7, -0x4($1)
    /* 1128F0 00211970 FFFF0820 */  addi       $8, $0, -0x1 /* handwritten instruction */
    /* 1128F4 00211974 00000000 */  nop
    /* 1128F8 00211978 00000000 */  nop
    /* 1128FC 0021197C 00000000 */  nop
    /* 112900 00211980 FAFFE810 */  beq        $7, $8, .L0021196C
    /* 112904 00211984 00000000 */   nop
    /* 112908 00211988 2D384001 */  daddu      $7, $10, $0
    /* 11290C 0021198C 0020C835 */  ori        $8, $14, (0x70002000 & 0xFFFF)
    /* 112910 00211990 00FFC921 */  addi       $9, $14, -0x100 /* handwritten instruction */
    /* 112914 00211994 00000000 */  nop
.align 2
  .L00211998:
    /* 112918 00211998 000010D9 */  lqc2       $vf16, 0x0($8)
    /* 11291C 0021199C 00012921 */  addi       $9, $9, 0x100 /* handwritten instruction */
    /* 112920 002119A0 100011D9 */  lqc2       $vf17, 0x10($8)
    /* 112924 002119A4 FCFFE720 */  addi       $7, $7, -0x4 /* handwritten instruction */
    /* 112928 002119A8 200012D9 */  lqc2       $vf18, 0x20($8)
    /* 11292C 002119AC 300013D9 */  lqc2       $vf19, 0x30($8)
    /* 112930 002119B0 200030F9 */  sqc2       $vf16, 0x20($9)
    /* 112934 002119B4 1884204A */  vmulx.w    $vf16, $vf16, $vf0x
    /* 112938 002119B8 600031F9 */  sqc2       $vf17, 0x60($9)
    /* 11293C 002119BC 588C204A */  vmulx.w    $vf17, $vf17, $vf0x
    /* 112940 002119C0 A00032F9 */  sqc2       $vf18, 0xA0($9)
    /* 112944 002119C4 9894204A */  vmulx.w    $vf18, $vf18, $vf0x
    /* 112948 002119C8 E00033F9 */  sqc2       $vf19, 0xE0($9)
    /* 11294C 002119CC D89C204A */  vmulx.w    $vf19, $vf19, $vf0x
    /* 112950 002119D0 300030F9 */  sqc2       $vf16, 0x30($9)
    /* 112954 002119D4 700031F9 */  sqc2       $vf17, 0x70($9)
    /* 112958 002119D8 B00032F9 */  sqc2       $vf18, 0xB0($9)
    /* 11295C 002119DC 40000821 */  addi       $8, $8, 0x40 /* handwritten instruction */
    /* 112960 002119E0 EDFFE01C */  bgtz       $7, .L00211998
    /* 112964 002119E4 F00033F9 */   sqc2      $vf19, 0xF0($9)
.align 2
  .L002119E8:
    /* 112968 002119E8 FCFF878C */  lw         $7, -0x4($4)
    /* 11296C 002119EC FFFF0820 */  addi       $8, $0, -0x1 /* handwritten instruction */
    /* 112970 002119F0 00000000 */  nop
    /* 112974 002119F4 00000000 */  nop
    /* 112978 002119F8 00000000 */  nop
    /* 11297C 002119FC FAFFE810 */  beq        $7, $8, .L002119E8
    /* 112980 00211A00 00000000 */   nop
    /* 112984 00211A04 00382748 */  qmfc2.ni   $7, $vf7
    /* 112988 00211A08 00000000 */  nop
    /* 11298C 00211A0C EF00E010 */  beqz       $7, .L00211DCC
    /* 112990 00211A10 0020C07D */   sq        $0, (0x70002000 & 0xFFFF)($14)
    /* 112994 00211A14 C0600A00 */  sll        $12, $10, 3
    /* 112998 00211A18 F41FCD21 */  addi       $13, $14, (0x70001FF4 & 0xFFFF) /* handwritten instruction */
    /* 11299C 00211A1C 20608101 */  add        $12, $12, $1 /* handwritten instruction */
    /* 1129A0 00211A20 5802E04B */  vmulx.xyzw $vf9, $vf0, $vf0x
.align 2
  alabel func_00211A24
    /* 1129A4 00211A24 15004010 */  beqz       $2, .L00211A7C
    /* 1129A8 00211A28 000087DD */   ld        $7, 0x0($12)
    /* 1129AC 00211A2C 06008891 */  lbu        $8, 0x6($12)
    /* 1129B0 00211A30 FFFF4220 */  addi       $2, $2, -0x1 /* handwritten instruction */
    /* 1129B4 00211A34 884DE070 */  pextlh     $9, $7, $0
    /* 1129B8 00211A38 7E4B0970 */  psrlw      $9, $9, 13
    /* 1129BC 00211A3C 0040A948 */  qmtc2.ni   $9, $vf8
    /* 1129C0 00211A40 08008C21 */  addi       $12, $12, 0x8 /* handwritten instruction */
    /* 1129C4 00211A44 F7FFE104 */  bgez       $7, func_00211A24
    /* 1129C8 00211A48 80490800 */   sll       $9, $8, 6
    /* 1129CC 00211A4C 3F41C94B */  vitof15.xyz $vf9, $vf8
    /* 1129D0 00211A50 20482E01 */  add        $9, $9, $14 /* handwritten instruction */
    /* 1129D4 00211A54 0C00A9AD */  sw         $9, 0xC($13)
    /* 1129D8 00211A58 2D682001 */  daddu      $13, $9, $0
    /* 1129DC 00211A5C BE3F0700 */  dsrl32     $7, $7, 30
    /* 1129E0 00211A60 00000000 */  nop
    /* 1129E4 00211A64 FFFFE720 */  addi       $7, $7, -0x1 /* handwritten instruction */
    /* 1129E8 00211A68 00000000 */  nop
    /* 1129EC 00211A6C 1C0027AD */  sw         $7, 0x1C($9)
    /* 1129F0 00211A70 00000000 */  nop
    /* 1129F4 00211A74 89460808 */  j          func_00211A24
    /* 1129F8 00211A78 000029F9 */   sqc2      $vf9, 0x0($9)
.align 2
  .L00211A7C:
    /* 1129FC 00211A7C C81FC921 */  addi       $9, $14, (0x70001FC8 & 0xFFFF) /* handwritten instruction */
    /* 112A00 00211A80 584A204A */  vmulx.w    $vf9, $vf9, $vf0x
.align 2
  alabel func_00211A84
    /* 112A04 00211A84 11006010 */  beqz       $3, .L00211ACC
    /* 112A08 00211A88 000087DD */   ld        $7, 0x0($12)
    /* 112A0C 00211A8C 06008891 */  lbu        $8, 0x6($12)
    /* 112A10 00211A90 FFFF6320 */  addi       $3, $3, -0x1 /* handwritten instruction */
    /* 112A14 00211A94 883DE070 */  pextlh     $7, $7, $0
    /* 112A18 00211A98 3F3C0770 */  psraw      $7, $7, 16
    /* 112A1C 00211A9C 0040A748 */  qmtc2.ni   $7, $vf8
    /* 112A20 00211AA0 80410800 */  sll        $8, $8, 6
    /* 112A24 00211AA4 08008C21 */  addi       $12, $12, 0x8 /* handwritten instruction */
    /* 112A28 00211AA8 20400E01 */  add        $8, $8, $14 /* handwritten instruction */
    /* 112A2C 00211AAC 3C41C94B */  vitof0.xyz $vf9, $vf8
    /* 112A30 00211AB0 2C00078D */  lw         $7, 0x2C($8)
    /* 112A34 00211AB4 3C0028AD */  sw         $8, 0x3C($9)
    /* 112A38 00211AB8 2D480001 */  daddu      $9, $8, $0
    /* 112A3C 00211ABC 200009F9 */  sqc2       $vf9, 0x20($8)
    /* 112A40 00211AC0 00000000 */  nop
    /* 112A44 00211AC4 A1460808 */  j          func_00211A84
    /* 112A48 00211AC8 2C0007AD */   sw        $7, 0x2C($8)
.align 2
  .L00211ACC:
    /* 112A4C 00211ACC 3C0020AD */  sw         $0, 0x3C($9)
    /* 112A50 00211AD0 00000000 */  nop
.align 2
  .L00211AD4:
    /* 112A54 00211AD4 FCFF678D */  lw         $7, -0x4($11)
    /* 112A58 00211AD8 FFFF0820 */  addi       $8, $0, -0x1 /* handwritten instruction */
    /* 112A5C 00211ADC 00000000 */  nop
    /* 112A60 00211AE0 00000000 */  nop
    /* 112A64 00211AE4 00000000 */  nop
    /* 112A68 00211AE8 FAFFE810 */  beq        $7, $8, .L00211AD4
    /* 112A6C 00211AEC 00000000 */   nop
    /* 112A70 00211AF0 C0600A00 */  sll        $12, $10, 3
    /* 112A74 00211AF4 20608401 */  add        $12, $12, $4 /* handwritten instruction */
.align 2
  alabel func_00211AF8
    /* 112A78 00211AF8 1500A010 */  beqz       $5, func_00211B50
    /* 112A7C 00211AFC 000087DD */   ld        $7, 0x0($12)
    /* 112A80 00211B00 06008B91 */  lbu        $11, 0x6($12)
    /* 112A84 00211B04 FFFFA520 */  addi       $5, $5, -0x1 /* handwritten instruction */
    /* 112A88 00211B08 8845E070 */  pextlh     $8, $7, $0
    /* 112A8C 00211B0C 7E430870 */  psrlw      $8, $8, 13
    /* 112A90 00211B10 0040A848 */  qmtc2.ni   $8, $vf8
    /* 112A94 00211B14 80590B00 */  sll        $11, $11, 6
    /* 112A98 00211B18 20586E01 */  add        $11, $11, $14 /* handwritten instruction */
    /* 112A9C 00211B1C 08008C21 */  addi       $12, $12, 0x8 /* handwritten instruction */
    /* 112AA0 00211B20 0C00688D */  lw         $8, 0xC($11)
    /* 112AA4 00211B24 3F41C84B */  vitof15.xyz $vf8, $vf8
    /* 112AA8 00211B28 F3FFE104 */  bgez       $7, func_00211AF8
    /* 112AAC 00211B2C BE3F0700 */   dsrl32    $7, $7, 30
    /* 112AB0 00211B30 FFFFE720 */  addi       $7, $7, -0x1 /* handwritten instruction */
    /* 112AB4 00211B34 100068F9 */  sqc2       $vf8, 0x10($11)
    /* 112AB8 00211B38 EFFF0015 */  bnez       $8, func_00211AF8
    /* 112ABC 00211B3C 1C0067AD */   sw        $7, 0x1C($11)
    /* 112AC0 00211B40 0C00ABAD */  sw         $11, 0xC($13)
    /* 112AC4 00211B44 2D686001 */  daddu      $13, $11, $0
    /* 112AC8 00211B48 BE460808 */  j          func_00211AF8
    /* 112ACC 00211B4C 0C00A0AD */   sw        $0, 0xC($13)
.align 2
  alabel func_00211B50
    /* 112AD0 00211B50 1300C010 */  beqz       $6, .L00211BA0
    /* 112AD4 00211B54 000087DD */   ld        $7, 0x0($12)
    /* 112AD8 00211B58 06008B91 */  lbu        $11, 0x6($12)
    /* 112ADC 00211B5C FFFFC620 */  addi       $6, $6, -0x1 /* handwritten instruction */
    /* 112AE0 00211B60 8845E070 */  pextlh     $8, $7, $0
    /* 112AE4 00211B64 3F440870 */  psraw      $8, $8, 16
    /* 112AE8 00211B68 0040A848 */  qmtc2.ni   $8, $vf8
    /* 112AEC 00211B6C 80590B00 */  sll        $11, $11, 6
    /* 112AF0 00211B70 20586E01 */  add        $11, $11, $14 /* handwritten instruction */
    /* 112AF4 00211B74 08008C21 */  addi       $12, $12, 0x8 /* handwritten instruction */
    /* 112AF8 00211B78 3C00688D */  lw         $8, 0x3C($11)
    /* 112AFC 00211B7C 3C41C84B */  vitof0.xyz $vf8, $vf8
    /* 112B00 00211B80 300068F9 */  sqc2       $vf8, 0x30($11)
    /* 112B04 00211B84 00000000 */  nop
    /* 112B08 00211B88 F1FF0015 */  bnez       $8, func_00211B50
    /* 112B0C 00211B8C 3C0068AD */   sw        $8, 0x3C($11)
    /* 112B10 00211B90 3C002BAD */  sw         $11, 0x3C($9)
    /* 112B14 00211B94 2D486001 */  daddu      $9, $11, $0
    /* 112B18 00211B98 D4460808 */  j          func_00211B50
    /* 112B1C 00211B9C 3C0020AD */   sw        $0, 0x3C($9)
.align 2
  .L00211BA0:
    /* 112B20 00211BA0 0020C38D */  lw         $3, (0x70002000 & 0xFFFF)($14)
    /* 112B24 00211BA4 00000000 */  nop
.align 2
  alabel func_00211BA8
    /* 112B28 00211BA8 09006010 */  beqz       $3, .L00211BD0
    /* 112B2C 00211BAC 2D106000 */   daddu     $2, $3, $0
    /* 112B30 00211BB0 000048D8 */  lqc2       $vf8, 0x0($2)
    /* 112B34 00211BB4 100049D8 */  lqc2       $vf9, 0x10($2)
    /* 112B38 00211BB8 BC41C64B */  .word      0x4BC641BC    # vmulax.xyz ACC, $vf8, $vf6x
    /* 112B3C 00211BBC 484AC74B */  vmaddx.xyz $vf9, $vf9, $vf7x
    /* 112B40 00211BC0 0C00438C */  lw         $3, 0xC($2)
    /* 112B44 00211BC4 FF02004A */  vnop
    /* 112B48 00211BC8 EA460808 */  j          func_00211BA8
    /* 112B4C 00211BCC 100049F8 */   sqc2      $vf9, 0x10($2)
.align 2
  .L00211BD0:
    /* 112B50 00211BD0 0420C28D */  lw         $2, (0x70002004 & 0xFFFF)($14)
    /* 112B54 00211BD4 00000000 */  nop
.align 2
  alabel func_00211BD8
    /* 112B58 00211BD8 08004010 */  beqz       $2, .L00211BFC
    /* 112B5C 00211BDC 2D184000 */   daddu     $3, $2, $0
    /* 112B60 00211BE0 200068D8 */  lqc2       $vf8, 0x20($3)
    /* 112B64 00211BE4 300069D8 */  lqc2       $vf9, 0x30($3)
    /* 112B68 00211BE8 BC41C64B */  .word      0x4BC641BC    # vmulax.xyz ACC, $vf8, $vf6x
    /* 112B6C 00211BEC 084AC74B */  vmaddx.xyz $vf8, $vf9, $vf7x
    /* 112B70 00211BF0 3C00428C */  lw         $2, 0x3C($2)
    /* 112B74 00211BF4 F6460808 */  j          func_00211BD8
    /* 112B78 00211BF8 200068F8 */   sqc2      $vf8, 0x20($3)
.align 2
  .L00211BFC:
    /* 112B7C 00211BFC A9132073 */  pcpyud     $2, $25, $0
    /* 112B80 00211C00 0000A048 */  qmtc2.ni   $0, $vf0
    /* 112B84 00211C04 00044230 */  andi       $2, $2, 0x400
    /* 112B88 00211C08 00000000 */  nop
    /* 112B8C 00211C0C 49004014 */  bnez       $2, .L00211D34
    /* 112B90 00211C10 00000000 */   nop
    /* 112B94 00211C14 7F002293 */  lbu        $2, 0x7F($25)
    /* 112B98 00211C18 80FFCC21 */  addi       $12, $14, -0x80 /* handwritten instruction */
.align 2
  alabel func_00211C1C
    /* 112B9C 00211C1C AC004018 */  blez       $2, func_00211ED0
    /* 112BA0 00211C20 00002778 */   lq        $7, 0x0($1)
    /* 112BA4 00211C24 FEFF4220 */  addi       $2, $2, -0x2 /* handwritten instruction */
    /* 112BA8 00211C28 00008878 */  lq         $8, 0x0($4)
    /* 112BAC 00211C2C 882DE070 */  pextlh     $5, $7, $0
    /* 112BB0 00211C30 0000A048 */  qmtc2.ni   $0, $vf0
    /* 112BB4 00211C34 3F2C0570 */  psraw      $5, $5, 16
    /* 112BB8 00211C38 0000A048 */  qmtc2.ni   $0, $vf0
    /* 112BBC 00211C3C 88350071 */  pextlh     $6, $8, $0
    /* 112BC0 00211C40 0040A548 */  qmtc2.ni   $5, $vf8
    /* 112BC4 00211C44 3F340670 */  psraw      $6, $6, 16
    /* 112BC8 00211C48 0000A048 */  qmtc2.ni   $0, $vf0
    /* 112BCC 00211C4C A83DE070 */  pextuh     $7, $7, $0
    /* 112BD0 00211C50 0048A648 */  qmtc2.ni   $6, $vf9
    /* 112BD4 00211C54 3F3C0770 */  psraw      $7, $7, 16
    /* 112BD8 00211C58 A8450071 */  pextuh     $8, $8, $0
    /* 112BDC 00211C5C 3F440870 */  psraw      $8, $8, 16
    /* 112BE0 00211C60 0050A748 */  qmtc2.ni   $7, $vf10
    /* 112BE4 00211C64 0058A848 */  qmtc2.ni   $8, $vf11
    /* 112BE8 00211C68 00000000 */  nop
    /* 112BEC 00211C6C 3F41E84B */  vitof15.xyzw $vf8, $vf8
    /* 112BF0 00211C70 3F49E94B */  vitof15.xyzw $vf9, $vf9
    /* 112BF4 00211C74 3F51EA4B */  vitof15.xyzw $vf10, $vf10
    /* 112BF8 00211C78 3F59EB4B */  vitof15.xyzw $vf11, $vf11
    /* 112BFC 00211C7C 2A43E94B */  vmul.xyzw  $vf12, $vf8, $vf9
    /* 112C00 00211C80 6A53EB4B */  vmul.xyzw  $vf13, $vf10, $vf11
    /* 112C04 00211C84 984BE54B */  vmulx.xyzw $vf14, $vf9, $vf5x
    /* 112C08 00211C88 D85BE54B */  vmulx.xyzw $vf15, $vf11, $vf5x
    /* 112C0C 00211C8C BC41E64B */  .word      0x4BE641BC    # vmulax.xyzw ACC, $vf8, $vf6x
    /* 112C10 00211C90 084AE74B */  vmaddx.xyzw $vf8, $vf9, $vf7x
    /* 112C14 00211C94 4872E74B */  vmaddx.xyzw $vf9, $vf14, $vf7x
    /* 112C18 00211C98 10002120 */  addi       $1, $1, 0x10 /* handwritten instruction */
    /* 112C1C 00211C9C 3C608C4A */  .word      0x4A8C603C    # vaddax.y   ACC, $vf12, $vf12x
    /* 112C20 00211CA0 BE208C4A */  .word      0x4A8C20BE    # vmaddaz.y  ACC, $vf4, $vf12z
    /* 112C24 00211CA4 0B238C4A */  vmaddw.y   $vf12, $vf4, $vf12w
    /* 112C28 00211CA8 10008420 */  addi       $4, $4, 0x10 /* handwritten instruction */
    /* 112C2C 00211CAC 3C688D4A */  .word      0x4A8D683C    # vaddax.y   ACC, $vf13, $vf13x
    /* 112C30 00211CB0 BE208D4A */  .word      0x4A8D20BE    # vmaddaz.y  ACC, $vf4, $vf13z
    /* 112C34 00211CB4 4B238D4A */  vmaddw.y   $vf13, $vf4, $vf13w
    /* 112C38 00211CB8 00000000 */  nop
    /* 112C3C 00211CBC BC51E64B */  .word      0x4BE651BC    # vmulax.xyzw ACC, $vf10, $vf6x
    /* 112C40 00211CC0 00602748 */  qmfc2.ni   $7, $vf12
    /* 112C44 00211CC4 885AE74B */  vmaddx.xyzw $vf10, $vf11, $vf7x
    /* 112C48 00211CC8 80008C21 */  addi       $12, $12, 0x80 /* handwritten instruction */
    /* 112C4C 00211CCC C87AE74B */  vmaddx.xyzw $vf11, $vf15, $vf7x
    /* 112C50 00211CD0 00682848 */  qmfc2.ni   $8, $vf13
    /* 112C54 00211CD4 0300E304 */  bgezl      $7, .L00211CE4
    /* 112C58 00211CD8 6A42E84B */   vmul.xyzw $vf9, $vf8, $vf8
    /* 112C5C 00211CDC 3C4BE84B */  vmove.xyzw $vf8, $vf9
    /* 112C60 00211CE0 6A4AE94B */  vmul.xyzw  $vf9, $vf9, $vf9
.align 2
  .L00211CE4:
    /* 112C64 00211CE4 03000305 */  bgezl      $8, .L00211CF4
    /* 112C68 00211CE8 EA52EA4B */   vmul.xyzw $vf11, $vf10, $vf10
    /* 112C6C 00211CEC 3C5BEA4B */  vmove.xyzw $vf10, $vf11
    /* 112C70 00211CF0 EA5AEB4B */  vmul.xyzw  $vf11, $vf11, $vf11
.align 2
  .L00211CF4:
    /* 112C74 00211CF4 3D48094B */  .word      0x4B09483D    # vadday.x   ACC, $vf9, $vf9y
    /* 112C78 00211CF8 BE20094B */  .word      0x4B0920BE    # vmaddaz.x  ACC, $vf4, $vf9z
    /* 112C7C 00211CFC 4B22094B */  vmaddw.x   $vf9, $vf4, $vf9w
    /* 112C80 00211D00 3D580B4B */  .word      0x4B0B583D    # vadday.x   ACC, $vf11, $vf11y
    /* 112C84 00211D04 BE200B4B */  .word      0x4B0B20BE    # vmaddaz.x  ACC, $vf4, $vf11z
    /* 112C88 00211D08 CB220B4B */  vmaddw.x   $vf11, $vf4, $vf11w
    /* 112C8C 00211D0C BE03694A */  .word      0x4A6903BE    # vrsqrt     Q, $vf0w, $vf9x
    /* 112C90 00211D10 BF03004A */  .word      0x4A0003BF    # vwaitq
    /* 112C94 00211D14 1C42E04B */  .word      0x4BE0421C    # vmulq.xyzw $vf8, $vf8, Q
    /* 112C98 00211D18 BE036B4A */  .word      0x4A6B03BE    # vrsqrt     Q, $vf0w, $vf11x
    /* 112C9C 00211D1C BF03004A */  .word      0x4A0003BF    # vwaitq
    /* 112CA0 00211D20 9C52E04B */  .word      0x4BE0529C    # vmulq.xyzw $vf10, $vf10, Q
    /* 112CA4 00211D24 000088F9 */  sqc2       $vf8, 0x0($12)
    /* 112CA8 00211D28 00000000 */  nop
    /* 112CAC 00211D2C 07470808 */  j          func_00211C1C
    /* 112CB0 00211D30 40008AF9 */   sqc2      $vf10, 0x40($12)
.align 2
  .L00211D34:
    /* 112CB4 00211D34 7F002293 */  lbu        $2, 0x7F($25)
    /* 112CB8 00211D38 80FFCC21 */  addi       $12, $14, -0x80 /* handwritten instruction */
.align 2
  alabel func_00211D3C
    /* 112CBC 00211D3C 21004018 */  blez       $2, .L00211DC4
    /* 112CC0 00211D40 00002778 */   lq        $7, 0x0($1)
    /* 112CC4 00211D44 FEFF4220 */  addi       $2, $2, -0x2 /* handwritten instruction */
    /* 112CC8 00211D48 00008878 */  lq         $8, 0x0($4)
    /* 112CCC 00211D4C 882DE070 */  pextlh     $5, $7, $0
    /* 112CD0 00211D50 0000A048 */  qmtc2.ni   $0, $vf0
    /* 112CD4 00211D54 3F2C0570 */  psraw      $5, $5, 16
    /* 112CD8 00211D58 0000A048 */  qmtc2.ni   $0, $vf0
    /* 112CDC 00211D5C 88350071 */  pextlh     $6, $8, $0
    /* 112CE0 00211D60 0040A548 */  qmtc2.ni   $5, $vf8
    /* 112CE4 00211D64 3F340670 */  psraw      $6, $6, 16
    /* 112CE8 00211D68 0000A048 */  qmtc2.ni   $0, $vf0
    /* 112CEC 00211D6C A83DE070 */  pextuh     $7, $7, $0
    /* 112CF0 00211D70 0048A648 */  qmtc2.ni   $6, $vf9
    /* 112CF4 00211D74 3F3C0770 */  psraw      $7, $7, 16
    /* 112CF8 00211D78 A8450071 */  pextuh     $8, $8, $0
    /* 112CFC 00211D7C 3F440870 */  psraw      $8, $8, 16
    /* 112D00 00211D80 0050A748 */  qmtc2.ni   $7, $vf10
    /* 112D04 00211D84 0058A848 */  qmtc2.ni   $8, $vf11
    /* 112D08 00211D88 00000000 */  nop
    /* 112D0C 00211D8C 3F41E84B */  vitof15.xyzw $vf8, $vf8
    /* 112D10 00211D90 80008C21 */  addi       $12, $12, 0x80 /* handwritten instruction */
    /* 112D14 00211D94 3F49E94B */  vitof15.xyzw $vf9, $vf9
    /* 112D18 00211D98 10002120 */  addi       $1, $1, 0x10 /* handwritten instruction */
    /* 112D1C 00211D9C 3F51EA4B */  vitof15.xyzw $vf10, $vf10
    /* 112D20 00211DA0 3F59EB4B */  vitof15.xyzw $vf11, $vf11
    /* 112D24 00211DA4 BC41E64B */  .word      0x4BE641BC    # vmulax.xyzw ACC, $vf8, $vf6x
    /* 112D28 00211DA8 084AE74B */  vmaddx.xyzw $vf8, $vf9, $vf7x
    /* 112D2C 00211DAC BC51E64B */  .word      0x4BE651BC    # vmulax.xyzw ACC, $vf10, $vf6x
    /* 112D30 00211DB0 885AE74B */  vmaddx.xyzw $vf10, $vf11, $vf7x
    /* 112D34 00211DB4 000088F9 */  sqc2       $vf8, 0x0($12)
    /* 112D38 00211DB8 10008420 */  addi       $4, $4, 0x10 /* handwritten instruction */
    /* 112D3C 00211DBC 4F470808 */  j          func_00211D3C
    /* 112D40 00211DC0 40008AF9 */   sqc2      $vf10, 0x40($12)
.align 2
  .L00211DC4:
    /* 112D44 00211DC4 B4470808 */  j          func_00211ED0
    /* 112D48 00211DC8 00000000 */   nop
.align 2
  .L00211DCC:
    /* 112D4C 00211DCC C0600A00 */  sll        $12, $10, 3
    /* 112D50 00211DD0 20608101 */  add        $12, $12, $1 /* handwritten instruction */
    /* 112D54 00211DD4 5802E04B */  vmulx.xyzw $vf9, $vf0, $vf0x
.align 2
  alabel func_00211DD8
    /* 112D58 00211DD8 13004010 */  beqz       $2, .L00211E28
    /* 112D5C 00211DDC 000087DD */   ld        $7, 0x0($12)
    /* 112D60 00211DE0 06008891 */  lbu        $8, 0x6($12)
    /* 112D64 00211DE4 FFFF4220 */  addi       $2, $2, -0x1 /* handwritten instruction */
    /* 112D68 00211DE8 884DE070 */  pextlh     $9, $7, $0
    /* 112D6C 00211DEC 7E4B0970 */  psrlw      $9, $9, 13
    /* 112D70 00211DF0 0040A948 */  qmtc2.ni   $9, $vf8
    /* 112D74 00211DF4 08008C21 */  addi       $12, $12, 0x8 /* handwritten instruction */
    /* 112D78 00211DF8 F7FFE104 */  bgez       $7, func_00211DD8
    /* 112D7C 00211DFC 80490800 */   sll       $9, $8, 6
    /* 112D80 00211E00 3F41C94B */  vitof15.xyz $vf9, $vf8
    /* 112D84 00211E04 20482E01 */  add        $9, $9, $14 /* handwritten instruction */
    /* 112D88 00211E08 BE3F0700 */  dsrl32     $7, $7, 30
    /* 112D8C 00211E0C 00000000 */  nop
    /* 112D90 00211E10 FFFFE720 */  addi       $7, $7, -0x1 /* handwritten instruction */
    /* 112D94 00211E14 00000000 */  nop
    /* 112D98 00211E18 100029F9 */  sqc2       $vf9, 0x10($9)
    /* 112D9C 00211E1C 00000000 */  nop
    /* 112DA0 00211E20 76470808 */  j          func_00211DD8
    /* 112DA4 00211E24 1C0027AD */   sw        $7, 0x1C($9)
.align 2
  .L00211E28:
    /* 112DA8 00211E28 2D48C001 */  daddu      $9, $14, $0
    /* 112DAC 00211E2C 3C03294A */  vmove.w    $vf9, $vf0
.align 2
  alabel func_00211E30
    /* 112DB0 00211E30 11006010 */  beqz       $3, .L00211E78
    /* 112DB4 00211E34 000087DD */   ld        $7, 0x0($12)
    /* 112DB8 00211E38 06008891 */  lbu        $8, 0x6($12)
    /* 112DBC 00211E3C FFFF6320 */  addi       $3, $3, -0x1 /* handwritten instruction */
    /* 112DC0 00211E40 883DE070 */  pextlh     $7, $7, $0
    /* 112DC4 00211E44 3F3C0770 */  psraw      $7, $7, 16
    /* 112DC8 00211E48 0040A748 */  qmtc2.ni   $7, $vf8
    /* 112DCC 00211E4C 80410800 */  sll        $8, $8, 6
    /* 112DD0 00211E50 08008C21 */  addi       $12, $12, 0x8 /* handwritten instruction */
    /* 112DD4 00211E54 20400E01 */  add        $8, $8, $14 /* handwritten instruction */
    /* 112DD8 00211E58 3C41C94B */  vitof0.xyz $vf9, $vf8
    /* 112DDC 00211E5C 2C00078D */  lw         $7, 0x2C($8)
    /* 112DE0 00211E60 300000F9 */  sqc2       $vf0, 0x30($8)
    /* 112DE4 00211E64 00000000 */  nop
    /* 112DE8 00211E68 200009F9 */  sqc2       $vf9, 0x20($8)
    /* 112DEC 00211E6C 00000000 */  nop
    /* 112DF0 00211E70 8C470808 */  j          func_00211E30
    /* 112DF4 00211E74 2C0007AD */   sw        $7, 0x2C($8)
.align 2
  .L00211E78:
    /* 112DF8 00211E78 7F002293 */  lbu        $2, 0x7F($25)
    /* 112DFC 00211E7C 80FFCC21 */  addi       $12, $14, -0x80 /* handwritten instruction */
.align 2
  alabel func_00211E80
    /* 112E00 00211E80 11004018 */  blez       $2, .L00211EC8
    /* 112E04 00211E84 00002778 */   lq        $7, 0x0($1)
    /* 112E08 00211E88 FEFF4220 */  addi       $2, $2, -0x2 /* handwritten instruction */
    /* 112E0C 00211E8C 80008C21 */  addi       $12, $12, 0x80 /* handwritten instruction */
    /* 112E10 00211E90 882DE070 */  pextlh     $5, $7, $0
    /* 112E14 00211E94 0000A048 */  qmtc2.ni   $0, $vf0
    /* 112E18 00211E98 3F2C0570 */  psraw      $5, $5, 16
    /* 112E1C 00211E9C 0000A048 */  qmtc2.ni   $0, $vf0
    /* 112E20 00211EA0 A83DE070 */  pextuh     $7, $7, $0
    /* 112E24 00211EA4 0040A548 */  qmtc2.ni   $5, $vf8
    /* 112E28 00211EA8 3F3C0770 */  psraw      $7, $7, 16
    /* 112E2C 00211EAC 0050A748 */  qmtc2.ni   $7, $vf10
    /* 112E30 00211EB0 3F41E84B */  vitof15.xyzw $vf8, $vf8
    /* 112E34 00211EB4 3F51EA4B */  vitof15.xyzw $vf10, $vf10
    /* 112E38 00211EB8 000088F9 */  sqc2       $vf8, 0x0($12)
    /* 112E3C 00211EBC 10002120 */  addi       $1, $1, 0x10 /* handwritten instruction */
    /* 112E40 00211EC0 A0470808 */  j          func_00211E80
    /* 112E44 00211EC4 40008AF9 */   sqc2      $vf10, 0x40($12)
.align 2
  .L00211EC8:
    /* 112E48 00211EC8 B4470808 */  j          func_00211ED0
    /* 112E4C 00211ECC 00000000 */   nop
.align 2
  alabel func_00211ED0
    /* 112E50 00211ED0 60000F8F */  lw         $15, 0x60($24)
    /* 112E54 00211ED4 00000000 */  nop
.align 2
  .L00211ED8:
    /* 112E58 00211ED8 4E00E011 */  beqz       $15, .L00212014
    /* 112E5C 00211EDC 0010013C */   lui       $1, (0x1000D400 >> 16)
    /* 112E60 00211EE0 0200EE95 */  lhu        $14, 0x2($15)
    /* 112E64 00211EE4 00D42134 */  ori        $1, $1, (0x1000D400 & 0xFFFF)
    /* 112E68 00211EE8 1000ED8D */  lw         $13, 0x10($15)
    /* 112E6C 00211EEC 2010CE01 */  add        $2, $14, $14 /* handwritten instruction */
    /* 112E70 00211EF0 10002DAC */  sw         $13, 0x10($1)
    /* 112E74 00211EF4 2070C201 */  add        $14, $14, $2 /* handwritten instruction */
    /* 112E78 00211EF8 20002EAC */  sw         $14, 0x20($1)
    /* 112E7C 00211EFC 00200220 */  addi       $2, $0, 0x2000 /* handwritten instruction */
    /* 112E80 00211F00 800022AC */  sw         $2, 0x80($1)
    /* 112E84 00211F04 00010220 */  addi       $2, $0, 0x100 /* handwritten instruction */
    /* 112E88 00211F08 000022AC */  sw         $2, 0x0($1)
    /* 112E8C 00211F0C 00710E00 */  sll        $14, $14, 4
    /* 112E90 00211F10 0800E28D */  lw         $2, 0x8($15)
    /* 112E94 00211F14 00700C3C */  lui        $12, (0x70002000 >> 16)
    /* 112E98 00211F18 00208D21 */  addi       $13, $12, (0x70002000 & 0xFFFF) /* handwritten instruction */
    /* 112E9C 00211F1C 2070CD01 */  add        $14, $14, $13 /* handwritten instruction */
    /* 112EA0 00211F20 0038A248 */  qmtc2.ni   $2, $vf7
    /* 112EA4 00211F24 1C00EF8D */  lw         $15, 0x1C($15)
    /* 112EA8 00211F28 AC21074B */  vsub.x     $vf6, $vf4, $vf7
    /* 112EAC 00211F2C 00000000 */  nop
.align 2
  .L00211F30:
    /* 112EB0 00211F30 0000228C */  lw         $2, 0x0($1)
    /* 112EB4 00211F34 00014230 */  andi       $2, $2, 0x100
    /* 112EB8 00211F38 00000000 */  nop
    /* 112EBC 00211F3C 00000000 */  nop
    /* 112EC0 00211F40 00000000 */  nop
    /* 112EC4 00211F44 FAFF4014 */  bnez       $2, .L00211F30
    /* 112EC8 00211F48 00000000 */   nop
.align 2
  .L00211F4C:
    /* 112ECC 00211F4C 2C00A18D */  lw         $1, 0x2C($13)
    /* 112ED0 00211F50 3000AD21 */  addi       $13, $13, 0x30 /* handwritten instruction */
    /* 112ED4 00211F54 D0FFADD9 */  lqc2       $vf13, -0x30($13)
    /* 112ED8 00211F58 E0FFAED9 */  lqc2       $vf14, -0x20($13)
    /* 112EDC 00211F5C F0FFAFD9 */  lqc2       $vf15, -0x10($13)
    /* 112EE0 00211F60 00002AD8 */  lqc2       $vf10, 0x0($1)
    /* 112EE4 00211F64 10002BD8 */  lqc2       $vf11, 0x10($1)
    /* 112EE8 00211F68 20002CD8 */  lqc2       $vf12, 0x20($1)
    /* 112EEC 00211F6C 9852E64B */  vmulx.xyzw $vf10, $vf10, $vf6x
    /* 112EF0 00211F70 586BE74B */  vmulx.xyzw $vf13, $vf13, $vf7x
    /* 112EF4 00211F74 D85AC64B */  vmulx.xyz  $vf11, $vf11, $vf6x
    /* 112EF8 00211F78 9873C74B */  vmulx.xyz  $vf14, $vf14, $vf7x
    /* 112EFC 00211F7C 1863C64B */  vmulx.xyz  $vf12, $vf12, $vf6x
    /* 112F00 00211F80 D87BC74B */  vmulx.xyz  $vf15, $vf15, $vf7x
    /* 112F04 00211F84 2854ED4B */  vadd.xyzw  $vf16, $vf10, $vf13
    /* 112F08 00211F88 AA54ED4B */  vmul.xyzw  $vf18, $vf10, $vf13
    /* 112F0C 00211F8C E85ACE4B */  vadd.xyz   $vf11, $vf11, $vf14
    /* 112F10 00211F90 2863CF4B */  vadd.xyz   $vf12, $vf12, $vf15
    /* 112F14 00211F94 6A84F04B */  vmul.xyzw  $vf17, $vf16, $vf16
    /* 112F18 00211F98 3C90924A */  .word      0x4A92903C    # vaddax.y   ACC, $vf18, $vf18x
    /* 112F1C 00211F9C BE20924A */  .word      0x4A9220BE    # vmaddaz.y  ACC, $vf4, $vf18z
    /* 112F20 00211FA0 8B24924A */  vmaddw.y   $vf18, $vf4, $vf18w
    /* 112F24 00211FA4 3D88114B */  .word      0x4B11883D    # vadday.x   ACC, $vf17, $vf17y
    /* 112F28 00211FA8 BE20114B */  .word      0x4B1120BE    # vmaddaz.x  ACC, $vf4, $vf17z
    /* 112F2C 00211FAC 4B24114B */  vmaddw.x   $vf17, $vf4, $vf17w
    /* 112F30 00211FB0 00902248 */  qmfc2.ni   $2, $vf18
    /* 112F34 00211FB4 07004104 */  bgez       $2, .L00211FD4
    /* 112F38 00211FB8 00000000 */   nop
    /* 112F3C 00211FBC 2C54ED4B */  vsub.xyzw  $vf16, $vf10, $vf13
    /* 112F40 00211FC0 6A84F04B */  vmul.xyzw  $vf17, $vf16, $vf16
    /* 112F44 00211FC4 3D88114B */  .word      0x4B11883D    # vadday.x   ACC, $vf17, $vf17y
    /* 112F48 00211FC8 BE20114B */  .word      0x4B1120BE    # vmaddaz.x  ACC, $vf4, $vf17z
    /* 112F4C 00211FCC 4B24114B */  vmaddw.x   $vf17, $vf4, $vf17w
    /* 112F50 00211FD0 00000000 */  nop
.align 2
  .L00211FD4:
    /* 112F54 00211FD4 BE03714A */  .word      0x4A7103BE    # vrsqrt     Q, $vf0w, $vf17x
    /* 112F58 00211FD8 00000000 */  nop
    /* 112F5C 00211FDC 10002BF8 */  sqc2       $vf11, 0x10($1)
    /* 112F60 00211FE0 20002CF8 */  sqc2       $vf12, 0x20($1)
    /* 112F64 00211FE4 1C00228C */  lw         $2, 0x1C($1)
    /* 112F68 00211FE8 ECFFA38D */  lw         $3, -0x14($13)
    /* 112F6C 00211FEC 03004014 */  bnez       $2, .L00211FFC
    /* 112F70 00211FF0 00000000 */   nop
    /* 112F74 00211FF4 1C0023AC */  sw         $3, 0x1C($1)
    /* 112F78 00211FF8 00000000 */  nop
.align 2
  .L00211FFC:
    /* 112F7C 00211FFC BF03004A */  .word      0x4A0003BF    # vwaitq
    /* 112F80 00212000 9C82E04B */  .word      0x4BE0829C    # vmulq.xyzw $vf10, $vf16, Q
    /* 112F84 00212004 D1FFAE15 */  bne        $13, $14, .L00211F4C
    /* 112F88 00212008 00002AF8 */   sqc2      $vf10, 0x0($1)
    /* 112F8C 0021200C B2FFE015 */  bnez       $15, .L00211ED8
    /* 112F90 00212010 00000000 */   nop
.align 2
  .L00212014:
    /* 112F94 00212014 64000F8F */  lw         $15, 0x64($24)
    /* 112F98 00212018 00000000 */  nop
.align 2
  .L0021201C:
    /* 112F9C 0021201C 4100E011 */  beqz       $15, .L00212124
    /* 112FA0 00212020 0000E321 */   addi      $3, $15, 0x0 /* handwritten instruction */
    /* 112FA4 00212024 0400618C */  lw         $1, 0x4($3)
    /* 112FA8 00212028 03006290 */  lbu        $2, 0x3($3)
    /* 112FAC 0021202C 000026D8 */  lqc2       $vf6, 0x0($1)
    /* 112FB0 00212030 100028D8 */  lqc2       $vf8, 0x10($1)
    /* 112FB4 00212034 20002AD8 */  lqc2       $vf10, 0x20($1)
    /* 112FB8 00212038 100067D8 */  lqc2       $vf7, 0x10($3)
    /* 112FBC 0021203C 200069D8 */  lqc2       $vf9, 0x20($3)
    /* 112FC0 00212040 30006BD8 */  lqc2       $vf11, 0x30($3)
    /* 112FC4 00212044 0F004014 */  bnez       $2, .L00212084
    /* 112FC8 00212048 08006F8C */   lw        $15, 0x8($3)
    /* 112FCC 0021204C 2A3B264A */  vmul.w     $vf12, $vf7, $vf6
    /* 112FD0 00212050 6A3BC64B */  vmul.xyz   $vf13, $vf7, $vf6
    /* 112FD4 00212054 9B3BC64B */  vmulw.xyz  $vf14, $vf7, $vf6w
    /* 112FD8 00212058 DB33C74B */  vmulw.xyz  $vf15, $vf6, $vf7w
    /* 112FDC 0021205C FE32C74B */  .word      0x4BC732FE    # vopmula.xyz ACC, $vf6, $vf7
    /* 112FE0 00212060 2E3CC64B */  .word      0x4BC63C2E    # vopmsub.xyz $vf16, $vf7, $vf6
    /* 112FE4 00212064 3D680D4B */  .word      0x4B0D683D    # vadday.x   ACC, $vf13, $vf13y
    /* 112FE8 00212068 4A230D4B */  vmaddz.x   $vf13, $vf4, $vf13z
    /* 112FEC 0021206C A871CF4B */  vadd.xyz   $vf6, $vf14, $vf15
    /* 112FF0 00212070 A831D04B */  vadd.xyz   $vf6, $vf6, $vf16
    /* 112FF4 00212074 84612D4A */  vsubx.w    $vf6, $vf12, $vf13x
    /* 112FF8 00212078 2A42C94B */  vmul.xyz   $vf8, $vf8, $vf9
    /* 112FFC 0021207C 43480808 */  j          func_0021210C
    /* 113000 00212080 A852CB4B */   vadd.xyz  $vf10, $vf10, $vf11
.align 2
  .L00212084:
    /* 113004 00212084 0C00638C */  lw         $3, 0xC($3)
    /* 113008 00212088 0090A348 */  qmtc2.ni   $3, $vf18
    /* 11300C 0021208C 8404324A */  vsubx.w    $vf18, $vf0, $vf18x
    /* 113010 00212090 00000000 */  nop
    /* 113014 00212094 9B31F24B */  vmulw.xyzw $vf6, $vf6, $vf18w
    /* 113018 00212098 D839F24B */  vmulx.xyzw $vf7, $vf7, $vf18x
    /* 11301C 0021209C 1B42D24B */  vmulw.xyz  $vf8, $vf8, $vf18w
    /* 113020 002120A0 584AD24B */  vmulx.xyz  $vf9, $vf9, $vf18x
    /* 113024 002120A4 9B52D24B */  vmulw.xyz  $vf10, $vf10, $vf18w
    /* 113028 002120A8 D85AD24B */  vmulx.xyz  $vf11, $vf11, $vf18x
    /* 11302C 002120AC A833E74B */  vadd.xyzw  $vf14, $vf6, $vf7
    /* 113030 002120B0 2A34E74B */  vmul.xyzw  $vf16, $vf6, $vf7
    /* 113034 002120B4 2842C94B */  vadd.xyz   $vf8, $vf8, $vf9
    /* 113038 002120B8 A852CB4B */  vadd.xyz   $vf10, $vf10, $vf11
    /* 11303C 002120BC EA73EE4B */  vmul.xyzw  $vf15, $vf14, $vf14
    /* 113040 002120C0 3C80904A */  .word      0x4A90803C    # vaddax.y   ACC, $vf16, $vf16x
    /* 113044 002120C4 BE20904A */  .word      0x4A9020BE    # vmaddaz.y  ACC, $vf4, $vf16z
    /* 113048 002120C8 0B24904A */  vmaddw.y   $vf16, $vf4, $vf16w
    /* 11304C 002120CC 3D780F4B */  .word      0x4B0F783D    # vadday.x   ACC, $vf15, $vf15y
    /* 113050 002120D0 BE200F4B */  .word      0x4B0F20BE    # vmaddaz.x  ACC, $vf4, $vf15z
    /* 113054 002120D4 CB230F4B */  vmaddw.x   $vf15, $vf4, $vf15w
    /* 113058 002120D8 00802248 */  qmfc2.ni   $2, $vf16
    /* 11305C 002120DC 07004104 */  bgez       $2, .L002120FC
    /* 113060 002120E0 00000000 */   nop
    /* 113064 002120E4 AC33E74B */  vsub.xyzw  $vf14, $vf6, $vf7
    /* 113068 002120E8 EA73EE4B */  vmul.xyzw  $vf15, $vf14, $vf14
    /* 11306C 002120EC 3D780F4B */  .word      0x4B0F783D    # vadday.x   ACC, $vf15, $vf15y
    /* 113070 002120F0 BE200F4B */  .word      0x4B0F20BE    # vmaddaz.x  ACC, $vf4, $vf15z
    /* 113074 002120F4 CB230F4B */  vmaddw.x   $vf15, $vf4, $vf15w
    /* 113078 002120F8 00000000 */  nop
.align 2
  .L002120FC:
    /* 11307C 002120FC BE036F4A */  .word      0x4A6F03BE    # vrsqrt     Q, $vf0w, $vf15x
    /* 113080 00212100 00000000 */  nop
    /* 113084 00212104 BF03004A */  .word      0x4A0003BF    # vwaitq
    /* 113088 00212108 9C71E04B */  .word      0x4BE0719C    # vmulq.xyzw $vf6, $vf14, Q
.align 2
  alabel func_0021210C
    /* 11308C 0021210C 000026F8 */  sqc2       $vf6, 0x0($1)
    /* 113090 00212110 100028F8 */  sqc2       $vf8, 0x10($1)
    /* 113094 00212114 20002AF8 */  sqc2       $vf10, 0x20($1)
    /* 113098 00212118 01000220 */  addi       $2, $0, 0x1 /* handwritten instruction */
    /* 11309C 0021211C BFFFE015 */  bnez       $15, .L0021201C
    /* 1130A0 00212120 1C0022AC */   sw        $2, 0x1C($1)
.align 2
  .L00212124:
    /* 1130A4 00212124 7F002C83 */  lb         $12, 0x7F($25)
    /* 1130A8 00212128 00700E3C */  lui        $14, (0x70000040 >> 16)
    /* 1130AC 0021212C 80610C00 */  sll        $12, $12, 6
    /* 1130B0 00212130 2D38C001 */  daddu      $7, $14, $0
    /* 1130B4 00212134 20608E01 */  add        $12, $12, $14 /* handwritten instruction */
    /* 1130B8 00212138 2D282003 */  daddu      $5, $25, $0
.align 2
  .L0021213C:
    /* 1130BC 0021213C 0000A680 */  lb         $6, 0x0($5)
    /* 1130C0 00212140 0100A520 */  addi       $5, $5, 0x1 /* handwritten instruction */
    /* 1130C4 00212144 0000EAD8 */  lqc2       $vf10, (0x70000000 & 0xFFFF)($7)
    /* 1130C8 00212148 4000E720 */  addi       $7, $7, (0x70000040 & 0xFFFF) /* handwritten instruction */
    /* 1130CC 0021214C 00000000 */  nop
    /* 1130D0 00212150 FAFFC010 */  beqz       $6, .L0021213C
    /* 1130D4 00212154 00000000 */   nop
    /* 1130D8 00212158 3C0BF04B */  vmove.xyzw $vf16, $vf1
    /* 1130DC 0021215C E852EA4B */  vadd.xyzw  $vf11, $vf10, $vf10
    /* 1130E0 00212160 3C13F14B */  vmove.xyzw $vf17, $vf2
    /* 1130E4 00212164 3C1BF24B */  vmove.xyzw $vf18, $vf3
    /* 1130E8 00212168 3C03F34B */  vmove.xyzw $vf19, $vf0
    /* 1130EC 0021216C 1B5BCA4B */  vmulw.xyz  $vf12, $vf11, $vf10w
    /* 1130F0 00212170 585BCA4B */  vmulx.xyz  $vf13, $vf11, $vf10x
    /* 1130F4 00212174 995BCA4A */  vmuly.yz   $vf14, $vf11, $vf10y
    /* 1130F8 00212178 DA5B4A4A */  vmulz.z    $vf15, $vf11, $vf10z
    /* 1130FC 0021217C 42040C4B */  vaddz.x    $vf17, $vf0, $vf12z
    /* 113100 00212180 85040C4B */  vsuby.x    $vf18, $vf0, $vf12y
    /* 113104 00212184 80048C4A */  vaddx.y    $vf18, $vf0, $vf12x
    /* 113108 00212188 05840E4B */  vsuby.x    $vf16, $vf16, $vf14y
    /* 11310C 0021218C 448C8D4A */  vsubx.y    $vf17, $vf17, $vf13x
    /* 113110 00212190 84944D4A */  vsubx.z    $vf18, $vf18, $vf13x
    /* 113114 00212194 066C8C4A */  vsubz.y    $vf16, $vf13, $vf12z
    /* 113118 00212198 016C4C4A */  vaddy.z    $vf16, $vf13, $vf12y
    /* 11311C 0021219C 44744C4A */  vsubx.z    $vf17, $vf14, $vf12x
    /* 113120 002121A0 418C0D4B */  vaddy.x    $vf17, $vf17, $vf13y
    /* 113124 002121A4 82940D4B */  vaddz.x    $vf18, $vf18, $vf13z
    /* 113128 002121A8 82948E4A */  vaddz.y    $vf18, $vf18, $vf14z
    /* 11312C 002121AC 06840F4B */  vsubz.x    $vf16, $vf16, $vf15z
    /* 113130 002121B0 DCFFE88C */  lw         $8, -0x24($7)
    /* 113134 002121B4 468C8F4A */  vsubz.y    $vf17, $vf17, $vf15z
    /* 113138 002121B8 ECFFE98C */  lw         $9, -0x14($7)
    /* 11313C 002121BC 85944E4A */  vsuby.z    $vf18, $vf18, $vf14y
    /* 113140 002121C0 D0FFE8D8 */  lqc2       $vf8, -0x30($7)
    /* 113144 002121C4 05000011 */  beqz       $8, .L002121DC
    /* 113148 002121C8 E0FFE9D8 */   lqc2      $vf9, -0x20($7)
    /* 11314C 002121CC 1884C84B */  vmulx.xyz  $vf16, $vf16, $vf8x
    /* 113150 002121D0 598CC84B */  vmuly.xyz  $vf17, $vf17, $vf8y
    /* 113154 002121D4 9A94C84B */  vmulz.xyz  $vf18, $vf18, $vf8z
    /* 113158 002121D8 00000000 */  nop
.align 2
  .L002121DC:
    /* 11315C 002121DC 05002015 */  bnez       $9, .L002121F4
    /* 113160 002121E0 3C0BEC4B */   vmove.xyzw $vf12, $vf1
    /* 113164 002121E4 3C13ED4B */  vmove.xyzw $vf13, $vf2
    /* 113168 002121E8 3C1BEE4B */  vmove.xyzw $vf14, $vf3
    /* 11316C 002121EC 81480808 */  j          func_00212204
    /* 113170 002121F0 3C03EF4B */   vmove.xyzw $vf15, $vf0
.align 2
  .L002121F4:
    /* 113174 002121F4 00002CD9 */  lqc2       $vf12, 0x0($9)
    /* 113178 002121F8 10002DD9 */  lqc2       $vf13, 0x10($9)
    /* 11317C 002121FC 20002ED9 */  lqc2       $vf14, 0x20($9)
    /* 113180 00212200 30002FD9 */  lqc2       $vf15, 0x30($9)
.align 2
  alabel func_00212204
    /* 113184 00212204 E89CC94B */  vadd.xyz   $vf19, $vf19, $vf9
    /* 113188 00212208 BC61F04B */  .word      0x4BF061BC    # vmulax.xyzw ACC, $vf12, $vf16x
    /* 11318C 0021220C BD68F04B */  .word      0x4BF068BD    # vmadday.xyzw ACC, $vf13, $vf16y
    /* 113190 00212210 0A75F04B */  vmaddz.xyzw $vf20, $vf14, $vf16z
    /* 113194 00212214 BC61F14B */  .word      0x4BF161BC    # vmulax.xyzw ACC, $vf12, $vf17x
    /* 113198 00212218 BD68F14B */  .word      0x4BF168BD    # vmadday.xyzw ACC, $vf13, $vf17y
    /* 11319C 0021221C 4A75F14B */  vmaddz.xyzw $vf21, $vf14, $vf17z
    /* 1131A0 00212220 BC61F24B */  .word      0x4BF261BC    # vmulax.xyzw ACC, $vf12, $vf18x
    /* 1131A4 00212224 BD68F24B */  .word      0x4BF268BD    # vmadday.xyzw ACC, $vf13, $vf18y
    /* 1131A8 00212228 8A75F24B */  vmaddz.xyzw $vf22, $vf14, $vf18z
    /* 1131AC 0021222C BC61F34B */  .word      0x4BF361BC    # vmulax.xyzw ACC, $vf12, $vf19x
    /* 1131B0 00212230 BD68F34B */  .word      0x4BF368BD    # vmadday.xyzw ACC, $vf13, $vf19y
    /* 1131B4 00212234 BE70F34B */  .word      0x4BF370BE    # vmaddaz.xyzw ACC, $vf14, $vf19z
    /* 1131B8 00212238 CB7DE04B */  vmaddw.xyzw $vf23, $vf15, $vf0w
    /* 1131BC 0021223C C0FFF4F8 */  sqc2       $vf20, -0x40($7)
    /* 1131C0 00212240 D0FFF5F8 */  sqc2       $vf21, -0x30($7)
    /* 1131C4 00212244 E0FFF6F8 */  sqc2       $vf22, -0x20($7)
    /* 1131C8 00212248 BCFFEC14 */  bne        $7, $12, .L0021213C
    /* 1131CC 0021224C F0FFF7F8 */   sqc2      $vf23, -0x10($7)
.align 2
  .L00212250:
    /* 1131D0 00212250 0800E003 */  jr         $31
    /* 1131D4 00212254 00000000 */   nop
endlabel func_00211808
