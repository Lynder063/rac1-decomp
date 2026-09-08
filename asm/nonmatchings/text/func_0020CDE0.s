.align 3
nonmatching func_0020CDE0, 0x560

glabel func_0020CDE0
    /* 10DD60 0020CDE0 90FEBD27 */  addiu      $sp, $sp, -0x170
    /* 10DD64 0020CDE4 2D30A000 */  daddu      $a2, $a1, $zero
    /* 10DD68 0020CDE8 F000B27F */  sq         $s2, 0xF0($sp)
    /* 10DD6C 0020CDEC 2D908000 */  daddu      $s2, $a0, $zero
    /* 10DD70 0020CDF0 6001BF7F */  sq         $ra, 0x160($sp)
    /* 10DD74 0020CDF4 5001BE7F */  sq         $fp, 0x150($sp)
    /* 10DD78 0020CDF8 1300422A */  slti       $v0, $s2, 0x13
    /* 10DD7C 0020CDFC 4001B77F */  sq         $s7, 0x140($sp)
    /* 10DD80 0020CE00 3001B67F */  sq         $s6, 0x130($sp)
    /* 10DD84 0020CE04 2001B57F */  sq         $s5, 0x120($sp)
    /* 10DD88 0020CE08 1001B47F */  sq         $s4, 0x110($sp)
    /* 10DD8C 0020CE0C 0001B37F */  sq         $s3, 0x100($sp)
    /* 10DD90 0020CE10 E000B17F */  sq         $s1, 0xE0($sp)
    /* 10DD94 0020CE14 10004010 */  beqz       $v0, .L0020CE58
    /* 10DD98 0020CE18 D000B07F */   sq        $s0, 0xD0($sp)
    /* 10DD9C 0020CE1C 1400023C */  lui        $v0, %hi(D_0013DE60)
    /* 10DDA0 0020CE20 60DE4224 */  addiu      $v0, $v0, %lo(D_0013DE60)
    /* 10DDA4 0020CE24 21104202 */  addu       $v0, $s2, $v0
    /* 10DDA8 0020CE28 00004390 */  lbu        $v1, 0x0($v0)
    /* 10DDAC 0020CE2C 0A006010 */  beqz       $v1, .L0020CE58
    /* 10DDB0 0020CE30 1A00023C */   lui       $v0, %hi(D_001A2F40)
    /* 10DDB4 0020CE34 80181200 */  sll        $v1, $s2, 2
    /* 10DDB8 0020CE38 402F4224 */  addiu      $v0, $v0, %lo(D_001A2F40)
    /* 10DDBC 0020CE3C 1A00043C */  lui        $a0, %hi(D_001A01F0)
    /* 10DDC0 0020CE40 21186200 */  addu       $v1, $v1, $v0
    /* 10DDC4 0020CE44 F0018524 */  addiu      $a1, $a0, %lo(D_001A01F0)
    /* 10DDC8 0020CE48 0000628C */  lw         $v0, 0x0($v1)
    /* 10DDCC 0020CE4C 2DB08000 */  daddu      $s6, $a0, $zero
    /* 10DDD0 0020CE50 05000010 */  b          .L0020CE68
    /* 10DDD4 0020CE54 2000A2AC */   sw        $v0, 0x20($a1)
.align 2
  .L0020CE58:
    /* 10DDD8 0020CE58 1A00023C */  lui        $v0, %hi(D_001A01F0)
    /* 10DDDC 0020CE5C F0014324 */  addiu      $v1, $v0, %lo(D_001A01F0)
    /* 10DDE0 0020CE60 2DB04000 */  daddu      $s6, $v0, $zero
    /* 10DDE4 0020CE64 200060AC */  sw         $zero, 0x20($v1)
