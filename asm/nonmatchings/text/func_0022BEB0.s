.align 3
nonmatching func_0022BEB0, 0x2D4

glabel func_0022BEB0
    /* 12CE30 0022BEB0 B000BD27 */  addiu      $sp, $sp, 0xB0
    /* 12CE34 0022BEB4 00000000 */  nop
    /* 12CE38 0022BEB8 7000BD27 */  addiu      $sp, $sp, 0x70
    /* 12CE3C 0022BEBC 00000000 */  nop
    /* 12CE40 0022BEC0 9000BD27 */  addiu      $sp, $sp, 0x90
    /* 12CE44 0022BEC4 00000000 */  nop
    /* 12CE48 0022BEC8 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 12CE4C 0022BECC 00000000 */  nop
    /* 12CE50 0022BED0 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 12CE54 0022BED4 00000000 */  nop
    /* 12CE58 0022BED8 3000BD27 */  addiu      $sp, $sp, 0x30
    /* 12CE5C 0022BEDC 00000000 */  nop
    /* 12CE60 0022BEE0 4000BD27 */  addiu      $sp, $sp, 0x40
    /* 12CE64 0022BEE4 00000000 */  nop
    /* 12CE68 0022BEE8 B000BD27 */  addiu      $sp, $sp, 0xB0
    /* 12CE6C 0022BEEC 00000000 */  nop
    /* 12CE70 0022BEF0 A0FFBD27 */  addiu      $sp, $sp, -0x60
    /* 12CE74 0022BEF4 1600023C */  lui        $v0, %hi(D_0016055C)
    /* 12CE78 0022BEF8 5C05428C */  lw         $v0, %lo(D_0016055C)($v0)
    /* 12CE7C 0022BEFC 3000B27F */  sq         $s2, 0x30($sp)
    /* 12CE80 0022BF00 1E00043C */  lui        $a0, %hi(D_001D9A70)
    /* 12CE84 0022BF04 2000B17F */  sq         $s1, 0x20($sp)
    /* 12CE88 0022BF08 2D908000 */  daddu      $s2, $a0, $zero
    /* 12CE8C 0022BF0C 4000BF7F */  sq         $ra, 0x40($sp)
    /* 12CE90 0022BF10 709A8424 */  addiu      $a0, $a0, %lo(D_001D9A70)
    /* 12CE94 0022BF14 1000B07F */  sq         $s0, 0x10($sp)
    /* 12CE98 0022BF18 2D880000 */  daddu      $s1, $zero, $zero
    /* 12CE9C 0022BF1C 5000B4E7 */  swc1       $f20, 0x50($sp)
    /* 12CEA0 0022BF20 64E8070C */  jal        func_001FA190
    /* 12CEA4 0022BF24 040040A4 */   sh        $zero, 0x4($v0)
    /* 12CEA8 0022BF28 F0E6070C */  jal        func_001F9BC0
    /* 12CEAC 0022BF2C 2D20A003 */   daddu     $a0, $sp, $zero
    /* 12CEB0 0022BF30 1600033C */  lui        $v1, %hi(D_0016055C)
    /* 12CEB4 0022BF34 5C05638C */  lw         $v1, %lo(D_0016055C)($v1)
    /* 12CEB8 0022BF38 06006284 */  lh         $v0, 0x6($v1)
    /* 12CEBC 0022BF3C 8B004018 */  blez       $v0, .L0022C16C
    /* 12CEC0 0022BF40 4000BF7B */   lq        $ra, 0x40($sp)
    /* 12CEC4 0022BF44 80101100 */  sll        $v0, $s1, 2
