.align 3
nonmatching func_001F4F90, 0x1B8

glabel func_001F4F90
    /* F5F10 001F4F90 90FFBD27 */  addiu      $sp, $sp, -0x70
    /* F5F14 001F4F94 1900023C */  lui        $v0, %hi(D_0018CC20)
    /* F5F18 001F4F98 6000BF7F */  sq         $ra, 0x60($sp)
    /* F5F1C 001F4F9C 20CC4824 */  addiu      $t0, $v0, %lo(D_0018CC20)
    /* F5F20 001F4FA0 5000B27F */  sq         $s2, 0x50($sp)
    /* F5F24 001F4FA4 4000B17F */  sq         $s1, 0x40($sp)
    /* F5F28 001F4FA8 3000B07F */  sq         $s0, 0x30($sp)
    /* F5F2C 001F4FAC 4C00048D */  lw         $a0, 0x4C($t0)
    /* F5F30 001F4FB0 5F008010 */  beqz       $a0, .L001F5130
    /* F5F34 001F4FB4 8881838F */   lw        $v1, -0x7E78($gp)
    /* F5F38 001F4FB8 2D308000 */  daddu      $a2, $a0, $zero
    /* F5F3C 001F4FBC 03000224 */  addiu      $v0, $zero, 0x3
    /* F5F40 001F4FC0 0000C584 */  lh         $a1, 0x0($a2)
    /* F5F44 001F4FC4 FEFF6424 */  addiu      $a0, $v1, -0x2
    /* F5F48 001F4FC8 0000C794 */  lhu        $a3, 0x0($a2)
    /* F5F4C 001F4FCC 2B104400 */  sltu       $v0, $v0, $a0
    /* F5F50 001F4FD0 FFFF6324 */  addiu      $v1, $v1, -0x1
    /* F5F54 001F4FD4 0B180200 */  movn       $v1, $zero, $v0
    /* F5F58 001F4FD8 5500A004 */  bltz       $a1, .L001F5130
    /* F5F5C 001F4FDC 2D106000 */   daddu     $v0, $v1, $zero
    /* F5F60 001F4FE0 40100200 */  sll        $v0, $v0, 1
    /* F5F64 001F4FE4 1400033C */  lui        $v1, %hi(D_0013E600)
    /* F5F68 001F4FE8 0400C424 */  addiu      $a0, $a2, 0x4
    /* F5F6C 001F4FEC 00E67124 */  addiu      $s1, $v1, %lo(D_0013E600)
    /* F5F70 001F4FF0 21808200 */  addu       $s0, $a0, $v0
    /* F5F74 001F4FF4 2D900001 */  daddu      $s2, $t0, $zero
.align 2
  .L001F4FF8:
    /* F5F78 001F4FF8 00140700 */  sll        $v0, $a3, 16
    /* F5F7C 001F4FFC 3400438E */  lw         $v1, 0x34($s2)
    /* F5F80 001F5000 03140200 */  sra        $v0, $v0, 16
    /* F5F84 001F5004 2A106200 */  slt        $v0, $v1, $v0
    /* F5F88 001F5008 45004054 */  bnel       $v0, $zero, .L001F5120
    /* F5F8C 001F500C 1000C624 */   addiu     $a2, $a2, 0x10
    /* F5F90 001F5010 0200C284 */  lh         $v0, 0x2($a2)
    /* F5F94 001F5014 2A104300 */  slt        $v0, $v0, $v1
    /* F5F98 001F5018 41004054 */  bnel       $v0, $zero, .L001F5120
    /* F5F9C 001F501C 1000C624 */   addiu     $a2, $a2, 0x10
    /* F5FA0 001F5020 04002A8E */  lw         $t2, 0x4($s1)
    /* F5FA4 001F5024 07000224 */  addiu      $v0, $zero, 0x7
    /* F5FA8 001F5028 0000A2AF */  sw         $v0, 0x0($sp)
    /* F5FAC 001F502C 1000A427 */  addiu      $a0, $sp, 0x10
    /* F5FB0 001F5030 C8FF4A25 */  addiu      $t2, $t2, -0x38
    /* F5FB4 001F5034 08020624 */  addiu      $a2, $zero, 0x208
    /* F5FB8 001F5038 D8010824 */  addiu      $t0, $zero, 0x1D8
    /* F5FBC 001F503C 00010924 */  addiu      $t1, $zero, 0x100
    /* F5FC0 001F5040 C8000524 */  addiu      $a1, $zero, 0xC8
    /* F5FC4 001F5044 28000724 */  addiu      $a3, $zero, 0x28
    /* F5FC8 001F5048 92DD070C */  jal        func_001F7648
    /* F5FCC 001F504C 12000B24 */   addiu     $t3, $zero, 0x12
    /* F5FD0 001F5050 00000286 */  lh         $v0, 0x0($s0)
    /* F5FD4 001F5054 1000A427 */  addiu      $a0, $sp, 0x10
    /* F5FD8 001F5058 4C00468E */  lw         $a2, 0x4C($s2)
    /* F5FDC 001F505C B0800534 */  ori        $a1, $zero, 0x80B0
    /* F5FE0 001F5060 382C0500 */  dsll       $a1, $a1, 16
    /* F5FE4 001F5064 B0B0A534 */  ori        $a1, $a1, 0xB0B0
    /* F5FE8 001F5068 FFFF0724 */  addiu      $a3, $zero, -0x1
    /* F5FEC 001F506C 58DD070C */  jal        func_001F7560
    /* F5FF0 001F5070 2130C200 */   addu      $a2, $a2, $v0
    /* F5FF4 001F5074 04002A96 */  lhu        $t2, 0x4($s1)
    /* F5FF8 001F5078 1E00A297 */  lhu        $v0, 0x1E($sp)
    /* F5FFC 001F507C C4FF4625 */  addiu      $a2, $t2, -0x3C
    /* F6000 001F5080 1C00A497 */  lhu        $a0, 0x1C($sp)
    /* F6004 001F5084 00140200 */  sll        $v0, $v0, 16
    /* F6008 001F5088 0400238E */  lw         $v1, 0x4($s1)
    /* F600C 001F508C 002C0600 */  sll        $a1, $a2, 16
    /* F6010 001F5090 43140200 */  sra        $v0, $v0, 17
    /* F6014 001F5094 05004824 */  addiu      $t0, $v0, 0x5
    /* F6018 001F5098 00240400 */  sll        $a0, $a0, 16
    /* F601C 001F509C 032C0500 */  sra        $a1, $a1, 16
    /* F6020 001F50A0 433C0400 */  sra        $a3, $a0, 17
    /* F6024 001F50A4 2128A800 */  addu       $a1, $a1, $t0
    /* F6028 001F50A8 ECFF6324 */  addiu      $v1, $v1, -0x14
    /* F602C 001F50AC 0A00E924 */  addiu      $t1, $a3, 0xA
    /* F6030 001F50B0 2A186500 */  slt        $v1, $v1, $a1
    /* F6034 001F50B4 04006010 */  beqz       $v1, .L001F50C8
    /* F6038 001F50B8 1A00A6A7 */   sh        $a2, 0x1A($sp)
    /* F603C 001F50BC 19004224 */  addiu      $v0, $v0, 0x19
    /* F6040 001F50C0 23104201 */  subu       $v0, $t2, $v0
    /* F6044 001F50C4 1A00A2A7 */  sh         $v0, 0x1A($sp)