.align 2
  .L0020CE68:
    /* 10DDE8 0020CE68 1400023C */  lui        $v0, %hi(D_0013F450)
    /* 10DDEC 0020CE6C 00088044 */  mtc1       $zero, $f1
    /* 10DDF0 0020CE70 50F44324 */  addiu      $v1, $v0, %lo(D_0013F450)
    /* 10DDF4 0020CE74 880060C4 */  lwc1       $f0, 0x88($v1)
    /* 10DDF8 0020CE78 32000146 */  c.eq.s     $f0, $f1
    /* 10DDFC 0020CE7C 00000000 */  nop
    /* 10DE00 0020CE80 22000145 */  bc1t       .L0020CF0C
    /* 10DE04 0020CE84 1A00023C */   lui       $v0, %hi(D_001A02F4)
    /* 10DE08 0020CE88 1600023C */  lui        $v0, %hi(D_0015EE84)
    /* 10DE0C 0020CE8C 84EE428C */  lw         $v0, %lo(D_0015EE84)($v0)
    /* 10DE10 0020CE90 1E004216 */  bne        $s2, $v0, .L0020CF0C
    /* 10DE14 0020CE94 1A00023C */   lui       $v0, %hi(D_001A02F4)
    /* 10DE18 0020CE98 1B00C010 */  beqz       $a2, .L0020CF08
    /* 10DE1C 0020CE9C 2091828F */   lw        $v0, -0x6EE0($gp)
    /* 10DE20 0020CEA0 64004626 */  addiu      $a2, $s2, 0x64
    /* 10DE24 0020CEA4 84006DC4 */  lwc1       $f13, 0x84($v1)
    /* 10DE28 0020CEA8 C000A427 */  addiu      $a0, $sp, 0xC0
    /* 10DE2C 0020CEAC 80006CC4 */  lwc1       $f12, 0x80($v1)
    /* 10DE30 0020CEB0 0A304202 */  movz       $a2, $s2, $v0
    /* 10DE34 0020CEB4 0E23080C */  jal        func_00208C38
    /* 10DE38 0020CEB8 C400A527 */   addiu     $a1, $sp, 0xC4
    /* 10DE3C 0020CEBC 8045013C */  lui        $at, (0x45800000 >> 16)
    /* 10DE40 0020CEC0 00108144 */  mtc1       $at, $f2
    /* 10DE44 0020CEC4 80101200 */  sll        $v0, $s2, 2
    /* 10DE48 0020CEC8 C000A1C7 */  lwc1       $f1, 0xC0($sp)
    /* 10DE4C 0020CECC F001C426 */  addiu      $a0, $s6, %lo(D_001A01F0)
    /* 10DE50 0020CED0 C400A0C7 */  lwc1       $f0, 0xC4($sp)
    /* 10DE54 0020CED4 21288200 */  addu       $a1, $a0, $v0
    /* 10DE58 0020CED8 42080246 */  mul.s      $f1, $f1, $f2
    /* 10DE5C 0020CEDC 2D20A000 */  daddu      $a0, $a1, $zero
    /* 10DE60 0020CEE0 02000246 */  mul.s      $f0, $f0, $f2
    /* 10DE64 0020CEE4 A4080046 */  .word      0x460008A4                    # cvt.w.s    $f2, $f1 # 00000000 <InstrIdType: CPU_COP1_FPUS>
    /* 10DE68 0020CEE8 00100244 */  mfc1       $v0, $f2
    /* 10DE6C 0020CEEC 64000046 */  .word      0x46000064                    # cvt.w.s    $f1, $f0 # 00000000 <InstrIdType: CPU_COP1_FPUS>
    /* 10DE70 0020CEF0 00080344 */  mfc1       $v1, $f1
    /* 10DE74 0020CEF4 00140200 */  sll        $v0, $v0, 16
    /* 10DE78 0020CEF8 0401A2AC */  sw         $v0, 0x104($a1)
    /* 10DE7C 0020CEFC 001C0300 */  sll        $v1, $v1, 16
    /* 10DE80 0020CF00 09000010 */  b          .L0020CF28
    /* 10DE84 0020CF04 540183AC */   sw        $v1, 0x154($a0)
.align 2
  .L0020CF08:
    /* 10DE88 0020CF08 1A00023C */  lui        $v0, %hi(D_001A02F4)
.align 2
  .L0020CF0C:
    /* 10DE8C 0020CF0C F4024224 */  addiu      $v0, $v0, %lo(D_001A02F4)
    /* 10DE90 0020CF10 06004014 */  bnez       $v0, .L0020CF2C
    /* 10DE94 0020CF14 F001C326 */   addiu     $v1, $s6, %lo(D_001A01F0)
    /* 10DE98 0020CF18 80181200 */  sll        $v1, $s2, 2
    /* 10DE9C 0020CF1C 0008023C */  lui        $v0, (0x8000000 >> 16)
    /* 10DEA0 0020CF20 500062AC */  sw         $v0, 0x50($v1)
    /* 10DEA4 0020CF24 000062AC */  sw         $v0, 0x0($v1)
