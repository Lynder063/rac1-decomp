.align 3
nonmatching func_001E99D8, 0x498

glabel func_001E99D8
    /* EA958 001E99D8 80FFBD27 */  addiu      $29, $29, -0x80
    /* EA95C 001E99DC 01000224 */  addiu      $2, $0, 0x1
    /* EA960 001E99E0 1600013C */  lui        $1, %hi(D_0015F6C8)
    /* EA964 001E99E4 C8F622AC */  sw         $2, %lo(D_0015F6C8)($1)
    /* EA968 001E99E8 7000BF7F */  sq         $31, 0x70($29)
    /* EA96C 001E99EC 6000B67F */  sq         $22, 0x60($29)
    /* EA970 001E99F0 5000B57F */  sq         $21, 0x50($29)
    /* EA974 001E99F4 4000B47F */  sq         $20, 0x40($29)
    /* EA978 001E99F8 3000B37F */  sq         $19, 0x30($29)
    /* EA97C 001E99FC 2000B27F */  sq         $18, 0x20($29)
    /* EA980 001E9A00 1000B17F */  sq         $17, 0x10($29)
    /* EA984 001E9A04 A207080C */  jal        func_00201E88
    /* EA988 001E9A08 0000B07F */   sq        $16, 0x0($29)
    /* EA98C 001E9A0C 2AA5070C */  jal        func_001E94A8
    /* EA990 001E9A10 00000000 */   nop
    /* EA994 001E9A14 1600023C */  lui        $2, %hi(D_00165530)
    /* EA998 001E9A18 1600033C */  lui        $3, %hi(D_00161380)
    /* EA99C 001E9A1C 80136324 */  addiu      $3, $3, %lo(D_00161380)
    /* EA9A0 001E9A20 30554224 */  addiu      $2, $2, %lo(D_00165530)
    /* EA9A4 001E9A24 23104300 */  subu       $2, $2, $3
    /* EA9A8 001E9A28 0A004018 */  blez       $2, .L001E9A54
    /* EA9AC 001E9A2C 2D200000 */   daddu     $4, $0, $0
    /* EA9B0 001E9A30 2D306000 */  daddu      $6, $3, $0
    /* EA9B4 001E9A34 2D284000 */  daddu      $5, $2, $0
.align 2
  .L001E9A38:
    /* EA9B8 001E9A38 21188600 */  addu       $3, $4, $6
    /* EA9BC 001E9A3C 01008424 */  addiu      $4, $4, 0x1
    /* EA9C0 001E9A40 2A108500 */  slt        $2, $4, $5
    /* EA9C4 001E9A44 00000000 */  nop
    /* EA9C8 001E9A48 00000000 */  nop
    /* EA9CC 001E9A4C FAFF4014 */  bnez       $2, .L001E9A38
    /* EA9D0 001E9A50 000060A0 */   sb        $0, 0x0($3)
.align 2
  .L001E9A54:
    /* EA9D4 001E9A54 3AD2080C */  jal        func_002348E8
    /* EA9D8 001E9A58 2D800000 */   daddu     $16, $0, $0
    /* EA9DC 001E9A5C 06D4080C */  jal        func_00235018
    /* EA9E0 001E9A60 2D980000 */   daddu     $19, $0, $0
    /* EA9E4 001E9A64 CCC3070C */  jal        func_001F0F30
    /* EA9E8 001E9A68 80001424 */   addiu     $20, $0, 0x80
    /* EA9EC 001E9A6C 2D200000 */  daddu      $4, $0, $0
    /* EA9F0 001E9A70 6689040C */  jal        func_00122598
    /* EA9F4 001E9A74 388880AF */   sw        $0, -0x77C8($28)
    /* EA9F8 001E9A78 04CF070C */  jal        func_001F3C10
    /* EA9FC 001E9A7C E88980AF */   sw        $0, -0x7618($28)
    /* EAA00 001E9A80 40CF070C */  jal        func_001F3D00
    /* EAA04 001E9A84 00000000 */   nop
    /* EAA08 001E9A88 1CED070C */  jal        func_001FB470
    /* EAA0C 001E9A8C 00000000 */   nop
    /* EAA10 001E9A90 2D200000 */  daddu      $4, $0, $0
    /* EAA14 001E9A94 2D280000 */  daddu      $5, $0, $0
    /* EAA18 001E9A98 12ED070C */  jal        func_001FB448
    /* EAA1C 001E9A9C 2D300000 */   daddu     $6, $0, $0
    /* EAA20 001E9AA0 FFFF033C */  lui        $3, (0xFFFFC000 >> 16)
    /* EAA24 001E9AA4 2400023C */  lui        $2, %hi(D_0024272F)
    /* EAA28 001E9AA8 00C06334 */  ori        $3, $3, (0xFFFFC000 & 0xFFFF)
    /* EAA2C 001E9AAC 2F274224 */  addiu      $2, $2, %lo(D_0024272F)
    /* EAA30 001E9AB0 24104300 */  and        $2, $2, $3
    /* EAA34 001E9AB4 2C00043C */  lui        $4, (0x2C0070 >> 16)
    /* EAA38 001E9AB8 3AD2080C */  jal        func_002348E8
    /* EAA3C 001E9ABC 21884400 */   addu      $17, $2, $4
    /* EAA40 001E9AC0 10003526 */  addiu      $21, $17, %lo(D_2C0010)
    /* EAA44 001E9AC4 1400023C */  lui        $2, %hi(D_0013CA40)
    /* EAA48 001E9AC8 38000010 */  b          .L001E9BAC
    /* EAA4C 001E9ACC 40CA5624 */   addiu     $22, $2, %lo(D_0013CA40)
