.align 3
nonmatching func_001FBC80, 0x1FC

glabel func_001FBC80
    /* FCC00 001FBC80 B0FFBD27 */  addiu      $sp, $sp, -0x50
    /* FCC04 001FBC84 1900023C */  lui        $v0, %hi(D_00193400)
    /* FCC08 001FBC88 2000B27F */  sq         $s2, 0x20($sp)
    /* FCC0C 001FBC8C 0000B07F */  sq         $s0, 0x0($sp)
    /* FCC10 001FBC90 2D904000 */  daddu      $s2, $v0, $zero
    /* FCC14 001FBC94 3000B37F */  sq         $s3, 0x30($sp)
    /* FCC18 001FBC98 00345024 */  addiu      $s0, $v0, %lo(D_00193400)
    /* FCC1C 001FBC9C 1000B17F */  sq         $s1, 0x10($sp)
    /* FCC20 001FBCA0 2D98A000 */  daddu      $s3, $a1, $zero
    /* FCC24 001FBCA4 4000BF7F */  sq         $ra, 0x40($sp)
    /* FCC28 001FBCA8 2D888000 */  daddu      $s1, $a0, $zero
    /* FCC2C 001FBCAC 1600033C */  lui        $v1, %hi(D_0015F6E8)
    /* FCC30 001FBCB0 E8F6638C */  lw         $v1, %lo(D_0015F6E8)($v1)
    /* FCC34 001FBCB4 03000224 */  addiu      $v0, $zero, 0x3
    /* FCC38 001FBCB8 05006210 */  beq        $v1, $v0, .L001FBCD0
    /* FCC3C 001FBCBC 300006AE */   sw        $a2, 0x30($s0)
    /* FCC40 001FBCC0 4AB9040C */  jal        func_0012E528
    /* FCC44 001FBCC4 1D000424 */   addiu     $a0, $zero, 0x1D
    /* FCC48 001FBCC8 BC5B080C */  jal        func_00216EF0
    /* FCC4C 001FBCCC 2D200000 */   daddu     $a0, $zero, $zero
