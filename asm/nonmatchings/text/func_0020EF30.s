.align 3
/* Handwritten function */
nonmatching func_0020EF30, 0xD04

glabel func_0020EF30
    /* 10FEB0 0020EF30 0000A720 */  addi       $7, $5, 0x0 /* handwritten instruction */
    /* 10FEB4 0020EF34 00E0A548 */  qmtc2.ni   $5, $vf28
    /* 10FEB8 0020EF38 10008A84 */  lh         $10, 0x10($4)
    /* 10FEBC 0020EF3C 0400868C */  lw         $6, 0x4($4)
    /* 10FEC0 0020EF40 30034011 */  beqz       $10, .L0020FC04
    /* 10FEC4 0020EF44 00300B3C */   lui       $11, (0x30000000 >> 16)
    /* 10FEC8 0020EF48 25606A01 */  or         $12, $11, $10
    /* 10FECC 0020EF4C C01FE720 */  addi       $7, $7, 0x1FC0 /* handwritten instruction */
    /* 10FED0 0020EF50 0000ECAC */  sw         $12, 0x0($7)
    /* 10FED4 0020EF54 00008F20 */  addi       $15, $4, 0x0 /* handwritten instruction */
    /* 10FED8 0020EF58 1800ED8D */  lw         $13, 0x18($15)
    /* 10FEDC 0020EF5C A830C070 */  pceqw      $6, $6, $0
    /* 10FEE0 0020EF60 2400E98D */  lw         $9, 0x24($15)
    /* 10FEE4 0020EF64 00700E3C */  lui        $14, (0x70000000 >> 16)
    /* 10FEE8 0020EF68 0400EDAC */  sw         $13, 0x4($7)
    /* 10FEEC 0020EF6C 0010083C */  lui        $8, (0x1000D400 >> 16)
    /* 10FEF0 0020EF70 00D40835 */  ori        $8, $8, (0x1000D400 & 0xFFFF)
    /* 10FEF4 0020EF74 2730C000 */  not        $6, $6
    /* 10FEF8 0020EF78 0800F98D */  lw         $25, 0x8($15)
    /* 10FEFC 0020EF7C 25086901 */  or         $1, $11, $9
    /* 10FF00 0020EF80 0C00F88D */  lw         $24, 0xC($15)
    /* 10FF04 0020EF84 FFFFC634 */  ori        $6, $6, 0xFFFF
    /* 10FF08 0020EF88 24082600 */  and        $1, $1, $6
    /* 10FF0C 0020EF8C 2000ED8D */  lw         $13, 0x20($15)
    /* 10FF10 0020EF90 00E8B248 */  qmtc2.ni   $18, $vf29
    /* 10FF14 0020EF94 1200F285 */  lh         $18, 0x12($15)
    /* 10FF18 0020EF98 1000E1AC */  sw         $1, 0x10($7)
    /* 10FF1C 0020EF9C 5800E04B */  vmulx.xyzw $vf1, $vf0, $vf0x
    /* 10FF20 0020EFA0 1400EDAC */  sw         $13, 0x14($7)
    /* 10FF24 0020EFA4 9800E04B */  vmulx.xyzw $vf2, $vf0, $vf0x
    /* 10FF28 0020EFA8 3400E68D */  lw         $6, 0x34($15)
    /* 10FF2C 0020EFAC 3D03E34B */  .word      0x4BE3033D    # vmr32.xyzw $vf3, $vf0
    /* 10FF30 0020EFB0 3000EC8D */  lw         $12, 0x30($15)
    /* 10FF34 0020EFB4 0301C04B */  vaddw.xyz  $vf4, $vf0, $vf0w
    /* 10FF38 0020EFB8 25580600 */  or         $11, $0, $6
    /* 10FF3C 0020EFBC 2C01204A */  vsub.w     $vf4, $vf0, $vf0
    /* 10FF40 0020EFC0 2000EBAC */  sw         $11, 0x20($7)
    /* 10FF44 0020EFC4 4308004B */  vaddw.x    $vf1, $vf1, $vf0w
    /* 10FF48 0020EFC8 2400ECAC */  sw         $12, 0x24($7)
    /* 10FF4C 0020EFCC 8310804A */  vaddw.y    $vf2, $vf2, $vf0w
    /* 10FF50 0020EFD0 0F000000 */  sync
    /* 10FF54 0020EFD4 00000000 */  nop
    /* 10FF58 0020EFD8 0000FCBC */  cache      0x1C, 0x0($7) /* handwritten instruction */
    /* 10FF5C 0020EFDC 0F000000 */  sync
    /* 10FF60 0020EFE0 0000E7D9 */  lqc2       $vf7, 0x0($15)
    /* 10FF64 0020EFE4 00090A00 */  sll        $1, $10, 4
    /* 10FF68 0020EFE8 2400E48D */  lw         $4, 0x24($15)
    /* 10FF6C 0020EFEC 00000000 */  nop
    /* 10FF70 0020EFF0 2800E295 */  lhu        $2, 0x28($15)
    /* 10FF74 0020EFF4 8521074B */  vsuby.x    $vf6, $vf4, $vf7y
    /* 10FF78 0020EFF8 3800E595 */  lhu        $5, 0x38($15)
    /* 10FF7C 0020EFFC 3D3BE74B */  .word      0x4BE73B3D    # vmr32.xyzw $vf7, $vf7
    /* 10FF80 0020F000 2C00E395 */  lhu        $3, 0x2C($15)
    /* 10FF84 0020F004 20082E00 */  add        $1, $1, $14 /* handwritten instruction */
    /* 10FF88 0020F008 3C00E695 */  lhu        $6, 0x3C($15)
    /* 10FF8C 0020F00C 00202120 */  addi       $1, $1, 0x2000 /* handwritten instruction */
    /* 10FF90 0020F010 FFFF0D20 */  addi       $13, $0, -0x1 /* handwritten instruction */
    /* 10FF94 0020F014 00210400 */  sll        $4, $4, 4
    /* 10FF98 0020F018 FCFF2DAC */  sw         $13, -0x4($1)
    /* 10FF9C 0020F01C 20208100 */  add        $4, $4, $1 /* handwritten instruction */
    /* 10FFA0 0020F020 3400E98D */  lw         $9, 0x34($15)
    /* 10FFA4 0020F024 20104100 */  add        $2, $2, $1 /* handwritten instruction */
    /* 10FFA8 0020F028 FCFF8DAC */  sw         $13, -0x4($4)
    /* 10FFAC 0020F02C 2028A400 */  add        $5, $5, $4 /* handwritten instruction */
    /* 10FFB0 0020F030 00490900 */  sll        $9, $9, 4
    /* 10FFB4 0020F034 20186100 */  add        $3, $3, $1 /* handwritten instruction */
    /* 10FFB8 0020F038 00F0B148 */  qmtc2.ni   $17, $vf30
    /* 10FFBC 0020F03C 20882401 */  add        $17, $9, $4 /* handwritten instruction */
    /* 10FFC0 0020F040 FCFF2DAE */  sw         $13, -0x4($17)
    /* 10FFC4 0020F044 2030C400 */  add        $6, $6, $4 /* handwritten instruction */
    /* 10FFC8 0020F048 00E02D48 */  qmfc2.ni   $13, $vf28
    /* 10FFCC 0020F04C 00000000 */  nop
    /* 10FFD0 0020F050 300007AD */  sw         $7, 0x30($8)
    /* 10FFD4 0020F054 0400E78D */  lw         $7, 0x4($15)
    /* 10FFD8 0020F058 1000AD21 */  addi       $13, $13, 0x10 /* handwritten instruction */
    /* 10FFDC 0020F05C 00200934 */  ori        $9, $0, 0x2000
    /* 10FFE0 0020F060 800009AD */  sw         $9, 0x80($8)
    /* 10FFE4 0020F064 4701004B */  vsubw.x    $vf5, $vf0, $vf0w
    /* 10FFE8 0020F068 F0FFA07D */  sq         $0, -0x10($13)
    /* 10FFEC 0020F06C 00000000 */  nop
    /* 10FFF0 0020F070 04010934 */  ori        $9, $0, 0x104
    /* 10FFF4 0020F074 00F8B048 */  qmtc2.ni   $16, $vf31
    /* 10FFF8 0020F078 3401E010 */  beqz       $7, .L0020F54C
    /* 10FFFC 0020F07C 000009AD */   sw        $9, 0x0($8)
    /* 110000 0020F080 2D384001 */  daddu      $7, $10, $0
    /* 110004 0020F084 C0FFC921 */  addi       $9, $14, -0x40 /* handwritten instruction */
    /* 110008 0020F088 E0FFA821 */  addi       $8, $13, -0x20 /* handwritten instruction */
    /* 11000C 0020F08C 00000000 */  nop
.align 2
  .L0020F090:
    /* 110010 0020F090 40002921 */  addi       $9, $9, 0x40 /* handwritten instruction */
    /* 110014 0020F094 000024F9 */  sqc2       $vf4, 0x0($9)
    /* 110018 0020F098 20000821 */  addi       $8, $8, 0x20 /* handwritten instruction */
    /* 11001C 0020F09C 100024F9 */  sqc2       $vf4, 0x10($9)
    /* 110020 0020F0A0 FFFFE720 */  addi       $7, $7, -0x1 /* handwritten instruction */
    /* 110024 0020F0A4 000004F9 */  sqc2       $vf4, 0x0($8)
    /* 110028 0020F0A8 F9FFE01C */  bgtz       $7, .L0020F090
    /* 11002C 0020F0AC 100004F9 */   sqc2      $vf4, 0x10($8)
.align 2
  .L0020F0B0:
    /* 110030 0020F0B0 FCFF278C */  lw         $7, -0x4($1)
    /* 110034 0020F0B4 FFFF0820 */  addi       $8, $0, -0x1 /* handwritten instruction */
    /* 110038 0020F0B8 00000000 */  nop
    /* 11003C 0020F0BC 00000000 */  nop
    /* 110040 0020F0C0 00000000 */  nop
    /* 110044 0020F0C4 FAFFE810 */  beq        $7, $8, .L0020F0B0
    /* 110048 0020F0C8 00000000 */   nop
    /* 11004C 0020F0CC 2D384001 */  daddu      $7, $10, $0
    /* 110050 0020F0D0 0020C835 */  ori        $8, $14, (0x70002000 & 0xFFFF)
    /* 110054 0020F0D4 00FFC921 */  addi       $9, $14, -0x100 /* handwritten instruction */
    /* 110058 0020F0D8 00000000 */  nop