.align 2
  .L001E9AD0:
    /* EAA50 001E9AD0 10005012 */  beq        $18, $16, .L001E9B14
    /* EAA54 001E9AD4 0100423A */   xori      $2, $18, 0x1
    /* EAA58 001E9AD8 40003026 */  addiu      $16, $17, %lo(D_2C0040)
    /* EAA5C 001E9ADC 0A80A202 */  movz       $16, $21, $2
    /* EAA60 001E9AE0 6063040C */  jal        func_00118D80
    /* EAA64 001E9AE4 2D200000 */   daddu     $4, $0, $0
    /* EAA68 001E9AE8 1600023C */  lui        $2, %hi(D_0015EE88)
    /* EAA6C 001E9AEC 88EE428C */  lw         $2, %lo(D_0015EE88)($2)
    /* EAA70 001E9AF0 7000258E */  lw         $5, (0x2C0070 & 0xFFFF)($17)
    /* EAA74 001E9AF4 C0100200 */  sll        $2, $2, 3
    /* EAA78 001E9AF8 21105000 */  addu       $2, $2, $16
    /* EAA7C 001E9AFC 2128B100 */  addu       $5, $5, $17
    /* EAA80 001E9B00 0000448C */  lw         $4, 0x0($2)
    /* EAA84 001E9B04 1A31080C */  jal        func_0020C468
    /* EAA88 001E9B08 21209100 */   addu      $4, $4, $17
    /* EAA8C 001E9B0C 6063040C */  jal        func_00118D80
    /* EAA90 001E9B10 2D200000 */   daddu     $4, $0, $0
.align 2
  .L001E9B14:
    /* EAA94 001E9B14 2D200000 */  daddu      $4, $0, $0
    /* EAA98 001E9B18 2D280000 */  daddu      $5, $0, $0
    /* EAA9C 001E9B1C 12ED070C */  jal        func_001FB448
    /* EAAA0 001E9B20 2D300000 */   daddu     $6, $0, $0
    /* EAAA4 001E9B24 26ED070C */  jal        func_001FB498
    /* EAAA8 001E9B28 00000000 */   nop
    /* EAAAC 001E9B2C 4CED070C */  jal        func_001FB530
    /* EAAB0 001E9B30 00000000 */   nop
    /* EAAB4 001E9B34 7000248E */  lw         $4, (0x2C0070 & 0xFFFF)($17)
    /* EAAB8 001E9B38 A0DD070C */  jal        func_001F7680
    /* EAABC 001E9B3C 21209100 */   addu      $4, $4, $17
    /* EAAC0 001E9B40 0800622A */  slti       $2, $19, 0x8
    /* EAAC4 001E9B44 0B004010 */  beqz       $2, .L001E9B74
    /* EAAC8 001E9B48 00000000 */   nop
    /* EAACC 001E9B4C 00800534 */  ori        $5, $0, 0x8000
    /* EAAD0 001E9B50 382E0500 */  dsll       $5, $5, 24
    /* EAAD4 001E9B54 4400A534 */  ori        $5, $5, 0x44
    /* EAAD8 001E9B58 26D3080C */  jal        func_00234C98
    /* EAADC 001E9B5C 42000424 */   addiu     $4, $0, 0x42
    /* EAAE0 001E9B60 2D200000 */  daddu      $4, $0, $0
    /* EAAE4 001E9B64 2D280000 */  daddu      $5, $0, $0
    /* EAAE8 001E9B68 2D300000 */  daddu      $6, $0, $0
    /* EAAEC 001E9B6C 70D5070C */  jal        func_001F55C0
    /* EAAF0 001E9B70 2D388002 */   daddu     $7, $20, $0
