.align 3
nonmatching func_001E99D8, 0x498

glabel func_001E99D8
    /* EA958 001E99D8 80FFBD27 */  addiu      $sp, $sp, -0x80
    /* EA95C 001E99DC 01000224 */  addiu      $v0, $zero, 0x1
    /* EA960 001E99E0 1600013C */  lui        $at, %hi(D_0015F6C8)
    /* EA964 001E99E4 C8F622AC */  sw         $v0, %lo(D_0015F6C8)($at)
    /* EA968 001E99E8 7000BF7F */  sq         $ra, 0x70($sp)
    /* EA96C 001E99EC 6000B67F */  sq         $s6, 0x60($sp)
    /* EA970 001E99F0 5000B57F */  sq         $s5, 0x50($sp)
    /* EA974 001E99F4 4000B47F */  sq         $s4, 0x40($sp)
    /* EA978 001E99F8 3000B37F */  sq         $s3, 0x30($sp)
    /* EA97C 001E99FC 2000B27F */  sq         $s2, 0x20($sp)
    /* EA980 001E9A00 1000B17F */  sq         $s1, 0x10($sp)
    /* EA984 001E9A04 A207080C */  jal        func_00201E88
    /* EA988 001E9A08 0000B07F */   sq        $s0, 0x0($sp)
    /* EA98C 001E9A0C 2AA5070C */  jal        func_001E94A8
    /* EA990 001E9A10 00000000 */   nop
    /* EA994 001E9A14 1600023C */  lui        $v0, %hi(D_00165530)
    /* EA998 001E9A18 1600033C */  lui        $v1, %hi(D_00161380)
    /* EA99C 001E9A1C 80136324 */  addiu      $v1, $v1, %lo(D_00161380)
    /* EA9A0 001E9A20 30554224 */  addiu      $v0, $v0, %lo(D_00165530)
    /* EA9A4 001E9A24 23104300 */  subu       $v0, $v0, $v1
    /* EA9A8 001E9A28 0A004018 */  blez       $v0, .L001E9A54
    /* EA9AC 001E9A2C 2D200000 */   daddu     $a0, $zero, $zero
    /* EA9B0 001E9A30 2D306000 */  daddu      $a2, $v1, $zero
    /* EA9B4 001E9A34 2D284000 */  daddu      $a1, $v0, $zero
.align 2
  .L001E9A38:
    /* EA9B8 001E9A38 21188600 */  addu       $v1, $a0, $a2
    /* EA9BC 001E9A3C 01008424 */  addiu      $a0, $a0, 0x1
    /* EA9C0 001E9A40 2A108500 */  slt        $v0, $a0, $a1
    /* EA9C4 001E9A44 00000000 */  nop
    /* EA9C8 001E9A48 00000000 */  nop
    /* EA9CC 001E9A4C FAFF4014 */  bnez       $v0, .L001E9A38
    /* EA9D0 001E9A50 000060A0 */   sb        $zero, 0x0($v1)
