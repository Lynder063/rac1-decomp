.align 3
nonmatching func_0012DDC0, 0x1E0

glabel func_0012DDC0
    /* 2ED40 0012DDC0 B0FFBD27 */  addiu      $sp, $sp, -0x50
    /* 2ED44 0012DDC4 8080828F */  lw         $v0, -0x7F80($gp)
    /* 2ED48 0012DDC8 4000BF7F */  sq         $ra, 0x40($sp)
    /* 2ED4C 0012DDCC 3000B37F */  sq         $s3, 0x30($sp)
    /* 2ED50 0012DDD0 2000B27F */  sq         $s2, 0x20($sp)
    /* 2ED54 0012DDD4 1000B17F */  sq         $s1, 0x10($sp)
    /* 2ED58 0012DDD8 2F004010 */  beqz       $v0, .L0012DE98
    /* 2ED5C 0012DDDC 0000B07F */   sq        $s0, 0x0($sp)
    /* 2ED60 0012DDE0 ECB7040C */  jal        func_0012DFB0
    /* 2ED64 0012DDE4 00000000 */   nop
    /* 2ED68 0012DDE8 2B004010 */  beqz       $v0, .L0012DE98
    /* 2ED6C 0012DDEC 9C80828F */   lw        $v0, -0x7F64($gp)
    /* 2ED70 0012DDF0 09004010 */  beqz       $v0, .L0012DE18
    /* 2ED74 0012DDF4 E080838F */   lw        $v1, -0x7F20($gp)
    /* 2ED78 0012DDF8 04006010 */  beqz       $v1, .L0012DE0C
    /* 2ED7C 0012DDFC 1300023C */   lui       $v0, %hi(D_00133204)
    /* 2ED80 0012DE00 E88085DF */  ld         $a1, -0x7F18($gp)
    /* 2ED84 0012DE04 09F86000 */  jalr       $v1
    /* 2ED88 0012DE08 0432448C */   lw        $a0, %lo(D_00133204)($v0)
.align 2
  .L0012DE0C:
    /* 2ED8C 0012DE0C E08080AF */  sw         $zero, -0x7F20($gp)
    /* 2ED90 0012DE10 21000010 */  b          .L0012DE98
    /* 2ED94 0012DE14 9C8080AF */   sw        $zero, -0x7F64($gp)
.align 2
  .L0012DE18:
    /* 2ED98 0012DE18 C080828F */  lw         $v0, -0x7F40($gp)
    /* 2ED9C 0012DE1C A0808327 */  addiu      $v1, $gp, -0x7F60
    /* 2EDA0 0012DE20 01004238 */  xori       $v0, $v0, 0x1
    /* 2EDA4 0012DE24 2B100200 */  sltu       $v0, $zero, $v0
    /* 2EDA8 0012DE28 80200200 */  sll        $a0, $v0, 2
    /* 2EDAC 0012DE2C 21288300 */  addu       $a1, $a0, $v1
    /* 2EDB0 0012DE30 0000A28C */  lw         $v0, 0x0($a1)
    /* 2EDB4 0012DE34 0000438C */  lw         $v1, 0x0($v0)
    /* 2EDB8 0012DE38 17006018 */  blez       $v1, .L0012DE98
    /* 2EDBC 0012DE3C 2D800000 */   daddu     $s0, $zero, $zero
    /* 2EDC0 0012DE40 B0808327 */  addiu      $v1, $gp, -0x7F50
    /* 2EDC4 0012DE44 B8808227 */  addiu      $v0, $gp, -0x7F48
    /* 2EDC8 0012DE48 21988200 */  addu       $s3, $a0, $v0
    /* 2EDCC 0012DE4C 21908300 */  addu       $s2, $a0, $v1
    /* 2EDD0 0012DE50 2D88A000 */  daddu      $s1, $a1, $zero
    /* 2EDD4 0012DE54 0000438E */  lw         $v1, 0x0($s2)
