.align 3
nonmatching func_0020DE20, 0x90

glabel func_0020DE20
    /* 10EDA0 0020DE20 1400023C */  lui        $2, %hi(D_001414D0)
    /* 10EDA4 0020DE24 C0FFBD27 */  addiu      $29, $29, -0x40
    /* 10EDA8 0020DE28 D014448C */  lw         $4, %lo(D_001414D0)($2)
    /* 10EDAC 0020DE2C 2D28A003 */  daddu      $5, $29, $0
    /* 10EDB0 0020DE30 2000BF7F */  sq         $31, 0x20($29)
    /* 10EDB4 0020DE34 1000B07F */  sq         $16, 0x10($29)
    /* 10EDB8 0020DE38 3800B5E7 */  swc1       $f21, 0x38($29)
    /* 10EDBC 0020DE3C D838080C */  jal        func_0020E360
    /* 10EDC0 0020DE40 3000B4E7 */   swc1      $f20, 0x30($29)
    /* 10EDC4 0020DE44 0F3E013C */  lui        $1, (0x3E0F5C29 >> 16)
    /* 10EDC8 0020DE48 295C2134 */  ori        $1, $1, (0x3E0F5C29 & 0xFFFF)
    /* 10EDCC 0020DE4C 00A88144 */  mtc1       $1, $f21
    /* 10EDD0 0020DE50 0000ACC7 */  lwc1       $f12, 0x0($29)
    /* 10EDD4 0020DE54 16E8070C */  jal        func_001FA058
    /* 10EDD8 0020DE58 0400ADC7 */   lwc1      $f13, 0x4($29)
    /* 10EDDC 0020DE5C 06050046 */  mov.s      $f20, $f0
    /* 10EDE0 0020DE60 E4E7070C */  jal        func_001F9F90
    /* 10EDE4 0020DE64 06A30046 */   mov.s     $f12, $f20
    /* 10EDE8 0020DE68 02001546 */  mul.s      $f0, $f0, $f21
    /* 10EDEC 0020DE6C 1D00023C */  lui        $2, %hi(D_001CAE00)
    /* 10EDF0 0020DE70 00AE5024 */  addiu      $16, $2, %lo(D_001CAE00)
    /* 10EDF4 0020DE74 06A30046 */  mov.s      $f12, $f20
    /* 10EDF8 0020DE78 EAE7070C */  jal        func_001F9FA8
    /* 10EDFC 0020DE7C 00AE40E4 */   swc1      $f0, %lo(D_001CAE00)($2)
    /* 10EE00 0020DE80 02001546 */  mul.s      $f0, $f0, $f21
    /* 10EE04 0020DE84 7DBF013C */  lui        $1, (0xBF7D70A4 >> 16)
    /* 10EE08 0020DE88 A4702134 */  ori        $1, $1, (0xBF7D70A4 & 0xFFFF)
    /* 10EE0C 0020DE8C 00088144 */  mtc1       $1, $f1
    /* 10EE10 0020DE90 2000BF7B */  lq         $31, 0x20($29)
    /* 10EE14 0020DE94 080001E6 */  swc1       $f1, 0x8($16)
    /* 10EE18 0020DE98 040000E6 */  swc1       $f0, 0x4($16)
    /* 10EE1C 0020DE9C 1000B07B */  lq         $16, 0x10($29)
    /* 10EE20 0020DEA0 3800B5C7 */  lwc1       $f21, 0x38($29)
    /* 10EE24 0020DEA4 3000B4C7 */  lwc1       $f20, 0x30($29)
    /* 10EE28 0020DEA8 0800E003 */  jr         $31
    /* 10EE2C 0020DEAC 4000BD27 */   addiu     $29, $29, 0x40
endlabel func_0020DE20
