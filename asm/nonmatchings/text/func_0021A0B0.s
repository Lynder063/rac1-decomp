.align 3
nonmatching func_0021A0B0, 0xF0

glabel func_0021A0B0
    /* 11B030 0021A0B0 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* 11B034 0021A0B4 1D00033C */  lui        $v1, %hi(D_001D5F70)
    /* 11B038 0021A0B8 2000B27F */  sq         $s2, 0x20($sp)
    /* 11B03C 0021A0BC 3000BF7F */  sq         $ra, 0x30($sp)
    /* 11B040 0021A0C0 2D906000 */  daddu      $s2, $v1, $zero
    /* 11B044 0021A0C4 1000B17F */  sq         $s1, 0x10($sp)
    /* 11B048 0021A0C8 705F6324 */  addiu      $v1, $v1, %lo(D_001D5F70)
    /* 11B04C 0021A0CC 0000B07F */  sq         $s0, 0x0($sp)
    /* 11B050 0021A0D0 1001628C */  lw         $v0, 0x110($v1)
    /* 11B054 0021A0D4 0A004228 */  slti       $v0, $v0, 0xA
    /* 11B058 0021A0D8 2C004014 */  bnez       $v0, .L0021A18C
    /* 11B05C 0021A0DC 3000BF7B */   lq        $ra, 0x30($sp)
    /* 11B060 0021A0E0 0400628C */  lw         $v0, 0x4($v1)
    /* 11B064 0021A0E4 15004010 */  beqz       $v0, .L0021A13C
    /* 11B068 0021A0E8 705F4226 */   addiu     $v0, $s2, %lo(D_001D5F70)
    /* 11B06C 0021A0EC 2D886000 */  daddu      $s1, $v1, $zero
    /* 11B070 0021A0F0 2D800000 */  daddu      $s0, $zero, $zero
    /* 11B074 0021A0F4 0400228E */  lw         $v0, 0x4($s1)
.align 2
  .L0021A0F8:
    /* 11B078 0021A0F8 80181000 */  sll        $v1, $s0, 2
    /* 11B07C 0021A0FC 21104300 */  addu       $v0, $v0, $v1
    /* 11B080 0021A100 4400448C */  lw         $a0, 0x44($v0)
    /* 11B084 0021A104 07008050 */  beql       $a0, $zero, .L0021A124
    /* 11B088 0021A108 01001026 */   addiu     $s0, $s0, 0x1
    /* 11B08C 0021A10C 0C00828C */  lw         $v0, 0xC($a0)
    /* 11B090 0021A110 04004050 */  beql       $v0, $zero, .L0021A124
    /* 11B094 0021A114 01001026 */   addiu     $s0, $s0, 0x1
    /* 11B098 0021A118 09F84000 */  jalr       $v0
    /* 11B09C 0021A11C 2D280000 */   daddu     $a1, $zero, $zero
    /* 11B0A0 0021A120 01001026 */  addiu      $s0, $s0, 0x1
.align 2
  .L0021A124:
    /* 11B0A4 0021A124 0E00022A */  slti       $v0, $s0, 0xE
    /* 11B0A8 0021A128 F3FF4054 */  bnel       $v0, $zero, .L0021A0F8
    /* 11B0AC 0021A12C 0400228E */   lw        $v0, 0x4($s1)
    /* 11B0B0 0021A130 705F4226 */  addiu      $v0, $s2, %lo(D_001D5F70)
    /* 11B0B4 0021A134 040040AC */  sw         $zero, 0x4($v0)
    /* 11B0B8 0021A138 705F4226 */  addiu      $v0, $s2, %lo(D_001D5F70)
.align 2
  .L0021A13C:
    /* 11B0BC 0021A13C 1D00033C */  lui        $v1, %hi(D_001D6120)
    /* 11B0C0 0021A140 1800448C */  lw         $a0, 0x18($v0)
    /* 11B0C4 0021A144 20617024 */  addiu      $s0, $v1, %lo(D_001D6120)
    /* 11B0C8 0021A148 0D001124 */  addiu      $s1, $zero, 0xD
    /* 11B0CC 0021A14C 1600013C */  lui        $at, %hi(D_0015EF78)
    /* 11B0D0 0021A150 78EF24AC */  sw         $a0, %lo(D_0015EF78)($at)
    /* 11B0D4 0021A154 00000000 */  nop
.align 2
  .L0021A158:
    /* 11B0D8 0021A158 0000048E */  lw         $a0, 0x0($s0)
    /* 11B0DC 0021A15C F099080C */  jal        func_002267C0
    /* 11B0E0 0021A160 FFFF3126 */   addiu     $s1, $s1, -0x1
    /* 11B0E4 0021A164 000002AE */  sw         $v0, 0x0($s0)
    /* 11B0E8 0021A168 00000000 */  nop
    /* 11B0EC 0021A16C FAFF2106 */  bgez       $s1, .L0021A158
    /* 11B0F0 0021A170 04001026 */   addiu     $s0, $s0, 0x4
    /* 11B0F4 0021A174 14000324 */  addiu      $v1, $zero, 0x14
    /* 11B0F8 0021A178 705F4226 */  addiu      $v0, $s2, %lo(D_001D5F70)
    /* 11B0FC 0021A17C 02000424 */  addiu      $a0, $zero, 0x2
    /* 11B100 0021A180 705F43AE */  sw         $v1, %lo(D_001D5F70)($s2)
    /* 11B104 0021A184 140044AC */  sw         $a0, 0x14($v0)
    /* 11B108 0021A188 3000BF7B */  lq         $ra, 0x30($sp)
.align 2
  .L0021A18C:
    /* 11B10C 0021A18C 2000B27B */  lq         $s2, 0x20($sp)
    /* 11B110 0021A190 1000B17B */  lq         $s1, 0x10($sp)
    /* 11B114 0021A194 0000B07B */  lq         $s0, 0x0($sp)
    /* 11B118 0021A198 0800E003 */  jr         $ra
    /* 11B11C 0021A19C 4000BD27 */   addiu     $sp, $sp, 0x40
endlabel func_0021A0B0