.align 2
  .L001FBCD0:
    /* FCC50 001FBCD0 1600023C */  lui        $v0, %hi(D_0015F6E8)
    /* FCC54 001FBCD4 E8F6428C */  lw         $v0, %lo(D_0015F6E8)($v0)
    /* FCC58 001FBCD8 04000324 */  addiu      $v1, $zero, 0x4
    /* FCC5C 001FBCDC 180013AE */  sw         $s3, 0x18($s0)
    /* FCC60 001FBCE0 0900242E */  sltiu      $a0, $s1, 0x9
    /* FCC64 001FBCE4 140002AE */  sw         $v0, 0x14($s0)
    /* FCC68 001FBCE8 1600013C */  lui        $at, %hi(D_0015F6E8)
    /* FCC6C 001FBCEC E8F623AC */  sw         $v1, %lo(D_0015F6E8)($at)
    /* FCC70 001FBCF0 003451AE */  sw         $s1, %lo(D_00193400)($s2)
    /* FCC74 001FBCF4 55008010 */  beqz       $a0, .L001FBE4C
    /* FCC78 001FBCF8 2C0000AE */   sw        $zero, 0x2C($s0)
    /* FCC7C 001FBCFC 1E00023C */  lui        $v0, %hi(jtbl_001E7BD0)
    /* FCC80 001FBD00 80181100 */  sll        $v1, $s1, 2
    /* FCC84 001FBD04 D07B4224 */  addiu      $v0, $v0, %lo(jtbl_001E7BD0)
    /* FCC88 001FBD08 21186200 */  addu       $v1, $v1, $v0
    /* FCC8C 001FBD0C 0000648C */  lw         $a0, 0x0($v1)
    /* FCC90 001FBD10 08008000 */  jr         $a0
    /* FCC94 001FBD14 00000000 */   nop
    /* FCC98 001FBD18 6E4F0424 */  addiu      $a0, $zero, 0x4F6E
    /* FCC9C 001FBD1C 50F9070C */  jal        func_001FE540
    /* FCCA0 001FBD20 00345026 */   addiu     $s0, $s2, %lo(D_00193400)
    /* FCCA4 001FBD24 4D520424 */  addiu      $a0, $zero, 0x524D
    /* FCCA8 001FBD28 50F9070C */  jal        func_001FE540
    /* FCCAC 001FBD2C 080002AE */   sw        $v0, 0x8($s0)
    /* FCCB0 001FBD30 0C0002AE */  sw         $v0, 0xC($s0)
    /* FCCB4 001FBD34 50F9070C */  jal        func_001FE540
    /* FCCB8 001FBD38 4E520424 */   addiu     $a0, $zero, 0x524E
    /* FCCBC 001FBD3C 100002AE */  sw         $v0, 0x10($s0)
    /* FCCC0 001FBD40 280000AE */  sw         $zero, 0x28($s0)
    /* FCCC4 001FBD44 040000AE */  sw         $zero, 0x4($s0)
    /* FCCC8 001FBD48 1C0000AE */  sw         $zero, 0x1C($s0)
    /* FCCCC 001FBD4C 200000AE */  sw         $zero, 0x20($s0)
    /* FCCD0 001FBD50 43000010 */  b          .L001FBE60
    /* FCCD4 001FBD54 240000AE */   sw        $zero, 0x24($s0)
    /* FCCD8 001FBD58 50F9070C */  jal        func_001FE540
    /* FCCDC 001FBD5C 4F520424 */   addiu     $a0, $zero, 0x524F
    /* FCCE0 001FBD60 00344326 */  addiu      $v1, $s2, 0x3400
    /* FCCE4 001FBD64 080062AC */  sw         $v0, 0x8($v1)
    /* FCCE8 001FBD68 040060AC */  sw         $zero, 0x4($v1)
    /* FCCEC 001FBD6C 3C000010 */  b          .L001FBE60
    /* FCCF0 001FBD70 0C0060AC */   sw        $zero, 0xC($v1)
    /* FCCF4 001FBD74 2E520424 */  addiu      $a0, $zero, 0x522E
    /* FCCF8 001FBD78 50F9070C */  jal        func_001FE540
    /* FCCFC 001FBD7C 00345026 */   addiu     $s0, $s2, 0x3400
    /* FCD00 001FBD80 E04E0424 */  addiu      $a0, $zero, 0x4EE0
    /* FCD04 001FBD84 50F9070C */  jal        func_001FE540
    /* FCD08 001FBD88 080002AE */   sw        $v0, 0x8($s0)
    /* FCD0C 001FBD8C 0C0002AE */  sw         $v0, 0xC($s0)
    /* FCD10 001FBD90 50F9070C */  jal        func_001FE540
    /* FCD14 001FBD94 4F520424 */   addiu     $a0, $zero, 0x524F
    /* FCD18 001FBD98 100002AE */  sw         $v0, 0x10($s0)
    /* FCD1C 001FBD9C 30000010 */  b          .L001FBE60
    /* FCD20 001FBDA0 040000AE */   sw        $zero, 0x4($s0)
    /* FCD24 001FBDA4 2B4E0424 */  addiu      $a0, $zero, 0x4E2B
    /* FCD28 001FBDA8 58FD070C */  jal        func_001FF560
    /* FCD2C 001FBDAC 00345026 */   addiu     $s0, $s2, 0x3400
    /* FCD30 001FBDB0 30E6070C */  jal        func_001F98C0
    /* FCD34 001FBDB4 1E000424 */   addiu     $a0, $zero, 0x1E
    /* FCD38 001FBDB8 040002AE */  sw         $v0, 0x4($s0)
    /* FCD3C 001FBDBC 1E000424 */  addiu      $a0, $zero, 0x1E
    /* FCD40 001FBDC0 08000010 */  b          .L001FBDE4
    /* FCD44 001FBDC4 200000AE */   sw        $zero, 0x20($s0)
    /* FCD48 001FBDC8 1E000424 */  addiu      $a0, $zero, 0x1E
    /* FCD4C 001FBDCC 30E6070C */  jal        func_001F98C0
    /* FCD50 001FBDD0 00345026 */   addiu     $s0, $s2, 0x3400
    /* FCD54 001FBDD4 FFFF0324 */  addiu      $v1, $zero, -0x1
    /* FCD58 001FBDD8 040002AE */  sw         $v0, 0x4($s0)
    /* FCD5C 001FBDDC 200003AE */  sw         $v1, 0x20($s0)
    /* FCD60 001FBDE0 1E000424 */  addiu      $a0, $zero, 0x1E
