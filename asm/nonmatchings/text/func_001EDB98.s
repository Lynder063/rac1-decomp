.align 3
nonmatching func_001EDB98, 0x14C

glabel func_001EDB98
    /* EEB18 001EDB98 A0FFBD27 */  addiu      $29, $29, -0x60
    /* EEB1C 001EDB9C 1800033C */  lui        $3, %hi(D_00187040)
    /* EEB20 001EDBA0 4000B27F */  sq         $18, 0x40($29)
    /* EEB24 001EDBA4 40706524 */  addiu      $5, $3, %lo(D_00187040)
    /* EEB28 001EDBA8 5000BF7F */  sq         $31, 0x50($29)
    /* EEB2C 001EDBAC 2D906000 */  daddu      $18, $3, $0
    /* EEB30 001EDBB0 3000B17F */  sq         $17, 0x30($29)
    /* EEB34 001EDBB4 06000424 */  addiu      $4, $0, 0x6
    /* EEB38 001EDBB8 2000B07F */  sq         $16, 0x20($29)
    /* EEB3C 001EDBBC 8001A28C */  lw         $2, 0x180($5)
    /* EEB40 001EDBC0 86004384 */  lh         $3, 0x86($2)
    /* EEB44 001EDBC4 03006410 */  beq        $3, $4, .L001EDBD4
    /* EEB48 001EDBC8 E889828F */   lw        $2, -0x7618($28)
    /* EEB4C 001EDBCC 05004010 */  beqz       $2, .L001EDBE4
    /* EEB50 001EDBD0 4001A324 */   addiu     $3, $5, 0x140
.align 2
  .L001EDBD4:
    /* EEB54 001EDBD4 3D000010 */  b          .L001EDCCC
    /* EEB58 001EDBD8 9403A0AC */   sw        $0, 0x394($5)
.align 2
  .L001EDBDC:
    /* EEB5C 001EDBDC 3B000010 */  b          .L001EDCCC
    /* EEB60 001EDBE0 940362AC */   sw        $2, 0x394($3)
.align 2
  .L001EDBE4:
    /* EEB64 001EDBE4 00006278 */  lq         $2, 0x0($3)
    /* EEB68 001EDBE8 0000A27F */  sq         $2, 0x0($29)
    /* EEB6C 001EDBEC 1000A427 */  addiu      $4, $29, 0x10
    /* EEB70 001EDBF0 00006278 */  lq         $2, 0x0($3)
    /* EEB74 001EDBF4 0000827C */  sq         $2, 0x0($4)
    /* EEB78 001EDBF8 0800A1C7 */  lwc1       $f1, 0x8($29)
    /* EEB7C 001EDBFC 2D800000 */  daddu      $16, $0, $0
    /* EEB80 001EDC00 403F013C */  lui        $1, (0x3F400000 >> 16)
    /* EEB84 001EDC04 00108144 */  mtc1       $1, $f2
    /* EEB88 001EDC08 1800A0C7 */  lwc1       $f0, 0x18($29)
    /* EEB8C 001EDC0C 40080246 */  add.s      $f1, $f1, $f2
    /* EEB90 001EDC10 01000246 */  sub.s      $f0, $f0, $f2
    /* EEB94 001EDC14 0800A1E7 */  swc1       $f1, 0x8($29)
    /* EEB98 001EDC18 1800A0E7 */  swc1       $f0, 0x18($29)
    /* EEB9C 001EDC1C 21000010 */  b          .L001EDCA4
    /* EEBA0 001EDC20 2D888000 */   daddu     $17, $4, $0
    /* EEBA4 001EDC24 00000000 */  nop
