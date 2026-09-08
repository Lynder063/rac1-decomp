.align 3
nonmatching func_0011AE20, 0x19C

glabel func_0011AE20
    /* 1BDA0 0011AE20 C0FFBD27 */  addiu      $29, $29, -0x40
    /* 1BDA4 0011AE24 3000BFFF */  sd         $31, 0x30($29)
    /* 1BDA8 0011AE28 2000B2FF */  sd         $18, 0x20($29)
    /* 1BDAC 0011AE2C 1000B1FF */  sd         $17, 0x10($29)
    /* 1BDB0 0011AE30 5876040C */  jal        func_0011D960
    /* 1BDB4 0011AE34 0000B0FF */   sd        $16, 0x0($29)
    /* 1BDB8 0011AE38 1300033C */  lui        $3, %hi(D_0012FD08)
    /* 1BDBC 0011AE3C 08FD628C */  lw         $2, %lo(D_0012FD08)($3)
    /* 1BDC0 0011AE40 07004010 */  beqz       $2, .L0011AE60
    /* 1BDC4 0011AE44 01001124 */   addiu     $17, $0, 0x1
    /* 1BDC8 0011AE48 3000BFDF */  ld         $31, 0x30($29)
    /* 1BDCC 0011AE4C 2000B2DF */  ld         $18, 0x20($29)
    /* 1BDD0 0011AE50 1000B1DF */  ld         $17, 0x10($29)
    /* 1BDD4 0011AE54 0000B0DF */  ld         $16, 0x0($29)
    /* 1BDD8 0011AE58 6A760408 */  j          func_0011D9A8
    /* 1BDDC 0011AE5C 4000BD27 */   addiu     $29, $29, 0x40
.align 2
  .L0011AE60:
    /* 1BDE0 0011AE60 6A76040C */  jal        func_0011D9A8
    /* 1BDE4 0011AE64 08FD71AC */   sw        $17, %lo(D_0012FD08)($3)
    /* 1BDE8 0011AE68 E069040C */  jal        func_0011A780
    /* 1BDEC 0011AE6C 00000000 */   nop
    /* 1BDF0 0011AE70 5876040C */  jal        func_0011D960
    /* 1BDF4 0011AE74 00000000 */   nop
    /* 1BDF8 0011AE78 1500033C */  lui        $3, %hi(D_00155100)
    /* 1BDFC 0011AE7C 1500083C */  lui        $8, %hi(D_00156900)
    /* 1BE00 0011AE80 00517224 */  addiu      $18, $3, %lo(D_00155100)
    /* 1BE04 0011AE84 1500063C */  lui        $6, %hi(D_00155900)
    /* 1BE08 0011AE88 1500073C */  lui        $7, %hi(D_00156100)
    /* 1BE0C 0011AE8C 00691025 */  addiu      $16, $8, %lo(D_00156900)
    /* 1BE10 0011AE90 20000324 */  addiu      $3, $0, 0x20
    /* 1BE14 0011AE94 0020023C */  lui        $2, (0x20000000 >> 16)
    /* 1BE18 0011AE98 0059C624 */  addiu      $6, $6, %lo(D_00155900)
    /* 1BE1C 0011AE9C 0061E724 */  addiu      $7, $7, %lo(D_00156100)
    /* 1BE20 0011AEA0 2530C200 */  or         $6, $6, $2
    /* 1BE24 0011AEA4 2538E200 */  or         $7, $7, $2
    /* 1BE28 0011AEA8 200003AE */  sw         $3, 0x20($16)
    /* 1BE2C 0011AEAC 25104202 */  or         $2, $18, $2
    /* 1BE30 0011AEB0 006911AD */  sw         $17, %lo(D_00156900)($8)
    /* 1BE34 0011AEB4 1200053C */  lui        $5, %hi(func_0011B0E0)
    /* 1BE38 0011AEB8 140006AE */  sw         $6, 0x14($16)
    /* 1BE3C 0011AEBC 0080043C */  lui        $4, (0x80000008 >> 16)
    /* 1BE40 0011AEC0 040002AE */  sw         $2, 0x4($16)
    /* 1BE44 0011AEC4 E0B0A524 */  addiu      $5, $5, %lo(func_0011B0E0)
    /* 1BE48 0011AEC8 1C0007AE */  sw         $7, 0x1C($16)
    /* 1BE4C 0011AECC 08008434 */  ori        $4, $4, (0x80000008 & 0xFFFF)
    /* 1BE50 0011AED0 2D300002 */  daddu      $6, $16, $0
    /* 1BE54 0011AED4 080003AE */  sw         $3, 0x8($16)
    /* 1BE58 0011AED8 0C0000AE */  sw         $0, 0xC($16)
    /* 1BE5C 0011AEDC 100000AE */  sw         $0, 0x10($16)
    /* 1BE60 0011AEE0 180003AE */  sw         $3, 0x18($16)
    /* 1BE64 0011AEE4 8E6A040C */  jal        func_0011AA38
    /* 1BE68 0011AEE8 240000AE */   sw        $0, 0x24($16)
    /* 1BE6C 0011AEEC 1200053C */  lui        $5, %hi(func_0011B248)
    /* 1BE70 0011AEF0 0080043C */  lui        $4, (0x80000009 >> 16)
    /* 1BE74 0011AEF4 48B2A524 */  addiu      $5, $5, %lo(func_0011B248)
    /* 1BE78 0011AEF8 09008434 */  ori        $4, $4, (0x80000009 & 0xFFFF)
    /* 1BE7C 0011AEFC 8E6A040C */  jal        func_0011AA38
    /* 1BE80 0011AF00 2D300002 */   daddu     $6, $16, $0
    /* 1BE84 0011AF04 1200053C */  lui        $5, %hi(func_0011B438)
    /* 1BE88 0011AF08 0080043C */  lui        $4, (0x8000000A >> 16)
    /* 1BE8C 0011AF0C 38B4A524 */  addiu      $5, $5, %lo(func_0011B438)
    /* 1BE90 0011AF10 0A008434 */  ori        $4, $4, (0x8000000A & 0xFFFF)
    /* 1BE94 0011AF14 8E6A040C */  jal        func_0011AA38
    /* 1BE98 0011AF18 2D300002 */   daddu     $6, $16, $0
    /* 1BE9C 0011AF1C 1200053C */  lui        $5, %hi(func_0011B198)
    /* 1BEA0 0011AF20 0080043C */  lui        $4, (0x8000000C >> 16)
    /* 1BEA4 0011AF24 98B1A524 */  addiu      $5, $5, %lo(func_0011B198)
    /* 1BEA8 0011AF28 2D300002 */  daddu      $6, $16, $0
    /* 1BEAC 0011AF2C 8E6A040C */  jal        func_0011AA38
    /* 1BEB0 0011AF30 0C008434 */   ori       $4, $4, (0x8000000C & 0xFFFF)
    /* 1BEB4 0011AF34 6A76040C */  jal        func_0011D9A8
    /* 1BEB8 0011AF38 00000000 */   nop
    /* 1BEBC 0011AF3C 0080043C */  lui        $4, (0x80000002 >> 16)
    /* 1BEC0 0011AF40 9C63040C */  jal        func_00118E70
    /* 1BEC4 0011AF44 02008434 */   ori       $4, $4, (0x80000002 & 0xFFFF)
    /* 1BEC8 0011AF48 17004014 */  bnez       $2, .L0011AFA8
    /* 1BECC 0011AF4C 3000BFDF */   ld        $31, 0x30($29)
    /* 1BED0 0011AF50 40004526 */  addiu      $5, $18, 0x40
    /* 1BED4 0011AF54 0080043C */  lui        $4, (0x80000002 >> 16)
    /* 1BED8 0011AF58 0C00B1AC */  sw         $17, 0xC($5)
    /* 1BEDC 0011AF5C 02008434 */  ori        $4, $4, (0x80000002 & 0xFFFF)
    /* 1BEE0 0011AF60 10000624 */  addiu      $6, $0, 0x10
    /* 1BEE4 0011AF64 2D380000 */  daddu      $7, $0, $0
    /* 1BEE8 0011AF68 2D400000 */  daddu      $8, $0, $0
    /* 1BEEC 0011AF6C F26A040C */  jal        func_0011ABC8
    /* 1BEF0 0011AF70 2D480000 */   daddu     $9, $0, $0
    /* 1BEF4 0011AF74 00000000 */  nop
