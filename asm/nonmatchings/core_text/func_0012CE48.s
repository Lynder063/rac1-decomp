.align 3
nonmatching func_0012CE48, 0x150

glabel func_0012CE48
    /* 2DDC8 0012CE48 B0FFBD27 */  addiu      $sp, $sp, -0x50
    /* 2DDCC 0012CE4C 3000B3FF */  sd         $s3, 0x30($sp)
    /* 2DDD0 0012CE50 2000B2FF */  sd         $s2, 0x20($sp)
    /* 2DDD4 0012CE54 1000B1FF */  sd         $s1, 0x10($sp)
    /* 2DDD8 0012CE58 0000B0FF */  sd         $s0, 0x0($sp)
    /* 2DDDC 0012CE5C 4000BFFF */  sd         $ra, 0x40($sp)
    /* 2DDE0 0012CE60 2D808000 */  daddu      $s0, $a0, $zero
    /* 2DDE4 0012CE64 1C00028E */  lw         $v0, 0x1C($s0)
    /* 2DDE8 0012CE68 0800048E */  lw         $a0, 0x8($s0)
    /* 2DDEC 0012CE6C 021A0200 */  srl        $v1, $v0, 8
    /* 2DDF0 0012CE70 7F005330 */  andi       $s3, $v0, 0x7F
    /* 2DDF4 0012CE74 02140200 */  srl        $v0, $v0, 16
    /* 2DDF8 0012CE78 0F006330 */  andi       $v1, $v1, 0xF
    /* 2DDFC 0012CE7C 03004230 */  andi       $v0, $v0, 0x3
    /* 2DE00 0012CE80 0000058E */  lw         $a1, 0x0($s0)
    /* 2DE04 0012CE84 21104300 */  addu       $v0, $v0, $v1
    /* 2DE08 0012CE88 1000068E */  lw         $a2, 0x10($s0)
    /* 2DE0C 0012CE8C 21908200 */  addu       $s2, $a0, $v0
    /* 2DE10 0012CE90 00110200 */  sll        $v0, $v0, 4
    /* 2DE14 0012CE94 0D00C010 */  beqz       $a2, .L0012CECC
    /* 2DE18 0012CE98 2388A200 */   subu      $s1, $a1, $v0
    /* 2DE1C 0012CE9C 1400028E */  lw         $v0, 0x14($s0)
    /* 2DE20 0012CEA0 0A004010 */  beqz       $v0, .L0012CECC
    /* 2DE24 0012CEA4 0010023C */   lui       $v0, (0x1000B010 >> 16)
    /* 2DE28 0012CEA8 0010043C */  lui        $a0, (0x1000B020 >> 16)
    /* 2DE2C 0012CEAC 10B04234 */  ori        $v0, $v0, (0x1000B010 & 0xFFFF)
    /* 2DE30 0012CEB0 20B08434 */  ori        $a0, $a0, (0x1000B020 & 0xFFFF)
    /* 2DE34 0012CEB4 000046AC */  sw         $a2, 0x0($v0)
    /* 2DE38 0012CEB8 1400038E */  lw         $v1, 0x14($s0)
    /* 2DE3C 0012CEBC 000083AC */  sw         $v1, 0x0($a0)
    /* 2DE40 0012CEC0 1800048E */  lw         $a0, 0x18($s0)
    /* 2DE44 0012CEC4 24B3040C */  jal        func_0012CC90
    /* 2DE48 0012CEC8 00018434 */   ori       $a0, $a0, 0x100
.align 2
  .L0012CECC:
    /* 2DE4C 0012CECC 0010033C */  lui        $v1, (0x10002010 >> 16)
    /* 2DE50 0012CED0 10206334 */  ori        $v1, $v1, (0x10002010 & 0xFFFF)
    /* 2DE54 0012CED4 00000000 */  nop
