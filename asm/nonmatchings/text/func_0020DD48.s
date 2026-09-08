.align 3
nonmatching func_0020DD48, 0xD8

glabel func_0020DD48
    /* 10ECC8 0020DD48 1B00023C */  lui        $v0, %hi(D_001B6880)
    /* 10ECCC 0020DD4C 8068438C */  lw         $v1, %lo(D_001B6880)($v0)
    /* 10ECD0 0020DD50 31006004 */  bltz       $v1, .L0020DE18
    /* 10ECD4 0020DD54 80684424 */   addiu     $a0, $v0, %lo(D_001B6880)
    /* 10ECD8 0020DD58 1B00023C */  lui        $v0, %hi(D_001B3580)
    /* 10ECDC 0020DD5C FF7F0B3C */  lui        $t3, (0x7FFFFFFF >> 16)
    /* 10ECE0 0020DD60 80354F24 */  addiu      $t7, $v0, %lo(D_001B3580)
    /* 10ECE4 0020DD64 FFFF6B35 */  ori        $t3, $t3, (0x7FFFFFFF & 0xFFFF)
    /* 10ECE8 0020DD68 FF000E24 */  addiu      $t6, $zero, 0xFF
    /* 10ECEC 0020DD6C 1B000D3C */  lui        $t5, %hi(D_001B6100)
    /* 10ECF0 0020DD70 0000828C */  lw         $v0, 0x0($a0)
    /* 10ECF4 0020DD74 04008C24 */  addiu      $t4, $a0, 0x4
.align 2
  .L0020DD78:
    /* 10ECF8 0020DD78 80100200 */  sll        $v0, $v0, 2
    /* 10ECFC 0020DD7C 21104F00 */  addu       $v0, $v0, $t7
    /* 10ED00 0020DD80 0000438C */  lw         $v1, 0x0($v0)
    /* 10ED04 0020DD84 2000688C */  lw         $t0, 0x20($v1)
.align 2
  .L0020DD88:
    /* 10ED08 0020DD88 0C00038D */  lw         $v1, 0xC($t0)
    /* 10ED0C 0020DD8C 2D380001 */  daddu      $a3, $t0, $zero
    /* 10ED10 0020DD90 00000291 */  lbu        $v0, 0x0($t0)
    /* 10ED14 0020DD94 19004E10 */  beq        $v0, $t6, .L0020DDFC
    /* 10ED18 0020DD98 24186B00 */   and       $v1, $v1, $t3
    /* 10ED1C 0020DD9C FFFF063C */  lui        $a2, (0xFFFFC000 >> 16)
    /* 10ED20 0020DDA0 0061AA25 */  addiu      $t2, $t5, %lo(D_001B6100)
    /* 10ED24 0020DDA4 00C0C634 */  ori        $a2, $a2, (0xFFFFC000 & 0xFFFF)
    /* 10ED28 0020DDA8 FF000924 */  addiu      $t1, $zero, 0xFF
    /* 10ED2C 0020DDAC 0000E290 */  lbu        $v0, 0x0($a3)
.align 2
  .L0020DDB0:
    /* 10ED30 0020DDB0 80100200 */  sll        $v0, $v0, 2
    /* 10ED34 0020DDB4 21284A00 */  addu       $a1, $v0, $t2
    /* 10ED38 0020DDB8 0000A484 */  lh         $a0, 0x0($a1)
    /* 10ED3C 0020DDBC 06008050 */  beql       $a0, $zero, .L0020DDD8
    /* 10ED40 0020DDC0 0200A484 */   lh        $a0, 0x2($a1)
    /* 10ED44 0020DDC4 3000628C */  lw         $v0, 0x30($v1)
    /* 10ED48 0020DDC8 24104600 */  and        $v0, $v0, $a2
    /* 10ED4C 0020DDCC 25104400 */  or         $v0, $v0, $a0
    /* 10ED50 0020DDD0 300062AC */  sw         $v0, 0x30($v1)
    /* 10ED54 0020DDD4 0200A484 */  lh         $a0, 0x2($a1)
.align 2
  .L0020DDD8:
    /* 10ED58 0020DDD8 05008010 */  beqz       $a0, .L0020DDF0
    /* 10ED5C 0020DDDC 0100E724 */   addiu     $a3, $a3, 0x1
    /* 10ED60 0020DDE0 4000628C */  lw         $v0, 0x40($v1)
    /* 10ED64 0020DDE4 24104600 */  and        $v0, $v0, $a2
    /* 10ED68 0020DDE8 25104400 */  or         $v0, $v0, $a0
    /* 10ED6C 0020DDEC 400062AC */  sw         $v0, 0x40($v1)
.align 2
  .L0020DDF0:
    /* 10ED70 0020DDF0 0000E290 */  lbu        $v0, 0x0($a3)
    /* 10ED74 0020DDF4 EEFF4914 */  bne        $v0, $t1, .L0020DDB0
    /* 10ED78 0020DDF8 40006324 */   addiu     $v1, $v1, 0x40
.align 2
  .L0020DDFC:
    /* 10ED7C 0020DDFC 0C00028D */  lw         $v0, 0xC($t0)
    /* 10ED80 0020DE00 E1FF4104 */  bgez       $v0, .L0020DD88
    /* 10ED84 0020DE04 10000825 */   addiu     $t0, $t0, 0x10
    /* 10ED88 0020DE08 2D208001 */  daddu      $a0, $t4, $zero
    /* 10ED8C 0020DE0C 0000828C */  lw         $v0, 0x0($a0)
    /* 10ED90 0020DE10 D9FF4104 */  bgez       $v0, .L0020DD78
    /* 10ED94 0020DE14 04008C24 */   addiu     $t4, $a0, 0x4
.align 2
  .L0020DE18:
    /* 10ED98 0020DE18 0800E003 */  jr         $ra
    /* 10ED9C 0020DE1C 00000000 */   nop
endlabel func_0020DD48
