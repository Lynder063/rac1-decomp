.align 3
nonmatching func_0012DDC0, 0x1E0

glabel func_0012DDC0
    /* 2ED40 0012DDC0 B0FFBD27 */  addiu      $29, $29, -0x50
    /* 2ED44 0012DDC4 8080828F */  lw         $2, -0x7F80($28)
    /* 2ED48 0012DDC8 4000BF7F */  sq         $31, 0x40($29)
    /* 2ED4C 0012DDCC 3000B37F */  sq         $19, 0x30($29)
    /* 2ED50 0012DDD0 2000B27F */  sq         $18, 0x20($29)
    /* 2ED54 0012DDD4 1000B17F */  sq         $17, 0x10($29)
    /* 2ED58 0012DDD8 2F004010 */  beqz       $2, .L0012DE98
    /* 2ED5C 0012DDDC 0000B07F */   sq        $16, 0x0($29)
    /* 2ED60 0012DDE0 ECB7040C */  jal        func_0012DFB0
    /* 2ED64 0012DDE4 00000000 */   nop
    /* 2ED68 0012DDE8 2B004010 */  beqz       $2, .L0012DE98
    /* 2ED6C 0012DDEC 9C80828F */   lw        $2, -0x7F64($28)
    /* 2ED70 0012DDF0 09004010 */  beqz       $2, .L0012DE18
    /* 2ED74 0012DDF4 E080838F */   lw        $3, -0x7F20($28)
    /* 2ED78 0012DDF8 04006010 */  beqz       $3, .L0012DE0C
    /* 2ED7C 0012DDFC 1300023C */   lui       $2, %hi(D_00133204)
    /* 2ED80 0012DE00 E88085DF */  ld         $5, -0x7F18($28)
    /* 2ED84 0012DE04 09F86000 */  jalr       $3
    /* 2ED88 0012DE08 0432448C */   lw        $4, %lo(D_00133204)($2)
.align 2
  .L0012DE0C:
    /* 2ED8C 0012DE0C E08080AF */  sw         $0, -0x7F20($28)
    /* 2ED90 0012DE10 21000010 */  b          .L0012DE98
    /* 2ED94 0012DE14 9C8080AF */   sw        $0, -0x7F64($28)
.align 2
  .L0012DE18:
    /* 2ED98 0012DE18 C080828F */  lw         $2, -0x7F40($28)
    /* 2ED9C 0012DE1C A0808327 */  addiu      $3, $28, -0x7F60
    /* 2EDA0 0012DE20 01004238 */  xori       $2, $2, 0x1
    /* 2EDA4 0012DE24 2B100200 */  sltu       $2, $0, $2
    /* 2EDA8 0012DE28 80200200 */  sll        $4, $2, 2
    /* 2EDAC 0012DE2C 21288300 */  addu       $5, $4, $3
    /* 2EDB0 0012DE30 0000A28C */  lw         $2, 0x0($5)
    /* 2EDB4 0012DE34 0000438C */  lw         $3, 0x0($2)
    /* 2EDB8 0012DE38 17006018 */  blez       $3, .L0012DE98
    /* 2EDBC 0012DE3C 2D800000 */   daddu     $16, $0, $0
    /* 2EDC0 0012DE40 B0808327 */  addiu      $3, $28, -0x7F50
    /* 2EDC4 0012DE44 B8808227 */  addiu      $2, $28, -0x7F48
    /* 2EDC8 0012DE48 21988200 */  addu       $19, $4, $2
    /* 2EDCC 0012DE4C 21908300 */  addu       $18, $4, $3
    /* 2EDD0 0012DE50 2D88A000 */  daddu      $17, $5, $0
    /* 2EDD4 0012DE54 0000438E */  lw         $3, 0x0($18)
