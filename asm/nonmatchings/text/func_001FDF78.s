.align 3
nonmatching func_001FDF78, 0x4BC

glabel func_001FDF78
    /* FEEF8 001FDF78 30FFBD27 */  addiu      $29, $29, -0xD0
    /* FEEFC 001FDF7C 01000224 */  addiu      $2, $0, 0x1
    /* FEF00 001FDF80 5000B27F */  sq         $18, 0x50($29)
    /* FEF04 001FDF84 6000B37F */  sq         $19, 0x60($29)
    /* FEF08 001FDF88 2D908000 */  daddu      $18, $4, $0
    /* FEF0C 001FDF8C 4000B17F */  sq         $17, 0x40($29)
    /* FEF10 001FDF90 2D98C000 */  daddu      $19, $6, $0
    /* FEF14 001FDF94 3000B07F */  sq         $16, 0x30($29)
    /* FEF18 001FDF98 2D88E000 */  daddu      $17, $7, $0
    /* FEF1C 001FDF9C C000BF7F */  sq         $31, 0xC0($29)
    /* FEF20 001FDFA0 2D80A000 */  daddu      $16, $5, $0
    /* FEF24 001FDFA4 B000BE7F */  sq         $30, 0xB0($29)
    /* FEF28 001FDFA8 2D200000 */  daddu      $4, $0, $0
    /* FEF2C 001FDFAC A000B77F */  sq         $23, 0xA0($29)
    /* FEF30 001FDFB0 9000B67F */  sq         $22, 0x90($29)
    /* FEF34 001FDFB4 8000B57F */  sq         $21, 0x80($29)
    /* FEF38 001FDFB8 7000B47F */  sq         $20, 0x70($29)
    /* FEF3C 001FDFBC 8CD1070C */  jal        func_001F4630
    /* FEF40 001FDFC0 1000A2AF */   sw        $2, 0x10($29)
    /* FEF44 001FDFC4 10000324 */  addiu      $3, $0, 0x10
    /* FEF48 001FDFC8 42000424 */  addiu      $4, $0, 0x42
    /* FEF4C 001FDFCC 00800534 */  ori        $5, $0, 0x8000
    /* FEF50 001FDFD0 382E0500 */  dsll       $5, $5, 24
    /* FEF54 001FDFD4 4400A534 */  ori        $5, $5, 0x44
    /* FEF58 001FDFD8 26D3080C */  jal        func_00234C98
    /* FEF5C 001FDFDC 1C00A3AF */   sw        $3, 0x1C($29)
    /* FEF60 001FDFE0 47000424 */  addiu      $4, $0, 0x47
    /* FEF64 001FDFE4 26D3080C */  jal        func_00234C98
    /* FEF68 001FDFE8 4B000524 */   addiu     $5, $0, 0x4B
    /* FEF6C 001FDFEC 00020624 */  addiu      $6, $0, 0x200
    /* FEF70 001FDFF0 C0010724 */  addiu      $7, $0, 0x1C0
    /* FEF74 001FDFF4 00800834 */  ori        $8, $0, 0x8000
    /* FEF78 001FDFF8 38440800 */  dsll       $8, $8, 16
    /* FEF7C 001FDFFC 2D480000 */  daddu      $9, $0, $0
    /* FEF80 001FE000 2D200000 */  daddu      $4, $0, $0
    /* FEF84 001FE004 9005080C */  jal        func_00201640
    /* FEF88 001FE008 2D280000 */   daddu     $5, $0, $0
    /* FEF8C 001FE00C 9AE90434 */  ori        $4, $0, 0xE99A
    /* FEF90 001FE010 6600080C */  jal        func_00200198
    /* FEF94 001FE014 0E000524 */   addiu     $5, $0, 0xE
    /* FEF98 001FE018 23801202 */  subu       $16, $16, $18
    /* FEF9C 001FE01C 23883302 */  subu       $17, $17, $19
    /* FEFA0 001FE020 00811000 */  sll        $16, $16, 4
    /* FEFA4 001FE024 00891100 */  sll        $17, $17, 4
    /* FEFA8 001FE028 2D480000 */  daddu      $9, $0, $0
    /* FEFAC 001FE02C 2D204000 */  daddu      $4, $2, $0
    /* FEFB0 001FE030 2D300000 */  daddu      $6, $0, $0
    /* FEFB4 001FE034 2D380002 */  daddu      $7, $16, $0
    /* FEFB8 001FE038 2D402002 */  daddu      $8, $17, $0
    /* FEFBC 001FE03C 2D500000 */  daddu      $10, $0, $0
    /* FEFC0 001FE040 80000B24 */  addiu      $11, $0, 0x80
    /* FEFC4 001FE044 A402080C */  jal        func_00200A90
    /* FEFC8 001FE048 2D280000 */   daddu     $5, $0, $0
    /* FEFCC 001FE04C 08000424 */  addiu      $4, $0, 0x8
    /* FEFD0 001FE050 26D3080C */  jal        func_00234C98
    /* FEFD4 001FE054 2D280000 */   daddu     $5, $0, $0
    /* FEFD8 001FE058 9AE90434 */  ori        $4, $0, 0xE99A
    /* FEFDC 001FE05C 6600080C */  jal        func_00200198
    /* FEFE0 001FE060 0F000524 */   addiu     $5, $0, 0xF
    /* FEFE4 001FE064 1600093C */  lui        $9, %hi(D_0015F538)
    /* FEFE8 001FE068 38F5298D */  lw         $9, %lo(D_0015F538)($9)
    /* FEFEC 001FE06C 2D204000 */  daddu      $4, $2, $0
    /* FEFF0 001FE070 2D380002 */  daddu      $7, $16, $0
    /* FEFF4 001FE074 2D402002 */  daddu      $8, $17, $0
    /* FEFF8 001FE078 FF0F2931 */  andi       $9, $9, 0xFFF
    /* FEFFC 001FE07C 2D280000 */  daddu      $5, $0, $0
    /* FF000 001FE080 2D300000 */  daddu      $6, $0, $0
    /* FF004 001FE084 2D500000 */  daddu      $10, $0, $0
    /* FF008 001FE088 A402080C */  jal        func_00200A90
    /* FF00C 001FE08C 80000B24 */   addiu     $11, $0, 0x80
    /* FF010 001FE090 08000424 */  addiu      $4, $0, 0x8
    /* FF014 001FE094 26D3080C */  jal        func_00234C98
    /* FF018 001FE098 05000524 */   addiu     $5, $0, 0x5
    /* FF01C 001FE09C 1E00043C */  lui        $4, %hi(D_001DE1A8)
    /* FF020 001FE0A0 A8E18424 */  addiu      $4, $4, %lo(D_001DE1A8)
    /* FF024 001FE0A4 10008424 */  addiu      $4, $4, 0x10
    /* FF028 001FE0A8 2000A4AF */  sw         $4, 0x20($29)
    /* FF02C 001FE0AC 00000000 */  nop