.align 2
  .L0020CF28:
    /* 10DEA8 0020CF28 F001C326 */  addiu      $v1, $s6, %lo(D_001A01F0)
.align 2
  .L0020CF2C:
    /* 10DEAC 0020CF2C 2000628C */  lw         $v0, 0x20($v1)
    /* 10DEB0 0020CF30 F8004010 */  beqz       $v0, .L0020D314
    /* 10DEB4 0020CF34 6001BF7B */   lq        $ra, 0x160($sp)
    /* 10DEB8 0020CF38 04004294 */  lhu        $v0, 0x4($v0)
    /* 10DEBC 0020CF3C 04004230 */  andi       $v0, $v0, 0x4
    /* 10DEC0 0020CF40 7B004014 */  bnez       $v0, .L0020D130
    /* 10DEC4 0020CF44 F001C426 */   addiu     $a0, $s6, %lo(D_001A01F0)
    /* 10DEC8 0020CF48 1400023C */  lui        $v0, %hi(D_0013D6B8)
    /* 10DECC 0020CF4C 2DA06000 */  daddu      $s4, $v1, $zero
    /* 10DED0 0020CF50 B8D65524 */  addiu      $s5, $v0, %lo(D_0013D6B8)
    /* 10DED4 0020CF54 2D980000 */  daddu      $s3, $zero, $zero
    /* 10DED8 0020CF58 0800B726 */  addiu      $s7, $s5, 0x8
    /* 10DEDC 0020CF5C 2000828E */  lw         $v0, 0x20($s4)
.align 2
  .L0020CF60:
    /* 10DEE0 0020CF60 FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 10DEE4 0020CF64 21805300 */  addu       $s0, $v0, $s3
    /* 10DEE8 0020CF68 00000486 */  lh         $a0, 0x0($s0)
    /* 10DEEC 0020CF6C 07008314 */  bne        $a0, $v1, .L0020CF8C
    /* 10DEF0 0020CF70 FEFF0224 */   addiu     $v0, $zero, -0x2
    /* 10DEF4 0020CF74 703E013C */  lui        $at, (0x3E700000 >> 16)
    /* 10DEF8 0020CF78 00008144 */  mtc1       $at, $f0
    /* 10DEFC 0020CF7C 9A3E013C */  lui        $at, (0x3E9A0000 >> 16)
    /* 10DF00 0020CF80 00088144 */  mtc1       $at, $f1
    /* 10DF04 0020CF84 3A000010 */  b          .L0020D070
    /* 10DF08 0020CF88 180000E6 */   swc1      $f0, 0x18($s0)
.align 2
  .L0020CF8C:
    /* 10DF0C 0020CF8C 07008214 */  bne        $a0, $v0, .L0020CFAC
    /* 10DF10 0020CF90 FDFF0224 */   addiu     $v0, $zero, -0x3
    /* 10DF14 0020CF94 0A3F013C */  lui        $at, (0x3F0A0000 >> 16)
    /* 10DF18 0020CF98 00008144 */  mtc1       $at, $f0
    /* 10DF1C 0020CF9C BB3E013C */  lui        $at, (0x3EBB0000 >> 16)
    /* 10DF20 0020CFA0 00088144 */  mtc1       $at, $f1
    /* 10DF24 0020CFA4 32000010 */  b          .L0020D070
    /* 10DF28 0020CFA8 180000E6 */   swc1      $f0, 0x18($s0)
.align 2
  .L0020CFAC:
    /* 10DF2C 0020CFAC 07008214 */  bne        $a0, $v0, .L0020CFCC
    /* 10DF30 0020CFB0 FCFF0224 */   addiu     $v0, $zero, -0x4
    /* 10DF34 0020CFB4 153F013C */  lui        $at, (0x3F150000 >> 16)
    /* 10DF38 0020CFB8 00008144 */  mtc1       $at, $f0
    /* 10DF3C 0020CFBC 303F013C */  lui        $at, (0x3F300000 >> 16)
    /* 10DF40 0020CFC0 00088144 */  mtc1       $at, $f1
    /* 10DF44 0020CFC4 2A000010 */  b          .L0020D070
    /* 10DF48 0020CFC8 180000E6 */   swc1      $f0, 0x18($s0)
