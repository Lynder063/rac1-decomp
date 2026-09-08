.align 3
nonmatching func_0022EB08, 0x274

glabel func_0022EB08
    /* 12FA88 0022EB08 A0FFBD27 */  addiu      $sp, $sp, -0x60
    /* 12FA8C 0022EB0C 4000B47F */  sq         $s4, 0x40($sp)
    /* 12FA90 0022EB10 2000B27F */  sq         $s2, 0x20($sp)
    /* 12FA94 0022EB14 2DA00001 */  daddu      $s4, $t0, $zero
    /* 12FA98 0022EB18 1000B17F */  sq         $s1, 0x10($sp)
    /* 12FA9C 0022EB1C 2D90A000 */  daddu      $s2, $a1, $zero
    /* 12FAA0 0022EB20 5000BF7F */  sq         $ra, 0x50($sp)
    /* 12FAA4 0022EB24 2D888000 */  daddu      $s1, $a0, $zero
    /* 12FAA8 0022EB28 3000B37F */  sq         $s3, 0x30($sp)
    /* 12FAAC 0022EB2C 04004232 */  andi       $v0, $s2, 0x4
    /* 12FAB0 0022EB30 0000B07F */  sq         $s0, 0x0($sp)
    /* 12FAB4 0022EB34 18002392 */  lbu        $v1, 0x18($s1)
    /* 12FAB8 0022EB38 06004014 */  bnez       $v0, .L0022EB54
    /* 12FABC 0022EB3C 0100632C */   sltiu     $v1, $v1, 0x1
    /* 12FAC0 0022EB40 01006238 */  xori       $v0, $v1, 0x1
    /* 12FAC4 0022EB44 85004014 */  bnez       $v0, .L0022ED5C
    /* 12FAC8 0022EB48 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 12FACC 0022EB4C 04000010 */  b          .L0022EB60
    /* 12FAD0 0022EB50 1A000424 */   addiu     $a0, $zero, 0x1A
.align 2
  .L0022EB54:
    /* 12FAD4 0022EB54 81006014 */  bnez       $v1, .L0022ED5C
    /* 12FAD8 0022EB58 FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 12FADC 0022EB5C 1A000424 */  addiu      $a0, $zero, 0x1A
.align 2
  .L0022EB60:
    /* 12FAE0 0022EB60 0C00C010 */  beqz       $a2, .L0022EB94
    /* 12FAE4 0022EB64 1400023C */   lui       $v0, %hi(D_0013F450)
    /* 12FAE8 0022EB68 50F44224 */  addiu      $v0, $v0, %lo(D_0013F450)
    /* 12FAEC 0022EB6C 8020438C */  lw         $v1, 0x2080($v0)
    /* 12FAF0 0022EB70 08006650 */  beql       $v1, $a2, .L0022EB94
    /* 12FAF4 0022EB74 1E000424 */   addiu     $a0, $zero, 0x1E
    /* 12FAF8 0022EB78 9010428C */  lw         $v0, 0x1090($v0)
    /* 12FAFC 0022EB7C 04004610 */  beq        $v0, $a2, .L0022EB90
    /* 12FB00 0022EB80 72040224 */   addiu     $v0, $zero, 0x472
    /* 12FB04 0022EB84 A600C384 */  lh         $v1, 0xA6($a2)
    /* 12FB08 0022EB88 02006214 */  bne        $v1, $v0, .L0022EB94
    /* 12FB0C 0022EB8C 00000000 */   nop
.align 2
  .L0022EB90:
    /* 12FB10 0022EB90 1E000424 */  addiu      $a0, $zero, 0x1E