.align 2
  .L001FE0B0:
    /* FF030 001FE0B0 2000A38F */  lw         $3, 0x20($29)
    /* FF034 001FE0B4 0000628C */  lw         $2, 0x0($3)
    /* FF038 001FE0B8 C5004010 */  beqz       $2, .L001FE3D0
    /* FF03C 001FE0BC 1000A48F */   lw        $4, 0x10($29)
    /* FF040 001FE0C0 1400033C */  lui        $3, %hi(D_0013DE60)
    /* FF044 001FE0C4 60DE6324 */  addiu      $3, $3, %lo(D_0013DE60)
    /* FF048 001FE0C8 21108300 */  addu       $2, $4, $3
    /* FF04C 001FE0CC 00004390 */  lbu        $3, 0x0($2)
    /* FF050 001FE0D0 07006014 */  bnez       $3, .L001FE0F0
    /* FF054 001FE0D4 03000524 */   addiu     $5, $0, 0x3
    /* FF058 001FE0D8 1400023C */  lui        $2, %hi(D_0013DE48)
    /* FF05C 001FE0DC 48DE4224 */  addiu      $2, $2, %lo(D_0013DE48)
    /* FF060 001FE0E0 02000524 */  addiu      $5, $0, 0x2
    /* FF064 001FE0E4 21188200 */  addu       $3, $4, $2
    /* FF068 001FE0E8 00006290 */  lbu        $2, 0x0($3)
    /* FF06C 001FE0EC 0A280200 */  movz       $5, $0, $2