.align 2
  .L001E9B74:
    /* EAAF4 001E9B74 66ED070C */  jal        func_001FB598
    /* EAAF8 001E9B78 2D804002 */   daddu     $16, $18, $0
    /* EAAFC 001E9B7C 2AEE070C */  jal        func_001FB8A8
    /* EAB00 001E9B80 F0FF9426 */   addiu     $20, $20, -0x10
    /* EAB04 001E9B84 6ED2080C */  jal        func_002349B8
    /* EAB08 001E9B88 01007326 */   addiu     $19, $19, 0x1
    /* EAB0C 001E9B8C 52D2080C */  jal        func_00234948
    /* EAB10 001E9B90 00000000 */   nop
    /* EAB14 001E9B94 B2D2080C */  jal        func_00234AC8
    /* EAB18 001E9B98 01000424 */   addiu     $4, $0, 0x1
    /* EAB1C 001E9B9C 6689040C */  jal        func_00122598
    /* EAB20 001E9BA0 2D200000 */   daddu     $4, $0, $0
    /* EAB24 001E9BA4 4262080C */  jal        func_00218908
    /* EAB28 001E9BA8 00000000 */   nop
.align 2
  .L001E9BAC:
    /* EAB2C 001E9BAC EE26080C */  jal        func_00209BB8
    /* EAB30 001E9BB0 00000000 */   nop
    /* EAB34 001E9BB4 2D904000 */  daddu      $18, $2, $0
    /* EAB38 001E9BB8 06004012 */  beqz       $18, .L001E9BD4
    /* EAB3C 001E9BBC 0B00622A */   slti      $2, $19, 0xB
    /* EAB40 001E9BC0 C3FF4014 */  bnez       $2, .L001E9AD0
    /* EAB44 001E9BC4 00000000 */   nop
    /* EAB48 001E9BC8 A401C28E */  lw         $2, 0x1A4($22)
    /* EAB4C 001E9BCC C0FF4010 */  beqz       $2, .L001E9AD0
    /* EAB50 001E9BD0 00000000 */   nop
.align 2
  .L001E9BD4:
    /* EAB54 001E9BD4 04000052 */  beql       $16, $0, .L001E9BE8
    /* EAB58 001E9BD8 7000228E */   lw        $2, (0x2C0070 & 0xFFFF)($17)
    /* EAB5C 001E9BDC 82D3070C */  jal        func_001F4E08
    /* EAB60 001E9BE0 08000424 */   addiu     $4, $0, 0x8
    /* EAB64 001E9BE4 7000228E */  lw         $2, (0x2C0070 & 0xFFFF)($17)
.align 2
  .L001E9BE8:
    /* EAB68 001E9BE8 FFFF0324 */  addiu      $3, $0, -0x1
    /* EAB6C 001E9BEC 1600043C */  lui        $4, %hi(D_0015EE80)
    /* EAB70 001E9BF0 80EE848C */  lw         $4, %lo(D_0015EE80)($4)
    /* EAB74 001E9BF4 21305100 */  addu       $6, $2, $17
    /* EAB78 001E9BF8 1600013C */  lui        $1, %hi(D_0015EFD8)
    /* EAB7C 001E9BFC D8EF23AC */  sw         $3, %lo(D_0015EFD8)($1)
    /* EAB80 001E9C00 10008014 */  bnez       $4, .L001E9C44
    /* EAB84 001E9C04 5C8386AF */   sw        $6, -0x7CA4($28)
    /* EAB88 001E9C08 2C00073C */  lui        $7, (0x2C003F >> 16)
    /* EAB8C 001E9C0C 1400023C */  lui        $2, %hi(D_00139478)
    /* EAB90 001E9C10 3F00E734 */  ori        $7, $7, (0x2C003F & 0xFFFF)
    /* EAB94 001E9C14 78944324 */  addiu      $3, $2, %lo(D_00139478)
    /* EAB98 001E9C18 2138C700 */  addu       $7, $6, $7
    /* EAB9C 001E9C1C 7894448C */  lw         $4, %lo(D_00139478)($2)
    /* EABA0 001E9C20 C0FF0224 */  addiu      $2, $0, -0x40
    /* EABA4 001E9C24 3F00C624 */  addiu      $6, $6, %lo(D_2C003F)
    /* EABA8 001E9C28 0400658C */  lw         $5, 0x4($3)
    /* EABAC 001E9C2C 2438E200 */  and        $7, $7, $2
    /* EABB0 001E9C30 2430C200 */  and        $6, $6, $2
    /* EABB4 001E9C34 9CED080C */  jal        func_0023B670
    /* EABB8 001E9C38 2D400000 */   daddu     $8, $0, $0
    /* EABBC 001E9C3C 0F000010 */  b          .L001E9C7C
    /* EABC0 001E9C40 0C000424 */   addiu     $4, $0, 0xC