.align 2
  .L0020F0DC:
    /* 11005C 0020F0DC 000010D9 */  lqc2       $vf16, 0x0($8)
    /* 110060 0020F0E0 00012921 */  addi       $9, $9, 0x100 /* handwritten instruction */
    /* 110064 0020F0E4 100011D9 */  lqc2       $vf17, 0x10($8)
    /* 110068 0020F0E8 FCFFE720 */  addi       $7, $7, -0x4 /* handwritten instruction */
    /* 11006C 0020F0EC 200012D9 */  lqc2       $vf18, 0x20($8)
    /* 110070 0020F0F0 300013D9 */  lqc2       $vf19, 0x30($8)
    /* 110074 0020F0F4 200030F9 */  sqc2       $vf16, 0x20($9)
    /* 110078 0020F0F8 600031F9 */  sqc2       $vf17, 0x60($9)
    /* 11007C 0020F0FC A00032F9 */  sqc2       $vf18, 0xA0($9)
    /* 110080 0020F100 E00033F9 */  sqc2       $vf19, 0xE0($9)
    /* 110084 0020F104 300030F9 */  sqc2       $vf16, 0x30($9)
    /* 110088 0020F108 700031F9 */  sqc2       $vf17, 0x70($9)
    /* 11008C 0020F10C B00032F9 */  sqc2       $vf18, 0xB0($9)
    /* 110090 0020F110 F00033F9 */  sqc2       $vf19, 0xF0($9)
    /* 110094 0020F114 3C0020AD */  sw         $0, 0x3C($9)
    /* 110098 0020F118 7C0020AD */  sw         $0, 0x7C($9)
    /* 11009C 0020F11C 40000821 */  addi       $8, $8, 0x40 /* handwritten instruction */
    /* 1100A0 0020F120 BC0020AD */  sw         $0, 0xBC($9)
    /* 1100A4 0020F124 EDFFE01C */  bgtz       $7, .L0020F0DC
    /* 1100A8 0020F128 FC0020AD */   sw        $0, 0xFC($9)
.align 2
  .L0020F12C:
    /* 1100AC 0020F12C FCFF878C */  lw         $7, -0x4($4)
    /* 1100B0 0020F130 FFFF0820 */  addi       $8, $0, -0x1 /* handwritten instruction */
    /* 1100B4 0020F134 00000000 */  nop
    /* 1100B8 0020F138 00000000 */  nop
    /* 1100BC 0020F13C 00000000 */  nop
    /* 1100C0 0020F140 FAFFE810 */  beq        $7, $8, .L0020F12C
    /* 1100C4 0020F144 00000000 */   nop
    /* 1100C8 0020F148 F0FFB021 */  addi       $16, $13, -0x10 /* handwritten instruction */
    /* 1100CC 0020F14C E4FFAB21 */  addi       $11, $13, -0x1C /* handwritten instruction */
.align 2
  alabel func_0020F150
    /* 1100D0 0020F150 15004310 */  beq        $2, $3, .L0020F1A8
    /* 1100D4 0020F154 000047DC */   ld        $7, 0x0($2)
    /* 1100D8 0020F158 06004990 */  lbu        $9, 0x6($2)
    /* 1100DC 0020F15C 08004220 */  addi       $2, $2, 0x8 /* handwritten instruction */
    /* 1100E0 0020F160 8845E070 */  pextlh     $8, $7, $0
    /* 1100E4 0020F164 7E430870 */  psrlw      $8, $8, 13
    /* 1100E8 0020F168 0040A848 */  qmtc2.ni   $8, $vf8
    /* 1100EC 0020F16C 80610900 */  sll        $12, $9, 6
    /* 1100F0 0020F170 40490900 */  sll        $9, $9, 5
    /* 1100F4 0020F174 20608E01 */  add        $12, $12, $14 /* handwritten instruction */
    /* 1100F8 0020F178 0700E004 */  bltz       $7, .L0020F198
    /* 1100FC 0020F17C 3F41C84B */   vitof15.xyz $vf8, $vf8
    /* 110100 0020F180 20482D01 */  add        $9, $9, $13 /* handwritten instruction */
    /* 110104 0020F184 00000000 */  nop
    /* 110108 0020F188 0C0009AE */  sw         $9, 0xC($16)
    /* 11010C 0020F18C 2D802001 */  daddu      $16, $9, $0
    /* 110110 0020F190 543C0808 */  j          func_0020F150
    /* 110114 0020F194 000028F9 */   sqc2      $vf8, 0x0($9)
.align 2
  .L0020F198:
    /* 110118 0020F198 0C006CAD */  sw         $12, 0xC($11)
    /* 11011C 0020F19C 2D588001 */  daddu      $11, $12, $0
    /* 110120 0020F1A0 543C0808 */  j          func_0020F150
    /* 110124 0020F1A4 000088F9 */   sqc2      $vf8, 0x0($12)
.align 2
  .L0020F1A8:
    /* 110128 0020F1A8 2E00E285 */  lh         $2, 0x2E($15)
    /* 11012C 0020F1AC B8FFAC21 */  addi       $12, $13, -0x48 /* handwritten instruction */
.align 2
  alabel func_0020F1B0
    /* 110130 0020F1B0 15004010 */  beqz       $2, .L0020F208
    /* 110134 0020F1B4 000067DC */   ld        $7, 0x0($3)
    /* 110138 0020F1B8 06006880 */  lb         $8, 0x6($3)
    /* 11013C 0020F1BC FFFF4220 */  addi       $2, $2, -0x1 /* handwritten instruction */
    /* 110140 0020F1C0 883DE070 */  pextlh     $7, $7, $0
    /* 110144 0020F1C4 3F3C0770 */  psraw      $7, $7, 16
    /* 110148 0020F1C8 0040A748 */  qmtc2.ni   $7, $vf8
    /* 11014C 0020F1CC 80410800 */  sll        $8, $8, 6
    /* 110150 0020F1D0 08006320 */  addi       $3, $3, 0x8 /* handwritten instruction */
    /* 110154 0020F1D4 00000000 */  nop
    /* 110158 0020F1D8 3C41C84B */  vitof0.xyz $vf8, $vf8
    /* 11015C 0020F1DC 20400E01 */  add        $8, $8, $14 /* handwritten instruction */
    /* 110160 0020F1E0 2C00078D */  lw         $7, 0x2C($8)
    /* 110164 0020F1E4 00000000 */  nop
    /* 110168 0020F1E8 3C0088AD */  sw         $8, 0x3C($12)
    /* 11016C 0020F1EC 2D600001 */  daddu      $12, $8, $0
    /* 110170 0020F1F0 3C0000AD */  sw         $0, 0x3C($8)
    /* 110174 0020F1F4 00000000 */  nop
    /* 110178 0020F1F8 200008F9 */  sqc2       $vf8, 0x20($8)
    /* 11017C 0020F1FC 00000000 */  nop
    /* 110180 0020F200 6C3C0808 */  j          func_0020F1B0
    /* 110184 0020F204 2C0007AD */   sw        $7, 0x2C($8)
.align 2
  .L0020F208:
    /* 110188 0020F208 FCFF278E */  lw         $7, -0x4($17)
    /* 11018C 0020F20C FFFF0820 */  addi       $8, $0, -0x1 /* handwritten instruction */
    /* 110190 0020F210 00000000 */  nop
    /* 110194 0020F214 00000000 */  nop
    /* 110198 0020F218 00000000 */  nop
    /* 11019C 0020F21C FAFFE810 */  beq        $7, $8, .L0020F208
    /* 1101A0 0020F220 00000000 */   nop
.align 2
  alabel func_0020F224
    /* 1101A4 0020F224 1D00A610 */  beq        $5, $6, .L0020F29C
    /* 1101A8 0020F228 0000A7DC */   ld        $7, 0x0($5)
    /* 1101AC 0020F22C 0600A990 */  lbu        $9, 0x6($5)
    /* 1101B0 0020F230 0800A520 */  addi       $5, $5, 0x8 /* handwritten instruction */
    /* 1101B4 0020F234 8845E070 */  pextlh     $8, $7, $0
    /* 1101B8 0020F238 7E430870 */  psrlw      $8, $8, 13
    /* 1101BC 0020F23C 0040A848 */  qmtc2.ni   $8, $vf8
    /* 1101C0 0020F240 80190900 */  sll        $3, $9, 6
    /* 1101C4 0020F244 40490900 */  sll        $9, $9, 5
    /* 1101C8 0020F248 20186E00 */  add        $3, $3, $14 /* handwritten instruction */
    /* 1101CC 0020F24C 0B00E004 */  bltz       $7, .L0020F27C
    /* 1101D0 0020F250 3F41C84B */   vitof15.xyz $vf8, $vf8
    /* 1101D4 0020F254 20482D01 */  add        $9, $9, $13 /* handwritten instruction */
    /* 1101D8 0020F258 00000000 */  nop
    /* 1101DC 0020F25C 1C00288D */  lw         $8, 0x1C($9)
    /* 1101E0 0020F260 00000000 */  nop
    /* 1101E4 0020F264 EFFF0015 */  bnez       $8, func_0020F224
    /* 1101E8 0020F268 100028F9 */   sqc2      $vf8, 0x10($9)
    /* 1101EC 0020F26C 0C0009AE */  sw         $9, 0xC($16)
    /* 1101F0 0020F270 2D802001 */  daddu      $16, $9, $0
    /* 1101F4 0020F274 893C0808 */  j          func_0020F224
    /* 1101F8 0020F278 00000000 */   nop
.align 2
  .L0020F27C:
    /* 1101FC 0020F27C 0C00688C */  lw         $8, 0xC($3)
    /* 110200 0020F280 00000000 */  nop
    /* 110204 0020F284 E7FF0015 */  bnez       $8, func_0020F224
    /* 110208 0020F288 100068F8 */   sqc2      $vf8, 0x10($3)
    /* 11020C 0020F28C 0C0063AD */  sw         $3, 0xC($11)
    /* 110210 0020F290 2D586000 */  daddu      $11, $3, $0
    /* 110214 0020F294 893C0808 */  j          func_0020F224
    /* 110218 0020F298 00000000 */   nop
.align 2
  .L0020F29C:
    /* 11021C 0020F29C 0C0060AD */  sw         $0, 0xC($11)
    /* 110220 0020F2A0 0C0000AE */  sw         $0, 0xC($16)
    /* 110224 0020F2A4 3E00E285 */  lh         $2, 0x3E($15)
    /* 110228 0020F2A8 00000000 */  nop