.align 2
  .L0011AF78:
    /* 1BEF8 0011AF78 D669040C */  jal        func_0011A758
    /* 1BEFC 0011AF7C 2D200000 */   daddu     $4, $0, $0
    /* 1BF00 0011AF80 FDFF4010 */  beqz       $2, .L0011AF78
    /* 1BF04 0011AF84 3000BFDF */   ld        $31, 0x30($29)
    /* 1BF08 0011AF88 0080043C */  lui        $4, (0x80000002 >> 16)
    /* 1BF0C 0011AF8C 2000B2DF */  ld         $18, 0x20($29)
    /* 1BF10 0011AF90 01000524 */  addiu      $5, $0, 0x1
    /* 1BF14 0011AF94 1000B1DF */  ld         $17, 0x10($29)
    /* 1BF18 0011AF98 02008434 */  ori        $4, $4, (0x80000002 & 0xFFFF)
    /* 1BF1C 0011AF9C 0000B0DF */  ld         $16, 0x0($29)
    /* 1BF20 0011AFA0 98630408 */  j          func_00118E60
    /* 1BF24 0011AFA4 4000BD27 */   addiu     $29, $29, 0x40
.align 2
  .L0011AFA8:
    /* 1BF28 0011AFA8 2000B2DF */  ld         $18, 0x20($29)
    /* 1BF2C 0011AFAC 1000B1DF */  ld         $17, 0x10($29)
    /* 1BF30 0011AFB0 0000B0DF */  ld         $16, 0x0($29)
    /* 1BF34 0011AFB4 0800E003 */  jr         $31
    /* 1BF38 0011AFB8 4000BD27 */   addiu     $29, $29, 0x40
endlabel func_0011AE20
    /* 1BF3C 0011AFBC 00000000 */  nop