.align 2
  .L0020CFCC:
    /* 10DF4C 0020CFCC 09008214 */  bne        $a0, $v0, .L0020CFF4
    /* 10DF50 0020CFD0 FBFF0224 */   addiu     $v0, $zero, -0x5
    /* 10DF54 0020CFD4 383F013C */  lui        $at, (0x3F388000 >> 16)
    /* 10DF58 0020CFD8 00802134 */  ori        $at, $at, (0x3F388000 & 0xFFFF)
    /* 10DF5C 0020CFDC 00008144 */  mtc1       $at, $f0
    /* 10DF60 0020CFE0 3A3F013C */  lui        $at, (0x3F3A8000 >> 16)
    /* 10DF64 0020CFE4 00802134 */  ori        $at, $at, (0x3F3A8000 & 0xFFFF)
    /* 10DF68 0020CFE8 00088144 */  mtc1       $at, $f1
    /* 10DF6C 0020CFEC 20000010 */  b          .L0020D070
    /* 10DF70 0020CFF0 180000E6 */   swc1      $f0, 0x18($s0)
.align 2
  .L0020CFF4:
    /* 10DF74 0020CFF4 07008214 */  bne        $a0, $v0, .L0020D014
    /* 10DF78 0020CFF8 F9FF0224 */   addiu     $v0, $zero, -0x7
    /* 10DF7C 0020CFFC C53E013C */  lui        $at, (0x3EC50000 >> 16)
    /* 10DF80 0020D000 00008144 */  mtc1       $at, $f0
    /* 10DF84 0020D004 CB3E013C */  lui        $at, (0x3ECB0000 >> 16)
    /* 10DF88 0020D008 00088144 */  mtc1       $at, $f1
    /* 10DF8C 0020D00C 18000010 */  b          .L0020D070
    /* 10DF90 0020D010 180000E6 */   swc1      $f0, 0x18($s0)
.align 2
  .L0020D014:
    /* 10DF94 0020D014 07008214 */  bne        $a0, $v0, .L0020D034
    /* 10DF98 0020D018 F8FF0224 */   addiu     $v0, $zero, -0x8
    /* 10DF9C 0020D01C 5E3F013C */  lui        $at, (0x3F5E0000 >> 16)
    /* 10DFA0 0020D020 00008144 */  mtc1       $at, $f0
    /* 10DFA4 0020D024 6C3E013C */  lui        $at, (0x3E6C0000 >> 16)
    /* 10DFA8 0020D028 00088144 */  mtc1       $at, $f1
    /* 10DFAC 0020D02C 10000010 */  b          .L0020D070
    /* 10DFB0 0020D030 180000E6 */   swc1      $f0, 0x18($s0)
.align 2
  .L0020D034:
    /* 10DFB4 0020D034 07008214 */  bne        $a0, $v0, .L0020D054
    /* 10DFB8 0020D038 F7FF0224 */   addiu     $v0, $zero, -0x9
    /* 10DFBC 0020D03C F63E013C */  lui        $at, (0x3EF60000 >> 16)
    /* 10DFC0 0020D040 00008144 */  mtc1       $at, $f0
    /* 10DFC4 0020D044 123F013C */  lui        $at, (0x3F120000 >> 16)
    /* 10DFC8 0020D048 00088144 */  mtc1       $at, $f1
    /* 10DFCC 0020D04C 08000010 */  b          .L0020D070
    /* 10DFD0 0020D050 180000E6 */   swc1      $f0, 0x18($s0)
.align 2
  .L0020D054:
    /* 10DFD4 0020D054 08008214 */  bne        $a0, $v0, .L0020D078
    /* 10DFD8 0020D058 8481828F */   lw        $v0, -0x7E7C($gp)
    /* 10DFDC 0020D05C 203F013C */  lui        $at, (0x3F200000 >> 16)
    /* 10DFE0 0020D060 00008144 */  mtc1       $at, $f0
    /* 10DFE4 0020D064 393F013C */  lui        $at, (0x3F390000 >> 16)
    /* 10DFE8 0020D068 00088144 */  mtc1       $at, $f1
    /* 10DFEC 0020D06C 180000E6 */  swc1       $f0, 0x18($s0)
.align 2
  .L0020D070:
    /* 10DFF0 0020D070 27000010 */  b          .L0020D110
    /* 10DFF4 0020D074 1C0001E6 */   swc1      $f1, 0x1C($s0)