.align 2
  .L001E9A54:
    /* EA9D4 001E9A54 3AD2080C */  jal        func_002348E8
    /* EA9D8 001E9A58 2D800000 */   daddu     $s0, $zero, $zero
    /* EA9DC 001E9A5C 06D4080C */  jal        func_00235018
    /* EA9E0 001E9A60 2D980000 */   daddu     $s3, $zero, $zero
    /* EA9E4 001E9A64 CCC3070C */  jal        func_001F0F30
    /* EA9E8 001E9A68 80001424 */   addiu     $s4, $zero, 0x80
    /* EA9EC 001E9A6C 2D200000 */  daddu      $a0, $zero, $zero
    /* EA9F0 001E9A70 6689040C */  jal        func_00122598
    /* EA9F4 001E9A74 388880AF */   sw        $zero, -0x77C8($gp)
    /* EA9F8 001E9A78 04CF070C */  jal        func_001F3C10
    /* EA9FC 001E9A7C E88980AF */   sw        $zero, -0x7618($gp)
    /* EAA00 001E9A80 40CF070C */  jal        func_001F3D00
    /* EAA04 001E9A84 00000000 */   nop
    /* EAA08 001E9A88 1CED070C */  jal        func_001FB470
    /* EAA0C 001E9A8C 00000000 */   nop
    /* EAA10 001E9A90 2D200000 */  daddu      $a0, $zero, $zero
    /* EAA14 001E9A94 2D280000 */  daddu      $a1, $zero, $zero
    /* EAA18 001E9A98 12ED070C */  jal        func_001FB448
    /* EAA1C 001E9A9C 2D300000 */   daddu     $a2, $zero, $zero
    /* EAA20 001E9AA0 FFFF033C */  lui        $v1, (0xFFFFC000 >> 16)
    /* EAA24 001E9AA4 2400023C */  lui        $v0, %hi(D_0024272F)
    /* EAA28 001E9AA8 00C06334 */  ori        $v1, $v1, (0xFFFFC000 & 0xFFFF)
    /* EAA2C 001E9AAC 2F274224 */  addiu      $v0, $v0, %lo(D_0024272F)
    /* EAA30 001E9AB0 24104300 */  and        $v0, $v0, $v1
    /* EAA34 001E9AB4 2C00043C */  lui        $a0, (0x2C0070 >> 16)
    /* EAA38 001E9AB8 3AD2080C */  jal        func_002348E8
    /* EAA3C 001E9ABC 21884400 */   addu      $s1, $v0, $a0
    /* EAA40 001E9AC0 10003526 */  addiu      $s5, $s1, %lo(D_2C0010)
    /* EAA44 001E9AC4 1400023C */  lui        $v0, %hi(D_0013CA40)
    /* EAA48 001E9AC8 38000010 */  b          .L001E9BAC
    /* EAA4C 001E9ACC 40CA5624 */   addiu     $s6, $v0, %lo(D_0013CA40)
.align 2
  .L001E9AD0:
    /* EAA50 001E9AD0 10005012 */  beq        $s2, $s0, .L001E9B14
    /* EAA54 001E9AD4 0100423A */   xori      $v0, $s2, 0x1
    /* EAA58 001E9AD8 40003026 */  addiu      $s0, $s1, %lo(D_2C0040)
    /* EAA5C 001E9ADC 0A80A202 */  movz       $s0, $s5, $v0
    /* EAA60 001E9AE0 6063040C */  jal        func_00118D80
    /* EAA64 001E9AE4 2D200000 */   daddu     $a0, $zero, $zero
    /* EAA68 001E9AE8 1600023C */  lui        $v0, %hi(D_0015EE88)
    /* EAA6C 001E9AEC 88EE428C */  lw         $v0, %lo(D_0015EE88)($v0)
    /* EAA70 001E9AF0 7000258E */  lw         $a1, (0x2C0070 & 0xFFFF)($s1)
    /* EAA74 001E9AF4 C0100200 */  sll        $v0, $v0, 3
    /* EAA78 001E9AF8 21105000 */  addu       $v0, $v0, $s0
    /* EAA7C 001E9AFC 2128B100 */  addu       $a1, $a1, $s1
    /* EAA80 001E9B00 0000448C */  lw         $a0, 0x0($v0)
    /* EAA84 001E9B04 1A31080C */  jal        func_0020C468
    /* EAA88 001E9B08 21209100 */   addu      $a0, $a0, $s1
    /* EAA8C 001E9B0C 6063040C */  jal        func_00118D80
    /* EAA90 001E9B10 2D200000 */   daddu     $a0, $zero, $zero