.align 2
  alabel func_0020F2AC
    /* 11022C 0020F2AC 1B004010 */  beqz       $2, .L0020F31C
    /* 110230 0020F2B0 0000C7DC */   ld        $7, 0x0($6)
    /* 110234 0020F2B4 0600C880 */  lb         $8, 0x6($6)
    /* 110238 0020F2B8 FFFF4220 */  addi       $2, $2, -0x1 /* handwritten instruction */
    /* 11023C 0020F2BC 883DE070 */  pextlh     $7, $7, $0
    /* 110240 0020F2C0 3F3C0770 */  psraw      $7, $7, 16
    /* 110244 0020F2C4 0040A748 */  qmtc2.ni   $7, $vf8
    /* 110248 0020F2C8 80410800 */  sll        $8, $8, 6
    /* 11024C 0020F2CC 0800C620 */  addi       $6, $6, 0x8 /* handwritten instruction */
    /* 110250 0020F2D0 00000000 */  nop
    /* 110254 0020F2D4 3C41C84B */  vitof0.xyz $vf8, $vf8
    /* 110258 0020F2D8 20400E01 */  add        $8, $8, $14 /* handwritten instruction */
    /* 11025C 0020F2DC 3C00038D */  lw         $3, 0x3C($8)
    /* 110260 0020F2E0 00000000 */  nop
    /* 110264 0020F2E4 00000000 */  nop
    /* 110268 0020F2E8 00000000 */  nop
    /* 11026C 0020F2EC 00000000 */  nop
    /* 110270 0020F2F0 00000000 */  nop
    /* 110274 0020F2F4 00000000 */  nop
    /* 110278 0020F2F8 00000000 */  nop
    /* 11027C 0020F2FC 300008F9 */  sqc2       $vf8, 0x30($8)
    /* 110280 0020F300 00000000 */  nop
    /* 110284 0020F304 E9FF6014 */  bnez       $3, func_0020F2AC
    /* 110288 0020F308 3C0003AD */   sw        $3, 0x3C($8)
    /* 11028C 0020F30C 3C0088AD */  sw         $8, 0x3C($12)
    /* 110290 0020F310 2D600001 */  daddu      $12, $8, $0
    /* 110294 0020F314 AB3C0808 */  j          func_0020F2AC
    /* 110298 0020F318 3C0000AD */   sw        $0, 0x3C($8)
.align 2
  .L0020F31C:
    /* 11029C 0020F31C F0FFA38D */  lw         $3, -0x10($13)
    /* 1102A0 0020F320 3C032A4A */  vmove.w    $vf10, $vf0
.align 2
  alabel func_0020F324
    /* 1102A4 0020F324 09006010 */  beqz       $3, .L0020F34C
    /* 1102A8 0020F328 2D106000 */   daddu     $2, $3, $0
    /* 1102AC 0020F32C 000048D8 */  lqc2       $vf8, 0x0($2)
    /* 1102B0 0020F330 100049D8 */  lqc2       $vf9, 0x10($2)
    /* 1102B4 0020F334 BC41C64B */  .word      0x4BC641BC    # vmulax.xyz ACC, $vf8, $vf6x
    /* 1102B8 0020F338 884AC74B */  vmaddx.xyz $vf10, $vf9, $vf7x
    /* 1102BC 0020F33C 0C00438C */  lw         $3, 0xC($2)
    /* 1102C0 0020F340 FF02004A */  vnop
    /* 1102C4 0020F344 C93C0808 */  j          func_0020F324
    /* 1102C8 0020F348 10004AF8 */   sqc2      $vf10, 0x10($2)
.align 2
  .L0020F34C:
    /* 1102CC 0020F34C F4FFA28D */  lw         $2, -0xC($13)
    /* 1102D0 0020F350 00000000 */  nop
.align 2
  alabel func_0020F354
    /* 1102D4 0020F354 0B004010 */  beqz       $2, .L0020F384
    /* 1102D8 0020F358 00000000 */   nop
    /* 1102DC 0020F35C 200048D8 */  lqc2       $vf8, 0x20($2)
    /* 1102E0 0020F360 300049D8 */  lqc2       $vf9, 0x30($2)
    /* 1102E4 0020F364 BC41C64B */  .word      0x4BC641BC    # vmulax.xyz ACC, $vf8, $vf6x
    /* 1102E8 0020F368 884AC74B */  vmaddx.xyz $vf10, $vf9, $vf7x
    /* 1102EC 0020F36C 2C00438C */  lw         $3, 0x2C($2)
    /* 1102F0 0020F370 00000000 */  nop
    /* 1102F4 0020F374 20004AF8 */  sqc2       $vf10, 0x20($2)
    /* 1102F8 0020F378 2C0043AC */  sw         $3, 0x2C($2)
    /* 1102FC 0020F37C D53C0808 */  j          func_0020F354
    /* 110300 0020F380 3C00428C */   lw        $2, 0x3C($2)
.align 2
  .L0020F384:
    /* 110304 0020F384 00044732 */  andi       $7, $18, 0x400
    /* 110308 0020F388 00000000 */  nop
    /* 11030C 0020F38C 4900E014 */  bnez       $7, .L0020F4B4
    /* 110310 0020F390 00000000 */   nop
    /* 110314 0020F394 2D104001 */  daddu      $2, $10, $0
    /* 110318 0020F398 80FFCC21 */  addi       $12, $14, -0x80 /* handwritten instruction */
.align 2
  alabel func_0020F39C
    /* 11031C 0020F39C D2004018 */  blez       $2, func_0020F6E8
    /* 110320 0020F3A0 00002778 */   lq        $7, 0x0($1)
    /* 110324 0020F3A4 FEFF4220 */  addi       $2, $2, -0x2 /* handwritten instruction */
    /* 110328 0020F3A8 00008878 */  lq         $8, 0x0($4)
    /* 11032C 0020F3AC 882DE070 */  pextlh     $5, $7, $0
    /* 110330 0020F3B0 0000A048 */  qmtc2.ni   $0, $vf0
    /* 110334 0020F3B4 3F2C0570 */  psraw      $5, $5, 16
    /* 110338 0020F3B8 0000A048 */  qmtc2.ni   $0, $vf0
    /* 11033C 0020F3BC 88350071 */  pextlh     $6, $8, $0
    /* 110340 0020F3C0 0040A548 */  qmtc2.ni   $5, $vf8
    /* 110344 0020F3C4 3F340670 */  psraw      $6, $6, 16
    /* 110348 0020F3C8 0000A048 */  qmtc2.ni   $0, $vf0
    /* 11034C 0020F3CC A83DE070 */  pextuh     $7, $7, $0
    /* 110350 0020F3D0 0048A648 */  qmtc2.ni   $6, $vf9
    /* 110354 0020F3D4 3F3C0770 */  psraw      $7, $7, 16
    /* 110358 0020F3D8 A8450071 */  pextuh     $8, $8, $0
    /* 11035C 0020F3DC 3F440870 */  psraw      $8, $8, 16
    /* 110360 0020F3E0 0050A748 */  qmtc2.ni   $7, $vf10
    /* 110364 0020F3E4 0058A848 */  qmtc2.ni   $8, $vf11
    /* 110368 0020F3E8 00000000 */  nop
    /* 11036C 0020F3EC 3F41E84B */  vitof15.xyzw $vf8, $vf8
    /* 110370 0020F3F0 3F49E94B */  vitof15.xyzw $vf9, $vf9
    /* 110374 0020F3F4 3F51EA4B */  vitof15.xyzw $vf10, $vf10
    /* 110378 0020F3F8 3F59EB4B */  vitof15.xyzw $vf11, $vf11
    /* 11037C 0020F3FC 2A43E94B */  vmul.xyzw  $vf12, $vf8, $vf9
    /* 110380 0020F400 6A53EB4B */  vmul.xyzw  $vf13, $vf10, $vf11
    /* 110384 0020F404 984BE54B */  vmulx.xyzw $vf14, $vf9, $vf5x
    /* 110388 0020F408 D85BE54B */  vmulx.xyzw $vf15, $vf11, $vf5x
    /* 11038C 0020F40C BC41E64B */  .word      0x4BE641BC    # vmulax.xyzw ACC, $vf8, $vf6x
    /* 110390 0020F410 084AE74B */  vmaddx.xyzw $vf8, $vf9, $vf7x
    /* 110394 0020F414 4872E74B */  vmaddx.xyzw $vf9, $vf14, $vf7x
    /* 110398 0020F418 10002120 */  addi       $1, $1, 0x10 /* handwritten instruction */
    /* 11039C 0020F41C 3C608C4A */  .word      0x4A8C603C    # vaddax.y   ACC, $vf12, $vf12x
    /* 1103A0 0020F420 BE208C4A */  .word      0x4A8C20BE    # vmaddaz.y  ACC, $vf4, $vf12z
    /* 1103A4 0020F424 0B238C4A */  vmaddw.y   $vf12, $vf4, $vf12w
    /* 1103A8 0020F428 10008420 */  addi       $4, $4, 0x10 /* handwritten instruction */
    /* 1103AC 0020F42C 3C688D4A */  .word      0x4A8D683C    # vaddax.y   ACC, $vf13, $vf13x
    /* 1103B0 0020F430 BE208D4A */  .word      0x4A8D20BE    # vmaddaz.y  ACC, $vf4, $vf13z
    /* 1103B4 0020F434 4B238D4A */  vmaddw.y   $vf13, $vf4, $vf13w
    /* 1103B8 0020F438 00000000 */  nop
    /* 1103BC 0020F43C BC51E64B */  .word      0x4BE651BC    # vmulax.xyzw ACC, $vf10, $vf6x
    /* 1103C0 0020F440 00602748 */  qmfc2.ni   $7, $vf12
    /* 1103C4 0020F444 885AE74B */  vmaddx.xyzw $vf10, $vf11, $vf7x
    /* 1103C8 0020F448 80008C21 */  addi       $12, $12, 0x80 /* handwritten instruction */
    /* 1103CC 0020F44C C87AE74B */  vmaddx.xyzw $vf11, $vf15, $vf7x
    /* 1103D0 0020F450 00682848 */  qmfc2.ni   $8, $vf13
    /* 1103D4 0020F454 0300E304 */  bgezl      $7, .L0020F464
    /* 1103D8 0020F458 6A42E84B */   vmul.xyzw $vf9, $vf8, $vf8
    /* 1103DC 0020F45C 3C4BE84B */  vmove.xyzw $vf8, $vf9
    /* 1103E0 0020F460 6A4AE94B */  vmul.xyzw  $vf9, $vf9, $vf9
