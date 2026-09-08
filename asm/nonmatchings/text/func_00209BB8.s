.align 3
nonmatching func_00209BB8, 0x12C

glabel func_00209BB8
    /* 10AB38 00209BB8 A0FFBD27 */  addiu      $sp, $sp, -0x60
    /* 10AB3C 00209BBC 2000B07F */  sq         $s0, 0x20($sp)
    /* 10AB40 00209BC0 2D30A003 */  daddu      $a2, $sp, $zero
    /* 10AB44 00209BC4 5000BF7F */  sq         $ra, 0x50($sp)
    /* 10AB48 00209BC8 1400103C */  lui        $s0, %hi(D_0013D390)
    /* 10AB4C 00209BCC 4000B27F */  sq         $s2, 0x40($sp)
    /* 10AB50 00209BD0 90D30226 */  addiu      $v0, $s0, %lo(D_0013D390)
    /* 10AB54 00209BD4 3000B17F */  sq         $s1, 0x30($sp)
    /* 10AB58 00209BD8 0400A737 */  ori        $a3, $sp, 0x4
    /* 10AB5C 00209BDC 90D3048E */  lw         $a0, %lo(D_0013D390)($s0)
    /* 10AB60 00209BE0 0800A837 */  ori        $t0, $sp, 0x8
    /* 10AB64 00209BE4 1A90040C */  jal        func_00124068
    /* 10AB68 00209BE8 0400458C */   lw        $a1, 0x4($v0)
    /* 10AB6C 00209BEC 1000A2AF */  sw         $v0, 0x10($sp)
    /* 10AB70 00209BF0 2D900002 */  daddu      $s2, $s0, $zero
    /* 10AB74 00209BF4 04000010 */  b          .L00209C08
    /* 10AB78 00209BF8 1400113C */   lui       $s1, %hi(D_0013D450)
    /* 10AB7C 00209BFC 00000000 */  nop
.align 2
  .L00209C00:
    /* 10AB80 00209C00 6689040C */  jal        func_00122598
    /* 10AB84 00209C04 2D200000 */   daddu     $a0, $zero, $zero
.align 2
  .L00209C08:
    /* 10AB88 00209C08 50D43026 */  addiu      $s0, $s1, %lo(D_0013D450)
    /* 10AB8C 00209C0C 01000424 */  addiu      $a0, $zero, 0x1
    /* 10AB90 00209C10 2D280002 */  daddu      $a1, $s0, $zero
    /* 10AB94 00209C14 CC8F040C */  jal        func_00123F30
    /* 10AB98 00209C18 04000626 */   addiu     $a2, $s0, 0x4
    /* 10AB9C 00209C1C F8FF4010 */  beqz       $v0, .L00209C00
    /* 10ABA0 00209C20 40FF0526 */   addiu     $a1, $s0, -0xC0
    /* 10ABA4 00209C24 FBFF0224 */  addiu      $v0, $zero, -0x5
    /* 10ABA8 00209C28 C400A48C */  lw         $a0, 0xC4($a1)
    /* 10ABAC 00209C2C 07008210 */  beq        $a0, $v0, .L00209C4C
    /* 10ABB0 00209C30 F7FF8228 */   slti      $v0, $a0, -0x9
    /* 10ABB4 00209C34 25004014 */  bnez       $v0, .L00209CCC
    /* 10ABB8 00209C38 01000224 */   addiu     $v0, $zero, 0x1
    /* 10ABBC 00209C3C 0000A38F */  lw         $v1, 0x0($sp)
    /* 10ABC0 00209C40 02000224 */  addiu      $v0, $zero, 0x2
    /* 10ABC4 00209C44 03006210 */  beq        $v1, $v0, .L00209C54
    /* 10ABC8 00209C48 FEFF0224 */   addiu     $v0, $zero, -0x2
.align 2
  .L00209C4C:
    /* 10ABCC 00209C4C 1F000010 */  b          .L00209CCC
    /* 10ABD0 00209C50 01000224 */   addiu     $v0, $zero, 0x1
.align 2
  .L00209C54:
    /* 10ABD4 00209C54 1C008210 */  beq        $a0, $v0, .L00209CC8
    /* 10ABD8 00209C58 0800A28F */   lw        $v0, 0x8($sp)
    /* 10ABDC 00209C5C 1A004010 */  beqz       $v0, .L00209CC8
    /* 10ABE0 00209C60 90D3448E */   lw        $a0, %lo(D_0013D390)($s2)
    /* 10ABE4 00209C64 1400063C */  lui        $a2, %hi(D_0013D2D0)
    /* 10ABE8 00209C68 0400A58C */  lw         $a1, 0x4($a1)
    /* 10ABEC 00209C6C D0D2C624 */  addiu      $a2, $a2, %lo(D_0013D2D0)
    /* 10ABF0 00209C70 2D380000 */  daddu      $a3, $zero, $zero
    /* 10ABF4 00209C74 FFFF0824 */  addiu      $t0, $zero, -0x1
    /* 10ABF8 00209C78 7C90040C */  jal        func_001241F0
    /* 10ABFC 00209C7C 2D480000 */   daddu     $t1, $zero, $zero
    /* 10AC00 00209C80 1000A2AF */  sw         $v0, 0x10($sp)
    /* 10AC04 00209C84 0C00B127 */  addiu      $s1, $sp, 0xC
    /* 10AC08 00209C88 03000010 */  b          .L00209C98
    /* 10AC0C 00209C8C 1000B027 */   addiu     $s0, $sp, 0x10
.align 2
  .L00209C90:
    /* 10AC10 00209C90 6689040C */  jal        func_00122598
    /* 10AC14 00209C94 2D200000 */   daddu     $a0, $zero, $zero
.align 2
  .L00209C98:
    /* 10AC18 00209C98 01000424 */  addiu      $a0, $zero, 0x1
    /* 10AC1C 00209C9C 2D282002 */  daddu      $a1, $s1, $zero
    /* 10AC20 00209CA0 CC8F040C */  jal        func_00123F30
    /* 10AC24 00209CA4 2D300002 */   daddu     $a2, $s0, $zero
    /* 10AC28 00209CA8 F9FF4010 */  beqz       $v0, .L00209C90
    /* 10AC2C 00209CAC 1000A28F */   lw        $v0, 0x10($sp)
    /* 10AC30 00209CB0 0600405C */  bgtzl      $v0, .L00209CCC
    /* 10AC34 00209CB4 2D100000 */   daddu     $v0, $zero, $zero
    /* 10AC38 00209CB8 0400A28F */  lw         $v0, 0x4($sp)
    /* 10AC3C 00209CBC 5E014228 */  slti       $v0, $v0, 0x15E
    /* 10AC40 00209CC0 02000010 */  b          .L00209CCC
    /* 10AC44 00209CC4 40100200 */   sll       $v0, $v0, 1
.align 2
  .L00209CC8:
    /* 10AC48 00209CC8 2D100000 */  daddu      $v0, $zero, $zero
.align 2
  .L00209CCC:
    /* 10AC4C 00209CCC 5000BF7B */  lq         $ra, 0x50($sp)
    /* 10AC50 00209CD0 4000B27B */  lq         $s2, 0x40($sp)
    /* 10AC54 00209CD4 3000B17B */  lq         $s1, 0x30($sp)
    /* 10AC58 00209CD8 2000B07B */  lq         $s0, 0x20($sp)
    /* 10AC5C 00209CDC 0800E003 */  jr         $ra
    /* 10AC60 00209CE0 6000BD27 */   addiu     $sp, $sp, 0x60
endlabel func_00209BB8
    /* 10AC64 00209CE4 00000000 */  nop