.align 2
  .L0022EB94:
    /* 12FB14 0022EB94 6F008010 */  beqz       $a0, .L0022ED54
    /* 12FB18 0022EB98 2D800000 */   daddu     $s0, $zero, $zero
    /* 12FB1C 0022EB9C 1400033C */  lui        $v1, %hi(D_0013E650)
    /* 12FB20 0022EBA0 2D986000 */  daddu      $s3, $v1, $zero
    /* 12FB24 0022EBA4 50E66324 */  addiu      $v1, $v1, %lo(D_0013E650)
    /* 12FB28 0022EBA8 74006290 */  lbu        $v0, 0x74($v1)
    /* 12FB2C 0022EBAC 0C004010 */  beqz       $v0, .L0022EBE0
    /* 12FB30 0022EBB0 2A100402 */   slt       $v0, $s0, $a0
    /* 12FB34 0022EBB4 74006324 */  addiu      $v1, $v1, 0x74
    /* 12FB38 0022EBB8 01001026 */  addiu      $s0, $s0, 0x1
    /* 12FB3C 0022EBBC 00000000 */  nop
.align 2
  .L0022EBC0:
    /* 12FB40 0022EBC0 2A100402 */  slt        $v0, $s0, $a0
    /* 12FB44 0022EBC4 63004010 */  beqz       $v0, .L0022ED54
    /* 12FB48 0022EBC8 70006324 */   addiu     $v1, $v1, 0x70
    /* 12FB4C 0022EBCC 00006290 */  lbu        $v0, 0x0($v1)
    /* 12FB50 0022EBD0 00000000 */  nop
    /* 12FB54 0022EBD4 FAFF4054 */  bnel       $v0, $zero, .L0022EBC0
    /* 12FB58 0022EBD8 01001026 */   addiu     $s0, $s0, 0x1
    /* 12FB5C 0022EBDC 2A100402 */  slt        $v0, $s0, $a0
.align 2
  .L0022EBE0:
    /* 12FB60 0022EBE0 5C004010 */  beqz       $v0, .L0022ED54
    /* 12FB64 0022EBE4 70000324 */   addiu     $v1, $zero, 0x70
    /* 12FB68 0022EBE8 50E66226 */  addiu      $v0, $s3, %lo(D_0013E650)
    /* 12FB6C 0022EBEC 18180302 */  mult       $v1, $s0, $v1
    /* 12FB70 0022EBF0 A0004424 */  addiu      $a0, $v0, 0xA0
    /* 12FB74 0022EBF4 FFFF0524 */  addiu      $a1, $zero, -0x1
    /* 12FB78 0022EBF8 21106200 */  addu       $v0, $v1, $v0
    /* 12FB7C 0022EBFC 780051AC */  sw         $s1, 0x78($v0)
    /* 12FB80 0022EC00 21186400 */  addu       $v1, $v1, $a0
    /* 12FB84 0022EC04 1A002496 */  lhu        $a0, 0x1A($s1)
    /* 12FB88 0022EC08 7E0045A4 */  sh         $a1, 0x7E($v0)
    /* 12FB8C 0022EC0C 7C0044A4 */  sh         $a0, 0x7C($v0)
    /* 12FB90 0022EC10 8C0040AC */  sw         $zero, 0x8C($v0)
    /* 12FB94 0022EC14 800054AC */  sw         $s4, 0x80($v0)
    /* 12FB98 0022EC18 880040AC */  sw         $zero, 0x88($v0)
    /* 12FB9C 0022EC1C 0000607C */  sq         $zero, 0x0($v1)
    /* 12FBA0 0022EC20 0300E014 */  bnez       $a3, .L0022EC30
    /* 12FBA4 0022EC24 00000000 */   nop
    /* 12FBA8 0022EC28 1B00C010 */  beqz       $a2, .L0022EC98
    /* 12FBAC 0022EC2C 70000224 */   addiu     $v0, $zero, 0x70