.align 2
  .L001E9B14:
    /* EAA94 001E9B14 2D200000 */  daddu      $a0, $zero, $zero
    /* EAA98 001E9B18 2D280000 */  daddu      $a1, $zero, $zero
    /* EAA9C 001E9B1C 12ED070C */  jal        func_001FB448
    /* EAAA0 001E9B20 2D300000 */   daddu     $a2, $zero, $zero
    /* EAAA4 001E9B24 26ED070C */  jal        func_001FB498
    /* EAAA8 001E9B28 00000000 */   nop
    /* EAAAC 001E9B2C 4CED070C */  jal        func_001FB530
    /* EAAB0 001E9B30 00000000 */   nop
    /* EAAB4 001E9B34 7000248E */  lw         $a0, (0x2C0070 & 0xFFFF)($s1)
    /* EAAB8 001E9B38 A0DD070C */  jal        func_001F7680
    /* EAABC 001E9B3C 21209100 */   addu      $a0, $a0, $s1
    /* EAAC0 001E9B40 0800622A */  slti       $v0, $s3, 0x8
    /* EAAC4 001E9B44 0B004010 */  beqz       $v0, .L001E9B74
    /* EAAC8 001E9B48 00000000 */   nop
    /* EAACC 001E9B4C 00800534 */  ori        $a1, $zero, 0x8000
    /* EAAD0 001E9B50 382E0500 */  dsll       $a1, $a1, 24
    /* EAAD4 001E9B54 4400A534 */  ori        $a1, $a1, 0x44
    /* EAAD8 001E9B58 26D3080C */  jal        func_00234C98
    /* EAADC 001E9B5C 42000424 */   addiu     $a0, $zero, 0x42
    /* EAAE0 001E9B60 2D200000 */  daddu      $a0, $zero, $zero
    /* EAAE4 001E9B64 2D280000 */  daddu      $a1, $zero, $zero
    /* EAAE8 001E9B68 2D300000 */  daddu      $a2, $zero, $zero
    /* EAAEC 001E9B6C 70D5070C */  jal        func_001F55C0
    /* EAAF0 001E9B70 2D388002 */   daddu     $a3, $s4, $zero
.align 2
  .L001E9B74:
    /* EAAF4 001E9B74 66ED070C */  jal        func_001FB598
    /* EAAF8 001E9B78 2D804002 */   daddu     $s0, $s2, $zero
    /* EAAFC 001E9B7C 2AEE070C */  jal        func_001FB8A8
    /* EAB00 001E9B80 F0FF9426 */   addiu     $s4, $s4, -0x10
    /* EAB04 001E9B84 6ED2080C */  jal        func_002349B8
    /* EAB08 001E9B88 01007326 */   addiu     $s3, $s3, 0x1
    /* EAB0C 001E9B8C 52D2080C */  jal        func_00234948
    /* EAB10 001E9B90 00000000 */   nop
    /* EAB14 001E9B94 B2D2080C */  jal        func_00234AC8
    /* EAB18 001E9B98 01000424 */   addiu     $a0, $zero, 0x1
    /* EAB1C 001E9B9C 6689040C */  jal        func_00122598
    /* EAB20 001E9BA0 2D200000 */   daddu     $a0, $zero, $zero
    /* EAB24 001E9BA4 4262080C */  jal        func_00218908
    /* EAB28 001E9BA8 00000000 */   nop
.align 2
  .L001E9BAC:
    /* EAB2C 001E9BAC EE26080C */  jal        func_00209BB8
    /* EAB30 001E9BB0 00000000 */   nop
    /* EAB34 001E9BB4 2D904000 */  daddu      $s2, $v0, $zero
    /* EAB38 001E9BB8 06004012 */  beqz       $s2, .L001E9BD4
    /* EAB3C 001E9BBC 0B00622A */   slti      $v0, $s3, 0xB
    /* EAB40 001E9BC0 C3FF4014 */  bnez       $v0, .L001E9AD0
    /* EAB44 001E9BC4 00000000 */   nop
    /* EAB48 001E9BC8 A401C28E */  lw         $v0, 0x1A4($s6)
    /* EAB4C 001E9BCC C0FF4010 */  beqz       $v0, .L001E9AD0
    /* EAB50 001E9BD0 00000000 */   nop