.align 2
  .L0012CED8:
    /* 2DE58 0012CED8 0000628C */  lw         $v0, 0x0($v1)
    /* 2DE5C 0012CEDC 00000000 */  nop
    /* 2DE60 0012CEE0 00000000 */  nop
    /* 2DE64 0012CEE4 00000000 */  nop
    /* 2DE68 0012CEE8 00000000 */  nop
    /* 2DE6C 0012CEEC FAFF4004 */  bltz       $v0, .L0012CED8
    /* 2DE70 0012CEF0 00000000 */   nop
    /* 2DE74 0012CEF4 0010023C */  lui        $v0, (0x10002000 >> 16)
    /* 2DE78 0012CEF8 0010033C */  lui        $v1, (0x10002010 >> 16)
    /* 2DE7C 0012CEFC 00204234 */  ori        $v0, $v0, (0x10002000 & 0xFFFF)
    /* 2DE80 0012CF00 10206334 */  ori        $v1, $v1, (0x10002010 & 0xFFFF)
    /* 2DE84 0012CF04 000053AC */  sw         $s3, 0x0($v0)
.align 2
  .L0012CF08:
    /* 2DE88 0012CF08 0000628C */  lw         $v0, 0x0($v1)
    /* 2DE8C 0012CF0C 00000000 */  nop
    /* 2DE90 0012CF10 00000000 */  nop
    /* 2DE94 0012CF14 00000000 */  nop
    /* 2DE98 0012CF18 00000000 */  nop
    /* 2DE9C 0012CF1C FAFF4004 */  bltz       $v0, .L0012CF08
    /* 2DEA0 0012CF20 00000000 */   nop
    /* 2DEA4 0012CF24 16002012 */  beqz       $s1, .L0012CF80
    /* 2DEA8 0012CF28 4000BFDF */   ld        $ra, 0x40($sp)
    /* 2DEAC 0012CF2C 15004012 */  beqz       $s2, .L0012CF84
    /* 2DEB0 0012CF30 3000B3DF */   ld        $s3, 0x30($sp)
    /* 2DEB4 0012CF34 0010023C */  lui        $v0, (0x1000B410 >> 16)
    /* 2DEB8 0012CF38 0010043C */  lui        $a0, (0x1000B430 >> 16)
    /* 2DEBC 0012CF3C 10B44234 */  ori        $v0, $v0, (0x1000B410 & 0xFFFF)
    /* 2DEC0 0012CF40 30B48434 */  ori        $a0, $a0, (0x1000B430 & 0xFFFF)
    /* 2DEC4 0012CF44 000051AC */  sw         $s1, 0x0($v0)
    /* 2DEC8 0012CF48 0010033C */  lui        $v1, (0x1000B420 >> 16)
    /* 2DECC 0012CF4C 20B46334 */  ori        $v1, $v1, (0x1000B420 & 0xFFFF)
    /* 2DED0 0012CF50 4000BFDF */  ld         $ra, 0x40($sp)
    /* 2DED4 0012CF54 0400028E */  lw         $v0, 0x4($s0)
    /* 2DED8 0012CF58 3000B3DF */  ld         $s3, 0x30($sp)
    /* 2DEDC 0012CF5C 000082AC */  sw         $v0, 0x0($a0)
    /* 2DEE0 0012CF60 000072AC */  sw         $s2, 0x0($v1)
    /* 2DEE4 0012CF64 2000B2DF */  ld         $s2, 0x20($sp)
    /* 2DEE8 0012CF68 0C00048E */  lw         $a0, 0xC($s0)
    /* 2DEEC 0012CF6C 1000B1DF */  ld         $s1, 0x10($sp)
    /* 2DEF0 0012CF70 0000B0DF */  ld         $s0, 0x0($sp)
    /* 2DEF4 0012CF74 00018434 */  ori        $a0, $a0, 0x100
    /* 2DEF8 0012CF78 3EB30408 */  j          func_0012CCF8
    /* 2DEFC 0012CF7C 5000BD27 */   addiu     $sp, $sp, 0x50
.align 2
  .L0012CF80:
    /* 2DF00 0012CF80 3000B3DF */  ld         $s3, 0x30($sp)
.align 2
  .L0012CF84:
    /* 2DF04 0012CF84 2000B2DF */  ld         $s2, 0x20($sp)
    /* 2DF08 0012CF88 1000B1DF */  ld         $s1, 0x10($sp)
    /* 2DF0C 0012CF8C 0000B0DF */  ld         $s0, 0x0($sp)
    /* 2DF10 0012CF90 0800E003 */  jr         $ra
    /* 2DF14 0012CF94 5000BD27 */   addiu     $sp, $sp, 0x50
endlabel func_0012CE48
