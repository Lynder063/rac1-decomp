.align 3
nonmatching func_001EDE50, 0x188

glabel func_001EDE50
    /* EEDD0 001EDE50 90FFBD27 */  addiu      $29, $29, -0x70
    /* EEDD4 001EDE54 1600033C */  lui        $3, %hi(D_0015F6E8)
    /* EEDD8 001EDE58 E8F6638C */  lw         $3, %lo(D_0015F6E8)($3)
    /* EEDDC 001EDE5C 6000BF7F */  sq         $31, 0x60($29)
    /* EEDE0 001EDE60 05000224 */  addiu      $2, $0, 0x5
    /* EEDE4 001EDE64 5000B17F */  sq         $17, 0x50($29)
    /* EEDE8 001EDE68 09006214 */  bne        $3, $2, .L001EDE90
    /* EEDEC 001EDE6C 4000B07F */   sq        $16, 0x40($29)
    /* EEDF0 001EDE70 1E00023C */  lui        $2, %hi(D_001E6700)
    /* EEDF4 001EDE74 0067438C */  lw         $3, %lo(D_001E6700)($2)
    /* EEDF8 001EDE78 53006014 */  bnez       $3, .L001EDFC8
    /* EEDFC 001EDE7C 6000BF7B */   lq        $31, 0x60($29)
    /* EEE00 001EDE80 1800023C */  lui        $2, %hi(D_001872B0)
    /* EEE04 001EDE84 B0724324 */  addiu      $3, $2, %lo(D_001872B0)
    /* EEE08 001EDE88 B07240A4 */  sh         $0, %lo(D_001872B0)($2)
    /* EEE0C 001EDE8C 020060A0 */  sb         $0, 0x2($3)
.align 2
  .L001EDE90:
    /* EEE10 001EDE90 1800023C */  lui        $2, %hi(D_00187040)
    /* EEE14 001EDE94 40705024 */  addiu      $16, $2, %lo(D_00187040)
    /* EEE18 001EDE98 9803038E */  lw         $3, 0x398($16)
    /* EEE1C 001EDE9C 01006324 */  addiu      $3, $3, 0x1
    /* EEE20 001EDEA0 82B7070C */  jal        func_001EDE08
    /* EEE24 001EDEA4 980303AE */   sw        $3, 0x398($16)
    /* EEE28 001EDEA8 3AB7070C */  jal        func_001EDCE8
    /* EEE2C 001EDEAC 00000000 */   nop
    /* EEE30 001EDEB0 06B6070C */  jal        func_001ED818
    /* EEE34 001EDEB4 00000000 */   nop
    /* EEE38 001EDEB8 F2B1070C */  jal        func_001EC7C8
    /* EEE3C 001EDEBC 00000000 */   nop
    /* EEE40 001EDEC0 70020296 */  lhu        $2, 0x270($16)
    /* EEE44 001EDEC4 FFFF4224 */  addiu      $2, $2, -0x1
    /* EEE48 001EDEC8 0200422C */  sltiu      $2, $2, 0x2
    /* EEE4C 001EDECC 03004010 */  beqz       $2, .L001EDEDC
    /* EEE50 001EDED0 8001118E */   lw        $17, 0x180($16)
    /* EEE54 001EDED4 12B3070C */  jal        func_001ECC48
    /* EEE58 001EDED8 8401048E */   lw        $4, 0x184($16)
.align 2
  .L001EDEDC:
    /* EEE5C 001EDEDC 70020386 */  lh         $3, 0x270($16)
    /* EEE60 001EDEE0 03000224 */  addiu      $2, $0, 0x3
    /* EEE64 001EDEE4 05006214 */  bne        $3, $2, .L001EDEFC
    /* EEE68 001EDEE8 1900023C */   lui       $2, %hi(D_0018C418)
    /* EEE6C 001EDEEC 96B5070C */  jal        func_001ED658
    /* EEE70 001EDEF0 2D202002 */   daddu     $4, $17, $0
    /* EEE74 001EDEF4 14000010 */  b          .L001EDF48
    /* EEE78 001EDEF8 1900063C */   lui       $6, %hi(D_0018C418)