.align 2
  .L0022EC30:
    /* 12FBB0 0022EC30 1100C010 */  beqz       $a2, .L0022EC78
    /* 12FBB4 0022EC34 70000424 */   addiu     $a0, $zero, 0x70
    /* 12FBB8 0022EC38 1400053C */  lui        $a1, %hi(D_0013E6E0)
    /* 12FBBC 0022EC3C 18180402 */  mult       $v1, $s0, $a0
    /* 12FBC0 0022EC40 E0E6A524 */  addiu      $a1, $a1, %lo(D_0013E6E0)
    /* 12FBC4 0022EC44 1000C624 */  addiu      $a2, $a2, 0x10
    /* 12FBC8 0022EC48 21186500 */  addu       $v1, $v1, $a1
    /* 12FBCC 0022EC4C 0000C278 */  lq         $v0, 0x0($a2)
    /* 12FBD0 0022EC50 0000627C */  sq         $v0, 0x0($v1)
    /* 12FBD4 0022EC54 18200402 */  mult       $a0, $s0, $a0
    /* 12FBD8 0022EC58 70FFA524 */  addiu      $a1, $a1, -0x90
    /* 12FBDC 0022EC5C 803F013C */  lui        $at, (0x3F800000 >> 16)
    /* 12FBE0 0022EC60 00088144 */  mtc1       $at, $f1
    /* 12FBE4 0022EC64 21208500 */  addu       $a0, $a0, $a1
    /* 12FBE8 0022EC68 980080C4 */  lwc1       $f0, 0x98($a0)
    /* 12FBEC 0022EC6C 00000146 */  add.s      $f0, $f0, $f1
    /* 12FBF0 0022EC70 0F000010 */  b          .L0022ECB0
    /* 12FBF4 0022EC74 980080E4 */   swc1      $f0, 0x98($a0)
.align 2
  .L0022EC78:
    /* 12FBF8 0022EC78 1400033C */  lui        $v1, %hi(D_0013E6E0)
    /* 12FBFC 0022EC7C 18200402 */  mult       $a0, $s0, $a0
    /* 12FC00 0022EC80 E0E66324 */  addiu      $v1, $v1, %lo(D_0013E6E0)
    /* 12FC04 0022EC84 21208300 */  addu       $a0, $a0, $v1
    /* 12FC08 0022EC88 0000E278 */  lq         $v0, 0x0($a3)
    /* 12FC0C 0022EC8C 0000827C */  sq         $v0, 0x0($a0)
    /* 12FC10 0022EC90 08000010 */  b          .L0022ECB4
    /* 12FC14 0022EC94 10004232 */   andi      $v0, $s2, 0x10
.align 2
  .L0022EC98:
    /* 12FC18 0022EC98 1400043C */  lui        $a0, %hi(D_0013E6E0)
    /* 12FC1C 0022EC9C 18100202 */  mult       $v0, $s0, $v0
    /* 12FC20 0022ECA0 E0E68424 */  addiu      $a0, $a0, %lo(D_0013E6E0)
    /* 12FC24 0022ECA4 11005236 */  ori        $s2, $s2, 0x11
    /* 12FC28 0022ECA8 F0E6070C */  jal        func_001F9BC0
    /* 12FC2C 0022ECAC 21204400 */   addu      $a0, $v0, $a0
.align 2
  .L0022ECB0:
    /* 12FC30 0022ECB0 10004232 */  andi       $v0, $s2, 0x10
.align 2
  .L0022ECB4:
    /* 12FC34 0022ECB4 0B004014 */  bnez       $v0, .L0022ECE4
    /* 12FC38 0022ECB8 2D108002 */   daddu     $v0, $s4, $zero
    /* 12FC3C 0022ECBC 70000224 */  addiu      $v0, $zero, 0x70
    /* 12FC40 0022ECC0 1400043C */  lui        $a0, %hi(D_0013E6C0)
    /* 12FC44 0022ECC4 18100202 */  mult       $v0, $s0, $v0
    /* 12FC48 0022ECC8 C0E68424 */  addiu      $a0, $a0, %lo(D_0013E6C0)
    /* 12FC4C 0022ECCC 20008524 */  addiu      $a1, $a0, 0x20
    /* 12FC50 0022ECD0 21284500 */  addu       $a1, $v0, $a1
    /* 12FC54 0022ECD4 C0B6080C */  jal        func_0022DB00
    /* 12FC58 0022ECD8 21204400 */   addu      $a0, $v0, $a0
    /* 12FC5C 0022ECDC 02000010 */  b          .L0022ECE8
    /* 12FC60 0022ECE0 20004228 */   slti      $v0, $v0, 0x20
