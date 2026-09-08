.align 3
nonmatching func_0012AC80, 0x88

glabel func_0012AC80
    /* 2BC00 0012AC80 2D38A000 */  daddu      $7, $5, $0
    /* 2BC04 0012AC84 F0FFBD27 */  addiu      $29, $29, -0x10
    /* 2BC08 0012AC88 2D180000 */  daddu      $3, $0, $0
    /* 2BC0C 0012AC8C 0A00822C */  sltiu      $2, $4, 0xA
    /* 2BC10 0012AC90 1A004010 */  beqz       $2, .L0012ACFC
    /* 2BC14 0012AC94 2D280000 */   daddu     $5, $0, $0
    /* 2BC18 0012AC98 1300083C */  lui        $8, %hi(D_00132FD8)
    /* 2BC1C 0012AC9C 00310400 */  sll        $6, $4, 4
    /* 2BC20 0012ACA0 D82F0225 */  addiu      $2, $8, %lo(D_00132FD8)
    /* 2BC24 0012ACA4 FFFF0434 */  ori        $4, $0, 0xFFFF
    /* 2BC28 0012ACA8 38260400 */  dsll       $4, $4, 24
    /* 2BC2C 0012ACAC 21104600 */  addu       $2, $2, $6
    /* 2BC30 0012ACB0 080043DC */  ld         $3, 0x8($2)
    /* 2BC34 0012ACB4 09006410 */  beq        $3, $4, .L0012ACDC
    /* 2BC38 0012ACB8 2B108300 */   sltu      $2, $4, $3
    /* 2BC3C 0012ACBC 0A004054 */  bnel       $2, $0, .L0012ACE8
    /* 2BC40 0012ACC0 2D280000 */   daddu     $5, $0, $0
    /* 2BC44 0012ACC4 00FF0234 */  ori        $2, $0, 0xFF00
    /* 2BC48 0012ACC8 38160200 */  dsll       $2, $2, 24
    /* 2BC4C 0012ACCC 05006210 */  beq        $3, $2, .L0012ACE4
    /* 2BC50 0012ACD0 D82F0225 */   addiu     $2, $8, %lo(D_00132FD8)
    /* 2BC54 0012ACD4 06000010 */  b          .L0012ACF0
    /* 2BC58 0012ACD8 1420A700 */   dsllv     $4, $7, $5
.align 2
  .L0012ACDC:
    /* 2BC5C 0012ACDC 02000010 */  b          .L0012ACE8
    /* 2BC60 0012ACE0 18000524 */   addiu     $5, $0, 0x18
.align 2
  .L0012ACE4:
    /* 2BC64 0012ACE4 20000524 */  addiu      $5, $0, 0x20
.align 2
  .L0012ACE8:
    /* 2BC68 0012ACE8 D82F0225 */  addiu      $2, $8, %lo(D_00132FD8)
    /* 2BC6C 0012ACEC 1420A700 */  dsllv      $4, $7, $5
.align 2
  .L0012ACF0:
    /* 2BC70 0012ACF0 2110C200 */  addu       $2, $6, $2
    /* 2BC74 0012ACF4 000043DC */  ld         $3, 0x0($2)
    /* 2BC78 0012ACF8 25186400 */  or         $3, $3, $4
.align 2
  .L0012ACFC:
    /* 2BC7C 0012ACFC 2D106000 */  daddu      $2, $3, $0
    /* 2BC80 0012AD00 0800E003 */  jr         $31
    /* 2BC84 0012AD04 1000BD27 */   addiu     $29, $29, 0x10
endlabel func_0012AC80