.align 2
  .L001EDEFC:
    /* EEE7C 001EDEFC 18C44424 */  addiu      $4, $2, %lo(D_0018C418)
    /* EEE80 001EDF00 1400838C */  lw         $3, 0x14($4)
    /* EEE84 001EDF04 1C006014 */  bnez       $3, .L001EDF78
    /* EEE88 001EDF08 2D304000 */   daddu     $6, $2, $0
    /* EEE8C 001EDF0C 40010526 */  addiu      $5, $16, 0x140
    /* EEE90 001EDF10 30002326 */  addiu      $3, $17, 0x30
    /* EEE94 001EDF14 00006278 */  lq         $2, 0x0($3)
    /* EEE98 001EDF18 0000A27C */  sq         $2, 0x0($5)
    /* EEE9C 001EDF1C 50030426 */  addiu      $4, $16, 0x350
    /* EEEA0 001EDF20 0000227A */  lq         $2, 0x0($17)
    /* EEEA4 001EDF24 0000827C */  sq         $2, 0x0($4)
    /* EEEA8 001EDF28 60030526 */  addiu      $5, $16, 0x360
    /* EEEAC 001EDF2C 10002326 */  addiu      $3, $17, 0x10
    /* EEEB0 001EDF30 00006278 */  lq         $2, 0x0($3)
    /* EEEB4 001EDF34 0000A27C */  sq         $2, 0x0($5)
    /* EEEB8 001EDF38 70030426 */  addiu      $4, $16, 0x370
    /* EEEBC 001EDF3C 20002326 */  addiu      $3, $17, 0x20
    /* EEEC0 001EDF40 00006278 */  lq         $2, 0x0($3)
    /* EEEC4 001EDF44 0000827C */  sq         $2, 0x0($4)
.align 2
  .L001EDF48:
    /* EEEC8 001EDF48 18C4C224 */  addiu      $2, $6, %lo(D_0018C418)
    /* EEECC 001EDF4C 1400438C */  lw         $3, 0x14($2)
    /* EEED0 001EDF50 0A006014 */  bnez       $3, .L001EDF7C
    /* EEED4 001EDF54 1800023C */   lui       $2, %hi(D_001871A0)
    /* EEED8 001EDF58 1800103C */  lui        $16, %hi(D_00187390)
    /* EEEDC 001EDF5C 2D20A003 */  daddu      $4, $29, $0
    /* EEEE0 001EDF60 90731026 */  addiu      $16, $16, %lo(D_00187390)
    /* EEEE4 001EDF64 18E9070C */  jal        func_001FA460
    /* EEEE8 001EDF68 2D280002 */   daddu     $5, $16, $0
    /* EEEEC 001EDF6C 00FE0526 */  addiu      $5, $16, -0x200
    /* EEEF0 001EDF70 FA54080C */  jal        func_002153E8
    /* EEEF4 001EDF74 2D20A003 */   daddu     $4, $29, $0
.align 2
  .L001EDF78:
    /* EEEF8 001EDF78 1800023C */  lui        $2, %hi(D_001871A0)
.align 2
  .L001EDF7C:
    /* EEEFC 001EDF7C 2D280000 */  daddu      $5, $0, $0
    /* EEF00 001EDF80 A0715024 */  addiu      $16, $2, %lo(D_001871A0)
    /* EEF04 001EDF84 C2B5070C */  jal        func_001ED708
    /* EEF08 001EDF88 2D200002 */   daddu     $4, $16, $0
    /* EEF0C 001EDF8C 10000426 */  addiu      $4, $16, 0x10
    /* EEF10 001EDF90 C2B5070C */  jal        func_001ED708
    /* EEF14 001EDF94 01000524 */   addiu     $5, $0, 0x1
    /* EEF18 001EDF98 E6B6070C */  jal        func_001EDB98
    /* EEF1C 001EDF9C 00000000 */   nop
    /* EEF20 001EDFA0 16BA070C */  jal        func_001EE858
    /* EEF24 001EDFA4 E0FF0426 */   addiu     $4, $16, -0x20
    /* EEF28 001EDFA8 1600023C */  lui        $2, %hi(D_0015EEB4)
    /* EEF2C 001EDFAC B4EE4290 */  lbu        $2, %lo(D_0015EEB4)($2)
    /* EEF30 001EDFB0 04004010 */  beqz       $2, .L001EDFC4
    /* EEF34 001EDFB4 F0010626 */   addiu     $6, $16, 0x1F0
    /* EEF38 001EDFB8 00020426 */  addiu      $4, $16, 0x200
    /* EEF3C 001EDFBC 28E7070C */  jal        func_001F9CA0
    /* EEF40 001EDFC0 10020526 */   addiu     $5, $16, 0x210
.align 2
  .L001EDFC4:
    /* EEF44 001EDFC4 6000BF7B */  lq         $31, 0x60($29)
.align 2
  .L001EDFC8:
    /* EEF48 001EDFC8 5000B17B */  lq         $17, 0x50($29)
    /* EEF4C 001EDFCC 4000B07B */  lq         $16, 0x40($29)
    /* EEF50 001EDFD0 0800E003 */  jr         $31
    /* EEF54 001EDFD4 7000BD27 */   addiu     $29, $29, 0x70
endlabel func_001EDE50
