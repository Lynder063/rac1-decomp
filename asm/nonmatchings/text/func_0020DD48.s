.align 3
nonmatching func_0020DD48, 0xD8

glabel func_0020DD48
    /* 10ECC8 0020DD48 1B00023C */  lui        $2, %hi(D_001B6880)
    /* 10ECCC 0020DD4C 8068438C */  lw         $3, %lo(D_001B6880)($2)
    /* 10ECD0 0020DD50 31006004 */  bltz       $3, .L0020DE18
    /* 10ECD4 0020DD54 80684424 */   addiu     $4, $2, %lo(D_001B6880)
    /* 10ECD8 0020DD58 1B00023C */  lui        $2, %hi(D_001B3580)
    /* 10ECDC 0020DD5C FF7F0B3C */  lui        $11, (0x7FFFFFFF >> 16)
    /* 10ECE0 0020DD60 80354F24 */  addiu      $15, $2, %lo(D_001B3580)
    /* 10ECE4 0020DD64 FFFF6B35 */  ori        $11, $11, (0x7FFFFFFF & 0xFFFF)
    /* 10ECE8 0020DD68 FF000E24 */  addiu      $14, $0, 0xFF
    /* 10ECEC 0020DD6C 1B000D3C */  lui        $13, %hi(D_001B6100)
    /* 10ECF0 0020DD70 0000828C */  lw         $2, 0x0($4)
    /* 10ECF4 0020DD74 04008C24 */  addiu      $12, $4, 0x4
.align 2
  .L0020DD78:
    /* 10ECF8 0020DD78 80100200 */  sll        $2, $2, 2
    /* 10ECFC 0020DD7C 21104F00 */  addu       $2, $2, $15
    /* 10ED00 0020DD80 0000438C */  lw         $3, 0x0($2)
    /* 10ED04 0020DD84 2000688C */  lw         $8, 0x20($3)
.align 2
  .L0020DD88:
    /* 10ED08 0020DD88 0C00038D */  lw         $3, 0xC($8)
    /* 10ED0C 0020DD8C 2D380001 */  daddu      $7, $8, $0
    /* 10ED10 0020DD90 00000291 */  lbu        $2, 0x0($8)
    /* 10ED14 0020DD94 19004E10 */  beq        $2, $14, .L0020DDFC
    /* 10ED18 0020DD98 24186B00 */   and       $3, $3, $11
    /* 10ED1C 0020DD9C FFFF063C */  lui        $6, (0xFFFFC000 >> 16)
    /* 10ED20 0020DDA0 0061AA25 */  addiu      $10, $13, %lo(D_001B6100)
    /* 10ED24 0020DDA4 00C0C634 */  ori        $6, $6, (0xFFFFC000 & 0xFFFF)
    /* 10ED28 0020DDA8 FF000924 */  addiu      $9, $0, 0xFF
    /* 10ED2C 0020DDAC 0000E290 */  lbu        $2, 0x0($7)
.align 2
  .L0020DDB0:
    /* 10ED30 0020DDB0 80100200 */  sll        $2, $2, 2
    /* 10ED34 0020DDB4 21284A00 */  addu       $5, $2, $10
    /* 10ED38 0020DDB8 0000A484 */  lh         $4, 0x0($5)
    /* 10ED3C 0020DDBC 06008050 */  beql       $4, $0, .L0020DDD8
    /* 10ED40 0020DDC0 0200A484 */   lh        $4, 0x2($5)
    /* 10ED44 0020DDC4 3000628C */  lw         $2, 0x30($3)
    /* 10ED48 0020DDC8 24104600 */  and        $2, $2, $6
    /* 10ED4C 0020DDCC 25104400 */  or         $2, $2, $4
    /* 10ED50 0020DDD0 300062AC */  sw         $2, 0x30($3)
    /* 10ED54 0020DDD4 0200A484 */  lh         $4, 0x2($5)
.align 2
  .L0020DDD8:
    /* 10ED58 0020DDD8 05008010 */  beqz       $4, .L0020DDF0
    /* 10ED5C 0020DDDC 0100E724 */   addiu     $7, $7, 0x1
    /* 10ED60 0020DDE0 4000628C */  lw         $2, 0x40($3)
    /* 10ED64 0020DDE4 24104600 */  and        $2, $2, $6
    /* 10ED68 0020DDE8 25104400 */  or         $2, $2, $4
    /* 10ED6C 0020DDEC 400062AC */  sw         $2, 0x40($3)
.align 2
  .L0020DDF0:
    /* 10ED70 0020DDF0 0000E290 */  lbu        $2, 0x0($7)
    /* 10ED74 0020DDF4 EEFF4914 */  bne        $2, $9, .L0020DDB0
    /* 10ED78 0020DDF8 40006324 */   addiu     $3, $3, 0x40
.align 2
  .L0020DDFC:
    /* 10ED7C 0020DDFC 0C00028D */  lw         $2, 0xC($8)
    /* 10ED80 0020DE00 E1FF4104 */  bgez       $2, .L0020DD88
    /* 10ED84 0020DE04 10000825 */   addiu     $8, $8, 0x10
    /* 10ED88 0020DE08 2D208001 */  daddu      $4, $12, $0
    /* 10ED8C 0020DE0C 0000828C */  lw         $2, 0x0($4)
    /* 10ED90 0020DE10 D9FF4104 */  bgez       $2, .L0020DD78
    /* 10ED94 0020DE14 04008C24 */   addiu     $12, $4, 0x4
.align 2
  .L0020DE18:
    /* 10ED98 0020DE18 0800E003 */  jr         $31
    /* 10ED9C 0020DE1C 00000000 */   nop
endlabel func_0020DD48