.align 2
  .L0022BF48:
    /* 12CEC8 0022BF48 FFFF2526 */  addiu      $a1, $s1, -0x1
    /* 12CECC 0022BF4C 21106200 */  addu       $v0, $v1, $v0
    /* 12CED0 0022BF50 803F013C */  lui        $at, (0x3F800000 >> 16)
    /* 12CED4 0022BF54 00A08144 */  mtc1       $at, $f20
    /* 12CED8 0022BF58 2000438C */  lw         $v1, 0x20($v0)
    /* 12CEDC 0022BF5C 0500A42C */  sltiu      $a0, $a1, 0x5
    /* 12CEE0 0022BF60 45008010 */  beqz       $a0, .L0022C078
    /* 12CEE4 0022BF64 08007024 */   addiu     $s0, $v1, 0x8
    /* 12CEE8 0022BF68 1F00023C */  lui        $v0, %hi(jtbl_001E8C20)
    /* 12CEEC 0022BF6C 80180500 */  sll        $v1, $a1, 2
    /* 12CEF0 0022BF70 208C4224 */  addiu      $v0, $v0, %lo(jtbl_001E8C20)
    /* 12CEF4 0022BF74 21186200 */  addu       $v1, $v1, $v0
    /* 12CEF8 0022BF78 0000648C */  lw         $a0, 0x0($v1)
    /* 12CEFC 0022BF7C 08008000 */  jr         $a0
    /* 12CF00 0022BF80 00000000 */   nop
    /* 12CF04 0022BF84 A33C013C */  lui        $at, (0x3CA3D70A >> 16)
    /* 12CF08 0022BF88 0AD72134 */  ori        $at, $at, (0x3CA3D70A & 0xFFFF)
    /* 12CF0C 0022BF8C 00108144 */  mtc1       $at, $f2
    /* 12CF10 0022BF90 009881C7 */  lwc1       $f1, -0x6800($gp)
    /* 12CF14 0022BF94 0C3F013C */  lui        $at, (0x3F0CCCCD >> 16)
    /* 12CF18 0022BF98 CDCC2134 */  ori        $at, $at, (0x3F0CCCCD & 0xFFFF)
    /* 12CF1C 0022BF9C 00008144 */  mtc1       $at, $f0
    /* 12CF20 0022BFA0 0400A2E7 */  swc1       $f2, 0x4($sp)
    /* 12CF24 0022BFA4 4040013C */  lui        $at, (0x40400000 >> 16)
    /* 12CF28 0022BFA8 00A08144 */  mtc1       $at, $f20
    /* 12CF2C 0022BFAC 23000010 */  b          .L0022C03C
    /* 12CF30 0022BFB0 42080046 */   mul.s     $f1, $f1, $f0
    /* 12CF34 0022BFB4 A3BC013C */  lui        $at, (0xBCA3D70A >> 16)
    /* 12CF38 0022BFB8 0AD72134 */  ori        $at, $at, (0xBCA3D70A & 0xFFFF)
    /* 12CF3C 0022BFBC 00108144 */  mtc1       $at, $f2
    /* 12CF40 0022BFC0 009881C7 */  lwc1       $f1, -0x6800($gp)
    /* 12CF44 0022BFC4 193F013C */  lui        $at, (0x3F19999A >> 16)
    /* 12CF48 0022BFC8 9A992134 */  ori        $at, $at, (0x3F19999A & 0xFFFF)
    /* 12CF4C 0022BFCC 00008144 */  mtc1       $at, $f0
    /* 12CF50 0022BFD0 0400A2E7 */  swc1       $f2, 0x4($sp)
    /* 12CF54 0022BFD4 2040013C */  lui        $at, (0x40200000 >> 16)
    /* 12CF58 0022BFD8 00A08144 */  mtc1       $at, $f20
    /* 12CF5C 0022BFDC 17000010 */  b          .L0022C03C
    /* 12CF60 0022BFE0 42080046 */   mul.s     $f1, $f1, $f0
    /* 12CF64 0022BFE4 233C013C */  lui        $at, (0x3C23D70A >> 16)
    /* 12CF68 0022BFE8 0AD72134 */  ori        $at, $at, (0x3C23D70A & 0xFFFF)
    /* 12CF6C 0022BFEC 00108144 */  mtc1       $at, $f2
    /* 12CF70 0022BFF0 009881C7 */  lwc1       $f1, -0x6800($gp)
    /* 12CF74 0022BFF4 333F013C */  lui        $at, (0x3F333333 >> 16)
    /* 12CF78 0022BFF8 33332134 */  ori        $at, $at, (0x3F333333 & 0xFFFF)
    /* 12CF7C 0022BFFC 00008144 */  mtc1       $at, $f0
    /* 12CF80 0022C000 0400A2E7 */  swc1       $f2, 0x4($sp)
    /* 12CF84 0022C004 0040013C */  lui        $at, (0x40000000 >> 16)
    /* 12CF88 0022C008 00A08144 */  mtc1       $at, $f20
    /* 12CF8C 0022C00C 0B000010 */  b          .L0022C03C
    /* 12CF90 0022C010 42080046 */   mul.s     $f1, $f1, $f0
    /* 12CF94 0022C014 23BC013C */  lui        $at, (0xBC23D70A >> 16)
    /* 12CF98 0022C018 0AD72134 */  ori        $at, $at, (0xBC23D70A & 0xFFFF)
    /* 12CF9C 0022C01C 00108144 */  mtc1       $at, $f2
    /* 12CFA0 0022C020 009881C7 */  lwc1       $f1, -0x6800($gp)
    /* 12CFA4 0022C024 403F013C */  lui        $at, (0x3F400000 >> 16)
    /* 12CFA8 0022C028 00008144 */  mtc1       $at, $f0
    /* 12CFAC 0022C02C 0400A2E7 */  swc1       $f2, 0x4($sp)
    /* 12CFB0 0022C030 42080046 */  mul.s      $f1, $f1, $f0
    /* 12CFB4 0022C034 C03F013C */  lui        $at, (0x3FC00000 >> 16)
    /* 12CFB8 0022C038 00A08144 */  mtc1       $at, $f20
