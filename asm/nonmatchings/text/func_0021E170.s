.align 3
nonmatching func_0021E170, 0x88

glabel func_0021E170
    /* 11F0F0 0021E170 1600083C */  lui        $t0, %hi(D_0015EF30)
    /* 11F0F4 0021E174 30EF088D */  lw         $t0, %lo(D_0015EF30)($t0)
    /* 11F0F8 0021E178 2D380000 */  daddu      $a3, $zero, $zero
    /* 11F0FC 0021E17C 15000019 */  blez       $t0, .L0021E1D4
    /* 11F100 0021E180 1D00053C */   lui       $a1, %hi(D_001CFFC0)
    /* 11F104 0021E184 1400023C */  lui        $v0, %hi(D_00141F08)
    /* 11F108 0021E188 1A00033C */  lui        $v1, %hi(D_00199812)
    /* 11F10C 0021E18C 081F4B24 */  addiu      $t3, $v0, %lo(D_00141F08)
    /* 11F110 0021E190 12986A24 */  addiu      $t2, $v1, %lo(D_00199812)
    /* 11F114 0021E194 01000924 */  addiu      $t1, $zero, 0x1
    /* 11F118 0021E198 C0FFA624 */  addiu      $a2, $a1, %lo(D_001CFFC0)
    /* 11F11C 0021E19C 00000000 */  nop
.align 2
  .L0021E1A0:
    /* 11F120 0021E1A0 0100E224 */  addiu      $v0, $a3, 0x1
    /* 11F124 0021E1A4 0200C9A4 */  sh         $t1, 0x2($a2)
    /* 11F128 0021E1A8 23180201 */  subu       $v1, $t0, $v0
    /* 11F12C 0021E1AC 2D384000 */  daddu      $a3, $v0, $zero
    /* 11F130 0021E1B0 21186B00 */  addu       $v1, $v1, $t3
    /* 11F134 0021E1B4 2A20E800 */  slt        $a0, $a3, $t0
    /* 11F138 0021E1B8 00006290 */  lbu        $v0, 0x0($v1)
    /* 11F13C 0021E1BC 80100200 */  sll        $v0, $v0, 2
    /* 11F140 0021E1C0 21104A00 */  addu       $v0, $v0, $t2
    /* 11F144 0021E1C4 00004394 */  lhu        $v1, 0x0($v0)
    /* 11F148 0021E1C8 0000C3A4 */  sh         $v1, 0x0($a2)
    /* 11F14C 0021E1CC F4FF8014 */  bnez       $a0, .L0021E1A0
    /* 11F150 0021E1D0 0C00C624 */   addiu     $a2, $a2, 0xC
.align 2
  .L0021E1D4:
    /* 11F154 0021E1D4 1600033C */  lui        $v1, %hi(D_0015EF30)
    /* 11F158 0021E1D8 30EF638C */  lw         $v1, %lo(D_0015EF30)($v1)
    /* 11F15C 0021E1DC 0C000424 */  addiu      $a0, $zero, 0xC
    /* 11F160 0021E1E0 C0FFA524 */  addiu      $a1, $a1, %lo(D_001CFFC0)
    /* 11F164 0021E1E4 2D100000 */  daddu      $v0, $zero, $zero
    /* 11F168 0021E1E8 18186400 */  mult       $v1, $v1, $a0
    /* 11F16C 0021E1EC 21186500 */  addu       $v1, $v1, $a1
    /* 11F170 0021E1F0 0800E003 */  jr         $ra
    /* 11F174 0021E1F4 000060A4 */   sh        $zero, 0x0($v1)
endlabel func_0021E170