.align 2
  .L001FE0F0:
    /* FF070 001FE0F0 B700A010 */  beqz       $5, .L001FE3D0
    /* FF074 001FE0F4 2000A38F */   lw        $3, 0x20($29)
    /* FF078 001FE0F8 2000A48F */  lw         $4, 0x20($29)
    /* FF07C 001FE0FC 0000638C */  lw         $3, 0x0($3)
    /* FF080 001FE100 1600023C */  lui        $2, %hi(D_0015EE80)
    /* FF084 001FE104 80EE428C */  lw         $2, %lo(D_0015EE80)($2)
    /* FF088 001FE108 1400A3AF */  sw         $3, 0x14($29)
    /* FF08C 001FE10C 09004010 */  beqz       $2, .L001FE134
    /* FF090 001FE110 04009E8C */   lw        $30, 0x4($4)
    /* FF094 001FE114 C0010224 */  addiu      $2, $0, 0x1C0
    /* FF098 001FE118 A0010324 */  addiu      $3, $0, 0x1A0
    /* FF09C 001FE11C 1810C203 */  mult       $2, $30, $2
    /* FF0A0 001FE120 01006050 */  beql       $3, $0, .L001FE128
    /* FF0A4 001FE124 CD010000 */   break     0, 7
.align 2
  .L001FE128:
    /* FF0A8 001FE128 1A004300 */  div        $0, $2, $3
    /* FF0AC 001FE12C 12100000 */  mflo       $2
    /* FF0B0 001FE130 2DF04000 */  daddu      $30, $2, $0
.align 2
  .L001FE134:
    /* FF0B4 001FE134 03000224 */  addiu      $2, $0, 0x3
    /* FF0B8 001FE138 1400A210 */  beq        $5, $2, .L001FE18C
    /* FF0BC 001FE13C 02000224 */   addiu     $2, $0, 0x2
    /* FF0C0 001FE140 1E00A214 */  bne        $5, $2, .L001FE1BC
    /* FF0C4 001FE144 1A00033C */   lui       $3, %hi(D_001A01F0)
    /* FF0C8 001FE148 30E6070C */  jal        func_001F98C0
    /* FF0CC 001FE14C 16000424 */   addiu     $4, $0, 0x16
    /* FF0D0 001FE150 2D884000 */  daddu      $17, $2, $0
    /* FF0D4 001FE154 30E6070C */  jal        func_001F98C0
    /* FF0D8 001FE158 08000424 */   addiu     $4, $0, 0x8
    /* FF0DC 001FE15C 1600033C */  lui        $3, %hi(D_0015F538)
    /* FF0E0 001FE160 38F5638C */  lw         $3, %lo(D_0015F538)($3)
    /* FF0E4 001FE164 21882202 */  addu       $17, $17, $2
    /* FF0E8 001FE168 01002052 */  beql       $17, $0, .L001FE170
    /* FF0EC 001FE16C CD010000 */   break     0, 7