.align 2
  .L0012DE58:
    /* 2EDD8 0012DE58 00111000 */  sll        $v0, $s0, 4
    /* 2EDDC 0012DE5C 21204300 */  addu       $a0, $v0, $v1
    /* 2EDE0 0012DE60 0000868C */  lw         $a2, 0x0($a0)
    /* 2EDE4 0012DE64 0600C010 */  beqz       $a2, .L0012DE80
    /* 2EDE8 0012DE68 80101000 */   sll       $v0, $s0, 2
    /* 2EDEC 0012DE6C 0000638E */  lw         $v1, 0x0($s3)
    /* 2EDF0 0012DE70 080085DC */  ld         $a1, 0x8($a0)
    /* 2EDF4 0012DE74 21104300 */  addu       $v0, $v0, $v1
    /* 2EDF8 0012DE78 09F8C000 */  jalr       $a2
    /* 2EDFC 0012DE7C 0400448C */   lw        $a0, 0x4($v0)
.align 2
  .L0012DE80:
    /* 2EE00 0012DE80 0000238E */  lw         $v1, 0x0($s1)
    /* 2EE04 0012DE84 01001026 */  addiu      $s0, $s0, 0x1
    /* 2EE08 0012DE88 0000628C */  lw         $v0, 0x0($v1)
    /* 2EE0C 0012DE8C 2A100202 */  slt        $v0, $s0, $v0
    /* 2EE10 0012DE90 F1FF4054 */  bnel       $v0, $zero, .L0012DE58
    /* 2EE14 0012DE94 0000438E */   lw        $v1, 0x0($s2)
.align 2
  .L0012DE98:
    /* 2EE18 0012DE98 C880828F */  lw         $v0, -0x7F38($gp)
    /* 2EE1C 0012DE9C 16004010 */  beqz       $v0, .L0012DEF8
    /* 2EE20 0012DEA0 8080828F */   lw        $v0, -0x7F80($gp)
    /* 2EE24 0012DEA4 6063040C */  jal        func_00118D80
    /* 2EE28 0012DEA8 2D200000 */   daddu     $a0, $zero, $zero
    /* 2EE2C 0012DEAC FFFF023C */  lui        $v0, (0xFFFFFFFF >> 16)
    /* 2EE30 0012DEB0 1600043C */  lui        $a0, %hi(D_0015EE00)
    /* 2EE34 0012DEB4 00EE848C */  lw         $a0, %lo(D_0015EE00)($a0)
    /* 2EE38 0012DEB8 FFFF4234 */  ori        $v0, $v0, (0xFFFFFFFF & 0xFFFF)
    /* 2EE3C 0012DEBC 0D008210 */  beq        $a0, $v0, .L0012DEF4
    /* 2EE40 0012DEC0 D080828F */   lw        $v0, -0x7F30($gp)
    /* 2EE44 0012DEC4 0A004050 */  beql       $v0, $zero, .L0012DEF0
    /* 2EE48 0012DEC8 008180AF */   sw        $zero, -0x7F00($gp)
    /* 2EE4C 0012DECC 1600053C */  lui        $a1, %hi(D_0015EDD8)
    /* 2EE50 0012DED0 D8EDA5DC */  ld         $a1, %lo(D_0015EDD8)($a1)
    /* 2EE54 0012DED4 D08080AF */  sw         $zero, -0x7F30($gp)
    /* 2EE58 0012DED8 1600013C */  lui        $at, %hi(D_0015EDD8)
    /* 2EE5C 0012DEDC D8ED20FC */  sd         $zero, %lo(D_0015EDD8)($at)
    /* 2EE60 0012DEE0 09F84000 */  jalr       $v0
    /* 2EE64 0012DEE4 00000000 */   nop
    /* 2EE68 0012DEE8 1600013C */  lui        $at, %hi(D_0015EE00)
    /* 2EE6C 0012DEEC 00EE20AC */  sw         $zero, %lo(D_0015EE00)($at)
.align 2
  .L0012DEF0:
    /* 2EE70 0012DEF0 C88080AF */  sw         $zero, -0x7F38($gp)
.align 2
  .L0012DEF4:
    /* 2EE74 0012DEF4 8080828F */  lw         $v0, -0x7F80($gp)