.align 2
  .L001E9C44:
    /* EABC4 001E9C44 2C00073C */  lui        $7, (0x2C003F >> 16)
    /* EABC8 001E9C48 1400023C */  lui        $2, %hi(D_00139480)
    /* EABCC 001E9C4C 3F00E734 */  ori        $7, $7, (0x2C003F & 0xFFFF)
    /* EABD0 001E9C50 80944324 */  addiu      $3, $2, %lo(D_00139480)
    /* EABD4 001E9C54 2138C700 */  addu       $7, $6, $7
    /* EABD8 001E9C58 8094448C */  lw         $4, %lo(D_00139480)($2)
    /* EABDC 001E9C5C C0FF0224 */  addiu      $2, $0, -0x40
    /* EABE0 001E9C60 3F00C624 */  addiu      $6, $6, %lo(D_2C003F)
    /* EABE4 001E9C64 0400658C */  lw         $5, 0x4($3)
    /* EABE8 001E9C68 2438E200 */  and        $7, $7, $2
    /* EABEC 001E9C6C 2430C200 */  and        $6, $6, $2
    /* EABF0 001E9C70 9CED080C */  jal        func_0023B670
    /* EABF4 001E9C74 2D400000 */   daddu     $8, $0, $0
    /* EABF8 001E9C78 0C000424 */  addiu      $4, $0, 0xC
.align 2
  .L001E9C7C:
    /* EABFC 001E9C7C 30E6070C */  jal        func_001F98C0
    /* EAC00 001E9C80 D88280AF */   sw        $0, -0x7D28($28)
    /* EAC04 001E9C84 82D3070C */  jal        func_001F4E08
    /* EAC08 001E9C88 2D204000 */   daddu     $4, $2, $0
    /* EAC0C 001E9C8C 6063040C */  jal        func_00118D80
    /* EAC10 001E9C90 2D200000 */   daddu     $4, $0, $0
    /* EAC14 001E9C94 1600023C */  lui        $2, %hi(D_0015EE80)
    /* EAC18 001E9C98 80EE428C */  lw         $2, %lo(D_0015EE80)($2)
    /* EAC1C 001E9C9C 08004050 */  beql       $2, $0, .L001E9CC0
    /* EAC20 001E9CA0 0000248E */   lw        $4, (0x2C0000 & 0xFFFF)($17)
    /* EAC24 001E9CA4 0800248E */  lw         $4, (0x2C0008 & 0xFFFF)($17)
    /* EAC28 001E9CA8 7000258E */  lw         $5, (0x2C0070 & 0xFFFF)($17)
    /* EAC2C 001E9CAC 21209100 */  addu       $4, $4, $17
    /* EAC30 001E9CB0 1A31080C */  jal        func_0020C468
    /* EAC34 001E9CB4 2128B100 */   addu      $5, $5, $17
    /* EAC38 001E9CB8 05000010 */  b          .L001E9CD0
    /* EAC3C 001E9CBC 00000000 */   nop
.align 2
  .L001E9CC0:
    /* EAC40 001E9CC0 7000258E */  lw         $5, (0x2C0070 & 0xFFFF)($17)
    /* EAC44 001E9CC4 21209100 */  addu       $4, $4, $17
    /* EAC48 001E9CC8 1A31080C */  jal        func_0020C468
    /* EAC4C 001E9CCC 2128B100 */   addu      $5, $5, $17