.align 2
  .L0022C03C:
    /* 12CFBC 0022C03C 000000C6 */  lwc1       $f0, 0x0($s0)
    /* 12CFC0 0022C040 00000146 */  add.s      $f0, $f0, $f1
    /* 12CFC4 0022C044 0E000010 */  b          .L0022C080
    /* 12CFC8 0022C048 000000E6 */   swc1      $f0, 0x0($s0)
    /* 12CFCC 0022C04C 009880C7 */  lwc1       $f0, -0x6800($gp)
    /* 12CFD0 0022C050 4C3F013C */  lui        $at, (0x3F4CCCCD >> 16)
    /* 12CFD4 0022C054 CDCC2134 */  ori        $at, $at, (0x3F4CCCCD & 0xFFFF)
    /* 12CFD8 0022C058 00108144 */  mtc1       $at, $f2
    /* 12CFDC 0022C05C 000001C6 */  lwc1       $f1, 0x0($s0)
    /* 12CFE0 0022C060 02000246 */  mul.s      $f0, $f0, $f2
    /* 12CFE4 0022C064 A03F013C */  lui        $at, (0x3FA00000 >> 16)
    /* 12CFE8 0022C068 00A08144 */  mtc1       $at, $f20
    /* 12CFEC 0022C06C 40080046 */  add.s      $f1, $f1, $f0
    /* 12CFF0 0022C070 03000010 */  b          .L0022C080
    /* 12CFF4 0022C074 000001E6 */   swc1      $f1, 0x0($s0)
.align 2
  .L0022C078:
    /* 12CFF8 0022C078 64E8070C */  jal        func_001FA190
    /* 12CFFC 0022C07C 709A4426 */   addiu     $a0, $s2, %lo(D_001D9A70)
.align 2
  .L0022C080:
    /* 12D000 0022C080 3000201A */  blez       $s1, .L0022C144
    /* 12D004 0022C084 10270624 */   addiu     $a2, $zero, 0x2710
    /* 12D008 0022C088 00089144 */  mtc1       $s1, $f1
    /* 12D00C 0022C08C 00000000 */  nop
    /* 12D010 0022C090 60088046 */  cvt.s.w    $f1, $f1
    /* 12D014 0022C094 FA44013C */  lui        $at, (0x44FA0000 >> 16)
    /* 12D018 0022C098 00108144 */  mtc1       $at, $f2
    /* 12D01C 0022C09C 000000C6 */  lwc1       $f0, 0x0($s0)
    /* 12D020 0022C0A0 243A013C */  lui        $at, (0x3A24B5BE >> 16)
    /* 12D024 0022C0A4 BEB52134 */  ori        $at, $at, (0x3A24B5BE & 0xFFFF)
    /* 12D028 0022C0A8 00208144 */  mtc1       $at, $f4
    /* 12D02C 0022C0AC 709A5026 */  addiu      $s0, $s2, %lo(D_001D9A70)
    /* 12D030 0022C0B0 42080246 */  mul.s      $f1, $f1, $f2
    /* 12D034 0022C0B4 4940013C */  lui        $at, (0x40490FDB >> 16)
    /* 12D038 0022C0B8 DB0F2134 */  ori        $at, $at, (0x40490FDB & 0xFFFF)
    /* 12D03C 0022C0BC 00188144 */  mtc1       $at, $f3
    /* 12D040 0022C0C0 0100C050 */  beql       $a2, $zero, .L0022C0C8
    /* 12D044 0022C0C4 CD010000 */   break     0, 7
