.align 3
nonmatching func_00119BF8, 0xD0

glabel func_00119BF8
    /* 1AB78 00119BF8 A0FFBD27 */  addiu      $sp, $sp, -0x60
    /* 1AB7C 00119BFC 2D180000 */  daddu      $v1, $zero, $zero
    /* 1AB80 00119C00 4000B4FF */  sd         $s4, 0x40($sp)
    /* 1AB84 00119C04 2000B2FF */  sd         $s2, 0x20($sp)
    /* 1AB88 00119C08 2DA08000 */  daddu      $s4, $a0, $zero
    /* 1AB8C 00119C0C 5000BFFF */  sd         $ra, 0x50($sp)
    /* 1AB90 00119C10 2D90A000 */  daddu      $s2, $a1, $zero
    /* 1AB94 00119C14 3000B3FF */  sd         $s3, 0x30($sp)
    /* 1AB98 00119C18 1000B1FF */  sd         $s1, 0x10($sp)
    /* 1AB9C 00119C1C 2100401A */  blez       $s2, .L00119CA4
    /* 1ABA0 00119C20 0000B0FF */   sd        $s0, 0x0($sp)
    /* 1ABA4 00119C24 1500133C */  lui        $s3, %hi(D_00154B50)
    /* 1ABA8 00119C28 1500023C */  lui        $v0, %hi(D_00154B68)
    /* 1ABAC 00119C2C 00000000 */  nop
.align 2
  .L00119C30:
    /* 1ABB0 00119C30 01007124 */  addiu      $s1, $v1, 0x1
    /* 1ABB4 00119C34 684B448C */  lw         $a0, %lo(D_00154B68)($v0)
    /* 1ABB8 00119C38 21808302 */  addu       $s0, $s4, $v1
    /* 1ABBC 00119C3C 00000000 */  nop
.align 2
  .L00119C40:
    /* 1ABC0 00119C40 0400828C */  lw         $v0, 0x4($a0)
    /* 1ABC4 00119C44 00000000 */  nop
    /* 1ABC8 00119C48 00000000 */  nop
    /* 1ABCC 00119C4C 00000000 */  nop
    /* 1ABD0 00119C50 00000000 */  nop
    /* 1ABD4 00119C54 FAFF4010 */  beqz       $v0, .L00119C40
    /* 1ABD8 00119C58 00000000 */   nop
    /* 1ABDC 00119C5C 504B6526 */  addiu      $a1, $s3, %lo(D_00154B50)
    /* 1ABE0 00119C60 1800A28C */  lw         $v0, 0x18($a1)
    /* 1ABE4 00119C64 0800438C */  lw         $v1, 0x8($v0)
    /* 1ABE8 00119C68 00006490 */  lbu        $a0, 0x0($v1)
    /* 1ABEC 00119C6C 000004A2 */  sb         $a0, 0x0($s0)
    /* 1ABF0 00119C70 3466040C */  jal        func_001198D0
    /* 1ABF4 00119C74 1800A48C */   lw        $a0, 0x18($a1)
    /* 1ABF8 00119C78 00000382 */  lb         $v1, 0x0($s0)
    /* 1ABFC 00119C7C 0A000224 */  addiu      $v0, $zero, 0xA
    /* 1AC00 00119C80 03006210 */  beq        $v1, $v0, .L00119C90
    /* 1AC04 00119C84 0D000224 */   addiu     $v0, $zero, 0xD
    /* 1AC08 00119C88 03006214 */  bne        $v1, $v0, .L00119C98
    /* 1AC0C 00119C8C 2D182002 */   daddu     $v1, $s1, $zero
.align 2
  .L00119C90:
    /* 1AC10 00119C90 05000010 */  b          .L00119CA8
    /* 1AC14 00119C94 2D102002 */   daddu     $v0, $s1, $zero
.align 2
  .L00119C98:
    /* 1AC18 00119C98 2A107200 */  slt        $v0, $v1, $s2
    /* 1AC1C 00119C9C E4FF4014 */  bnez       $v0, .L00119C30
    /* 1AC20 00119CA0 1500023C */   lui       $v0, %hi(D_00154B68)
.align 2
  .L00119CA4:
    /* 1AC24 00119CA4 2D106000 */  daddu      $v0, $v1, $zero
.align 2
  .L00119CA8:
    /* 1AC28 00119CA8 5000BFDF */  ld         $ra, 0x50($sp)
    /* 1AC2C 00119CAC 4000B4DF */  ld         $s4, 0x40($sp)
    /* 1AC30 00119CB0 3000B3DF */  ld         $s3, 0x30($sp)
    /* 1AC34 00119CB4 2000B2DF */  ld         $s2, 0x20($sp)
    /* 1AC38 00119CB8 1000B1DF */  ld         $s1, 0x10($sp)
    /* 1AC3C 00119CBC 0000B0DF */  ld         $s0, 0x0($sp)
    /* 1AC40 00119CC0 0800E003 */  jr         $ra
    /* 1AC44 00119CC4 6000BD27 */   addiu     $sp, $sp, 0x60
endlabel func_00119BF8