.align 2
  .L0020F464:
    /* 1103E4 0020F464 03000305 */  bgezl      $8, .L0020F474
    /* 1103E8 0020F468 EA52EA4B */   vmul.xyzw $vf11, $vf10, $vf10
    /* 1103EC 0020F46C 3C5BEA4B */  vmove.xyzw $vf10, $vf11
    /* 1103F0 0020F470 EA5AEB4B */  vmul.xyzw  $vf11, $vf11, $vf11
.align 2
  .L0020F474:
    /* 1103F4 0020F474 3D48094B */  .word      0x4B09483D    # vadday.x   ACC, $vf9, $vf9y
    /* 1103F8 0020F478 BE20094B */  .word      0x4B0920BE    # vmaddaz.x  ACC, $vf4, $vf9z
    /* 1103FC 0020F47C 4B22094B */  vmaddw.x   $vf9, $vf4, $vf9w
    /* 110400 0020F480 3D580B4B */  .word      0x4B0B583D    # vadday.x   ACC, $vf11, $vf11y
    /* 110404 0020F484 BE200B4B */  .word      0x4B0B20BE    # vmaddaz.x  ACC, $vf4, $vf11z
    /* 110408 0020F488 CB220B4B */  vmaddw.x   $vf11, $vf4, $vf11w
    /* 11040C 0020F48C BE03694A */  .word      0x4A6903BE    # vrsqrt     Q, $vf0w, $vf9x
    /* 110410 0020F490 BF03004A */  .word      0x4A0003BF    # vwaitq
    /* 110414 0020F494 1C42E04B */  .word      0x4BE0421C    # vmulq.xyzw $vf8, $vf8, Q
    /* 110418 0020F498 BE036B4A */  .word      0x4A6B03BE    # vrsqrt     Q, $vf0w, $vf11x
    /* 11041C 0020F49C BF03004A */  .word      0x4A0003BF    # vwaitq
    /* 110420 0020F4A0 9C52E04B */  .word      0x4BE0529C    # vmulq.xyzw $vf10, $vf10, Q
    /* 110424 0020F4A4 000088F9 */  sqc2       $vf8, 0x0($12)
    /* 110428 0020F4A8 00000000 */  nop
    /* 11042C 0020F4AC E73C0808 */  j          func_0020F39C
    /* 110430 0020F4B0 40008AF9 */   sqc2      $vf10, 0x40($12)
.align 2
  .L0020F4B4:
    /* 110434 0020F4B4 2D104001 */  daddu      $2, $10, $0
    /* 110438 0020F4B8 80FFCC21 */  addi       $12, $14, -0x80 /* handwritten instruction */
.align 2
  alabel func_0020F4BC
    /* 11043C 0020F4BC 21004018 */  blez       $2, .L0020F544
    /* 110440 0020F4C0 00002778 */   lq        $7, 0x0($1)
    /* 110444 0020F4C4 FEFF4220 */  addi       $2, $2, -0x2 /* handwritten instruction */
    /* 110448 0020F4C8 00008878 */  lq         $8, 0x0($4)
    /* 11044C 0020F4CC 882DE070 */  pextlh     $5, $7, $0
    /* 110450 0020F4D0 0000A048 */  qmtc2.ni   $0, $vf0
    /* 110454 0020F4D4 3F2C0570 */  psraw      $5, $5, 16
    /* 110458 0020F4D8 0000A048 */  qmtc2.ni   $0, $vf0
    /* 11045C 0020F4DC 88350071 */  pextlh     $6, $8, $0
    /* 110460 0020F4E0 0040A548 */  qmtc2.ni   $5, $vf8
    /* 110464 0020F4E4 3F340670 */  psraw      $6, $6, 16
    /* 110468 0020F4E8 0000A048 */  qmtc2.ni   $0, $vf0
    /* 11046C 0020F4EC A83DE070 */  pextuh     $7, $7, $0
    /* 110470 0020F4F0 0048A648 */  qmtc2.ni   $6, $vf9
    /* 110474 0020F4F4 3F3C0770 */  psraw      $7, $7, 16
    /* 110478 0020F4F8 A8450071 */  pextuh     $8, $8, $0
    /* 11047C 0020F4FC 3F440870 */  psraw      $8, $8, 16
    /* 110480 0020F500 0050A748 */  qmtc2.ni   $7, $vf10
    /* 110484 0020F504 0058A848 */  qmtc2.ni   $8, $vf11
    /* 110488 0020F508 00000000 */  nop
    /* 11048C 0020F50C 3F41E84B */  vitof15.xyzw $vf8, $vf8
    /* 110490 0020F510 80008C21 */  addi       $12, $12, 0x80 /* handwritten instruction */
    /* 110494 0020F514 3F49E94B */  vitof15.xyzw $vf9, $vf9
    /* 110498 0020F518 10002120 */  addi       $1, $1, 0x10 /* handwritten instruction */
    /* 11049C 0020F51C 3F51EA4B */  vitof15.xyzw $vf10, $vf10
    /* 1104A0 0020F520 3F59EB4B */  vitof15.xyzw $vf11, $vf11
    /* 1104A4 0020F524 BC41E64B */  .word      0x4BE641BC    # vmulax.xyzw ACC, $vf8, $vf6x
    /* 1104A8 0020F528 084AE74B */  vmaddx.xyzw $vf8, $vf9, $vf7x
    /* 1104AC 0020F52C BC51E64B */  .word      0x4BE651BC    # vmulax.xyzw ACC, $vf10, $vf6x
    /* 1104B0 0020F530 885AE74B */  vmaddx.xyzw $vf10, $vf11, $vf7x
    /* 1104B4 0020F534 000088F9 */  sqc2       $vf8, 0x0($12)
    /* 1104B8 0020F538 10008420 */  addi       $4, $4, 0x10 /* handwritten instruction */
    /* 1104BC 0020F53C 2F3D0808 */  j          func_0020F4BC
    /* 1104C0 0020F540 40008AF9 */   sqc2      $vf10, 0x40($12)
.align 2
  .L0020F544:
    /* 1104C4 0020F544 BA3D0808 */  j          func_0020F6E8
    /* 1104C8 0020F548 00000000 */   nop
.align 2
  .L0020F54C:
    /* 1104CC 0020F54C 2D384001 */  daddu      $7, $10, $0
    /* 1104D0 0020F550 C0FFC921 */  addi       $9, $14, -0x40 /* handwritten instruction */
    /* 1104D4 0020F554 E0FFA821 */  addi       $8, $13, -0x20 /* handwritten instruction */
    /* 1104D8 0020F558 00000000 */  nop
.align 2
  .L0020F55C:
    /* 1104DC 0020F55C 40002921 */  addi       $9, $9, 0x40 /* handwritten instruction */
    /* 1104E0 0020F560 20000821 */  addi       $8, $8, 0x20 /* handwritten instruction */
    /* 1104E4 0020F564 100024F9 */  sqc2       $vf4, 0x10($9)
    /* 1104E8 0020F568 FFFFE720 */  addi       $7, $7, -0x1 /* handwritten instruction */
    /* 1104EC 0020F56C 00000000 */  nop
    /* 1104F0 0020F570 FAFFE01C */  bgtz       $7, .L0020F55C
    /* 1104F4 0020F574 000004F9 */   sqc2      $vf4, 0x0($8)
.align 2
  .L0020F578:
    /* 1104F8 0020F578 FCFF278C */  lw         $7, -0x4($1)
    /* 1104FC 0020F57C FFFF0820 */  addi       $8, $0, -0x1 /* handwritten instruction */
    /* 110500 0020F580 00000000 */  nop
    /* 110504 0020F584 00000000 */  nop
    /* 110508 0020F588 00000000 */  nop
    /* 11050C 0020F58C FAFFE810 */  beq        $7, $8, .L0020F578
    /* 110510 0020F590 00000000 */   nop
    /* 110514 0020F594 2D384001 */  daddu      $7, $10, $0
    /* 110518 0020F598 0020C835 */  ori        $8, $14, (0x70002000 & 0xFFFF)
    /* 11051C 0020F59C 00FFC921 */  addi       $9, $14, -0x100 /* handwritten instruction */
    /* 110520 0020F5A0 00000000 */  nop
.align 2
  .L0020F5A4:
    /* 110524 0020F5A4 000010D9 */  lqc2       $vf16, 0x0($8)
    /* 110528 0020F5A8 00012921 */  addi       $9, $9, 0x100 /* handwritten instruction */
    /* 11052C 0020F5AC 100011D9 */  lqc2       $vf17, 0x10($8)
    /* 110530 0020F5B0 FCFFE720 */  addi       $7, $7, -0x4 /* handwritten instruction */
    /* 110534 0020F5B4 200012D9 */  lqc2       $vf18, 0x20($8)
    /* 110538 0020F5B8 300013D9 */  lqc2       $vf19, 0x30($8)
    /* 11053C 0020F5BC 200030F9 */  sqc2       $vf16, 0x20($9)
    /* 110540 0020F5C0 600031F9 */  sqc2       $vf17, 0x60($9)
    /* 110544 0020F5C4 A00032F9 */  sqc2       $vf18, 0xA0($9)
    /* 110548 0020F5C8 40000821 */  addi       $8, $8, 0x40 /* handwritten instruction */
    /* 11054C 0020F5CC F5FFE01C */  bgtz       $7, .L0020F5A4
    /* 110550 0020F5D0 E00033F9 */   sqc2      $vf19, 0xE0($9)
.align 2
  .L0020F5D4:
    /* 110554 0020F5D4 FCFF878C */  lw         $7, -0x4($4)
    /* 110558 0020F5D8 FFFF0820 */  addi       $8, $0, -0x1 /* handwritten instruction */
    /* 11055C 0020F5DC 00000000 */  nop
    /* 110560 0020F5E0 00000000 */  nop
    /* 110564 0020F5E4 00000000 */  nop
    /* 110568 0020F5E8 FAFFE810 */  beq        $7, $8, .L0020F5D4
    /* 11056C 0020F5EC 00000000 */   nop
    /* 110570 0020F5F0 F0FFB021 */  addi       $16, $13, -0x10 /* handwritten instruction */
    /* 110574 0020F5F4 00000000 */  nop