.align 2
  .L0012DE58:
    /* 2EDD8 0012DE58 00111000 */  sll        $2, $16, 4
    /* 2EDDC 0012DE5C 21204300 */  addu       $4, $2, $3
    /* 2EDE0 0012DE60 0000868C */  lw         $6, 0x0($4)
    /* 2EDE4 0012DE64 0600C010 */  beqz       $6, .L0012DE80
    /* 2EDE8 0012DE68 80101000 */   sll       $2, $16, 2
    /* 2EDEC 0012DE6C 0000638E */  lw         $3, 0x0($19)
    /* 2EDF0 0012DE70 080085DC */  ld         $5, 0x8($4)
    /* 2EDF4 0012DE74 21104300 */  addu       $2, $2, $3
    /* 2EDF8 0012DE78 09F8C000 */  jalr       $6
    /* 2EDFC 0012DE7C 0400448C */   lw        $4, 0x4($2)
.align 2
  .L0012DE80:
    /* 2EE00 0012DE80 0000238E */  lw         $3, 0x0($17)
    /* 2EE04 0012DE84 01001026 */  addiu      $16, $16, 0x1
    /* 2EE08 0012DE88 0000628C */  lw         $2, 0x0($3)
    /* 2EE0C 0012DE8C 2A100202 */  slt        $2, $16, $2
    /* 2EE10 0012DE90 F1FF4054 */  bnel       $2, $0, .L0012DE58
    /* 2EE14 0012DE94 0000438E */   lw        $3, 0x0($18)
.align 2
  .L0012DE98:
    /* 2EE18 0012DE98 C880828F */  lw         $2, -0x7F38($28)
    /* 2EE1C 0012DE9C 16004010 */  beqz       $2, .L0012DEF8
    /* 2EE20 0012DEA0 8080828F */   lw        $2, -0x7F80($28)
    /* 2EE24 0012DEA4 6063040C */  jal        func_00118D80
    /* 2EE28 0012DEA8 2D200000 */   daddu     $4, $0, $0
    /* 2EE2C 0012DEAC FFFF023C */  lui        $2, (0xFFFFFFFF >> 16)
    /* 2EE30 0012DEB0 1600043C */  lui        $4, %hi(D_0015EE00)
    /* 2EE34 0012DEB4 00EE848C */  lw         $4, %lo(D_0015EE00)($4)
    /* 2EE38 0012DEB8 FFFF4234 */  ori        $2, $2, (0xFFFFFFFF & 0xFFFF)
    /* 2EE3C 0012DEBC 0D008210 */  beq        $4, $2, .L0012DEF4
    /* 2EE40 0012DEC0 D080828F */   lw        $2, -0x7F30($28)
    /* 2EE44 0012DEC4 0A004050 */  beql       $2, $0, .L0012DEF0
    /* 2EE48 0012DEC8 008180AF */   sw        $0, -0x7F00($28)
    /* 2EE4C 0012DECC 1600053C */  lui        $5, %hi(D_0015EDD8)
    /* 2EE50 0012DED0 D8EDA5DC */  ld         $5, %lo(D_0015EDD8)($5)
    /* 2EE54 0012DED4 D08080AF */  sw         $0, -0x7F30($28)
    /* 2EE58 0012DED8 1600013C */  lui        $1, %hi(D_0015EDD8)
    /* 2EE5C 0012DEDC D8ED20FC */  sd         $0, %lo(D_0015EDD8)($1)
    /* 2EE60 0012DEE0 09F84000 */  jalr       $2
    /* 2EE64 0012DEE4 00000000 */   nop
    /* 2EE68 0012DEE8 1600013C */  lui        $1, %hi(D_0015EE00)
    /* 2EE6C 0012DEEC 00EE20AC */  sw         $0, %lo(D_0015EE00)($1)
.align 2
  .L0012DEF0:
    /* 2EE70 0012DEF0 C88080AF */  sw         $0, -0x7F38($28)
.align 2
  .L0012DEF4:
    /* 2EE74 0012DEF4 8080828F */  lw         $2, -0x7F80($28)