.align 2
  .L001E9CD0:
    /* EAC50 001E9CD0 6063040C */  jal        func_00118D80
    /* EAC54 001E9CD4 2D200000 */   daddu     $4, $0, $0
    /* EAC58 001E9CD8 3AD2080C */  jal        func_002348E8
    /* EAC5C 001E9CDC 00000000 */   nop
    /* EAC60 001E9CE0 2D280000 */  daddu      $5, $0, $0
    /* EAC64 001E9CE4 2D300000 */  daddu      $6, $0, $0
    /* EAC68 001E9CE8 12ED070C */  jal        func_001FB448
    /* EAC6C 001E9CEC 2D200000 */   daddu     $4, $0, $0
    /* EAC70 001E9CF0 26ED070C */  jal        func_001FB498
    /* EAC74 001E9CF4 00000000 */   nop
    /* EAC78 001E9CF8 4CED070C */  jal        func_001FB530
    /* EAC7C 001E9CFC 00000000 */   nop
    /* EAC80 001E9D00 7000248E */  lw         $4, (0x2C0070 & 0xFFFF)($17)
    /* EAC84 001E9D04 BC06080C */  jal        func_00201AF0
    /* EAC88 001E9D08 21209100 */   addu      $4, $4, $17
    /* EAC8C 001E9D0C 66ED070C */  jal        func_001FB598
    /* EAC90 001E9D10 00000000 */   nop
    /* EAC94 001E9D14 2AEE070C */  jal        func_001FB8A8
    /* EAC98 001E9D18 00000000 */   nop
    /* EAC9C 001E9D1C 6ED2080C */  jal        func_002349B8
    /* EACA0 001E9D20 00000000 */   nop
    /* EACA4 001E9D24 52D2080C */  jal        func_00234948
    /* EACA8 001E9D28 00000000 */   nop
    /* EACAC 001E9D2C B2D2080C */  jal        func_00234AC8
    /* EACB0 001E9D30 01000424 */   addiu     $4, $0, 0x1
    /* EACB4 001E9D34 6689040C */  jal        func_00122598
    /* EACB8 001E9D38 2D200000 */   daddu     $4, $0, $0
    /* EACBC 001E9D3C 1600033C */  lui        $3, %hi(D_0015F538)
    /* EACC0 001E9D40 38F5638C */  lw         $3, %lo(D_0015F538)($3)
    /* EACC4 001E9D44 1E00043C */  lui        $4, %hi(D_001E79C0)
    /* EACC8 001E9D48 C0798424 */  addiu      $4, $4, %lo(D_001E79C0)
    /* EACCC 001E9D4C 01006324 */  addiu      $3, $3, 0x1
    /* EACD0 001E9D50 CCA5070C */  jal        func_001E9730
    /* EACD4 001E9D54 388883AF */   sw        $3, -0x77C8($28)
    /* EACD8 001E9D58 1300023C */  lui        $2, %hi(D_00137C80)
    /* EACDC 001E9D5C 807C4224 */  addiu      $2, $2, %lo(D_00137C80)
    /* EACE0 001E9D60 88BA080C */  jal        func_0022EA20
    /* EACE4 001E9D64 E014448C */   lw        $4, 0x14E0($2)
    /* EACE8 001E9D68 BAB8040C */  jal        func_0012E2E8
    /* EACEC 001E9D6C 2D804000 */   daddu     $16, $2, $0
    /* EACF0 001E9D70 1800033C */  lui        $3, %hi(D_001862E0)
    /* EACF4 001E9D74 1800023C */  lui        $2, %hi(D_00186200)
    /* EACF8 001E9D78 E0626324 */  addiu      $3, $3, %lo(D_001862E0)
    /* EACFC 001E9D7C 00624224 */  addiu      $2, $2, %lo(D_00186200)
    /* EAD00 001E9D80 9C0070AC */  sw         $16, 0x9C($3)
    /* EAD04 001E9D84 07000424 */  addiu      $4, $0, 0x7
    /* EAD08 001E9D88 DC0050AC */  sw         $16, 0xDC($2)
    /* EAD0C 001E9D8C 1600013C */  lui        $1, %hi(D_0015F714)
    /* EAD10 001E9D90 14F722AC */  sw         $2, %lo(D_0015F714)($1)
    /* EAD14 001E9D94 1600013C */  lui        $1, %hi(D_0015F710)
    /* EAD18 001E9D98 10F724AC */  sw         $4, %lo(D_0015F710)($1)
    /* EAD1C 001E9D9C 1C0050AC */  sw         $16, 0x1C($2)
    /* EAD20 001E9DA0 3C0050AC */  sw         $16, 0x3C($2)
    /* EAD24 001E9DA4 5C0050AC */  sw         $16, 0x5C($2)
    /* EAD28 001E9DA8 7C0050AC */  sw         $16, 0x7C($2)
    /* EAD2C 001E9DAC 9C0050AC */  sw         $16, 0x9C($2)
    /* EAD30 001E9DB0 BC0050AC */  sw         $16, 0xBC($2)
    /* EAD34 001E9DB4 1C0070AC */  sw         $16, 0x1C($3)
    /* EAD38 001E9DB8 3C0070AC */  sw         $16, 0x3C($3)
    /* EAD3C 001E9DBC 5C0070AC */  sw         $16, 0x5C($3)
    /* EAD40 001E9DC0 D2AE070C */  jal        func_001EBB48
    /* EAD44 001E9DC4 7C0070AC */   sw        $16, 0x7C($3)
    /* EAD48 001E9DC8 1600033C */  lui        $3, %hi(D_0016044C)
    /* EAD4C 001E9DCC 4C046390 */  lbu        $3, %lo(D_0016044C)($3)
    /* EAD50 001E9DD0 1600023C */  lui        $2, %hi(D_0015EE80)
    /* EAD54 001E9DD4 80EE428C */  lw         $2, %lo(D_0015EE80)($2)
    /* EAD58 001E9DD8 11004310 */  beq        $2, $3, .L001E9E20
    /* EAD5C 001E9DDC 1400023C */   lui       $2, %hi(D_0013E130)
    /* EAD60 001E9DE0 EE81040C */  jal        func_001207B8
    /* EAD64 001E9DE4 808183AF */   sw        $3, -0x7E80($28)
    /* EAD68 001E9DE8 1600033C */  lui        $3, %hi(D_0015EE80)
    /* EAD6C 001E9DEC 80EE638C */  lw         $3, %lo(D_0015EE80)($3)
    /* EAD70 001E9DF0 02000224 */  addiu      $2, $0, 0x2
    /* EAD74 001E9DF4 03000624 */  addiu      $6, $0, 0x3
    /* EAD78 001E9DF8 2D200000 */  daddu      $4, $0, $0
    /* EAD7C 001E9DFC 0A304300 */  movz       $6, $2, $3
    /* EAD80 001E9E00 01000524 */  addiu      $5, $0, 0x1
    /* EAD84 001E9E04 DE86040C */  jal        func_00121B78
    /* EAD88 001E9E08 2D380000 */   daddu     $7, $0, $0
    /* EAD8C 001E9E0C 24CE070C */  jal        func_001F3890
    /* EAD90 001E9E10 00000000 */   nop
    /* EAD94 001E9E14 1CED070C */  jal        func_001FB470
    /* EAD98 001E9E18 00000000 */   nop
    /* EAD9C 001E9E1C 1400023C */  lui        $2, %hi(D_0013E130)