.align 2
  .L0020D078:
    /* 10DFF8 0020D078 16004216 */  bne        $s2, $v0, .L0020D0D4
    /* 10DFFC 0020D07C 00110400 */   sll       $v0, $a0, 4
    /* 10E000 0020D080 1A00033C */  lui        $v1, %hi(D_00199578)
    /* 10E004 0020D084 80100400 */  sll        $v0, $a0, 2
    /* 10E008 0020D088 78957124 */  addiu      $s1, $v1, %lo(D_00199578)
    /* 10E00C 0020D08C 21105100 */  addu       $v0, $v0, $s1
    /* 10E010 0020D090 0000428C */  lw         $v0, 0x0($v0)
    /* 10E014 0020D094 1E004010 */  beqz       $v0, .L0020D110
    /* 10E018 0020D098 18000426 */   addiu     $a0, $s0, 0x18
    /* 10E01C 0020D09C 14004DC4 */  lwc1       $f13, 0x14($v0)
    /* 10E020 0020D0A0 10004CC4 */  lwc1       $f12, 0x10($v0)
    /* 10E024 0020D0A4 1C000526 */  addiu      $a1, $s0, 0x1C
    /* 10E028 0020D0A8 0E23080C */  jal        func_00208C38
    /* 10E02C 0020D0AC 2D304002 */   daddu     $a2, $s2, $zero
    /* 10E030 0020D0B0 00000386 */  lh         $v1, 0x0($s0)
    /* 10E034 0020D0B4 2000848E */  lw         $a0, 0x20($s4)
    /* 10E038 0020D0B8 80180300 */  sll        $v1, $v1, 2
    /* 10E03C 0020D0BC 21187100 */  addu       $v1, $v1, $s1
    /* 10E040 0020D0C0 21206402 */  addu       $a0, $s3, $a0
    /* 10E044 0020D0C4 0000628C */  lw         $v0, 0x0($v1)
    /* 10E048 0020D0C8 480040C4 */  lwc1       $f0, 0x48($v0)
    /* 10E04C 0020D0CC 10000010 */  b          .L0020D110
    /* 10E050 0020D0D0 200080E4 */   swc1      $f0, 0x20($a0)
.align 2
  .L0020D0D4:
    /* 10E054 0020D0D4 1C000526 */  addiu      $a1, $s0, 0x1C
    /* 10E058 0020D0D8 2118A202 */  addu       $v1, $s5, $v0
    /* 10E05C 0020D0DC 18000426 */  addiu      $a0, $s0, 0x18
    /* 10E060 0020D0E0 21105500 */  addu       $v0, $v0, $s5
    /* 10E064 0020D0E4 04006DC4 */  lwc1       $f13, 0x4($v1)
    /* 10E068 0020D0E8 00004CC4 */  lwc1       $f12, 0x0($v0)
    /* 10E06C 0020D0EC 0E23080C */  jal        func_00208C38
    /* 10E070 0020D0F0 2D304002 */   daddu     $a2, $s2, $zero
    /* 10E074 0020D0F4 00000286 */  lh         $v0, 0x0($s0)
    /* 10E078 0020D0F8 2000838E */  lw         $v1, 0x20($s4)
    /* 10E07C 0020D0FC 00110200 */  sll        $v0, $v0, 4
    /* 10E080 0020D100 21105700 */  addu       $v0, $v0, $s7
    /* 10E084 0020D104 21186302 */  addu       $v1, $s3, $v1
    /* 10E088 0020D108 000040C4 */  lwc1       $f0, 0x0($v0)
    /* 10E08C 0020D10C 200060E4 */  swc1       $f0, 0x20($v1)
.align 2
  .L0020D110:
    /* 10E090 0020D110 2000838E */  lw         $v1, 0x20($s4)
    /* 10E094 0020D114 28007326 */  addiu      $s3, $s3, 0x28
    /* 10E098 0020D118 21186302 */  addu       $v1, $s3, $v1
    /* 10E09C 0020D11C 04006294 */  lhu        $v0, 0x4($v1)
    /* 10E0A0 0020D120 04004230 */  andi       $v0, $v0, 0x4
    /* 10E0A4 0020D124 8EFF4050 */  beql       $v0, $zero, .L0020CF60
    /* 10E0A8 0020D128 2000828E */   lw        $v0, 0x20($s4)
    /* 10E0AC 0020D12C F001C426 */  addiu      $a0, $s6, %lo(D_001A01F0)
