.align 3
nonmatching func_001FF0C8, 0xE4

glabel func_001FF0C8
    /* 100048 001FF0C8 B0FFBD27 */  addiu      $sp, $sp, -0x50
    /* 10004C 001FF0CC 20000224 */  addiu      $v0, $zero, 0x20
    /* 100050 001FF0D0 1000B07F */  sq         $s0, 0x10($sp)
    /* 100054 001FF0D4 60000824 */  addiu      $t0, $zero, 0x60
    /* 100058 001FF0D8 3000B27F */  sq         $s2, 0x30($sp)
    /* 10005C 001FF0DC 1A00103C */  lui        $s0, %hi(D_001997D0)
    /* 100060 001FF0E0 2000B17F */  sq         $s1, 0x20($sp)
    /* 100064 001FF0E4 2D900002 */  daddu      $s2, $s0, $zero
    /* 100068 001FF0E8 4000BF7F */  sq         $ra, 0x40($sp)
    /* 10006C 001FF0EC D0971126 */  addiu      $s1, $s0, %lo(D_001997D0)
    /* 100070 001FF0F0 1C0022AE */  sw         $v0, 0x1C($s1)
    /* 100074 001FF0F4 1400248E */  lw         $a0, 0x14($s1)
    /* 100078 001FF0F8 1000268E */  lw         $a2, 0x10($s1)
    /* 10007C 001FF0FC 20008524 */  addiu      $a1, $a0, 0x20
    /* 100080 001FF100 180022AE */  sw         $v0, 0x18($s1)
    /* 100084 001FF104 2000C724 */  addiu      $a3, $a2, 0x20
    /* 100088 001FF108 E0FF8424 */  addiu      $a0, $a0, -0x20
    /* 10008C 001FF10C B2D8070C */  jal        func_001F62C8
    /* 100090 001FF110 E0FFC624 */   addiu     $a2, $a2, -0x20
    /* 100094 001FF114 D097038E */  lw         $v1, %lo(D_001997D0)($s0)
    /* 100098 001FF118 01000224 */  addiu      $v0, $zero, 0x1
    /* 10009C 001FF11C 03006210 */  beq        $v1, $v0, .L001FF12C
    /* 1000A0 001FF120 07000224 */   addiu     $v0, $zero, 0x7
    /* 1000A4 001FF124 04006214 */  bne        $v1, $v0, .L001FF138
    /* 1000A8 001FF128 7E001024 */   addiu     $s0, $zero, 0x7E
.align 2
  .L001FF12C:
    /* 1000AC 001FF12C 0400238E */  lw         $v1, 0x4($s1)
    /* 1000B0 001FF130 15000224 */  addiu      $v0, $zero, 0x15
    /* 1000B4 001FF134 18806200 */  mult       $s0, $v1, $v0
.align 2
  .L001FF138:
    /* 1000B8 001FF138 8100032A */  slti       $v1, $s0, 0x81
    /* 1000BC 001FF13C 80000224 */  addiu      $v0, $zero, 0x80
    /* 1000C0 001FF140 0A804300 */  movz       $s0, $v0, $v1
    /* 1000C4 001FF144 1AD2070C */  jal        func_001F4868
    /* 1000C8 001FF148 04000424 */   addiu     $a0, $zero, 0x4
    /* 1000CC 001FF14C D0974626 */  addiu      $a2, $s2, %lo(D_001997D0)
    /* 1000D0 001FF150 8000033C */  lui        $v1, (0x808080 >> 16)
    /* 1000D4 001FF154 1400C58C */  lw         $a1, 0x14($a2)
    /* 1000D8 001FF158 003E1000 */  sll        $a3, $s0, 24
    /* 1000DC 001FF15C 1000C48C */  lw         $a0, 0x10($a2)
    /* 1000E0 001FF160 80806334 */  ori        $v1, $v1, (0x808080 & 0xFFFF)
    /* 1000E4 001FF164 2518E300 */  or         $v1, $a3, $v1
    /* 1000E8 001FF168 0800A2FF */  sd         $v0, 0x8($sp)
    /* 1000EC 001FF16C 0000A3FF */  sd         $v1, 0x0($sp)
    /* 1000F0 001FF170 E0FF8424 */  addiu      $a0, $a0, -0x20
    /* 1000F4 001FF174 E0FFA524 */  addiu      $a1, $a1, -0x20
    /* 1000F8 001FF178 40000624 */  addiu      $a2, $zero, 0x40
    /* 1000FC 001FF17C 40000724 */  addiu      $a3, $zero, 0x40
    /* 100100 001FF180 2D400000 */  daddu      $t0, $zero, $zero
    /* 100104 001FF184 2D480000 */  daddu      $t1, $zero, $zero
    /* 100108 001FF188 40000A24 */  addiu      $t2, $zero, 0x40
    /* 10010C 001FF18C 00D6070C */  jal        func_001F5800
    /* 100110 001FF190 40000B24 */   addiu     $t3, $zero, 0x40
    /* 100114 001FF194 4000BF7B */  lq         $ra, 0x40($sp)
    /* 100118 001FF198 3000B27B */  lq         $s2, 0x30($sp)
    /* 10011C 001FF19C 2000B17B */  lq         $s1, 0x20($sp)
    /* 100120 001FF1A0 1000B07B */  lq         $s0, 0x10($sp)
    /* 100124 001FF1A4 0800E003 */  jr         $ra
    /* 100128 001FF1A8 5000BD27 */   addiu     $sp, $sp, 0x50
endlabel func_001FF0C8
    /* 10012C 001FF1AC 00000000 */  nop