.align 2
  alabel func_0020F5F8
    /* 110578 0020F5F8 13004310 */  beq        $2, $3, .L0020F648
    /* 11057C 0020F5FC 000047DC */   ld        $7, 0x0($2)
    /* 110580 0020F600 06004990 */  lbu        $9, 0x6($2)
    /* 110584 0020F604 08004220 */  addi       $2, $2, 0x8 /* handwritten instruction */
    /* 110588 0020F608 8845E070 */  pextlh     $8, $7, $0
    /* 11058C 0020F60C 7E430870 */  psrlw      $8, $8, 13
    /* 110590 0020F610 0040A848 */  qmtc2.ni   $8, $vf8
    /* 110594 0020F614 80610900 */  sll        $12, $9, 6
    /* 110598 0020F618 40490900 */  sll        $9, $9, 5
    /* 11059C 0020F61C 20608E01 */  add        $12, $12, $14 /* handwritten instruction */
    /* 1105A0 0020F620 0700E004 */  bltz       $7, .L0020F640
    /* 1105A4 0020F624 3F41C84B */   vitof15.xyz $vf8, $vf8
    /* 1105A8 0020F628 20482D01 */  add        $9, $9, $13 /* handwritten instruction */
    /* 1105AC 0020F62C 00000000 */  nop
    /* 1105B0 0020F630 0C0009AE */  sw         $9, 0xC($16)
    /* 1105B4 0020F634 2D802001 */  daddu      $16, $9, $0
    /* 1105B8 0020F638 7E3D0808 */  j          func_0020F5F8
    /* 1105BC 0020F63C 000028F9 */   sqc2      $vf8, 0x0($9)
.align 2
  .L0020F640:
    /* 1105C0 0020F640 7E3D0808 */  j          func_0020F5F8
    /* 1105C4 0020F644 100088F9 */   sqc2      $vf8, 0x10($12)
.align 2
  .L0020F648:
    /* 1105C8 0020F648 0C0000AE */  sw         $0, 0xC($16)
    /* 1105CC 0020F64C 00000000 */  nop
    /* 1105D0 0020F650 2E00E285 */  lh         $2, 0x2E($15)
    /* 1105D4 0020F654 00000000 */  nop
.align 2
  alabel func_0020F658
    /* 1105D8 0020F658 11004010 */  beqz       $2, .L0020F6A0
    /* 1105DC 0020F65C 000067DC */   ld        $7, 0x0($3)
    /* 1105E0 0020F660 06006880 */  lb         $8, 0x6($3)
    /* 1105E4 0020F664 FFFF4220 */  addi       $2, $2, -0x1 /* handwritten instruction */
    /* 1105E8 0020F668 883DE070 */  pextlh     $7, $7, $0
    /* 1105EC 0020F66C 3F3C0770 */  psraw      $7, $7, 16
    /* 1105F0 0020F670 0040A748 */  qmtc2.ni   $7, $vf8
    /* 1105F4 0020F674 80410800 */  sll        $8, $8, 6
    /* 1105F8 0020F678 08006320 */  addi       $3, $3, 0x8 /* handwritten instruction */
    /* 1105FC 0020F67C 00000000 */  nop
    /* 110600 0020F680 3C41C84B */  vitof0.xyz $vf8, $vf8
    /* 110604 0020F684 20400E01 */  add        $8, $8, $14 /* handwritten instruction */
    /* 110608 0020F688 2C00078D */  lw         $7, 0x2C($8)
    /* 11060C 0020F68C 00000000 */  nop
    /* 110610 0020F690 200008F9 */  sqc2       $vf8, 0x20($8)
    /* 110614 0020F694 00000000 */  nop
    /* 110618 0020F698 963D0808 */  j          func_0020F658
    /* 11061C 0020F69C 2C0007AD */   sw        $7, 0x2C($8)
.align 2
  .L0020F6A0:
    /* 110620 0020F6A0 2D104001 */  daddu      $2, $10, $0
    /* 110624 0020F6A4 C0FFCC21 */  addi       $12, $14, -0x40 /* handwritten instruction */
    /* 110628 0020F6A8 000027DC */  ld         $7, 0x0($1)
    /* 11062C 0020F6AC 08002120 */  addi       $1, $1, 0x8 /* handwritten instruction */
    /* 110630 0020F6B0 882DE070 */  pextlh     $5, $7, $0
    /* 110634 0020F6B4 3F2C0570 */  psraw      $5, $5, 16
    /* 110638 0020F6B8 0040A548 */  qmtc2.ni   $5, $vf8
    /* 11063C 0020F6BC FF02004A */  vnop
.align 2
  .L0020F6C0:
    /* 110640 0020F6C0 000027DC */  ld         $7, 0x0($1)
    /* 110644 0020F6C4 3F41E94B */  vitof15.xyzw $vf9, $vf8
    /* 110648 0020F6C8 FFFF4220 */  addi       $2, $2, -0x1 /* handwritten instruction */
    /* 11064C 0020F6CC 08002120 */  addi       $1, $1, 0x8 /* handwritten instruction */
    /* 110650 0020F6D0 882DE070 */  pextlh     $5, $7, $0
    /* 110654 0020F6D4 3F2C0570 */  psraw      $5, $5, 16
    /* 110658 0020F6D8 0040A548 */  qmtc2.ni   $5, $vf8
    /* 11065C 0020F6DC 40008C21 */  addi       $12, $12, 0x40 /* handwritten instruction */
    /* 110660 0020F6E0 F7FF401C */  bgtz       $2, .L0020F6C0
    /* 110664 0020F6E4 000089F9 */   sqc2      $vf9, 0x0($12)
.align 2
  alabel func_0020F6E8
    /* 110668 0020F6E8 4E002013 */  beqz       $25, .L0020F824
    /* 11066C 0020F6EC 0010013C */   lui       $1, (0x1000D400 >> 16)
    /* 110670 0020F6F0 02002897 */  lhu        $8, 0x2($25)
    /* 110674 0020F6F4 00D42134 */  ori        $1, $1, (0x1000D400 & 0xFFFF)
    /* 110678 0020F6F8 1000298F */  lw         $9, 0x10($25)
    /* 11067C 0020F6FC 20100801 */  add        $2, $8, $8 /* handwritten instruction */
    /* 110680 0020F700 100029AC */  sw         $9, 0x10($1)
    /* 110684 0020F704 20400201 */  add        $8, $8, $2 /* handwritten instruction */
    /* 110688 0020F708 200028AC */  sw         $8, 0x20($1)
    /* 11068C 0020F70C 00200220 */  addi       $2, $0, 0x2000 /* handwritten instruction */
    /* 110690 0020F710 800022AC */  sw         $2, 0x80($1)
    /* 110694 0020F714 00010220 */  addi       $2, $0, 0x100 /* handwritten instruction */
    /* 110698 0020F718 000022AC */  sw         $2, 0x0($1)
    /* 11069C 0020F71C 00410800 */  sll        $8, $8, 4
    /* 1106A0 0020F720 0800228F */  lw         $2, 0x8($25)
    /* 1106A4 0020F724 00700C3C */  lui        $12, (0x70002000 >> 16)
    /* 1106A8 0020F728 00208921 */  addi       $9, $12, (0x70002000 & 0xFFFF) /* handwritten instruction */
    /* 1106AC 0020F72C 20400901 */  add        $8, $8, $9 /* handwritten instruction */
    /* 1106B0 0020F730 00A8A248 */  qmtc2.ni   $2, $vf21
    /* 1106B4 0020F734 1C00398F */  lw         $25, 0x1C($25)
    /* 1106B8 0020F738 2C25154B */  vsub.x     $vf20, $vf4, $vf21
    /* 1106BC 0020F73C 00000000 */  nop
.align 2
  .L0020F740:
    /* 1106C0 0020F740 0000228C */  lw         $2, 0x0($1)
    /* 1106C4 0020F744 00014230 */  andi       $2, $2, 0x100
    /* 1106C8 0020F748 00000000 */  nop
    /* 1106CC 0020F74C 00000000 */  nop
    /* 1106D0 0020F750 00000000 */  nop
    /* 1106D4 0020F754 FAFF4014 */  bnez       $2, .L0020F740
    /* 1106D8 0020F758 00000000 */   nop
.align 2
  .L0020F75C:
    /* 1106DC 0020F75C 2C00218D */  lw         $1, 0x2C($9)
    /* 1106E0 0020F760 30002921 */  addi       $9, $9, 0x30 /* handwritten instruction */
    /* 1106E4 0020F764 D0FF2DD9 */  lqc2       $vf13, -0x30($9)
    /* 1106E8 0020F768 E0FF2ED9 */  lqc2       $vf14, -0x20($9)
    /* 1106EC 0020F76C F0FF2FD9 */  lqc2       $vf15, -0x10($9)
    /* 1106F0 0020F770 00002AD8 */  lqc2       $vf10, 0x0($1)
    /* 1106F4 0020F774 10002BD8 */  lqc2       $vf11, 0x10($1)
    /* 1106F8 0020F778 20002CD8 */  lqc2       $vf12, 0x20($1)
    /* 1106FC 0020F77C 9852F44B */  vmulx.xyzw $vf10, $vf10, $vf20x
    /* 110700 0020F780 586BF54B */  vmulx.xyzw $vf13, $vf13, $vf21x
    /* 110704 0020F784 D85AD44B */  vmulx.xyz  $vf11, $vf11, $vf20x
    /* 110708 0020F788 9873D54B */  vmulx.xyz  $vf14, $vf14, $vf21x
    /* 11070C 0020F78C 1863D44B */  vmulx.xyz  $vf12, $vf12, $vf20x
    /* 110710 0020F790 D87BD54B */  vmulx.xyz  $vf15, $vf15, $vf21x
    /* 110714 0020F794 2854ED4B */  vadd.xyzw  $vf16, $vf10, $vf13
    /* 110718 0020F798 AA54ED4B */  vmul.xyzw  $vf18, $vf10, $vf13
    /* 11071C 0020F79C E85ACE4B */  vadd.xyz   $vf11, $vf11, $vf14
    /* 110720 0020F7A0 2863CF4B */  vadd.xyz   $vf12, $vf12, $vf15
    /* 110724 0020F7A4 6A84F04B */  vmul.xyzw  $vf17, $vf16, $vf16
    /* 110728 0020F7A8 3C90924A */  .word      0x4A92903C    # vaddax.y   ACC, $vf18, $vf18x
    /* 11072C 0020F7AC BE20924A */  .word      0x4A9220BE    # vmaddaz.y  ACC, $vf4, $vf18z
    /* 110730 0020F7B0 8B24924A */  vmaddw.y   $vf18, $vf4, $vf18w
    /* 110734 0020F7B4 3D88114B */  .word      0x4B11883D    # vadday.x   ACC, $vf17, $vf17y
    /* 110738 0020F7B8 BE20114B */  .word      0x4B1120BE    # vmaddaz.x  ACC, $vf4, $vf17z
    /* 11073C 0020F7BC 4B24114B */  vmaddw.x   $vf17, $vf4, $vf17w
    /* 110740 0020F7C0 00902248 */  qmfc2.ni   $2, $vf18
    /* 110744 0020F7C4 07004104 */  bgez       $2, .L0020F7E4
    /* 110748 0020F7C8 00000000 */   nop
    /* 11074C 0020F7CC 2C54ED4B */  vsub.xyzw  $vf16, $vf10, $vf13
    /* 110750 0020F7D0 6A84F04B */  vmul.xyzw  $vf17, $vf16, $vf16
    /* 110754 0020F7D4 3D88114B */  .word      0x4B11883D    # vadday.x   ACC, $vf17, $vf17y
    /* 110758 0020F7D8 BE20114B */  .word      0x4B1120BE    # vmaddaz.x  ACC, $vf4, $vf17z
    /* 11075C 0020F7DC 4B24114B */  vmaddw.x   $vf17, $vf4, $vf17w
    /* 110760 0020F7E0 00000000 */  nop