.align 2
  .L0020D130:
    /* 10E0B0 0020D130 2000838C */  lw         $v1, 0x20($a0)
    /* 10E0B4 0020D134 04006294 */  lhu        $v0, 0x4($v1)
    /* 10E0B8 0020D138 04004230 */  andi       $v0, $v0, 0x4
    /* 10E0BC 0020D13C 74004014 */  bnez       $v0, .L0020D310
    /* 10E0C0 0020D140 2D280000 */   daddu     $a1, $zero, $zero
    /* 10E0C4 0020D144 2DF08000 */  daddu      $fp, $a0, $zero
    /* 10E0C8 0020D148 28001524 */  addiu      $s5, $zero, 0x28
    /* 10E0CC 0020D14C 04001724 */  addiu      $s7, $zero, 0x4
    /* 10E0D0 0020D150 1818B500 */  mult       $v1, $a1, $s5
    /* 10E0D4 0020D154 00000000 */  nop
.align 2
  .L0020D158:
    /* 10E0D8 0020D158 2000C28F */  lw         $v0, 0x20($fp)
    /* 10E0DC 0020D15C FFFF0424 */  addiu      $a0, $zero, -0x1
    /* 10E0E0 0020D160 21804300 */  addu       $s0, $v0, $v1
    /* 10E0E4 0020D164 04000296 */  lhu        $v0, 0x4($s0)
    /* 10E0E8 0020D168 02000386 */  lh         $v1, 0x2($s0)
    /* 10E0EC 0020D16C EFFF4230 */  andi       $v0, $v0, 0xFFEF
    /* 10E0F0 0020D170 240000AE */  sw         $zero, 0x24($s0)
    /* 10E0F4 0020D174 03006414 */  bne        $v1, $a0, .L0020D184
    /* 10E0F8 0020D178 040002A6 */   sh        $v0, 0x4($s0)
    /* 10E0FC 0020D17C 09000010 */  b          .L0020D1A4
    /* 10E100 0020D180 01000224 */   addiu     $v0, $zero, 0x1
.align 2
  .L0020D184:
    /* 10E104 0020D184 18187500 */  mult       $v1, $v1, $s5
    /* 10E108 0020D188 1A00023C */  lui        $v0, %hi(D_001A2F90)
    /* 10E10C 0020D18C 902F4224 */  addiu      $v0, $v0, %lo(D_001A2F90)
    /* 10E110 0020D190 1000448C */  lw         $a0, 0x10($v0)
    /* 10E114 0020D194 21186400 */  addu       $v1, $v1, $a0
    /* 10E118 0020D198 24006284 */  lh         $v0, 0x24($v1)
    /* 10E11C 0020D19C 01004238 */  xori       $v0, $v0, 0x1
    /* 10E120 0020D1A0 0100422C */  sltiu      $v0, $v0, 0x1
.align 2
  .L0020D1A4:
    /* 10E124 0020D1A4 240002AE */  sw         $v0, 0x24($s0)
    /* 10E128 0020D1A8 04000296 */  lhu        $v0, 0x4($s0)
    /* 10E12C 0020D1AC 00104230 */  andi       $v0, $v0, 0x1000
    /* 10E130 0020D1B0 0A004010 */  beqz       $v0, .L0020D1DC
    /* 10E134 0020D1B4 1400033C */   lui       $v1, %hi(D_0013D6C4)
    /* 10E138 0020D1B8 00000286 */  lh         $v0, 0x0($s0)
    /* 10E13C 0020D1BC C4D66324 */  addiu      $v1, $v1, %lo(D_0013D6C4)
    /* 10E140 0020D1C0 00110200 */  sll        $v0, $v0, 4
    /* 10E144 0020D1C4 21104300 */  addu       $v0, $v0, $v1
    /* 10E148 0020D1C8 0000438C */  lw         $v1, 0x0($v0)
    /* 10E14C 0020D1CC 01006338 */  xori       $v1, $v1, 0x1
    /* 10E150 0020D1D0 01006330 */  andi       $v1, $v1, 0x1
    /* 10E154 0020D1D4 01006054 */  bnel       $v1, $zero, .L0020D1DC
    /* 10E158 0020D1D8 240000AE */   sw        $zero, 0x24($s0)
