.align 3
nonmatching func_0022DB48, 0xA0

glabel func_0022DB48
    /* 12EAC8 0022DB48 C0FFBD27 */  addiu      $29, $29, -0x40
    /* 12EACC 0022DB4C 1000B07F */  sq         $16, 0x10($29)
    /* 12EAD0 0022DB50 2D20A003 */  daddu      $4, $29, $0
    /* 12EAD4 0022DB54 2D80C000 */  daddu      $16, $6, $0
    /* 12EAD8 0022DB58 2000BF7F */  sq         $31, 0x20($29)
    /* 12EADC 0022DB5C 1800063C */  lui        $6, %hi(D_00187180)
    /* 12EAE0 0022DB60 3000B4E7 */  swc1       $f20, 0x30($29)
    /* 12EAE4 0022DB64 FCE6070C */  jal        func_001F9BF0
    /* 12EAE8 0022DB68 8071C624 */   addiu     $6, $6, %lo(D_00187180)
    /* 12EAEC 0022DB6C 2D300002 */  daddu      $6, $16, $0
    /* 12EAF0 0022DB70 2D20A003 */  daddu      $4, $29, $0
    /* 12EAF4 0022DB74 BAE7070C */  jal        func_001F9EE8
    /* 12EAF8 0022DB78 2D28A003 */   daddu     $5, $29, $0
    /* 12EAFC 0022DB7C 3AE7070C */  jal        func_001F9CE8
    /* 12EB00 0022DB80 2D20A003 */   daddu     $4, $29, $0
    /* 12EB04 0022DB84 803F013C */  lui        $1, (0x3F800000 >> 16)
    /* 12EB08 0022DB88 00608144 */  mtc1       $1, $f12
    /* 12EB0C 0022DB8C 00688044 */  mtc1       $0, $f13
    /* 12EB10 0022DB90 86630046 */  mov.s      $f14, $f12
    /* 12EB14 0022DB94 ECE6070C */  jal        func_001F9BB0
    /* 12EB18 0022DB98 01030C46 */   sub.s     $f12, $f0, $f12
    /* 12EB1C 0022DB9C 0000ACC7 */  lwc1       $f12, 0x0($29)
    /* 12EB20 0022DBA0 06050046 */  mov.s      $f20, $f0
    /* 12EB24 0022DBA4 16E8070C */  jal        func_001FA058
    /* 12EB28 0022DBA8 0400ADC7 */   lwc1      $f13, 0x4($29)
    /* 12EB2C 0022DBAC 07000046 */  neg.s      $f0, $f0
    /* 12EB30 0022DBB0 3443013C */  lui        $1, (0x43340000 >> 16)
    /* 12EB34 0022DBB4 00088144 */  mtc1       $1, $f1
    /* 12EB38 0022DBB8 A23E013C */  lui        $1, (0x3EA2F983 >> 16)
    /* 12EB3C 0022DBBC 83F92134 */  ori        $1, $1, (0x3EA2F983 & 0xFFFF)
    /* 12EB40 0022DBC0 00608144 */  mtc1       $1, $f12
    /* 12EB44 0022DBC4 02000146 */  mul.s      $f0, $f0, $f1
    /* 12EB48 0022DBC8 02001446 */  mul.s      $f0, $f0, $f20
    /* 12EB4C 0022DBCC 26EA070C */  jal        func_001FA898
    /* 12EB50 0022DBD0 02030C46 */   mul.s     $f12, $f0, $f12
    /* 12EB54 0022DBD4 2000BF7B */  lq         $31, 0x20($29)
    /* 12EB58 0022DBD8 1000B07B */  lq         $16, 0x10($29)
    /* 12EB5C 0022DBDC 3000B4C7 */  lwc1       $f20, 0x30($29)
    /* 12EB60 0022DBE0 0800E003 */  jr         $31
    /* 12EB64 0022DBE4 4000BD27 */   addiu     $29, $29, 0x40
endlabel func_0022DB48