.align 2
  .L001FBDE4:
    /* FCD64 001FBDE4 30E6070C */  jal        func_001F98C0
    /* FCD68 001FBDE8 00000000 */   nop
    /* FCD6C 001FBDEC 1C000010 */  b          .L001FBE60
    /* FCD70 001FBDF0 240002AE */   sw        $v0, 0x24($s0)
    /* FCD74 001FBDF4 1E000424 */  addiu      $a0, $zero, 0x1E
    /* FCD78 001FBDF8 30E6070C */  jal        func_001F98C0
    /* FCD7C 001FBDFC 00345026 */   addiu     $s0, $s2, 0x3400
    /* FCD80 001FBE00 FFFF0324 */  addiu      $v1, $zero, -0x1
    /* FCD84 001FBE04 1E000424 */  addiu      $a0, $zero, 0x1E
    /* FCD88 001FBE08 200003AE */  sw         $v1, 0x20($s0)
    /* FCD8C 001FBE0C 30E6070C */  jal        func_001F98C0
    /* FCD90 001FBE10 040002AE */   sw        $v0, 0x4($s0)
    /* FCD94 001FBE14 1400043C */  lui        $a0, %hi(D_0013D440)
    /* FCD98 001FBE18 03000324 */  addiu      $v1, $zero, 0x3
    /* FCD9C 001FBE1C 40D483AC */  sw         $v1, %lo(D_0013D440)($a0)
    /* FCDA0 001FBE20 0A000424 */  addiu      $a0, $zero, 0xA
    /* FCDA4 001FBE24 30E6070C */  jal        func_001F98C0
    /* FCDA8 001FBE28 240002AE */   sw        $v0, 0x24($s0)
    /* FCDAC 001FBE2C 0C000010 */  b          .L001FBE60
    /* FCDB0 001FBE30 2C0002AE */   sw        $v0, 0x2C($s0)
    /* FCDB4 001FBE34 30E6070C */  jal        func_001F98C0
    /* FCDB8 001FBE38 1E000424 */   addiu     $a0, $zero, 0x1E
    /* FCDBC 001FBE3C 00344326 */  addiu      $v1, $s2, 0x3400
    /* FCDC0 001FBE40 040062AC */  sw         $v0, 0x4($v1)
    /* FCDC4 001FBE44 06000010 */  b          .L001FBE60
    /* FCDC8 001FBE48 1C0060AC */   sw        $zero, 0x1C($v1)
.align 2
  .L001FBE4C:
    /* FCDCC 001FBE4C 78000224 */  addiu      $v0, $zero, 0x78
    /* FCDD0 001FBE50 080000AE */  sw         $zero, 0x8($s0)
    /* FCDD4 001FBE54 040002AE */  sw         $v0, 0x4($s0)
    /* FCDD8 001FBE58 0C0000AE */  sw         $zero, 0xC($s0)
    /* FCDDC 001FBE5C 100000AE */  sw         $zero, 0x10($s0)
.align 2
  .L001FBE60:
    /* FCDE0 001FBE60 4000BF7B */  lq         $ra, 0x40($sp)
    /* FCDE4 001FBE64 3000B37B */  lq         $s3, 0x30($sp)
    /* FCDE8 001FBE68 2000B27B */  lq         $s2, 0x20($sp)
    /* FCDEC 001FBE6C 1000B17B */  lq         $s1, 0x10($sp)
    /* FCDF0 001FBE70 0000B07B */  lq         $s0, 0x0($sp)
    /* FCDF4 001FBE74 0800E003 */  jr         $ra
    /* FCDF8 001FBE78 5000BD27 */   addiu     $sp, $sp, 0x50
endlabel func_001FBC80
    /* FCDFC 001FBE7C 00000000 */  nop