.align 2
  .L001E9BD4:
    /* EAB54 001E9BD4 04000052 */  beql       $s0, $zero, .L001E9BE8
    /* EAB58 001E9BD8 7000228E */   lw        $v0, (0x2C0070 & 0xFFFF)($s1)
    /* EAB5C 001E9BDC 82D3070C */  jal        func_001F4E08
    /* EAB60 001E9BE0 08000424 */   addiu     $a0, $zero, 0x8
    /* EAB64 001E9BE4 7000228E */  lw         $v0, (0x2C0070 & 0xFFFF)($s1)
.align 2
  .L001E9BE8:
    /* EAB68 001E9BE8 FFFF0324 */  addiu      $v1, $zero, -0x1
    /* EAB6C 001E9BEC 1600043C */  lui        $a0, %hi(D_0015EE80)
    /* EAB70 001E9BF0 80EE848C */  lw         $a0, %lo(D_0015EE80)($a0)
    /* EAB74 001E9BF4 21305100 */  addu       $a2, $v0, $s1
    /* EAB78 001E9BF8 1600013C */  lui        $at, %hi(D_0015EFD8)
    /* EAB7C 001E9BFC D8EF23AC */  sw         $v1, %lo(D_0015EFD8)($at)
    /* EAB80 001E9C00 10008014 */  bnez       $a0, .L001E9C44
    /* EAB84 001E9C04 5C8386AF */   sw        $a2, -0x7CA4($gp)
    /* EAB88 001E9C08 2C00073C */  lui        $a3, (0x2C003F >> 16)
    /* EAB8C 001E9C0C 1400023C */  lui        $v0, %hi(D_00139478)
    /* EAB90 001E9C10 3F00E734 */  ori        $a3, $a3, (0x2C003F & 0xFFFF)
    /* EAB94 001E9C14 78944324 */  addiu      $v1, $v0, %lo(D_00139478)
    /* EAB98 001E9C18 2138C700 */  addu       $a3, $a2, $a3
    /* EAB9C 001E9C1C 7894448C */  lw         $a0, %lo(D_00139478)($v0)
    /* EABA0 001E9C20 C0FF0224 */  addiu      $v0, $zero, -0x40
    /* EABA4 001E9C24 3F00C624 */  addiu      $a2, $a2, %lo(D_2C003F)
    /* EABA8 001E9C28 0400658C */  lw         $a1, 0x4($v1)
    /* EABAC 001E9C2C 2438E200 */  and        $a3, $a3, $v0
    /* EABB0 001E9C30 2430C200 */  and        $a2, $a2, $v0
    /* EABB4 001E9C34 9CED080C */  jal        func_0023B670
    /* EABB8 001E9C38 2D400000 */   daddu     $t0, $zero, $zero
    /* EABBC 001E9C3C 0F000010 */  b          .L001E9C7C
    /* EABC0 001E9C40 0C000424 */   addiu     $a0, $zero, 0xC
.align 2
  .L001E9C44:
    /* EABC4 001E9C44 2C00073C */  lui        $a3, (0x2C003F >> 16)
    /* EABC8 001E9C48 1400023C */  lui        $v0, %hi(D_00139480)
    /* EABCC 001E9C4C 3F00E734 */  ori        $a3, $a3, (0x2C003F & 0xFFFF)
    /* EABD0 001E9C50 80944324 */  addiu      $v1, $v0, %lo(D_00139480)
    /* EABD4 001E9C54 2138C700 */  addu       $a3, $a2, $a3
    /* EABD8 001E9C58 8094448C */  lw         $a0, %lo(D_00139480)($v0)
    /* EABDC 001E9C5C C0FF0224 */  addiu      $v0, $zero, -0x40
    /* EABE0 001E9C60 3F00C624 */  addiu      $a2, $a2, %lo(D_2C003F)
    /* EABE4 001E9C64 0400658C */  lw         $a1, 0x4($v1)
    /* EABE8 001E9C68 2438E200 */  and        $a3, $a3, $v0
    /* EABEC 001E9C6C 2430C200 */  and        $a2, $a2, $v0
    /* EABF0 001E9C70 9CED080C */  jal        func_0023B670
    /* EABF4 001E9C74 2D400000 */   daddu     $t0, $zero, $zero
    /* EABF8 001E9C78 0C000424 */  addiu      $a0, $zero, 0xC