.align 2
  .L0020F7E4:
    /* 110764 0020F7E4 BE03714A */  .word      0x4A7103BE    # vrsqrt     Q, $vf0w, $vf17x
    /* 110768 0020F7E8 00000000 */  nop
    /* 11076C 0020F7EC 10002BF8 */  sqc2       $vf11, 0x10($1)
    /* 110770 0020F7F0 20002CF8 */  sqc2       $vf12, 0x20($1)
    /* 110774 0020F7F4 1C00228C */  lw         $2, 0x1C($1)
    /* 110778 0020F7F8 ECFF238D */  lw         $3, -0x14($9)
    /* 11077C 0020F7FC 03004014 */  bnez       $2, .L0020F80C
    /* 110780 0020F800 00000000 */   nop
    /* 110784 0020F804 1C0023AC */  sw         $3, 0x1C($1)
    /* 110788 0020F808 00000000 */  nop
.align 2
  .L0020F80C:
    /* 11078C 0020F80C BF03004A */  .word      0x4A0003BF    # vwaitq
    /* 110790 0020F810 9C82E04B */  .word      0x4BE0829C    # vmulq.xyzw $vf10, $vf16, Q
    /* 110794 0020F814 D1FF2815 */  bne        $9, $8, .L0020F75C
    /* 110798 0020F818 00002AF8 */   sqc2      $vf10, 0x0($1)
    /* 11079C 0020F81C B2FF2017 */  bnez       $25, func_0020F6E8
    /* 1107A0 0020F820 00000000 */   nop
.align 2
  .L0020F824:
    /* 1107A4 0020F824 3C03F34B */  vmove.xyzw $vf19, $vf0
    /* 1107A8 0020F828 00000000 */  nop
.align 2
  .L0020F82C:
    /* 1107AC 0020F82C 3F000013 */  beqz       $24, .L0020F92C
    /* 1107B0 0020F830 00000323 */   addi      $3, $24, 0x0 /* handwritten instruction */
    /* 1107B4 0020F834 0400618C */  lw         $1, 0x4($3)
    /* 1107B8 0020F838 03006290 */  lbu        $2, 0x3($3)
    /* 1107BC 0020F83C 000028D8 */  lqc2       $vf8, 0x0($1)
    /* 1107C0 0020F840 10002AD8 */  lqc2       $vf10, 0x10($1)
    /* 1107C4 0020F844 20002CD8 */  lqc2       $vf12, 0x20($1)
    /* 1107C8 0020F848 100069D8 */  lqc2       $vf9, 0x10($3)
    /* 1107CC 0020F84C 20006BD8 */  lqc2       $vf11, 0x20($3)
    /* 1107D0 0020F850 30006DD8 */  lqc2       $vf13, 0x30($3)
    /* 1107D4 0020F854 0F004014 */  bnez       $2, .L0020F894
    /* 1107D8 0020F858 0800788C */   lw        $24, 0x8($3)
    /* 1107DC 0020F85C AA4B284A */  vmul.w     $vf14, $vf9, $vf8
    /* 1107E0 0020F860 EA4BC84B */  vmul.xyz   $vf15, $vf9, $vf8
    /* 1107E4 0020F864 1B4CC84B */  vmulw.xyz  $vf16, $vf9, $vf8w
    /* 1107E8 0020F868 5B44C94B */  vmulw.xyz  $vf17, $vf8, $vf9w
    /* 1107EC 0020F86C FE42C94B */  .word      0x4BC942FE    # vopmula.xyz ACC, $vf8, $vf9
    /* 1107F0 0020F870 AE4CC84B */  .word      0x4BC84CAE    # vopmsub.xyz $vf18, $vf9, $vf8
    /* 1107F4 0020F874 3D780F4B */  .word      0x4B0F783D    # vadday.x   ACC, $vf15, $vf15y
    /* 1107F8 0020F878 CA230F4B */  vmaddz.x   $vf15, $vf4, $vf15z
    /* 1107FC 0020F87C 2882D14B */  vadd.xyz   $vf8, $vf16, $vf17
    /* 110800 0020F880 2842D24B */  vadd.xyz   $vf8, $vf8, $vf18
    /* 110804 0020F884 04722F4A */  vsubx.w    $vf8, $vf14, $vf15x
    /* 110808 0020F888 EA54CB4B */  vmul.xyz   $vf19, $vf10, $vf11
    /* 11080C 0020F88C 473E0808 */  j          func_0020F91C
    /* 110810 0020F890 2863CD4B */   vadd.xyz  $vf12, $vf12, $vf13
.align 2
  .L0020F894:
    /* 110814 0020F894 0C00638C */  lw         $3, 0xC($3)
    /* 110818 0020F898 00A0A348 */  qmtc2.ni   $3, $vf20
    /* 11081C 0020F89C 0405344A */  vsubx.w    $vf20, $vf0, $vf20x
    /* 110820 0020F8A0 00000000 */  nop
    /* 110824 0020F8A4 1B42F44B */  vmulw.xyzw $vf8, $vf8, $vf20w
    /* 110828 0020F8A8 584AF44B */  vmulx.xyzw $vf9, $vf9, $vf20x
    /* 11082C 0020F8AC 9B52D44B */  vmulw.xyz  $vf10, $vf10, $vf20w
    /* 110830 0020F8B0 D85AD44B */  vmulx.xyz  $vf11, $vf11, $vf20x
    /* 110834 0020F8B4 1B63D44B */  vmulw.xyz  $vf12, $vf12, $vf20w
    /* 110838 0020F8B8 586BD44B */  vmulx.xyz  $vf13, $vf13, $vf20x
    /* 11083C 0020F8BC 2844E94B */  vadd.xyzw  $vf16, $vf8, $vf9
    /* 110840 0020F8C0 AA44E94B */  vmul.xyzw  $vf18, $vf8, $vf9
    /* 110844 0020F8C4 E854CB4B */  vadd.xyz   $vf19, $vf10, $vf11
    /* 110848 0020F8C8 2863CD4B */  vadd.xyz   $vf12, $vf12, $vf13
    /* 11084C 0020F8CC 6A84F04B */  vmul.xyzw  $vf17, $vf16, $vf16
    /* 110850 0020F8D0 3C90924A */  .word      0x4A92903C    # vaddax.y   ACC, $vf18, $vf18x
    /* 110854 0020F8D4 BE20924A */  .word      0x4A9220BE    # vmaddaz.y  ACC, $vf4, $vf18z
    /* 110858 0020F8D8 8B24924A */  vmaddw.y   $vf18, $vf4, $vf18w
    /* 11085C 0020F8DC 3D88114B */  .word      0x4B11883D    # vadday.x   ACC, $vf17, $vf17y
    /* 110860 0020F8E0 BE20114B */  .word      0x4B1120BE    # vmaddaz.x  ACC, $vf4, $vf17z
    /* 110864 0020F8E4 4B24114B */  vmaddw.x   $vf17, $vf4, $vf17w
    /* 110868 0020F8E8 00902248 */  qmfc2.ni   $2, $vf18
    /* 11086C 0020F8EC 07004104 */  bgez       $2, .L0020F90C
    /* 110870 0020F8F0 00000000 */   nop
    /* 110874 0020F8F4 2C44E94B */  vsub.xyzw  $vf16, $vf8, $vf9
    /* 110878 0020F8F8 6A84F04B */  vmul.xyzw  $vf17, $vf16, $vf16
    /* 11087C 0020F8FC 3D88114B */  .word      0x4B11883D    # vadday.x   ACC, $vf17, $vf17y
    /* 110880 0020F900 BE20114B */  .word      0x4B1120BE    # vmaddaz.x  ACC, $vf4, $vf17z
    /* 110884 0020F904 4B24114B */  vmaddw.x   $vf17, $vf4, $vf17w
    /* 110888 0020F908 00000000 */  nop
.align 2
  .L0020F90C:
    /* 11088C 0020F90C BE03714A */  .word      0x4A7103BE    # vrsqrt     Q, $vf0w, $vf17x
    /* 110890 0020F910 00000000 */  nop
    /* 110894 0020F914 BF03004A */  .word      0x4A0003BF    # vwaitq
    /* 110898 0020F918 1C82E04B */  .word      0x4BE0821C    # vmulq.xyzw $vf8, $vf16, Q
.align 2
  alabel func_0020F91C
    /* 11089C 0020F91C 000028F8 */  sqc2       $vf8, 0x0($1)
    /* 1108A0 0020F920 100033F8 */  sqc2       $vf19, 0x10($1)
    /* 1108A4 0020F924 C1FF0017 */  bnez       $24, .L0020F82C
    /* 1108A8 0020F928 20002CF8 */   sqc2      $vf12, 0x20($1)
