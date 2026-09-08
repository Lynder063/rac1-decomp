.align 3
nonmatching func_00216A90, 0xD4

glabel func_00216A90
    /* 117A10 00216A90 1500023C */  lui        $v0, %hi(D_001517D0)
    /* 117A14 00216A94 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 117A18 00216A98 D0174C24 */  addiu      $t4, $v0, %lo(D_001517D0)
    /* 117A1C 00216A9C 2000BF7F */  sq         $ra, 0x20($sp)
    /* 117A20 00216AA0 3400828D */  lw         $v0, 0x34($t4)
    /* 117A24 00216AA4 2D588000 */  daddu      $t3, $a0, $zero
    /* 117A28 00216AA8 2D70A000 */  daddu      $t6, $a1, $zero
    /* 117A2C 00216AAC 2A004014 */  bnez       $v0, .L00216B58
    /* 117A30 00216AB0 2D68C000 */   daddu     $t5, $a2, $zero
    /* 117A34 00216AB4 1300023C */  lui        $v0, %hi(D_00137C80)
    /* 117A38 00216AB8 80200B00 */  sll        $a0, $t3, 2
    /* 117A3C 00216ABC 807C4224 */  addiu      $v0, $v0, %lo(D_00137C80)
    /* 117A40 00216AC0 A82A4224 */  addiu      $v0, $v0, 0x2AA8
    /* 117A44 00216AC4 21208200 */  addu       $a0, $a0, $v0
    /* 117A48 00216AC8 0000838C */  lw         $v1, 0x0($a0)
    /* 117A4C 00216ACC 22006010 */  beqz       $v1, .L00216B58
    /* 117A50 00216AD0 34008325 */   addiu     $v1, $t4, 0x34
    /* 117A54 00216AD4 21000A3C */  lui        $t2, %hi(func_002179C8)
    /* 117A58 00216AD8 0000848C */  lw         $a0, 0x0($a0)
    /* 117A5C 00216ADC C8794A25 */  addiu      $t2, $t2, %lo(func_002179C8)
    /* 117A60 00216AE0 01000524 */  addiu      $a1, $zero, 0x1
    /* 117A64 00216AE4 0A000624 */  addiu      $a2, $zero, 0xA
    /* 117A68 00216AE8 80BB0734 */  ori        $a3, $zero, 0xBB80
    /* 117A6C 00216AEC 20000924 */  addiu      $t1, $zero, 0x20
    /* 117A70 00216AF0 3C180300 */  dsll32     $v1, $v1, 0
    /* 117A74 00216AF4 FFFF023C */  lui        $v0, (0xFFFFFFFF >> 16)
    /* 117A78 00216AF8 00440D00 */  sll        $t0, $t5, 16
    /* 117A7C 00216AFC 3E180300 */  dsrl32     $v1, $v1, 0
    /* 117A80 00216B00 FFFF4234 */  ori        $v0, $v0, (0xFFFFFFFF & 0xFFFF)
    /* 117A84 00216B04 3E0085A5 */  sh         $a1, 0x3E($t4)
    /* 117A88 00216B08 38008BA5 */  sh         $t3, 0x38($t4)
    /* 117A8C 00216B0C 3C200400 */  dsll32     $a0, $a0, 0
    /* 117A90 00216B10 3F200400 */  dsra32     $a0, $a0, 0
    /* 117A94 00216B14 480086AD */  sw         $a2, 0x48($t4)
    /* 117A98 00216B18 03440800 */  sra        $t0, $t0, 16
    /* 117A9C 00216B1C 4C0087AD */  sw         $a3, 0x4C($t4)
    /* 117AA0 00216B20 2D280000 */  daddu      $a1, $zero, $zero
    /* 117AA4 00216B24 0000A9AF */  sw         $t1, 0x0($sp)
    /* 117AA8 00216B28 2D300000 */  daddu      $a2, $zero, $zero
    /* 117AAC 00216B2C 0800AAAF */  sw         $t2, 0x8($sp)
    /* 117AB0 00216B30 2D380000 */  daddu      $a3, $zero, $zero
    /* 117AB4 00216B34 340082AD */  sw         $v0, 0x34($t4)
    /* 117AB8 00216B38 2D480000 */  daddu      $t1, $zero, $zero
    /* 117ABC 00216B3C 3C008EA5 */  sh         $t6, 0x3C($t4)
    /* 117AC0 00216B40 01000A24 */  addiu      $t2, $zero, 0x1
    /* 117AC4 00216B44 1000A3FF */  sd         $v1, 0x10($sp)
    /* 117AC8 00216B48 2D580000 */  daddu      $t3, $zero, $zero
    /* 117ACC 00216B4C 3A008DA5 */  sh         $t5, 0x3A($t4)
    /* 117AD0 00216B50 52BB040C */  jal        func_0012ED48
    /* 117AD4 00216B54 440080A5 */   sh        $zero, 0x44($t4)
.align 2
  .L00216B58:
    /* 117AD8 00216B58 2000BF7B */  lq         $ra, 0x20($sp)
    /* 117ADC 00216B5C 0800E003 */  jr         $ra
    /* 117AE0 00216B60 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_00216A90
    /* 117AE4 00216B64 00000000 */  nop