.align 2
  .L001E9C7C:
    /* EABFC 001E9C7C 30E6070C */  jal        func_001F98C0
    /* EAC00 001E9C80 D88280AF */   sw        $zero, -0x7D28($gp)
    /* EAC04 001E9C84 82D3070C */  jal        func_001F4E08
    /* EAC08 001E9C88 2D204000 */   daddu     $a0, $v0, $zero
    /* EAC0C 001E9C8C 6063040C */  jal        func_00118D80
    /* EAC10 001E9C90 2D200000 */   daddu     $a0, $zero, $zero
    /* EAC14 001E9C94 1600023C */  lui        $v0, %hi(D_0015EE80)
    /* EAC18 001E9C98 80EE428C */  lw         $v0, %lo(D_0015EE80)($v0)
    /* EAC1C 001E9C9C 08004050 */  beql       $v0, $zero, .L001E9CC0
    /* EAC20 001E9CA0 0000248E */   lw        $a0, (0x2C0000 & 0xFFFF)($s1)
    /* EAC24 001E9CA4 0800248E */  lw         $a0, (0x2C0008 & 0xFFFF)($s1)
    /* EAC28 001E9CA8 7000258E */  lw         $a1, (0x2C0070 & 0xFFFF)($s1)
    /* EAC2C 001E9CAC 21209100 */  addu       $a0, $a0, $s1
    /* EAC30 001E9CB0 1A31080C */  jal        func_0020C468
    /* EAC34 001E9CB4 2128B100 */   addu      $a1, $a1, $s1
    /* EAC38 001E9CB8 05000010 */  b          .L001E9CD0
    /* EAC3C 001E9CBC 00000000 */   nop
.align 2
  .L001E9CC0:
    /* EAC40 001E9CC0 7000258E */  lw         $a1, (0x2C0070 & 0xFFFF)($s1)
    /* EAC44 001E9CC4 21209100 */  addu       $a0, $a0, $s1
    /* EAC48 001E9CC8 1A31080C */  jal        func_0020C468
    /* EAC4C 001E9CCC 2128B100 */   addu      $a1, $a1, $s1