.align 2
  .L001FE170:
    /* FF0F0 001FE170 1A007100 */  div        $0, $3, $17
    /* FF0F4 001FE174 10800000 */  mfhi       $16
    /* FF0F8 001FE178 30E6070C */  jal        func_001F98C0
    /* FF0FC 001FE17C 16000424 */   addiu     $4, $0, 0x16
    /* FF100 001FE180 2A800202 */  slt        $16, $16, $2
    /* FF104 001FE184 0D000012 */  beqz       $16, .L001FE1BC
    /* FF108 001FE188 1A00033C */   lui       $3, %hi(D_001A01F0)
.align 2
  .L001FE18C:
    /* FF10C 001FE18C 9AE90434 */  ori        $4, $0, 0xE99A
    /* FF110 001FE190 6600080C */  jal        func_00200198
    /* FF114 001FE194 0C000524 */   addiu     $5, $0, 0xC
    /* FF118 001FE198 2D204000 */  daddu      $4, $2, $0
    /* FF11C 001FE19C FBFFC627 */  addiu      $6, $30, -0x5
    /* FF120 001FE1A0 1400A28F */  lw         $2, 0x14($29)
    /* FF124 001FE1A4 0A000724 */  addiu      $7, $0, 0xA
    /* FF128 001FE1A8 0A000824 */  addiu      $8, $0, 0xA
    /* FF12C 001FE1AC 80000924 */  addiu      $9, $0, 0x80
    /* FF130 001FE1B0 1A01080C */  jal        func_00200468
    /* FF134 001FE1B4 FBFF4524 */   addiu     $5, $2, -0x5
    /* FF138 001FE1B8 1A00033C */  lui        $3, %hi(D_001A01F0)
.align 2
  .L001FE1BC:
    /* FF13C 001FE1BC 1000A48F */  lw         $4, 0x10($29)
    /* FF140 001FE1C0 F0016324 */  addiu      $3, $3, %lo(D_001A01F0)
    /* FF144 001FE1C4 2402628C */  lw         $2, 0x224($3)
    /* FF148 001FE1C8 82008214 */  bne        $4, $2, .L001FE3D4
    /* FF14C 001FE1CC 2000A28F */   lw        $2, 0x20($29)
    /* FF150 001FE1D0 1E00023C */  lui        $2, %hi(D_001DE1A8)
    /* FF154 001FE1D4 1C00A48F */  lw         $4, 0x1C($29)
    /* FF158 001FE1D8 A8E14224 */  addiu      $2, $2, %lo(D_001DE1A8)
    /* FF15C 001FE1DC 2000A38F */  lw         $3, 0x20($29)
    /* FF160 001FE1E0 08005524 */  addiu      $21, $2, 0x8
    /* FF164 001FE1E4 21A89500 */  addu       $21, $4, $21
    /* FF168 001FE1E8 0C00748C */  lw         $20, 0xC($3)
    /* FF16C 001FE1EC 0000B38E */  lw         $19, 0x0($21)
    /* FF170 001FE1F0 2D20A003 */  daddu      $4, $29, $0
    /* FF174 001FE1F4 1400A28F */  lw         $2, 0x14($29)
    /* FF178 001FE1F8 00009444 */  mtc1       $20, $f0
    /* FF17C 001FE1FC 00000000 */  nop
    /* FF180 001FE200 20008046 */  cvt.s.w    $f0, $f0
    /* FF184 001FE204 00089344 */  mtc1       $19, $f1
    /* FF188 001FE208 00000000 */  nop
    /* FF18C 001FE20C 60088046 */  cvt.s.w    $f1, $f1
    /* FF190 001FE210 21A0D403 */  addu       $20, $30, $20
    /* FF194 001FE214 21985300 */  addu       $19, $2, $19
    /* FF198 001FE218 01009726 */  addiu      $23, $20, 0x1
    /* FF19C 001FE21C 01006326 */  addiu      $3, $19, 0x1
    /* FF1A0 001FE220 0400A0E7 */  swc1       $f0, 0x4($29)
    /* FF1A4 001FE224 1800A3AF */  sw         $3, 0x18($29)
    /* FF1A8 001FE228 3AE7070C */  jal        func_001F9CE8
    /* FF1AC 001FE22C 0000A1E7 */   swc1      $f1, 0x0($29)
    /* FF1B0 001FE230 1E00023C */  lui        $2, %hi(D_001DE0C4)
    /* FF1B4 001FE234 7A44013C */  lui        $1, (0x447A0000 >> 16)
    /* FF1B8 001FE238 00088144 */  mtc1       $1, $f1
    /* FF1BC 001FE23C C4E04224 */  addiu      $2, $2, %lo(D_001DE0C4)
    /* FF1C0 001FE240 0C000524 */  addiu      $5, $0, 0xC
    /* FF1C4 001FE244 13004000 */  mtlo       $2
    /* FF1C8 001FE248 02000146 */  mul.s      $f0, $f0, $f1
    /* FF1CC 001FE24C 1000A28F */  lw         $2, 0x10($29)
    /* FF1D0 001FE250 2390D403 */  subu       $18, $30, $20
    /* FF1D4 001FE254 1400A48F */  lw         $4, 0x14($29)
    /* FF1D8 001FE258 00284570 */  madd       $5, $2, $5
    /* FF1DC 001FE25C 64000046 */  .word      0x46000064                    # cvt.w.s    $f1, $f0 # 00000000 <InstrIdType: CPU_COP1_FPUS>
    /* FF1E0 001FE260 00080244 */  mfc1       $2, $f1
    /* FF1E4 001FE264 23889300 */  subu       $17, $4, $19
    /* FF1E8 001FE268 C0E04324 */  addiu      $3, $2, -0x1F40
    /* FF1EC 001FE26C 01004050 */  beql       $2, $0, .L001FE274
    /* FF1F0 001FE270 CD010000 */   break     0, 7