.align 2
  .L0022C0C8:
    /* 12D048 0022C0C8 2D28A003 */  daddu      $a1, $sp, $zero
    /* 12D04C 0022C0CC 2D200002 */  daddu      $a0, $s0, $zero
    /* 12D050 0022C0D0 00000146 */  add.s      $f0, $f0, $f1
    /* 12D054 0022C0D4 64000046 */  .word      0x46000064                    # cvt.w.s    $f1, $f0 # 00000000 <InstrIdType: CPU_COP1_FPUS>
    /* 12D058 0022C0D8 00080244 */  mfc1       $v0, $f1
    /* 12D05C 0022C0DC 1A004600 */  div        $zero, $v0, $a2
    /* 12D060 0022C0E0 10180000 */  mfhi       $v1
    /* 12D064 0022C0E4 00008344 */  mtc1       $v1, $f0
    /* 12D068 0022C0E8 00000000 */  nop
    /* 12D06C 0022C0EC 20008046 */  cvt.s.w    $f0, $f0
    /* 12D070 0022C0F0 02000446 */  mul.s      $f0, $f0, $f4
    /* 12D074 0022C0F4 01000346 */  sub.s      $f0, $f0, $f3
    /* 12D078 0022C0F8 8EE8070C */  jal        func_001FA238
    /* 12D07C 0022C0FC 0800A0E7 */   swc1      $f0, 0x8($sp)
    /* 12D080 0022C100 2D200002 */  daddu      $a0, $s0, $zero
    /* 12D084 0022C104 2D280002 */  daddu      $a1, $s0, $zero
    /* 12D088 0022C108 12E7070C */  jal        func_001F9C48
    /* 12D08C 0022C10C 06A30046 */   mov.s     $f12, $f20
    /* 12D090 0022C110 10000426 */  addiu      $a0, $s0, 0x10
    /* 12D094 0022C114 06A30046 */  mov.s      $f12, $f20
    /* 12D098 0022C118 12E7070C */  jal        func_001F9C48
    /* 12D09C 0022C11C 2D288000 */   daddu     $a1, $a0, $zero
    /* 12D0A0 0022C120 20000426 */  addiu      $a0, $s0, 0x20
    /* 12D0A4 0022C124 06A30046 */  mov.s      $f12, $f20
    /* 12D0A8 0022C128 12E7070C */  jal        func_001F9C48
    /* 12D0AC 0022C12C 2D288000 */   daddu     $a1, $a0, $zero
    /* 12D0B0 0022C130 30001026 */  addiu      $s0, $s0, 0x30
    /* 12D0B4 0022C134 1600033C */  lui        $v1, %hi(D_00160560)
    /* 12D0B8 0022C138 60056324 */  addiu      $v1, $v1, %lo(D_00160560)
    /* 12D0BC 0022C13C 00006278 */  lq         $v0, 0x0($v1)
    /* 12D0C0 0022C140 0000027E */  sq         $v0, 0x0($s0)
.align 2
  .L0022C144:
    /* 12D0C4 0022C144 6AB2080C */  jal        func_0022C9A8
    /* 12D0C8 0022C148 2D202002 */   daddu     $a0, $s1, $zero
    /* 12D0CC 0022C14C 01003126 */  addiu      $s1, $s1, 0x1
    /* 12D0D0 0022C150 1600033C */  lui        $v1, %hi(D_0016055C)
    /* 12D0D4 0022C154 5C05638C */  lw         $v1, %lo(D_0016055C)($v1)
    /* 12D0D8 0022C158 06006284 */  lh         $v0, 0x6($v1)
    /* 12D0DC 0022C15C 2A102202 */  slt        $v0, $s1, $v0
    /* 12D0E0 0022C160 79FF4014 */  bnez       $v0, .L0022BF48
    /* 12D0E4 0022C164 80101100 */   sll       $v0, $s1, 2
    /* 12D0E8 0022C168 4000BF7B */  lq         $ra, 0x40($sp)
.align 2
  .L0022C16C:
    /* 12D0EC 0022C16C 3000B27B */  lq         $s2, 0x30($sp)
    /* 12D0F0 0022C170 2000B17B */  lq         $s1, 0x20($sp)
    /* 12D0F4 0022C174 1000B07B */  lq         $s0, 0x10($sp)
    /* 12D0F8 0022C178 5000B4C7 */  lwc1       $f20, 0x50($sp)
    /* 12D0FC 0022C17C 0800E003 */  jr         $ra
    /* 12D100 0022C180 6000BD27 */   addiu     $sp, $sp, 0x60
endlabel func_0022BEB0
    /* 12D104 0022C184 00000000 */  nop