.align 2
  .L0020D1DC:
    /* 10E15C 0020D1DC 1820B500 */  mult       $a0, $a1, $s5
    /* 10E160 0020D1E0 2000C38F */  lw         $v1, 0x20($fp)
    /* 10E164 0020D1E4 21188300 */  addu       $v1, $a0, $v1
    /* 10E168 0020D1E8 0A006284 */  lh         $v0, 0xA($v1)
    /* 10E16C 0020D1EC 40004010 */  beqz       $v0, .L0020D2F0
    /* 10E170 0020D1F0 0100B424 */   addiu     $s4, $a1, 0x1
    /* 10E174 0020D1F4 04006294 */  lhu        $v0, 0x4($v1)
    /* 10E178 0020D1F8 2D20A000 */  daddu      $a0, $a1, $zero
    /* 10E17C 0020D1FC 2D28A003 */  daddu      $a1, $sp, $zero
    /* 10E180 0020D200 2D900000 */  daddu      $s2, $zero, $zero
    /* 10E184 0020D204 10004234 */  ori        $v0, $v0, 0x10
    /* 10E188 0020D208 01001624 */  addiu      $s6, $zero, 0x1
    /* 10E18C 0020D20C AC22080C */  jal        func_00208AB0
    /* 10E190 0020D210 040062A4 */   sh        $v0, 0x4($v1)
    /* 10E194 0020D214 A000A427 */  addiu      $a0, $sp, 0xA0
    /* 10E198 0020D218 2D280000 */  daddu      $a1, $zero, $zero
    /* 10E19C 0020D21C FF54040C */  jal        func_001153FC
    /* 10E1A0 0020D220 18000624 */   addiu     $a2, $zero, 0x18
    /* 10E1A4 0020D224 10000396 */  lhu        $v1, 0x10($s0)
    /* 10E1A8 0020D228 0F000824 */  addiu      $t0, $zero, 0xF
    /* 10E1AC 0020D22C 8000A427 */  addiu      $a0, $sp, 0x80
    /* 10E1B0 0020D230 FF800534 */  ori        $a1, $zero, 0x80FF
    /* 10E1B4 0020D234 382C0500 */  dsll       $a1, $a1, 16
    /* 10E1B8 0020D238 88A8A534 */  ori        $a1, $a1, 0xA888
    /* 10E1BC 0020D23C A200A3A7 */  sh         $v1, 0xA2($sp)
    /* 10E1C0 0020D240 2D30A003 */  daddu      $a2, $sp, $zero
    /* 10E1C4 0020D244 0E000296 */  lhu        $v0, 0xE($s0)
    /* 10E1C8 0020D248 B000A8A7 */  sh         $t0, 0xB0($sp)
    /* 10E1CC 0020D24C A600A2A7 */  sh         $v0, 0xA6($sp)
    /* 10E1D0 0020D250 A800B7A7 */  sh         $s7, 0xA8($sp)
    /* 10E1D4 0020D254 AA00B7A7 */  sh         $s7, 0xAA($sp)
    /* 10E1D8 0020D258 B200B7A7 */  sh         $s7, 0xB2($sp)
    /* 10E1DC 0020D25C A700A86B */  ldl        $t0, 0xA7($sp)
    /* 10E1E0 0020D260 A000A86F */  ldr        $t0, 0xA0($sp)
    /* 10E1E4 0020D264 AF00A96B */  ldl        $t1, 0xAF($sp)
    /* 10E1E8 0020D268 A800A96F */  ldr        $t1, 0xA8($sp)
    /* 10E1EC 0020D26C B700A26B */  ldl        $v0, 0xB7($sp)
    /* 10E1F0 0020D270 B000A26F */  ldr        $v0, 0xB0($sp)
    /* 10E1F4 0020D274 8700A8B3 */  sdl        $t0, 0x87($sp)
    /* 10E1F8 0020D278 8000A8B7 */  sdr        $t0, 0x80($sp)
    /* 10E1FC 0020D27C 8F00A9B3 */  sdl        $t1, 0x8F($sp)
    /* 10E200 0020D280 8800A9B7 */  sdr        $t1, 0x88($sp)
    /* 10E204 0020D284 9700A2B3 */  sdl        $v0, 0x97($sp)
    /* 10E208 0020D288 9000A2B7 */  sdr        $v0, 0x90($sp)
    /* 10E20C 0020D28C 74DD070C */  jal        func_001F75D0
    /* 10E210 0020D290 FFFF0724 */   addiu     $a3, $zero, -0x1
    /* 10E214 0020D294 8E00A297 */  lhu        $v0, 0x8E($sp)
    /* 10E218 0020D298 8000B327 */  addiu      $s3, $sp, 0x80
    /* 10E21C 0020D29C 08004224 */  addiu      $v0, $v0, 0x8
    /* 10E220 0020D2A0 100002A6 */  sh         $v0, 0x10($s0)
    /* 10E224 0020D2A4 8E00B187 */  lh         $s1, 0x8E($sp)
    /* 10E228 0020D2A8 8600A297 */  lhu        $v0, 0x86($sp)
    /* 10E22C 0020D2AC 00000000 */  nop