.align 2
  .L001E9E20:
    /* EADA0 001E9E20 1600053C */  lui        $5, %hi(D_0015EE84)
    /* EADA4 001E9E24 84EEA58C */  lw         $5, %lo(D_0015EE84)($5)
    /* EADA8 001E9E28 30E14224 */  addiu      $2, $2, %lo(D_0013E130)
    /* EADAC 001E9E2C 01000324 */  addiu      $3, $0, 0x1
    /* EADB0 001E9E30 2A0043A4 */  sh         $3, 0x2A($2)
    /* EADB4 001E9E34 FFFF0424 */  addiu      $4, $0, -0x1
    /* EADB8 001E9E38 1600013C */  lui        $1, %hi(D_0015F6E4)
    /* EADBC 001E9E3C E4F625AC */  sw         $5, %lo(D_0015F6E4)($1)
    /* EADC0 001E9E40 C2CC080C */  jal        func_00233308
    /* EADC4 001E9E44 848184AF */   sw        $4, -0x7E7C($28)
    /* EADC8 001E9E48 7000BF7B */  lq         $31, 0x70($29)
    /* EADCC 001E9E4C 6000B67B */  lq         $22, 0x60($29)
    /* EADD0 001E9E50 5000B57B */  lq         $21, 0x50($29)
    /* EADD4 001E9E54 4000B47B */  lq         $20, 0x40($29)
    /* EADD8 001E9E58 3000B37B */  lq         $19, 0x30($29)
    /* EADDC 001E9E5C 2000B27B */  lq         $18, 0x20($29)
    /* EADE0 001E9E60 1000B17B */  lq         $17, 0x10($29)
    /* EADE4 001E9E64 0000B07B */  lq         $16, 0x0($29)
    /* EADE8 001E9E68 0800E003 */  jr         $31
    /* EADEC 001E9E6C 8000BD27 */   addiu     $29, $29, 0x80
endlabel func_001E99D8
