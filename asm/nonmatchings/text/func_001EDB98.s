.align 3
nonmatching func_001EDB98, 0x14C

glabel func_001EDB98
    /* EEB18 001EDB98 A0FFBD27 */  addiu      $sp, $sp, -0x60
    /* EEB1C 001EDB9C 1800033C */  lui        $v1, %hi(D_00187040)
    /* EEB20 001EDBA0 4000B27F */  sq         $s2, 0x40($sp)
    /* EEB24 001EDBA4 40706524 */  addiu      $a1, $v1, %lo(D_00187040)
    /* EEB28 001EDBA8 5000BF7F */  sq         $ra, 0x50($sp)
    /* EEB2C 001EDBAC 2D906000 */  daddu      $s2, $v1, $zero
    /* EEB30 001EDBB0 3000B17F */  sq         $s1, 0x30($sp)
    /* EEB34 001EDBB4 06000424 */  addiu      $a0, $zero, 0x6
    /* EEB38 001EDBB8 2000B07F */  sq         $s0, 0x20($sp)
    /* EEB3C 001EDBBC 8001A28C */  lw         $v0, 0x180($a1)
    /* EEB40 001EDBC0 86004384 */  lh         $v1, 0x86($v0)
    /* EEB44 001EDBC4 03006410 */  beq        $v1, $a0, .L001EDBD4
    /* EEB48 001EDBC8 E889828F */   lw        $v0, -0x7618($gp)
    /* EEB4C 001EDBCC 05004010 */  beqz       $v0, .L001EDBE4
    /* EEB50 001EDBD0 4001A324 */   addiu     $v1, $a1, 0x140
.align 2
  .L001EDBD4:
    /* EEB54 001EDBD4 3D000010 */  b          .L001EDCCC
    /* EEB58 001EDBD8 9403A0AC */   sw        $zero, 0x394($a1)
.align 2
  .L001EDBDC:
    /* EEB5C 001EDBDC 3B000010 */  b          .L001EDCCC
    /* EEB60 001EDBE0 940362AC */   sw        $v0, 0x394($v1)
.align 2
  .L001EDBE4:
    /* EEB64 001EDBE4 00006278 */  lq         $v0, 0x0($v1)
    /* EEB68 001EDBE8 0000A27F */  sq         $v0, 0x0($sp)
    /* EEB6C 001EDBEC 1000A427 */  addiu      $a0, $sp, 0x10
    /* EEB70 001EDBF0 00006278 */  lq         $v0, 0x0($v1)
    /* EEB74 001EDBF4 0000827C */  sq         $v0, 0x0($a0)
    /* EEB78 001EDBF8 0800A1C7 */  lwc1       $f1, 0x8($sp)
    /* EEB7C 001EDBFC 2D800000 */  daddu      $s0, $zero, $zero
    /* EEB80 001EDC00 403F013C */  lui        $at, (0x3F400000 >> 16)
    /* EEB84 001EDC04 00108144 */  mtc1       $at, $f2
    /* EEB88 001EDC08 1800A0C7 */  lwc1       $f0, 0x18($sp)
    /* EEB8C 001EDC0C 40080246 */  add.s      $f1, $f1, $f2
    /* EEB90 001EDC10 01000246 */  sub.s      $f0, $f0, $f2
    /* EEB94 001EDC14 0800A1E7 */  swc1       $f1, 0x8($sp)
    /* EEB98 001EDC18 1800A0E7 */  swc1       $f0, 0x18($sp)
    /* EEB9C 001EDC1C 21000010 */  b          .L001EDCA4
    /* EEBA0 001EDC20 2D888000 */   daddu     $s1, $a0, $zero
    /* EEBA4 001EDC24 00000000 */  nop