.align 2
  .L001E9CD0:
    /* EAC50 001E9CD0 6063040C */  jal        func_00118D80
    /* EAC54 001E9CD4 2D200000 */   daddu     $a0, $zero, $zero
    /* EAC58 001E9CD8 3AD2080C */  jal        func_002348E8
    /* EAC5C 001E9CDC 00000000 */   nop
    /* EAC60 001E9CE0 2D280000 */  daddu      $a1, $zero, $zero
    /* EAC64 001E9CE4 2D300000 */  daddu      $a2, $zero, $zero
    /* EAC68 001E9CE8 12ED070C */  jal        func_001FB448
    /* EAC6C 001E9CEC 2D200000 */   daddu     $a0, $zero, $zero
    /* EAC70 001E9CF0 26ED070C */  jal        func_001FB498
    /* EAC74 001E9CF4 00000000 */   nop
    /* EAC78 001E9CF8 4CED070C */  jal        func_001FB530
    /* EAC7C 001E9CFC 00000000 */   nop
    /* EAC80 001E9D00 7000248E */  lw         $a0, (0x2C0070 & 0xFFFF)($s1)
    /* EAC84 001E9D04 BC06080C */  jal        func_00201AF0
    /* EAC88 001E9D08 21209100 */   addu      $a0, $a0, $s1
    /* EAC8C 001E9D0C 66ED070C */  jal        func_001FB598
    /* EAC90 001E9D10 00000000 */   nop
    /* EAC94 001E9D14 2AEE070C */  jal        func_001FB8A8
    /* EAC98 001E9D18 00000000 */   nop
    /* EAC9C 001E9D1C 6ED2080C */  jal        func_002349B8
    /* EACA0 001E9D20 00000000 */   nop
    /* EACA4 001E9D24 52D2080C */  jal        func_00234948
    /* EACA8 001E9D28 00000000 */   nop
    /* EACAC 001E9D2C B2D2080C */  jal        func_00234AC8
    /* EACB0 001E9D30 01000424 */   addiu     $a0, $zero, 0x1
    /* EACB4 001E9D34 6689040C */  jal        func_00122598
    /* EACB8 001E9D38 2D200000 */   daddu     $a0, $zero, $zero
    /* EACBC 001E9D3C 1600033C */  lui        $v1, %hi(D_0015F538)
    /* EACC0 001E9D40 38F5638C */  lw         $v1, %lo(D_0015F538)($v1)
    /* EACC4 001E9D44 1E00043C */  lui        $a0, %hi(D_001E79C0)
    /* EACC8 001E9D48 C0798424 */  addiu      $a0, $a0, %lo(D_001E79C0)
    /* EACCC 001E9D4C 01006324 */  addiu      $v1, $v1, 0x1
    /* EACD0 001E9D50 CCA5070C */  jal        func_001E9730
    /* EACD4 001E9D54 388883AF */   sw        $v1, -0x77C8($gp)
    /* EACD8 001E9D58 1300023C */  lui        $v0, %hi(D_00137C80)
    /* EACDC 001E9D5C 807C4224 */  addiu      $v0, $v0, %lo(D_00137C80)
    /* EACE0 001E9D60 88BA080C */  jal        func_0022EA20
    /* EACE4 001E9D64 E014448C */   lw        $a0, 0x14E0($v0)
    /* EACE8 001E9D68 BAB8040C */  jal        func_0012E2E8
    /* EACEC 001E9D6C 2D804000 */   daddu     $s0, $v0, $zero
    /* EACF0 001E9D70 1800033C */  lui        $v1, %hi(D_001862E0)
    /* EACF4 001E9D74 1800023C */  lui        $v0, %hi(D_00186200)
    /* EACF8 001E9D78 E0626324 */  addiu      $v1, $v1, %lo(D_001862E0)
    /* EACFC 001E9D7C 00624224 */  addiu      $v0, $v0, %lo(D_00186200)
    /* EAD00 001E9D80 9C0070AC */  sw         $s0, 0x9C($v1)
    /* EAD04 001E9D84 07000424 */  addiu      $a0, $zero, 0x7
    /* EAD08 001E9D88 DC0050AC */  sw         $s0, 0xDC($v0)
    /* EAD0C 001E9D8C 1600013C */  lui        $at, %hi(D_0015F714)
    /* EAD10 001E9D90 14F722AC */  sw         $v0, %lo(D_0015F714)($at)
    /* EAD14 001E9D94 1600013C */  lui        $at, %hi(D_0015F710)
    /* EAD18 001E9D98 10F724AC */  sw         $a0, %lo(D_0015F710)($at)
    /* EAD1C 001E9D9C 1C0050AC */  sw         $s0, 0x1C($v0)
    /* EAD20 001E9DA0 3C0050AC */  sw         $s0, 0x3C($v0)
    /* EAD24 001E9DA4 5C0050AC */  sw         $s0, 0x5C($v0)
    /* EAD28 001E9DA8 7C0050AC */  sw         $s0, 0x7C($v0)
    /* EAD2C 001E9DAC 9C0050AC */  sw         $s0, 0x9C($v0)
    /* EAD30 001E9DB0 BC0050AC */  sw         $s0, 0xBC($v0)
    /* EAD34 001E9DB4 1C0070AC */  sw         $s0, 0x1C($v1)
    /* EAD38 001E9DB8 3C0070AC */  sw         $s0, 0x3C($v1)
    /* EAD3C 001E9DBC 5C0070AC */  sw         $s0, 0x5C($v1)
    /* EAD40 001E9DC0 D2AE070C */  jal        func_001EBB48
    /* EAD44 001E9DC4 7C0070AC */   sw        $s0, 0x7C($v1)
    /* EAD48 001E9DC8 1600033C */  lui        $v1, %hi(D_0016044C)
    /* EAD4C 001E9DCC 4C046390 */  lbu        $v1, %lo(D_0016044C)($v1)
    /* EAD50 001E9DD0 1600023C */  lui        $v0, %hi(D_0015EE80)
    /* EAD54 001E9DD4 80EE428C */  lw         $v0, %lo(D_0015EE80)($v0)
    /* EAD58 001E9DD8 11004310 */  beq        $v0, $v1, .L001E9E20
    /* EAD5C 001E9DDC 1400023C */   lui       $v0, %hi(D_0013E130)
    /* EAD60 001E9DE0 EE81040C */  jal        func_001207B8
    /* EAD64 001E9DE4 808183AF */   sw        $v1, -0x7E80($gp)
    /* EAD68 001E9DE8 1600033C */  lui        $v1, %hi(D_0015EE80)
    /* EAD6C 001E9DEC 80EE638C */  lw         $v1, %lo(D_0015EE80)($v1)
    /* EAD70 001E9DF0 02000224 */  addiu      $v0, $zero, 0x2
    /* EAD74 001E9DF4 03000624 */  addiu      $a2, $zero, 0x3
    /* EAD78 001E9DF8 2D200000 */  daddu      $a0, $zero, $zero
    /* EAD7C 001E9DFC 0A304300 */  movz       $a2, $v0, $v1
    /* EAD80 001E9E00 01000524 */  addiu      $a1, $zero, 0x1
    /* EAD84 001E9E04 DE86040C */  jal        func_00121B78
    /* EAD88 001E9E08 2D380000 */   daddu     $a3, $zero, $zero
    /* EAD8C 001E9E0C 24CE070C */  jal        func_001F3890
    /* EAD90 001E9E10 00000000 */   nop
    /* EAD94 001E9E14 1CED070C */  jal        func_001FB470
    /* EAD98 001E9E18 00000000 */   nop
    /* EAD9C 001E9E1C 1400023C */  lui        $v0, %hi(D_0013E130)