.align 2
  .L001F50C8:
    /* F6048 001F50C8 1A00A487 */  lh         $a0, 0x1A($sp)
    /* F604C 001F50CC 00010624 */  addiu      $a2, $zero, 0x100
    /* F6050 001F50D0 2330C900 */  subu       $a2, $a2, $t1
    /* F6054 001F50D4 0A01E724 */  addiu      $a3, $a3, 0x10A
    /* F6058 001F50D8 21288800 */  addu       $a1, $a0, $t0
    /* F605C 001F50DC 23208800 */  subu       $a0, $a0, $t0
    /* F6060 001F50E0 B2D8070C */  jal        func_001F62C8
    /* F6064 001F50E4 60000824 */   addiu     $t0, $zero, 0x60
    /* F6068 001F50E8 2200A297 */  lhu        $v0, 0x22($sp)
    /* F606C 001F50EC 1000A427 */  addiu      $a0, $sp, 0x10
    /* F6070 001F50F0 4C00438E */  lw         $v1, 0x4C($s2)
    /* F6074 001F50F4 B0800534 */  ori        $a1, $zero, 0x80B0
    /* F6078 001F50F8 382C0500 */  dsll       $a1, $a1, 16
    /* F607C 001F50FC B0B0A534 */  ori        $a1, $a1, 0xB0B0
    /* F6080 001F5100 FBFF4230 */  andi       $v0, $v0, 0xFFFB
    /* F6084 001F5104 FFFF0724 */  addiu      $a3, $zero, -0x1
    /* F6088 001F5108 2200A2A7 */  sh         $v0, 0x22($sp)
    /* F608C 001F510C 00000686 */  lh         $a2, 0x0($s0)
    /* F6090 001F5110 58DD070C */  jal        func_001F7560
    /* F6094 001F5114 21306600 */   addu      $a2, $v1, $a2
    /* F6098 001F5118 06000010 */  b          .L001F5134
    /* F609C 001F511C 6000BF7B */   lq        $ra, 0x60($sp)
.align 2
  .L001F5120:
    /* F60A0 001F5120 10001026 */  addiu      $s0, $s0, 0x10
    /* F60A4 001F5124 0000C284 */  lh         $v0, 0x0($a2)
    /* F60A8 001F5128 B3FF4104 */  bgez       $v0, .L001F4FF8
    /* F60AC 001F512C 0000C794 */   lhu       $a3, 0x0($a2)
.align 2
  .L001F5130:
    /* F60B0 001F5130 6000BF7B */  lq         $ra, 0x60($sp)
.align 2
  .L001F5134:
    /* F60B4 001F5134 5000B27B */  lq         $s2, 0x50($sp)
    /* F60B8 001F5138 4000B17B */  lq         $s1, 0x40($sp)
    /* F60BC 001F513C 3000B07B */  lq         $s0, 0x30($sp)
    /* F60C0 001F5140 0800E003 */  jr         $ra
    /* F60C4 001F5144 7000BD27 */   addiu     $sp, $sp, 0x70
endlabel func_001F4F90