.align 2
  .L001EDC28:
    /* EEBA8 001EDC28 C0C3070C */  jal        func_001F0F00
    /* EEBAC 001EDC2C 00000000 */   nop
    /* EEBB0 001EDC30 11004014 */  bnez       $v0, .L001EDC78
    /* EEBB4 001EDC34 1900033C */   lui       $v1, %hi(D_00194220)
    /* EEBB8 001EDC38 1900043C */  lui        $a0, %hi(D_00194220)
    /* EEBBC 001EDC3C 2D280000 */  daddu      $a1, $zero, $zero
    /* EEBC0 001EDC40 1051080C */  jal        func_00214440
    /* EEBC4 001EDC44 20428424 */   addiu     $a0, $a0, %lo(D_00194220)
    /* EEBC8 001EDC48 233D013C */  lui        $at, (0x3D23D70A >> 16)
    /* EEBCC 001EDC4C 0AD72134 */  ori        $at, $at, (0x3D23D70A & 0xFFFF)
    /* EEBD0 001EDC50 00088144 */  mtc1       $at, $f1
    /* EEBD4 001EDC54 40704326 */  addiu      $v1, $s2, %lo(D_00187040)
    /* EEBD8 001EDC58 480162C4 */  lwc1       $f2, 0x148($v1)
    /* EEBDC 001EDC5C 00000146 */  add.s      $f0, $f0, $f1
    /* EEBE0 001EDC60 34100046 */  c.lt.s     $f2, $f0
    /* EEBE4 001EDC64 00000000 */  nop
    /* EEBE8 001EDC68 DCFF0145 */  bc1t       .L001EDBDC
    /* EEBEC 001EDC6C 01000224 */   addiu     $v0, $zero, 0x1
    /* EEBF0 001EDC70 16000010 */  b          .L001EDCCC
    /* EEBF4 001EDC74 940360AC */   sw        $zero, 0x394($v1)
.align 2
  .L001EDC78:
    /* EEBF8 001EDC78 20426324 */  addiu      $v1, $v1, %lo(D_00194220)
    /* EEBFC 001EDC7C 00006278 */  lq         $v0, 0x0($v1)
    /* EEC00 001EDC80 0000A27F */  sq         $v0, 0x0($sp)
    /* EEC04 001EDC84 0800A1C7 */  lwc1       $f1, 0x8($sp)
    /* EEC08 001EDC88 01001026 */  addiu      $s0, $s0, 0x1
    /* EEC0C 001EDC8C 233C013C */  lui        $at, (0x3C23D70A >> 16)
    /* EEC10 001EDC90 0AD72134 */  ori        $at, $at, (0x3C23D70A & 0xFFFF)
    /* EEC14 001EDC94 00008144 */  mtc1       $at, $f0
    /* EEC18 001EDC98 00000000 */  nop
    /* EEC1C 001EDC9C 41080046 */  sub.s      $f1, $f1, $f0
    /* EEC20 001EDCA0 0800A1E7 */  swc1       $f1, 0x8($sp)
.align 2
  .L001EDCA4:
    /* EEC24 001EDCA4 0600022A */  slti       $v0, $s0, 0x6
    /* EEC28 001EDCA8 08004010 */  beqz       $v0, .L001EDCCC
    /* EEC2C 001EDCAC 2D20A003 */   daddu     $a0, $sp, $zero
    /* EEC30 001EDCB0 2D282002 */  daddu      $a1, $s1, $zero
    /* EEC34 001EDCB4 12000624 */  addiu      $a2, $zero, 0x12
    /* EEC38 001EDCB8 2D380000 */  daddu      $a3, $zero, $zero
    /* EEC3C 001EDCBC 84BF070C */  jal        func_001EFE10
    /* EEC40 001EDCC0 2D400000 */   daddu     $t0, $zero, $zero
    /* EEC44 001EDCC4 D8FF4014 */  bnez       $v0, .L001EDC28
    /* EEC48 001EDCC8 00000000 */   nop
.align 2
  .L001EDCCC:
    /* EEC4C 001EDCCC 5000BF7B */  lq         $ra, 0x50($sp)
    /* EEC50 001EDCD0 4000B27B */  lq         $s2, 0x40($sp)
    /* EEC54 001EDCD4 3000B17B */  lq         $s1, 0x30($sp)
    /* EEC58 001EDCD8 2000B07B */  lq         $s0, 0x20($sp)
    /* EEC5C 001EDCDC 0800E003 */  jr         $ra
    /* EEC60 001EDCE0 6000BD27 */   addiu     $sp, $sp, 0x60
endlabel func_001EDB98
    /* EEC64 001EDCE4 00000000 */  nop