.align 2
  .L001E9E20:
    /* EADA0 001E9E20 1600053C */  lui        $a1, %hi(D_0015EE84)
    /* EADA4 001E9E24 84EEA58C */  lw         $a1, %lo(D_0015EE84)($a1)
    /* EADA8 001E9E28 30E14224 */  addiu      $v0, $v0, %lo(D_0013E130)
    /* EADAC 001E9E2C 01000324 */  addiu      $v1, $zero, 0x1
    /* EADB0 001E9E30 2A0043A4 */  sh         $v1, 0x2A($v0)
    /* EADB4 001E9E34 FFFF0424 */  addiu      $a0, $zero, -0x1
    /* EADB8 001E9E38 1600013C */  lui        $at, %hi(D_0015F6E4)
    /* EADBC 001E9E3C E4F625AC */  sw         $a1, %lo(D_0015F6E4)($at)
    /* EADC0 001E9E40 C2CC080C */  jal        func_00233308
    /* EADC4 001E9E44 848184AF */   sw        $a0, -0x7E7C($gp)
    /* EADC8 001E9E48 7000BF7B */  lq         $ra, 0x70($sp)
    /* EADCC 001E9E4C 6000B67B */  lq         $s6, 0x60($sp)
    /* EADD0 001E9E50 5000B57B */  lq         $s5, 0x50($sp)
    /* EADD4 001E9E54 4000B47B */  lq         $s4, 0x40($sp)
    /* EADD8 001E9E58 3000B37B */  lq         $s3, 0x30($sp)
    /* EADDC 001E9E5C 2000B27B */  lq         $s2, 0x20($sp)
    /* EADE0 001E9E60 1000B17B */  lq         $s1, 0x10($sp)
    /* EADE4 001E9E64 0000B07B */  lq         $s0, 0x0($sp)
    /* EADE8 001E9E68 0800E003 */  jr         $ra
    /* EADEC 001E9E6C 8000BD27 */   addiu     $sp, $sp, 0x80
endlabel func_001E99D8