.align 2
  .L0012DEF8:
    /* 2EE78 0012DEF8 0E004014 */  bnez       $2, .L0012DF34
    /* 2EE7C 0012DEFC 9480828F */   lw        $2, -0x7F6C($28)
    /* 2EE80 0012DF00 C080828F */  lw         $2, -0x7F40($28)
    /* 2EE84 0012DF04 A0808427 */  addiu      $4, $28, -0x7F60
    /* 2EE88 0012DF08 80100200 */  sll        $2, $2, 2
    /* 2EE8C 0012DF0C 21104400 */  addu       $2, $2, $4
    /* 2EE90 0012DF10 0000438C */  lw         $3, 0x0($2)
    /* 2EE94 0012DF14 0000648C */  lw         $4, 0x0($3)
    /* 2EE98 0012DF18 05008010 */  beqz       $4, .L0012DF30
    /* 2EE9C 0012DF1C C480828F */   lw        $2, -0x7F3C($28)
    /* 2EEA0 0012DF20 04004014 */  bnez       $2, .L0012DF34
    /* 2EEA4 0012DF24 9480828F */   lw        $2, -0x7F6C($28)
    /* 2EEA8 0012DF28 C6BA040C */  jal        func_0012EB18
    /* 2EEAC 0012DF2C 00000000 */   nop
.align 2
  .L0012DF30:
    /* 2EEB0 0012DF30 9480828F */  lw         $2, -0x7F6C($28)
.align 2
  .L0012DF34:
    /* 2EEB4 0012DF34 0C004010 */  beqz       $2, .L0012DF68
    /* 2EEB8 0012DF38 8080828F */   lw        $2, -0x7F80($28)
    /* 2EEBC 0012DF3C D2BB040C */  jal        func_0012EF48
    /* 2EEC0 0012DF40 01000424 */   addiu     $4, $0, 0x1
    /* 2EEC4 0012DF44 9880838F */  lw         $3, -0x7F68($28)
    /* 2EEC8 0012DF48 06006010 */  beqz       $3, .L0012DF64
    /* 2EECC 0012DF4C 9080828F */   lw        $2, -0x7F70($28)
    /* 2EED0 0012DF50 948080AF */  sw         $0, -0x7F6C($28)
    /* 2EED4 0012DF54 03004010 */  beqz       $2, .L0012DF64
    /* 2EED8 0012DF58 988080AF */   sw        $0, -0x7F68($28)
    /* 2EEDC 0012DF5C 09F84000 */  jalr       $2
    /* 2EEE0 0012DF60 01000424 */   addiu     $4, $0, 0x1
.align 2
  .L0012DF64:
    /* 2EEE4 0012DF64 8080828F */  lw         $2, -0x7F80($28)
.align 2
  .L0012DF68:
    /* 2EEE8 0012DF68 04004014 */  bnez       $2, .L0012DF7C
    /* 2EEEC 0012DF6C 2D180000 */   daddu     $3, $0, $0
    /* 2EEF0 0012DF70 C880828F */  lw         $2, -0x7F38($28)
    /* 2EEF4 0012DF74 03004010 */  beqz       $2, .L0012DF84
    /* 2EEF8 0012DF78 4000BF7B */   lq        $31, 0x40($29)
.align 2
  .L0012DF7C:
    /* 2EEFC 0012DF7C 01000324 */  addiu      $3, $0, 0x1
    /* 2EF00 0012DF80 4000BF7B */  lq         $31, 0x40($29)
.align 2
  .L0012DF84:
    /* 2EF04 0012DF84 2D106000 */  daddu      $2, $3, $0
    /* 2EF08 0012DF88 3000B37B */  lq         $19, 0x30($29)
    /* 2EF0C 0012DF8C 2000B27B */  lq         $18, 0x20($29)
    /* 2EF10 0012DF90 1000B17B */  lq         $17, 0x10($29)
    /* 2EF14 0012DF94 0000B07B */  lq         $16, 0x0($29)
    /* 2EF18 0012DF98 0800E003 */  jr         $31
    /* 2EF1C 0012DF9C 5000BD27 */   addiu     $29, $29, 0x50
endlabel func_0012DDC0