.align 2
  .L001EDC28:
    /* EEBA8 001EDC28 C0C3070C */  jal        func_001F0F00
    /* EEBAC 001EDC2C 00000000 */   nop
    /* EEBB0 001EDC30 11004014 */  bnez       $2, .L001EDC78
    /* EEBB4 001EDC34 1900033C */   lui       $3, %hi(D_00194220)
    /* EEBB8 001EDC38 1900043C */  lui        $4, %hi(D_00194220)
    /* EEBBC 001EDC3C 2D280000 */  daddu      $5, $0, $0
    /* EEBC0 001EDC40 1051080C */  jal        func_00214440
    /* EEBC4 001EDC44 20428424 */   addiu     $4, $4, %lo(D_00194220)
    /* EEBC8 001EDC48 233D013C */  lui        $1, (0x3D23D70A >> 16)
    /* EEBCC 001EDC4C 0AD72134 */  ori        $1, $1, (0x3D23D70A & 0xFFFF)
    /* EEBD0 001EDC50 00088144 */  mtc1       $1, $f1
    /* EEBD4 001EDC54 40704326 */  addiu      $3, $18, %lo(D_00187040)
    /* EEBD8 001EDC58 480162C4 */  lwc1       $f2, 0x148($3)
    /* EEBDC 001EDC5C 00000146 */  add.s      $f0, $f0, $f1
    /* EEBE0 001EDC60 34100046 */  c.lt.s     $f2, $f0
    /* EEBE4 001EDC64 00000000 */  nop
    /* EEBE8 001EDC68 DCFF0145 */  bc1t       .L001EDBDC
    /* EEBEC 001EDC6C 01000224 */   addiu     $2, $0, 0x1
    /* EEBF0 001EDC70 16000010 */  b          .L001EDCCC
    /* EEBF4 001EDC74 940360AC */   sw        $0, 0x394($3)
.align 2
  .L001EDC78:
    /* EEBF8 001EDC78 20426324 */  addiu      $3, $3, %lo(D_00194220)
    /* EEBFC 001EDC7C 00006278 */  lq         $2, 0x0($3)
    /* EEC00 001EDC80 0000A27F */  sq         $2, 0x0($29)
    /* EEC04 001EDC84 0800A1C7 */  lwc1       $f1, 0x8($29)
    /* EEC08 001EDC88 01001026 */  addiu      $16, $16, 0x1
    /* EEC0C 001EDC8C 233C013C */  lui        $1, (0x3C23D70A >> 16)
    /* EEC10 001EDC90 0AD72134 */  ori        $1, $1, (0x3C23D70A & 0xFFFF)
    /* EEC14 001EDC94 00008144 */  mtc1       $1, $f0
    /* EEC18 001EDC98 00000000 */  nop
    /* EEC1C 001EDC9C 41080046 */  sub.s      $f1, $f1, $f0
    /* EEC20 001EDCA0 0800A1E7 */  swc1       $f1, 0x8($29)
.align 2
  .L001EDCA4:
    /* EEC24 001EDCA4 0600022A */  slti       $2, $16, 0x6
    /* EEC28 001EDCA8 08004010 */  beqz       $2, .L001EDCCC
    /* EEC2C 001EDCAC 2D20A003 */   daddu     $4, $29, $0
    /* EEC30 001EDCB0 2D282002 */  daddu      $5, $17, $0
    /* EEC34 001EDCB4 12000624 */  addiu      $6, $0, 0x12
    /* EEC38 001EDCB8 2D380000 */  daddu      $7, $0, $0
    /* EEC3C 001EDCBC 84BF070C */  jal        func_001EFE10
    /* EEC40 001EDCC0 2D400000 */   daddu     $8, $0, $0
    /* EEC44 001EDCC4 D8FF4014 */  bnez       $2, .L001EDC28
    /* EEC48 001EDCC8 00000000 */   nop
.align 2
  .L001EDCCC:
    /* EEC4C 001EDCCC 5000BF7B */  lq         $31, 0x50($29)
    /* EEC50 001EDCD0 4000B27B */  lq         $18, 0x40($29)
    /* EEC54 001EDCD4 3000B17B */  lq         $17, 0x30($29)
    /* EEC58 001EDCD8 2000B07B */  lq         $16, 0x20($29)
    /* EEC5C 001EDCDC 0800E003 */  jr         $31
    /* EEC60 001EDCE0 6000BD27 */   addiu     $29, $29, 0x60
endlabel func_001EDB98
    /* EEC64 001EDCE4 00000000 */  nop
