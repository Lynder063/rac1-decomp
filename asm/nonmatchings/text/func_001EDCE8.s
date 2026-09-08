.align 3
nonmatching func_001EDCE8, 0x120

glabel func_001EDCE8
    /* EEC68 001EDCE8 1400033C */  lui        $v1, %hi(D_0013F450)
    /* EEC6C 001EDCEC 1800043C */  lui        $a0, %hi(D_001871D0)
    /* EEC70 001EDCF0 50F46524 */  addiu      $a1, $v1, %lo(D_0013F450)
    /* EEC74 001EDCF4 2D386000 */  daddu      $a3, $v1, $zero
    /* EEC78 001EDCF8 8C20A28C */  lw         $v0, 0x208C($a1)
    /* EEC7C 001EDCFC 14000324 */  addiu      $v1, $zero, 0x14
    /* EEC80 001EDD00 D0718624 */  addiu      $a2, $a0, %lo(D_001871D0)
    /* EEC84 001EDD04 EFFF4224 */  addiu      $v0, $v0, -0x11
    /* EEC88 001EDD08 0200422C */  sltiu      $v0, $v0, 0x2
    /* EEC8C 001EDD0C 05004014 */  bnez       $v0, .L001EDD24
    /* EEC90 001EDD10 9C8383AF */   sw        $v1, -0x7C64($gp)
    /* EEC94 001EDD14 8420A38C */  lw         $v1, 0x2084($a1)
    /* EEC98 001EDD18 73000224 */  addiu      $v0, $zero, 0x73
    /* EEC9C 001EDD1C 05006214 */  bne        $v1, $v0, .L001EDD34
    /* EECA0 001EDD20 50F4E424 */   addiu     $a0, $a3, %lo(D_0013F450)
.align 2
  .L001EDD24:
    /* EECA4 001EDD24 34000224 */  addiu      $v0, $zero, 0x34
    /* EECA8 001EDD28 1600013C */  lui        $at, %hi(D_0015F09C)
    /* EECAC 001EDD2C 9CF022AC */  sw         $v0, %lo(D_0015F09C)($at)
    /* EECB0 001EDD30 50F4E424 */  addiu      $a0, $a3, %lo(D_0013F450)
.align 2
  .L001EDD34:
    /* EECB4 001EDD34 11000324 */  addiu      $v1, $zero, 0x11
    /* EECB8 001EDD38 8C20828C */  lw         $v0, 0x208C($a0)
    /* EECBC 001EDD3C 09004310 */  beq        $v0, $v1, .L001EDD64
    /* EECC0 001EDD40 1800023C */   lui       $v0, %hi(D_00187180 + 0x8)
    /* EECC4 001EDD44 F00281C4 */  lwc1       $f1, 0x2F0($a0)
    /* EECC8 001EDD48 887140C4 */  lwc1       $f0, %lo(D_00187180 + 0x8)($v0)
    /* EECCC 001EDD4C 34080046 */  c.lt.s     $f1, $f0
    /* EECD0 001EDD50 00000000 */  nop
    /* EECD4 001EDD54 03000045 */  bc1f       .L001EDD64
    /* EECD8 001EDD58 14000224 */   addiu     $v0, $zero, 0x14
    /* EECDC 001EDD5C 1600013C */  lui        $at, %hi(D_0015F09C)
    /* EECE0 001EDD60 9CF022AC */  sw         $v0, %lo(D_0015F09C)($at)
.align 2
  .L001EDD64:
    /* EECE4 001EDD64 1600023C */  lui        $v0, %hi(D_0015F09C)
    /* EECE8 001EDD68 9CF0428C */  lw         $v0, %lo(D_0015F09C)($v0)
    /* EECEC 001EDD6C 50F4E524 */  addiu      $a1, $a3, %lo(D_0013F450)
    /* EECF0 001EDD70 E512A490 */  lbu        $a0, 0x12E5($a1)
    /* EECF4 001EDD74 B4000724 */  addiu      $a3, $zero, 0xB4
    /* EECF8 001EDD78 80004334 */  ori        $v1, $v0, 0x80
    /* EECFC 001EDD7C 1600013C */  lui        $at, %hi(D_0015F0A0)
    /* EED00 001EDD80 A0F022AC */  sw         $v0, %lo(D_0015F0A0)($at)
    /* EED04 001EDD84 1600013C */  lui        $at, %hi(D_0015F09C)
    /* EED08 001EDD88 9CF023AC */  sw         $v1, %lo(D_0015F09C)($at)
    /* EED0C 001EDD8C 06008010 */  beqz       $a0, .L001EDDA8
    /* EED10 001EDD90 988387AF */   sw        $a3, -0x7C68($gp)
    /* EED14 001EDD94 00010224 */  addiu      $v0, $zero, 0x100
    /* EED18 001EDD98 B4010324 */  addiu      $v1, $zero, 0x1B4
.align 2
  .L001EDD9C:
    /* EED1C 001EDD9C C000C2AC */  sw         $v0, 0xC0($a2)
    /* EED20 001EDDA0 0800E003 */  jr         $ra
    /* EED24 001EDDA4 988383AF */   sw        $v1, -0x7C68($gp)
.align 2
  .L001EDDA8:
    /* EED28 001EDDA8 EB12A290 */  lbu        $v0, 0x12EB($a1)
    /* EED2C 001EDDAC 03004010 */  beqz       $v0, .L001EDDBC
    /* EED30 001EDDB0 000B0224 */   addiu     $v0, $zero, 0xB00
    /* EED34 001EDDB4 F9FF0010 */  b          .L001EDD9C
    /* EED38 001EDDB8 B40B0324 */   addiu     $v1, $zero, 0xBB4
.align 2
  .L001EDDBC:
    /* EED3C 001EDDBC E612A290 */  lbu        $v0, 0x12E6($a1)
    /* EED40 001EDDC0 03004010 */  beqz       $v0, .L001EDDD0
    /* EED44 001EDDC4 00030224 */   addiu     $v0, $zero, 0x300
    /* EED48 001EDDC8 F4FF0010 */  b          .L001EDD9C
    /* EED4C 001EDDCC B4030324 */   addiu     $v1, $zero, 0x3B4
.align 2
  .L001EDDD0:
    /* EED50 001EDDD0 EC12A290 */  lbu        $v0, 0x12EC($a1)
    /* EED54 001EDDD4 03004010 */  beqz       $v0, .L001EDDE4
    /* EED58 001EDDD8 000D0224 */   addiu     $v0, $zero, 0xD00
    /* EED5C 001EDDDC EFFF0010 */  b          .L001EDD9C
    /* EED60 001EDDE0 B40D0324 */   addiu     $v1, $zero, 0xDB4
.align 2
  .L001EDDE4:
    /* EED64 001EDDE4 E412A290 */  lbu        $v0, 0x12E4($a1)
    /* EED68 001EDDE8 04004050 */  beql       $v0, $zero, .L001EDDFC
    /* EED6C 001EDDEC C000C28C */   lw        $v0, 0xC0($a2)
    /* EED70 001EDDF0 C000C0AC */  sw         $zero, 0xC0($a2)
    /* EED74 001EDDF4 0800E003 */  jr         $ra
    /* EED78 001EDDF8 988387AF */   sw        $a3, -0x7C68($gp)
.align 2
  .L001EDDFC:
    /* EED7C 001EDDFC B4004234 */  ori        $v0, $v0, 0xB4
    /* EED80 001EDE00 0800E003 */  jr         $ra
    /* EED84 001EDE04 988382AF */   sw        $v0, -0x7C68($gp)
endlabel func_001EDCE8