.align 2
  .L0022ECE4:
    /* 12FC64 0022ECE4 20004228 */  slti       $v0, $v0, 0x20
.align 2
  .L0022ECE8:
    /* 12FC68 0022ECE8 1C004014 */  bnez       $v0, .L0022ED5C
    /* 12FC6C 0022ECEC FFFF0224 */   addiu     $v0, $zero, -0x1
    /* 12FC70 0022ECF0 70000224 */  addiu      $v0, $zero, 0x70
    /* 12FC74 0022ECF4 50E66326 */  addiu      $v1, $s3, %lo(D_0013E650)
    /* 12FC78 0022ECF8 18100202 */  mult       $v0, $s0, $v0
    /* 12FC7C 0022ECFC 07000424 */  addiu      $a0, $zero, 0x7
    /* 12FC80 0022ED00 21104300 */  addu       $v0, $v0, $v1
    /* 12FC84 0022ED04 750052A0 */  sb         $s2, 0x75($v0)
    /* 12FC88 0022ED08 740044A0 */  sb         $a0, 0x74($v0)
    /* 12FC8C 0022ED0C B00040AC */  sw         $zero, 0xB0($v0)
    /* 12FC90 0022ED10 1400228E */  lw         $v0, 0x14($s1)
    /* 12FC94 0022ED14 1000238E */  lw         $v1, 0x10($s1)
    /* 12FC98 0022ED18 05004310 */  beq        $v0, $v1, .L0022ED30
    /* 12FC9C 0022ED1C 2D284000 */   daddu     $a1, $v0, $zero
    /* 12FCA0 0022ED20 2C50080C */  jal        func_002140B0
    /* 12FCA4 0022ED24 23204300 */   subu      $a0, $v0, $v1
    /* 12FCA8 0022ED28 1000238E */  lw         $v1, 0x10($s1)
    /* 12FCAC 0022ED2C 21284300 */  addu       $a1, $v0, $v1
.align 2
  .L0022ED30:
    /* 12FCB0 0022ED30 70000324 */  addiu      $v1, $zero, 0x70
    /* 12FCB4 0022ED34 50E66426 */  addiu      $a0, $s3, %lo(D_0013E650)
    /* 12FCB8 0022ED38 18180302 */  mult       $v1, $s0, $v1
    /* 12FCBC 0022ED3C FFFF023C */  lui        $v0, (0xFFFFFFFF >> 16)
    /* 12FCC0 0022ED40 FFFF4234 */  ori        $v0, $v0, (0xFFFFFFFF & 0xFFFF)
    /* 12FCC4 0022ED44 21186400 */  addu       $v1, $v1, $a0
    /* 12FCC8 0022ED48 700062AC */  sw         $v0, 0x70($v1)
    /* 12FCCC 0022ED4C 02000010 */  b          .L0022ED58
    /* 12FCD0 0022ED50 840065AC */   sw        $a1, 0x84($v1)
.align 2
  .L0022ED54:
    /* 12FCD4 0022ED54 FFFF1024 */  addiu      $s0, $zero, -0x1
.align 2
  .L0022ED58:
    /* 12FCD8 0022ED58 2D100002 */  daddu      $v0, $s0, $zero
.align 2
  .L0022ED5C:
    /* 12FCDC 0022ED5C 5000BF7B */  lq         $ra, 0x50($sp)
    /* 12FCE0 0022ED60 4000B47B */  lq         $s4, 0x40($sp)
    /* 12FCE4 0022ED64 3000B37B */  lq         $s3, 0x30($sp)
    /* 12FCE8 0022ED68 2000B27B */  lq         $s2, 0x20($sp)
    /* 12FCEC 0022ED6C 1000B17B */  lq         $s1, 0x10($sp)
    /* 12FCF0 0022ED70 0000B07B */  lq         $s0, 0x0($sp)
    /* 12FCF4 0022ED74 0800E003 */  jr         $ra
    /* 12FCF8 0022ED78 6000BD27 */   addiu     $sp, $sp, 0x60
endlabel func_0022EB08
    /* 12FCFC 0022ED7C 00000000 */  nop