.align 2
  .L001FE274:
    /* FF1F4 001FE274 18882302 */  mult       $17, $17, $3
    /* FF1F8 001FE278 18904302 */  mult       $18, $18, $3
    /* FF1FC 001FE27C 0000A48C */  lw         $4, 0x0($5)
    /* FF200 001FE280 1A002202 */  div        $0, $17, $2
    /* FF204 001FE284 12880000 */  mflo       $17
    /* FF208 001FE288 1A004202 */  div        $0, $18, $2
    /* FF20C 001FE28C 21887102 */  addu       $17, $19, $17
    /* FF210 001FE290 12900000 */  mflo       $18
    /* FF214 001FE294 50F9070C */  jal        func_001FE540
    /* FF218 001FE298 21909202 */   addu      $18, $20, $18
    /* FF21C 001FE29C 2DB04000 */  daddu      $22, $2, $0
    /* FF220 001FE2A0 FFFF0524 */  addiu      $5, $0, -0x1
    /* FF224 001FE2A4 80D9070C */  jal        func_001F6600
    /* FF228 001FE2A8 2D20C002 */   daddu     $4, $22, $0
    /* FF22C 001FE2AC 2D804000 */  daddu      $16, $2, $0
    /* FF230 001FE2B0 0000A48E */  lw         $4, 0x0($21)
    /* FF234 001FE2B4 23187002 */  subu       $3, $19, $16
    /* FF238 001FE2B8 FFFF0224 */  addiu      $2, $0, -0x1
    /* FF23C 001FE2BC 1800A68F */  lw         $6, 0x18($29)
    /* FF240 001FE2C0 2A104400 */  slt        $2, $2, $4
    /* FF244 001FE2C4 21807002 */  addu       $16, $19, $16
    /* FF248 001FE2C8 01002426 */  addiu      $4, $17, 0x1
    /* FF24C 001FE2CC 0A806200 */  movz       $16, $3, $2
    /* FF250 001FE2D0 01004526 */  addiu      $5, $18, 0x1
    /* FF254 001FE2D4 2D38E002 */  daddu      $7, $23, $0
    /* FF258 001FE2D8 00800834 */  ori        $8, $0, 0x8000
    /* FF25C 001FE2DC 38440800 */  dsll       $8, $8, 16
    /* FF260 001FE2E0 2D480000 */  daddu      $9, $0, $0
    /* FF264 001FE2E4 2E05080C */  jal        func_002014B8
    /* FF268 001FE2E8 2DA80002 */   daddu     $21, $16, $0
    /* FF26C 001FE2EC 1800A48F */  lw         $4, 0x18($29)
    /* FF270 001FE2F0 2D28E002 */  daddu      $5, $23, $0
    /* FF274 001FE2F4 2D38A000 */  daddu      $7, $5, $0
    /* FF278 001FE2F8 2D480000 */  daddu      $9, $0, $0
    /* FF27C 001FE2FC 00800834 */  ori        $8, $0, 0x8000
    /* FF280 001FE300 38440800 */  dsll       $8, $8, 16
    /* FF284 001FE304 2E05080C */  jal        func_002014B8
    /* FF288 001FE308 01000626 */   addiu     $6, $16, 0x1
    /* FF28C 001FE30C 708A858F */  lw         $5, -0x7590($28)
    /* FF290 001FE310 2A101302 */  slt        $2, $16, $19
    /* FF294 001FE314 0AA86202 */  movz       $21, $19, $2
    /* FF298 001FE318 00800634 */  ori        $6, $0, 0x8000
    /* FF29C 001FE31C 38340600 */  dsll       $6, $6, 16
    /* FF2A0 001FE320 23288502 */  subu       $5, $20, $5
    /* FF2A4 001FE324 0100A426 */  addiu      $4, $21, 0x1
    /* FF2A8 001FE328 0100A524 */  addiu      $5, $5, 0x1
    /* FF2AC 001FE32C 2D38C002 */  daddu      $7, $22, $0
    /* FF2B0 001FE330 3ADA070C */  jal        func_001F68E8
    /* FF2B4 001FE334 FFFF0824 */   addiu     $8, $0, -0x1
    /* FF2B8 001FE338 2D202002 */  daddu      $4, $17, $0
    /* FF2BC 001FE33C 2D284002 */  daddu      $5, $18, $0
    /* FF2C0 001FE340 2D306002 */  daddu      $6, $19, $0
    /* FF2C4 001FE344 2D388002 */  daddu      $7, $20, $0
    /* FF2C8 001FE348 F0800834 */  ori        $8, $0, 0x80F0
    /* FF2CC 001FE34C 38440800 */  dsll       $8, $8, 16
    /* FF2D0 001FE350 F0F00835 */  ori        $8, $8, 0xF0F0
    /* FF2D4 001FE354 2E05080C */  jal        func_002014B8
    /* FF2D8 001FE358 2D480000 */   daddu     $9, $0, $0
    /* FF2DC 001FE35C 2D480000 */  daddu      $9, $0, $0
    /* FF2E0 001FE360 2D288002 */  daddu      $5, $20, $0
    /* FF2E4 001FE364 2D206002 */  daddu      $4, $19, $0
    /* FF2E8 001FE368 2D300002 */  daddu      $6, $16, $0
    /* FF2EC 001FE36C F0800834 */  ori        $8, $0, 0x80F0
    /* FF2F0 001FE370 38440800 */  dsll       $8, $8, 16
    /* FF2F4 001FE374 F0F00835 */  ori        $8, $8, 0xF0F0
    /* FF2F8 001FE378 2E05080C */  jal        func_002014B8
    /* FF2FC 001FE37C 2D388002 */   daddu     $7, $20, $0
    /* FF300 001FE380 708A858F */  lw         $5, -0x7590($28)
    /* FF304 001FE384 2D38C002 */  daddu      $7, $22, $0
    /* FF308 001FE388 F0800634 */  ori        $6, $0, 0x80F0
    /* FF30C 001FE38C 38340600 */  dsll       $6, $6, 16
    /* FF310 001FE390 F0F0C634 */  ori        $6, $6, 0xF0F0
    /* FF314 001FE394 FFFF0824 */  addiu      $8, $0, -0x1
    /* FF318 001FE398 2D20A002 */  daddu      $4, $21, $0
    /* FF31C 001FE39C 3ADA070C */  jal        func_001F68E8
    /* FF320 001FE3A0 23288502 */   subu      $5, $20, $5
    /* FF324 001FE3A4 9AE90434 */  ori        $4, $0, 0xE99A
    /* FF328 001FE3A8 6600080C */  jal        func_00200198
    /* FF32C 001FE3AC 0D000524 */   addiu     $5, $0, 0xD
    /* FF330 001FE3B0 2D204000 */  daddu      $4, $2, $0
    /* FF334 001FE3B4 F6FFC627 */  addiu      $6, $30, -0xA
    /* FF338 001FE3B8 1400A28F */  lw         $2, 0x14($29)
    /* FF33C 001FE3BC 14000724 */  addiu      $7, $0, 0x14
    /* FF340 001FE3C0 14000824 */  addiu      $8, $0, 0x14
    /* FF344 001FE3C4 80000924 */  addiu      $9, $0, 0x80
    /* FF348 001FE3C8 1A01080C */  jal        func_00200468
    /* FF34C 001FE3CC F6FF4524 */   addiu     $5, $2, -0xA