.align 2
  .L0020D2B0:
    /* 10E230 0020D2B0 2D206002 */  daddu      $a0, $s3, $zero
    /* 10E234 0020D2B4 FF800534 */  ori        $a1, $zero, 0x80FF
    /* 10E238 0020D2B8 382C0500 */  dsll       $a1, $a1, 16
    /* 10E23C 0020D2BC 88A8A534 */  ori        $a1, $a1, 0xA888
    /* 10E240 0020D2C0 2D30A003 */  daddu      $a2, $sp, $zero
    /* 10E244 0020D2C4 FCFF4224 */  addiu      $v0, $v0, -0x4
    /* 10E248 0020D2C8 FFFF0724 */  addiu      $a3, $zero, -0x1
    /* 10E24C 0020D2CC 74DD070C */  jal        func_001F75D0
    /* 10E250 0020D2D0 8600A2A7 */   sh        $v0, 0x86($sp)
    /* 10E254 0020D2D4 8E00A287 */  lh         $v0, 0x8E($sp)
    /* 10E258 0020D2D8 26105100 */  xor        $v0, $v0, $s1
    /* 10E25C 0020D2DC 0B90C202 */  movn       $s2, $s6, $v0
    /* 10E260 0020D2E0 F3FF4012 */  beqz       $s2, .L0020D2B0
    /* 10E264 0020D2E4 8600A297 */   lhu       $v0, 0x86($sp)
    /* 10E268 0020D2E8 04004224 */  addiu      $v0, $v0, 0x4
    /* 10E26C 0020D2EC 0E0002A6 */  sh         $v0, 0xE($s0)
.align 2
  .L0020D2F0:
    /* 10E270 0020D2F0 2D288002 */  daddu      $a1, $s4, $zero
    /* 10E274 0020D2F4 2000C48F */  lw         $a0, 0x20($fp)
    /* 10E278 0020D2F8 1810B500 */  mult       $v0, $a1, $s5
    /* 10E27C 0020D2FC 21104400 */  addu       $v0, $v0, $a0
    /* 10E280 0020D300 04004394 */  lhu        $v1, 0x4($v0)
    /* 10E284 0020D304 04006330 */  andi       $v1, $v1, 0x4
    /* 10E288 0020D308 93FF6010 */  beqz       $v1, .L0020D158
    /* 10E28C 0020D30C 1818B500 */   mult      $v1, $a1, $s5
.align 2
  .L0020D310:
    /* 10E290 0020D310 6001BF7B */  lq         $ra, 0x160($sp)
.align 2
  .L0020D314:
    /* 10E294 0020D314 5001BE7B */  lq         $fp, 0x150($sp)
    /* 10E298 0020D318 4001B77B */  lq         $s7, 0x140($sp)
    /* 10E29C 0020D31C 3001B67B */  lq         $s6, 0x130($sp)
    /* 10E2A0 0020D320 2001B57B */  lq         $s5, 0x120($sp)
    /* 10E2A4 0020D324 1001B47B */  lq         $s4, 0x110($sp)
    /* 10E2A8 0020D328 0001B37B */  lq         $s3, 0x100($sp)
    /* 10E2AC 0020D32C F000B27B */  lq         $s2, 0xF0($sp)
    /* 10E2B0 0020D330 E000B17B */  lq         $s1, 0xE0($sp)
    /* 10E2B4 0020D334 D000B07B */  lq         $s0, 0xD0($sp)
    /* 10E2B8 0020D338 0800E003 */  jr         $ra
    /* 10E2BC 0020D33C 7001BD27 */   addiu     $sp, $sp, 0x170
endlabel func_0020CDE0
    /* 10E2C0 0020D340 00000000 */  nop
    /* 10E2C4 0020D344 00000000 */  nop
