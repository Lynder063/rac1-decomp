.align 3
nonmatching func_00128C90, 0x10C

glabel func_00128C90
    /* 29C10 00128C90 60FFBD27 */  addiu      $sp, $sp, -0xA0
    /* 29C14 00128C94 8000B6FF */  sd         $s6, 0x80($sp)
    /* 29C18 00128C98 7000B5FF */  sd         $s5, 0x70($sp)
    /* 29C1C 00128C9C 05001624 */  addiu      $s6, $zero, 0x5
    /* 29C20 00128CA0 6000B4FF */  sd         $s4, 0x60($sp)
    /* 29C24 00128CA4 B3011524 */  addiu      $s5, $zero, 0x1B3
    /* 29C28 00128CA8 5000B3FF */  sd         $s3, 0x50($sp)
    /* 29C2C 00128CAC 00011424 */  addiu      $s4, $zero, 0x100
    /* 29C30 00128CB0 4000B2FF */  sd         $s2, 0x40($sp)
    /* 29C34 00128CB4 B7011324 */  addiu      $s3, $zero, 0x1B7
    /* 29C38 00128CB8 3000B1FF */  sd         $s1, 0x30($sp)
    /* 29C3C 00128CBC B8011224 */  addiu      $s2, $zero, 0x1B8
    /* 29C40 00128CC0 2000B0FF */  sd         $s0, 0x20($sp)
    /* 29C44 00128CC4 FFFF1124 */  addiu      $s1, $zero, -0x1
    /* 29C48 00128CC8 9000BFFF */  sd         $ra, 0x90($sp)
    /* 29C4C 00128CCC 2D808000 */  daddu      $s0, $a0, $zero
.align 2
  .L00128CD0:
    /* 29C50 00128CD0 EAA2040C */  jal        func_00128BA8
    /* 29C54 00128CD4 2D200002 */   daddu     $a0, $s0, $zero
    /* 29C58 00128CD8 2D200002 */  daddu      $a0, $s0, $zero
    /* 29C5C 00128CDC 96A2040C */  jal        func_00128A58
    /* 29C60 00128CE0 20000524 */   addiu     $a1, $zero, 0x20
    /* 29C64 00128CE4 2D184000 */  daddu      $v1, $v0, $zero
    /* 29C68 00128CE8 0D007510 */  beq        $v1, $s5, .L00128D20
    /* 29C6C 00128CEC B401622C */   sltiu     $v0, $v1, 0x1B4
    /* 29C70 00128CF0 05004010 */  beqz       $v0, .L00128D08
    /* 29C74 00128CF4 00000000 */   nop
    /* 29C78 00128CF8 11007410 */  beq        $v1, $s4, .L00128D40
    /* 29C7C 00128CFC 00000000 */   nop
    /* 29C80 00128D00 F3FF0010 */  b          .L00128CD0
    /* 29C84 00128D04 00000000 */   nop
.align 2
  .L00128D08:
    /* 29C88 00128D08 1A007310 */  beq        $v1, $s3, .L00128D74
    /* 29C8C 00128D0C 2D100000 */   daddu     $v0, $zero, $zero
    /* 29C90 00128D10 07007210 */  beq        $v1, $s2, .L00128D30
    /* 29C94 00128D14 00000000 */   nop
    /* 29C98 00128D18 EDFF0010 */  b          .L00128CD0
    /* 29C9C 00128D1C 00000000 */   nop
.align 2
  .L00128D20:
    /* 29CA0 00128D20 38B1040C */  jal        func_0012C4E0
    /* 29CA4 00128D24 2D200002 */   daddu     $a0, $s0, $zero
    /* 29CA8 00128D28 E9FF0010 */  b          .L00128CD0
    /* 29CAC 00128D2C 00000000 */   nop
.align 2
  .L00128D30:
    /* 29CB0 00128D30 90A4040C */  jal        func_00129240
    /* 29CB4 00128D34 2D200002 */   daddu     $a0, $s0, $zero
    /* 29CB8 00128D38 E5FF0010 */  b          .L00128CD0
    /* 29CBC 00128D3C 00000000 */   nop
.align 2
  .L00128D40:
    /* 29CC0 00128D40 68A3040C */  jal        func_00128DA0
    /* 29CC4 00128D44 2D200002 */   daddu     $a0, $s0, $zero
    /* 29CC8 00128D48 5808048E */  lw         $a0, 0x858($s0)
    /* 29CCC 00128D4C 2D28A003 */  daddu      $a1, $sp, $zero
    /* 29CD0 00128D50 0000B6AF */  sw         $s6, 0x0($sp)
    /* 29CD4 00128D54 1000B1FF */  sd         $s1, 0x10($sp)
    /* 29CD8 00128D58 1EAF040C */  jal        func_0012BC78
    /* 29CDC 00128D5C 0800B1FF */   sd        $s1, 0x8($sp)
    /* 29CE0 00128D60 1000A2DF */  ld         $v0, 0x10($sp)
    /* 29CE4 00128D64 0800A3DF */  ld         $v1, 0x8($sp)
    /* 29CE8 00128D68 300802FE */  sd         $v0, 0x830($s0)
    /* 29CEC 00128D6C 280803FE */  sd         $v1, 0x828($s0)
    /* 29CF0 00128D70 5001028E */  lw         $v0, 0x150($s0)
.align 2
  .L00128D74:
    /* 29CF4 00128D74 9000BFDF */  ld         $ra, 0x90($sp)
    /* 29CF8 00128D78 8000B6DF */  ld         $s6, 0x80($sp)
    /* 29CFC 00128D7C 7000B5DF */  ld         $s5, 0x70($sp)
    /* 29D00 00128D80 6000B4DF */  ld         $s4, 0x60($sp)
    /* 29D04 00128D84 5000B3DF */  ld         $s3, 0x50($sp)
    /* 29D08 00128D88 4000B2DF */  ld         $s2, 0x40($sp)
    /* 29D0C 00128D8C 3000B1DF */  ld         $s1, 0x30($sp)
    /* 29D10 00128D90 2000B0DF */  ld         $s0, 0x20($sp)
    /* 29D14 00128D94 0800E003 */  jr         $ra
    /* 29D18 00128D98 A000BD27 */   addiu     $sp, $sp, 0xA0
endlabel func_00128C90
    /* 29D1C 00128D9C 00000000 */  nop