.align 2
  .L001FE3D0:
    /* FF350 001FE3D0 2000A28F */  lw         $2, 0x20($29)
.align 2
  .L001FE3D4:
    /* FF354 001FE3D4 1000A38F */  lw         $3, 0x10($29)
    /* FF358 001FE3D8 1C00A48F */  lw         $4, 0x1C($29)
    /* FF35C 001FE3DC 10004224 */  addiu      $2, $2, 0x10
    /* FF360 001FE3E0 01006324 */  addiu      $3, $3, 0x1
    /* FF364 001FE3E4 2000A2AF */  sw         $2, 0x20($29)
    /* FF368 001FE3E8 10008424 */  addiu      $4, $4, 0x10
    /* FF36C 001FE3EC 1000A3AF */  sw         $3, 0x10($29)
    /* FF370 001FE3F0 14006228 */  slti       $2, $3, 0x14
    /* FF374 001FE3F4 2EFF4014 */  bnez       $2, .L001FE0B0
    /* FF378 001FE3F8 1C00A4AF */   sw        $4, 0x1C($29)
    /* FF37C 001FE3FC D2D1070C */  jal        func_001F4748
    /* FF380 001FE400 00000000 */   nop
    /* FF384 001FE404 C000BF7B */  lq         $31, 0xC0($29)
    /* FF388 001FE408 B000BE7B */  lq         $30, 0xB0($29)
    /* FF38C 001FE40C A000B77B */  lq         $23, 0xA0($29)
    /* FF390 001FE410 9000B67B */  lq         $22, 0x90($29)
    /* FF394 001FE414 8000B57B */  lq         $21, 0x80($29)
    /* FF398 001FE418 7000B47B */  lq         $20, 0x70($29)
    /* FF39C 001FE41C 6000B37B */  lq         $19, 0x60($29)
    /* FF3A0 001FE420 5000B27B */  lq         $18, 0x50($29)
    /* FF3A4 001FE424 4000B17B */  lq         $17, 0x40($29)
    /* FF3A8 001FE428 3000B07B */  lq         $16, 0x30($29)
    /* FF3AC 001FE42C 0800E003 */  jr         $31
    /* FF3B0 001FE430 D000BD27 */   addiu     $29, $29, 0xD0
endlabel func_001FDF78
    /* FF3B4 001FE434 00000000 */  nop
