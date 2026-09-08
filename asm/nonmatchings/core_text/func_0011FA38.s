.align 3
nonmatching func_0011FA38, 0x12C

glabel func_0011FA38
    /* 209B8 0011FA38 0000838C */  lw         $v1, 0x0($a0)
    /* 209BC 0011FA3C 2D380000 */  daddu      $a3, $zero, $zero
    /* 209C0 0011FA40 0400888C */  lw         $t0, 0x4($a0)
    /* 209C4 0011FA44 0200622C */  sltiu      $v0, $v1, 0x2
    /* 209C8 0011FA48 06004010 */  beqz       $v0, .L0011FA64
    /* 209CC 0011FA4C 100085DC */   ld        $a1, 0x10($a0)
    /* 209D0 0011FA50 00800234 */  ori        $v0, $zero, 0x8000
    /* 209D4 0011FA54 3C110200 */  dsll32     $v0, $v0, 4
    /* 209D8 0011FA58 FF070724 */  addiu      $a3, $zero, 0x7FF
    /* 209DC 0011FA5C 2A000010 */  b          .L0011FB08
    /* 209E0 0011FA60 2528A200 */   or        $a1, $a1, $v0
.align 2
  .L0011FA64:
    /* 209E4 0011FA64 04006238 */  xori       $v0, $v1, 0x4
    /* 209E8 0011FA68 16004050 */  beql       $v0, $zero, .L0011FAC4
    /* 209EC 0011FA6C FF070724 */   addiu     $a3, $zero, 0x7FF
    /* 209F0 0011FA70 02006238 */  xori       $v0, $v1, 0x2
    /* 209F4 0011FA74 03004014 */  bnez       $v0, .L0011FA84
    /* 209F8 0011FA78 00000000 */   nop
    /* 209FC 0011FA7C 22000010 */  b          .L0011FB08
    /* 20A00 0011FA80 2D280000 */   daddu     $a1, $zero, $zero
.align 2
  .L0011FA84:
    /* 20A04 0011FA84 2000A010 */  beqz       $a1, .L0011FB08
    /* 20A08 0011FA88 00000000 */   nop
    /* 20A0C 0011FA8C 0800838C */  lw         $v1, 0x8($a0)
    /* 20A10 0011FA90 02FC6228 */  slti       $v0, $v1, -0x3FE
    /* 20A14 0011FA94 07004010 */  beqz       $v0, .L0011FAB4
    /* 20A18 0011FA98 02FC0224 */   addiu     $v0, $zero, -0x3FE
    /* 20A1C 0011FA9C 23104300 */  subu       $v0, $v0, $v1
    /* 20A20 0011FAA0 39004328 */  slti       $v1, $v0, 0x39
    /* 20A24 0011FAA4 17006014 */  bnez       $v1, .L0011FB04
    /* 20A28 0011FAA8 16284500 */   dsrlv     $a1, $a1, $v0
    /* 20A2C 0011FAAC 15000010 */  b          .L0011FB04
    /* 20A30 0011FAB0 2D280000 */   daddu     $a1, $zero, $zero
.align 2
  .L0011FAB4:
    /* 20A34 0011FAB4 00046228 */  slti       $v0, $v1, 0x400
    /* 20A38 0011FAB8 04004014 */  bnez       $v0, .L0011FACC
    /* 20A3C 0011FABC FF036724 */   addiu     $a3, $v1, 0x3FF
    /* 20A40 0011FAC0 FF070724 */  addiu      $a3, $zero, 0x7FF
.align 2
  .L0011FAC4:
    /* 20A44 0011FAC4 10000010 */  b          .L0011FB08
    /* 20A48 0011FAC8 2D280000 */   daddu     $a1, $zero, $zero
.align 2
  .L0011FACC:
    /* 20A4C 0011FACC 80000224 */  addiu      $v0, $zero, 0x80
    /* 20A50 0011FAD0 FF00A330 */  andi       $v1, $a1, 0xFF
    /* 20A54 0011FAD4 04006254 */  bnel       $v1, $v0, .L0011FAE8
    /* 20A58 0011FAD8 7F00A564 */   daddiu    $a1, $a1, 0x7F
    /* 20A5C 0011FADC 0001A330 */  andi       $v1, $a1, 0x100
    /* 20A60 0011FAE0 8000A264 */  daddiu     $v0, $a1, 0x80
    /* 20A64 0011FAE4 0B284300 */  movn       $a1, $v0, $v1
.align 2
  .L0011FAE8:
    /* 20A68 0011FAE8 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 20A6C 0011FAEC FA100200 */  dsrl       $v0, $v0, 3
    /* 20A70 0011FAF0 2B104500 */  sltu       $v0, $v0, $a1
    /* 20A74 0011FAF4 04004050 */  beql       $v0, $zero, .L0011FB08
    /* 20A78 0011FAF8 3A2A0500 */   dsrl      $a1, $a1, 8
    /* 20A7C 0011FAFC 7A280500 */  dsrl       $a1, $a1, 1
    /* 20A80 0011FB00 0100E724 */  addiu      $a3, $a3, 0x1
.align 2
  .L0011FB04:
    /* 20A84 0011FB04 3A2A0500 */  dsrl       $a1, $a1, 8
.align 2
  .L0011FB08:
    /* 20A88 0011FB08 F0FF0334 */  ori        $v1, $zero, 0xFFF0
    /* 20A8C 0011FB0C 3C1C0300 */  dsll32     $v1, $v1, 16
    /* 20A90 0011FB10 FFFF0224 */  addiu      $v0, $zero, -0x1
    /* 20A94 0011FB14 3A130200 */  dsrl       $v0, $v0, 12
    /* 20A98 0011FB18 2410A200 */  and        $v0, $a1, $v0
    /* 20A9C 0011FB1C 2430C300 */  and        $a2, $a2, $v1
    /* 20AA0 0011FB20 2530C200 */  or         $a2, $a2, $v0
    /* 20AA4 0011FB24 FF07E330 */  andi       $v1, $a3, 0x7FF
    /* 20AA8 0011FB28 0F80023C */  lui        $v0, (0x800FFFFF >> 16)
    /* 20AAC 0011FB2C FFFF4234 */  ori        $v0, $v0, (0x800FFFFF & 0xFFFF)
    /* 20AB0 0011FB30 38140200 */  dsll       $v0, $v0, 16
    /* 20AB4 0011FB34 FFFF4234 */  ori        $v0, $v0, 0xFFFF
    /* 20AB8 0011FB38 38140200 */  dsll       $v0, $v0, 16
    /* 20ABC 0011FB3C FFFF4234 */  ori        $v0, $v0, 0xFFFF
    /* 20AC0 0011FB40 3C1D0300 */  dsll32     $v1, $v1, 20
    /* 20AC4 0011FB44 2430C200 */  and        $a2, $a2, $v0
    /* 20AC8 0011FB48 FFFF0424 */  addiu      $a0, $zero, -0x1
    /* 20ACC 0011FB4C 7A200400 */  dsrl       $a0, $a0, 1
    /* 20AD0 0011FB50 2530C300 */  or         $a2, $a2, $v1
    /* 20AD4 0011FB54 FC170800 */  dsll32     $v0, $t0, 31
    /* 20AD8 0011FB58 2430C400 */  and        $a2, $a2, $a0
    /* 20ADC 0011FB5C 0800E003 */  jr         $ra
    /* 20AE0 0011FB60 2510C200 */   or        $v0, $a2, $v0
endlabel func_0011FA38
    /* 20AE4 0011FB64 00000000 */  nop