.align 2
  .L0020F92C:
    /* 1108AC 0020F92C 1C00E28D */  lw         $2, 0x1C($15)
    /* 1108B0 0020F930 0010033C */  lui        $3, (0x1000D400 >> 16)
    /* 1108B4 0020F934 001C0134 */  ori        $1, $0, 0x1C00
    /* 1108B8 0020F938 00D46334 */  ori        $3, $3, (0x1000D400 & 0xFFFF)
    /* 1108BC 0020F93C 800061AC */  sw         $1, 0x80($3)
    /* 1108C0 0020F940 80290A00 */  sll        $5, $10, 6
    /* 1108C4 0020F944 80200A00 */  sll        $4, $10, 2
    /* 1108C8 0020F948 2028AE00 */  add        $5, $5, $14 /* handwritten instruction */
    /* 1108CC 0020F94C 100062AC */  sw         $2, 0x10($3)
    /* 1108D0 0020F950 FC1BA520 */  addi       $5, $5, 0x1BFC /* handwritten instruction */
    /* 1108D4 0020F954 200064AC */  sw         $4, 0x20($3)
    /* 1108D8 0020F958 FFFF0620 */  addi       $6, $0, -0x1 /* handwritten instruction */
    /* 1108DC 0020F95C 0000A6AC */  sw         $6, 0x0($5)
    /* 1108E0 0020F960 00012134 */  ori        $1, $1, 0x100
    /* 1108E4 0020F964 000061AC */  sw         $1, 0x0($3)
    /* 1108E8 0020F968 00000000 */  nop
    /* 1108EC 0020F96C 80610A00 */  sll        $12, $10, 6
    /* 1108F0 0020F970 2D38C001 */  daddu      $7, $14, $0
    /* 1108F4 0020F974 20608E01 */  add        $12, $12, $14 /* handwritten instruction */
    /* 1108F8 0020F978 00000000 */  nop
.align 2
  .L0020F97C:
    /* 1108FC 0020F97C 0000EAD8 */  lqc2       $vf10, (0x70000000 & 0xFFFF)($7)
    /* 110900 0020F980 00000000 */  nop
    /* 110904 0020F984 3C0BF04B */  vmove.xyzw $vf16, $vf1
    /* 110908 0020F988 E852EA4B */  vadd.xyzw  $vf11, $vf10, $vf10
    /* 11090C 0020F98C 3C13F14B */  vmove.xyzw $vf17, $vf2
    /* 110910 0020F990 3C1BF24B */  vmove.xyzw $vf18, $vf3
    /* 110914 0020F994 3C03F34B */  vmove.xyzw $vf19, $vf0
    /* 110918 0020F998 1B5BCA4B */  vmulw.xyz  $vf12, $vf11, $vf10w
    /* 11091C 0020F99C 585BCA4B */  vmulx.xyz  $vf13, $vf11, $vf10x
    /* 110920 0020F9A0 995BCA4A */  vmuly.yz   $vf14, $vf11, $vf10y
    /* 110924 0020F9A4 DA5B4A4A */  vmulz.z    $vf15, $vf11, $vf10z
    /* 110928 0020F9A8 42040C4B */  vaddz.x    $vf17, $vf0, $vf12z
    /* 11092C 0020F9AC 85040C4B */  vsuby.x    $vf18, $vf0, $vf12y
    /* 110930 0020F9B0 80048C4A */  vaddx.y    $vf18, $vf0, $vf12x
    /* 110934 0020F9B4 05840E4B */  vsuby.x    $vf16, $vf16, $vf14y
    /* 110938 0020F9B8 448C8D4A */  vsubx.y    $vf17, $vf17, $vf13x
    /* 11093C 0020F9BC 84944D4A */  vsubx.z    $vf18, $vf18, $vf13x
    /* 110940 0020F9C0 066C8C4A */  vsubz.y    $vf16, $vf13, $vf12z
    /* 110944 0020F9C4 016C4C4A */  vaddy.z    $vf16, $vf13, $vf12y
    /* 110948 0020F9C8 44744C4A */  vsubx.z    $vf17, $vf14, $vf12x
    /* 11094C 0020F9CC 418C0D4B */  vaddy.x    $vf17, $vf17, $vf13y
    /* 110950 0020F9D0 82940D4B */  vaddz.x    $vf18, $vf18, $vf13z
    /* 110954 0020F9D4 82948E4A */  vaddz.y    $vf18, $vf18, $vf14z
    /* 110958 0020F9D8 4000E720 */  addi       $7, $7, (0x70000040 & 0xFFFF) /* handwritten instruction */
    /* 11095C 0020F9DC 06840F4B */  vsubz.x    $vf16, $vf16, $vf15z
    /* 110960 0020F9E0 DCFFE88C */  lw         $8, -0x24($7)
    /* 110964 0020F9E4 468C8F4A */  vsubz.y    $vf17, $vf17, $vf15z
    /* 110968 0020F9E8 ECFFE98C */  lw         $9, -0x14($7)
    /* 11096C 0020F9EC 85944E4A */  vsuby.z    $vf18, $vf18, $vf14y
    /* 110970 0020F9F0 D0FFE8D8 */  lqc2       $vf8, -0x30($7)
    /* 110974 0020F9F4 00000000 */  nop
    /* 110978 0020F9F8 05000011 */  beqz       $8, .L0020FA10
    /* 11097C 0020F9FC E0FFE9D8 */   lqc2      $vf9, -0x20($7)
    /* 110980 0020FA00 1884C84B */  vmulx.xyz  $vf16, $vf16, $vf8x
    /* 110984 0020FA04 598CC84B */  vmuly.xyz  $vf17, $vf17, $vf8y
    /* 110988 0020FA08 9A94C84B */  vmulz.xyz  $vf18, $vf18, $vf8z
    /* 11098C 0020FA0C 00000000 */  nop
.align 2
  .L0020FA10:
    /* 110990 0020FA10 05002015 */  bnez       $9, .L0020FA28
    /* 110994 0020FA14 3C0BEC4B */   vmove.xyzw $vf12, $vf1
    /* 110998 0020FA18 3C13ED4B */  vmove.xyzw $vf13, $vf2
    /* 11099C 0020FA1C 3C1BEE4B */  vmove.xyzw $vf14, $vf3
    /* 1109A0 0020FA20 8E3E0808 */  j          func_0020FA38
    /* 1109A4 0020FA24 3C03EF4B */   vmove.xyzw $vf15, $vf0
.align 2
  .L0020FA28:
    /* 1109A8 0020FA28 00002CD9 */  lqc2       $vf12, 0x0($9)
    /* 1109AC 0020FA2C 10002DD9 */  lqc2       $vf13, 0x10($9)
    /* 1109B0 0020FA30 20002ED9 */  lqc2       $vf14, 0x20($9)
    /* 1109B4 0020FA34 30002FD9 */  lqc2       $vf15, 0x30($9)
.align 2
  alabel func_0020FA38
    /* 1109B8 0020FA38 E89CC94B */  vadd.xyz   $vf19, $vf19, $vf9
    /* 1109BC 0020FA3C BC61F04B */  .word      0x4BF061BC    # vmulax.xyzw ACC, $vf12, $vf16x
    /* 1109C0 0020FA40 BD68F04B */  .word      0x4BF068BD    # vmadday.xyzw ACC, $vf13, $vf16y
    /* 1109C4 0020FA44 0A75F04B */  vmaddz.xyzw $vf20, $vf14, $vf16z
    /* 1109C8 0020FA48 BC61F14B */  .word      0x4BF161BC    # vmulax.xyzw ACC, $vf12, $vf17x
    /* 1109CC 0020FA4C BD68F14B */  .word      0x4BF168BD    # vmadday.xyzw ACC, $vf13, $vf17y
    /* 1109D0 0020FA50 4A75F14B */  vmaddz.xyzw $vf21, $vf14, $vf17z
    /* 1109D4 0020FA54 BC61F24B */  .word      0x4BF261BC    # vmulax.xyzw ACC, $vf12, $vf18x
    /* 1109D8 0020FA58 BD68F24B */  .word      0x4BF268BD    # vmadday.xyzw ACC, $vf13, $vf18y
    /* 1109DC 0020FA5C 8A75F24B */  vmaddz.xyzw $vf22, $vf14, $vf18z
    /* 1109E0 0020FA60 BC61F34B */  .word      0x4BF361BC    # vmulax.xyzw ACC, $vf12, $vf19x
    /* 1109E4 0020FA64 BD68F34B */  .word      0x4BF368BD    # vmadday.xyzw ACC, $vf13, $vf19y
    /* 1109E8 0020FA68 BE70F34B */  .word      0x4BF370BE    # vmaddaz.xyzw ACC, $vf14, $vf19z
    /* 1109EC 0020FA6C CB7DE04B */  vmaddw.xyzw $vf23, $vf15, $vf0w
    /* 1109F0 0020FA70 C0FFF4F8 */  sqc2       $vf20, -0x40($7)
    /* 1109F4 0020FA74 D0FFF5F8 */  sqc2       $vf21, -0x30($7)
    /* 1109F8 0020FA78 E0FFF6F8 */  sqc2       $vf22, -0x20($7)
    /* 1109FC 0020FA7C 00000000 */  nop
    /* 110A00 0020FA80 BEFFEC14 */  bne        $7, $12, .L0020F97C
    /* 110A04 0020FA84 F0FFF7F8 */   sqc2      $vf23, -0x10($7)
    /* 110A08 0020FA88 0400E18D */  lw         $1, 0x4($15)
    /* 110A0C 0020FA8C 00000000 */  nop
    /* 110A10 0020FA90 FCFFAC8D */  lw         $12, -0x4($13)
    /* 110A14 0020FA94 00000000 */  nop
    /* 110A18 0020FA98 00000000 */  nop
    /* 110A1C 0020FA9C 00000000 */  nop
    /* 110A20 0020FAA0 18002010 */  beqz       $1, func_0020FB04
    /* 110A24 0020FAA4 22488D01 */   sub       $9, $12, $13 /* handwritten instruction */