.align 2
  .L0012DEF8:
    /* 2EE78 0012DEF8 0E004014 */  bnez       $v0, .L0012DF34
    /* 2EE7C 0012DEFC 9480828F */   lw        $v0, -0x7F6C($gp)
    /* 2EE80 0012DF00 C080828F */  lw         $v0, -0x7F40($gp)
    /* 2EE84 0012DF04 A0808427 */  addiu      $a0, $gp, -0x7F60
    /* 2EE88 0012DF08 80100200 */  sll        $v0, $v0, 2
    /* 2EE8C 0012DF0C 21104400 */  addu       $v0, $v0, $a0
    /* 2EE90 0012DF10 0000438C */  lw         $v1, 0x0($v0)
    /* 2EE94 0012DF14 0000648C */  lw         $a0, 0x0($v1)
    /* 2EE98 0012DF18 05008010 */  beqz       $a0, .L0012DF30
    /* 2EE9C 0012DF1C C480828F */   lw        $v0, -0x7F3C($gp)
    /* 2EEA0 0012DF20 04004014 */  bnez       $v0, .L0012DF34
    /* 2EEA4 0012DF24 9480828F */   lw        $v0, -0x7F6C($gp)
    /* 2EEA8 0012DF28 C6BA040C */  jal        func_0012EB18
    /* 2EEAC 0012DF2C 00000000 */   nop
.align 2
  .L0012DF30:
    /* 2EEB0 0012DF30 9480828F */  lw         $v0, -0x7F6C($gp)
.align 2
  .L0012DF34:
    /* 2EEB4 0012DF34 0C004010 */  beqz       $v0, .L0012DF68
    /* 2EEB8 0012DF38 8080828F */   lw        $v0, -0x7F80($gp)
    /* 2EEBC 0012DF3C D2BB040C */  jal        func_0012EF48
    /* 2EEC0 0012DF40 01000424 */   addiu     $a0, $zero, 0x1
    /* 2EEC4 0012DF44 9880838F */  lw         $v1, -0x7F68($gp)
    /* 2EEC8 0012DF48 06006010 */  beqz       $v1, .L0012DF64
    /* 2EECC 0012DF4C 9080828F */   lw        $v0, -0x7F70($gp)
    /* 2EED0 0012DF50 948080AF */  sw         $zero, -0x7F6C($gp)
    /* 2EED4 0012DF54 03004010 */  beqz       $v0, .L0012DF64
    /* 2EED8 0012DF58 988080AF */   sw        $zero, -0x7F68($gp)
    /* 2EEDC 0012DF5C 09F84000 */  jalr       $v0
    /* 2EEE0 0012DF60 01000424 */   addiu     $a0, $zero, 0x1
.align 2
  .L0012DF64:
    /* 2EEE4 0012DF64 8080828F */  lw         $v0, -0x7F80($gp)
.align 2
  .L0012DF68:
    /* 2EEE8 0012DF68 04004014 */  bnez       $v0, .L0012DF7C
    /* 2EEEC 0012DF6C 2D180000 */   daddu     $v1, $zero, $zero
    /* 2EEF0 0012DF70 C880828F */  lw         $v0, -0x7F38($gp)
    /* 2EEF4 0012DF74 03004010 */  beqz       $v0, .L0012DF84
    /* 2EEF8 0012DF78 4000BF7B */   lq        $ra, 0x40($sp)
.align 2
  .L0012DF7C:
    /* 2EEFC 0012DF7C 01000324 */  addiu      $v1, $zero, 0x1
    /* 2EF00 0012DF80 4000BF7B */  lq         $ra, 0x40($sp)
.align 2
  .L0012DF84:
    /* 2EF04 0012DF84 2D106000 */  daddu      $v0, $v1, $zero
    /* 2EF08 0012DF88 3000B37B */  lq         $s3, 0x30($sp)
    /* 2EF0C 0012DF8C 2000B27B */  lq         $s2, 0x20($sp)
    /* 2EF10 0012DF90 1000B17B */  lq         $s1, 0x10($sp)
    /* 2EF14 0012DF94 0000B07B */  lq         $s0, 0x0($sp)
    /* 2EF18 0012DF98 0800E003 */  jr         $ra
    /* 2EF1C 0012DF9C 5000BD27 */   addiu     $sp, $sp, 0x50
endlabel func_0012DDC0