.align 2
  alabel func_0020FAA8
    /* 110A28 0020FAA8 14008011 */  beqz       $12, .L0020FAFC
    /* 110A2C 0020FAAC 40580900 */   sll       $11, $9, 1
    /* 110A30 0020FAB0 000081D9 */  lqc2       $vf1, 0x0($12)
    /* 110A34 0020FAB4 20586E01 */  add        $11, $11, $14 /* handwritten instruction */
    /* 110A38 0020FAB8 100088D9 */  lqc2       $vf8, 0x10($12)
    /* 110A3C 0020FABC BC09C64B */  .word      0x4BC609BC    # vmulax.xyz ACC, $vf1, $vf6x
    /* 110A40 0020FAC0 4840C74B */  vmaddx.xyz $vf1, $vf8, $vf7x
    /* 110A44 0020FAC4 000062D9 */  lqc2       $vf2, 0x0($11)
    /* 110A48 0020FAC8 100063D9 */  lqc2       $vf3, 0x10($11)
    /* 110A4C 0020FACC 200064D9 */  lqc2       $vf4, 0x20($11)
    /* 110A50 0020FAD0 00000000 */  nop
    /* 110A54 0020FAD4 9810C14B */  vmulx.xyz  $vf2, $vf2, $vf1x
    /* 110A58 0020FAD8 0C008C8D */  lw         $12, 0xC($12)
    /* 110A5C 0020FADC D918C14B */  vmuly.xyz  $vf3, $vf3, $vf1y
    /* 110A60 0020FAE0 00000000 */  nop
    /* 110A64 0020FAE4 1A21C14B */  vmulz.xyz  $vf4, $vf4, $vf1z
    /* 110A68 0020FAE8 22488D01 */  sub        $9, $12, $13 /* handwritten instruction */
    /* 110A6C 0020FAEC 000062F9 */  sqc2       $vf2, 0x0($11)
    /* 110A70 0020FAF0 100063F9 */  sqc2       $vf3, 0x10($11)
    /* 110A74 0020FAF4 AA3E0808 */  j          func_0020FAA8
    /* 110A78 0020FAF8 200064F9 */   sqc2      $vf4, 0x20($11)
.align 2
  .L0020FAFC:
    /* 110A7C 0020FAFC D33E0808 */  j          func_0020FB4C
    /* 110A80 0020FB00 00000000 */   nop
.align 2
  alabel func_0020FB04
    /* 110A84 0020FB04 11008011 */  beqz       $12, func_0020FB4C
    /* 110A88 0020FB08 40580900 */   sll       $11, $9, 1
    /* 110A8C 0020FB0C 000081D9 */  lqc2       $vf1, 0x0($12)
    /* 110A90 0020FB10 20586E01 */  add        $11, $11, $14 /* handwritten instruction */
    /* 110A94 0020FB14 000062D9 */  lqc2       $vf2, 0x0($11)
    /* 110A98 0020FB18 100063D9 */  lqc2       $vf3, 0x10($11)
    /* 110A9C 0020FB1C 200064D9 */  lqc2       $vf4, 0x20($11)
    /* 110AA0 0020FB20 00000000 */  nop
    /* 110AA4 0020FB24 9810C14B */  vmulx.xyz  $vf2, $vf2, $vf1x
    /* 110AA8 0020FB28 0C008C8D */  lw         $12, 0xC($12)
    /* 110AAC 0020FB2C D918C14B */  vmuly.xyz  $vf3, $vf3, $vf1y
    /* 110AB0 0020FB30 00000000 */  nop
    /* 110AB4 0020FB34 1A21C14B */  vmulz.xyz  $vf4, $vf4, $vf1z
    /* 110AB8 0020FB38 22488D01 */  sub        $9, $12, $13 /* handwritten instruction */
    /* 110ABC 0020FB3C 000062F9 */  sqc2       $vf2, 0x0($11)
    /* 110AC0 0020FB40 100063F9 */  sqc2       $vf3, 0x10($11)
    /* 110AC4 0020FB44 C13E0808 */  j          func_0020FB04
    /* 110AC8 0020FB48 200064F9 */   sqc2      $vf4, 0x20($11)
.align 2
  alabel func_0020FB4C
    /* 110ACC 0020FB4C 0000A78C */  lw         $7, 0x0($5)
    /* 110AD0 0020FB50 FFFF0820 */  addi       $8, $0, -0x1 /* handwritten instruction */
    /* 110AD4 0020FB54 00000000 */  nop
    /* 110AD8 0020FB58 00000000 */  nop
    /* 110ADC 0020FB5C 00000000 */  nop
    /* 110AE0 0020FB60 FAFFE810 */  beq        $7, $8, func_0020FB4C
    /* 110AE4 0020FB64 00000000 */   nop
    /* 110AE8 0020FB68 00700E3C */  lui        $14, (0x70000040 >> 16)
    /* 110AEC 0020FB6C 80610A00 */  sll        $12, $10, 6
    /* 110AF0 0020FB70 20608E01 */  add        $12, $12, $14 /* handwritten instruction */
    /* 110AF4 0020FB74 001CCD35 */  ori        $13, $14, (0x70001C00 & 0xFFFF)
.align 2
  .L0020FB78:
    /* 110AF8 0020FB78 3000AFD9 */  lqc2       $vf15, 0x30($13)
    /* 110AFC 0020FB7C 2000AED9 */  lqc2       $vf14, 0x20($13)
    /* 110B00 0020FB80 1000ADD9 */  lqc2       $vf13, 0x10($13)
    /* 110B04 0020FB84 0000ACD9 */  lqc2       $vf12, 0x0($13)
    /* 110B08 0020FB88 0000D4D9 */  lqc2       $vf20, (0x70000000 & 0xFFFF)($14)
    /* 110B0C 0020FB8C 1000D5D9 */  lqc2       $vf21, (0x70000010 & 0xFFFF)($14)
    /* 110B10 0020FB90 2000D6D9 */  lqc2       $vf22, (0x70000020 & 0xFFFF)($14)
    /* 110B14 0020FB94 3000D7D9 */  lqc2       $vf23, (0x70000030 & 0xFFFF)($14)
    /* 110B18 0020FB98 BCA1EF4B */  .word      0x4BEFA1BC    # vmulax.xyzw ACC, $vf20, $vf15x
    /* 110B1C 0020FB9C BDA8EF4B */  .word      0x4BEFA8BD    # vmadday.xyzw ACC, $vf21, $vf15y
    /* 110B20 0020FBA0 BEB0EF4B */  .word      0x4BEFB0BE    # vmaddaz.xyzw ACC, $vf22, $vf15z
    /* 110B24 0020FBA4 CBBCE04B */  vmaddw.xyzw $vf19, $vf23, $vf0w
    /* 110B28 0020FBA8 BCA1EC4B */  .word      0x4BECA1BC    # vmulax.xyzw ACC, $vf20, $vf12x
    /* 110B2C 0020FBAC BDA8EC4B */  .word      0x4BECA8BD    # vmadday.xyzw ACC, $vf21, $vf12y
    /* 110B30 0020FBB0 0AB4EC4B */  vmaddz.xyzw $vf16, $vf22, $vf12z
    /* 110B34 0020FBB4 BCA1ED4B */  .word      0x4BEDA1BC    # vmulax.xyzw ACC, $vf20, $vf13x
    /* 110B38 0020FBB8 BDA8ED4B */  .word      0x4BEDA8BD    # vmadday.xyzw ACC, $vf21, $vf13y
    /* 110B3C 0020FBBC 4AB4ED4B */  vmaddz.xyzw $vf17, $vf22, $vf13z
    /* 110B40 0020FBC0 BCA1EE4B */  .word      0x4BEEA1BC    # vmulax.xyzw ACC, $vf20, $vf14x
    /* 110B44 0020FBC4 BDA8EE4B */  .word      0x4BEEA8BD    # vmadday.xyzw ACC, $vf21, $vf14y
    /* 110B48 0020FBC8 8AB4EE4B */  vmaddz.xyzw $vf18, $vf22, $vf14z
    /* 110B4C 0020FBCC 0000D0F9 */  sqc2       $vf16, (0x70000000 & 0xFFFF)($14)
    /* 110B50 0020FBD0 1000D1F9 */  sqc2       $vf17, (0x70000010 & 0xFFFF)($14)
    /* 110B54 0020FBD4 2000D2F9 */  sqc2       $vf18, (0x70000020 & 0xFFFF)($14)
    /* 110B58 0020FBD8 4000AD21 */  addi       $13, $13, 0x40 /* handwritten instruction */
    /* 110B5C 0020FBDC 3000D3F9 */  sqc2       $vf19, (0x70000030 & 0xFFFF)($14)
    /* 110B60 0020FBE0 4000CE21 */  addi       $14, $14, (0x70000040 & 0xFFFF) /* handwritten instruction */
    /* 110B64 0020FBE4 E4FF8E15 */  bne        $12, $14, .L0020FB78
    /* 110B68 0020FBE8 00000000 */   nop
    /* 110B6C 0020FBEC 00E83248 */  qmfc2.ni   $18, $vf29
    /* 110B70 0020FBF0 00000000 */  nop
    /* 110B74 0020FBF4 00F03148 */  qmfc2.ni   $17, $vf30
    /* 110B78 0020FBF8 00000000 */  nop
    /* 110B7C 0020FBFC 0800E003 */  jr         $31
    /* 110B80 0020FC00 00F83048 */   qmfc2.ni  $16, $vf31
.align 2
  .L0020FC04:
    /* 110B84 0020FC04 5800E04B */  vmulx.xyzw $vf1, $vf0, $vf0x
    /* 110B88 0020FC08 00700E3C */  lui        $14, (0x70000030 >> 16)
    /* 110B8C 0020FC0C 9800E04B */  vmulx.xyzw $vf2, $vf0, $vf0x
    /* 110B90 0020FC10 3D03E34B */  .word      0x4BE3033D    # vmr32.xyzw $vf3, $vf0
    /* 110B94 0020FC14 4308004B */  vaddw.x    $vf1, $vf1, $vf0w
    /* 110B98 0020FC18 8310804A */  vaddw.y    $vf2, $vf2, $vf0w
    /* 110B9C 0020FC1C 0000C1F9 */  sqc2       $vf1, (0x70000000 & 0xFFFF)($14)
    /* 110BA0 0020FC20 00000000 */  nop
    /* 110BA4 0020FC24 1000C2F9 */  sqc2       $vf2, (0x70000010 & 0xFFFF)($14)
    /* 110BA8 0020FC28 2000C3F9 */  sqc2       $vf3, (0x70000020 & 0xFFFF)($14)
    /* 110BAC 0020FC2C 0800E003 */  jr         $31
    /* 110BB0 0020FC30 3000C0F9 */   sqc2      $vf0, (0x70000030 & 0xFFFF)($14)
endlabel func_0020EF30
    /* 110BB4 0020FC34 00000000 */  nop
