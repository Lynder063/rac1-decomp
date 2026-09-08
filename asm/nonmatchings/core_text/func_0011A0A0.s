.align 3
nonmatching func_0011A0A0, 0x5EC

glabel func_0011A0A0
    /* 1B020 0011A0A0 60FFBD27 */  addiu      $sp, $sp, -0xA0
    /* 1B024 0011A0A4 5000B3FF */  sd         $s3, 0x50($sp)
    /* 1B028 0011A0A8 2000B0FF */  sd         $s0, 0x20($sp)
    /* 1B02C 0011A0AC 2D98A000 */  daddu      $s3, $a1, $zero
    /* 1B030 0011A0B0 2D808000 */  daddu      $s0, $a0, $zero
    /* 1B034 0011A0B4 8000B6FF */  sd         $s6, 0x80($sp)
    /* 1B038 0011A0B8 9000BFFF */  sd         $ra, 0x90($sp)
    /* 1B03C 0011A0BC 7000B5FF */  sd         $s5, 0x70($sp)
    /* 1B040 0011A0C0 6000B4FF */  sd         $s4, 0x60($sp)
    /* 1B044 0011A0C4 4000B2FF */  sd         $s2, 0x40($sp)
    /* 1B048 0011A0C8 5876040C */  jal        func_0011D960
    /* 1B04C 0011A0CC 3000B1FF */   sd        $s1, 0x30($sp)
    /* 1B050 0011A0D0 2DB04000 */  daddu      $s6, $v0, $zero
    /* 1B054 0011A0D4 00000282 */  lb         $v0, 0x0($s0)
    /* 1B058 0011A0D8 5E014010 */  beqz       $v0, .L0011A654
    /* 1B05C 0011A0DC 00000392 */   lbu       $v1, 0x0($s0)
.align 2
  .L0011A0E0:
    /* 1B060 0011A0E0 00160300 */  sll        $v0, $v1, 24
    /* 1B064 0011A0E4 2DA00000 */  daddu      $s4, $zero, $zero
    /* 1B068 0011A0E8 03260200 */  sra        $a0, $v0, 24
    /* 1B06C 0011A0EC 25000224 */  addiu      $v0, $zero, 0x25
    /* 1B070 0011A0F0 4B018214 */  bne        $a0, $v0, .L0011A620
    /* 1B074 0011A0F4 2D380000 */   daddu     $a3, $zero, $zero
.align 2
  .L0011A0F8:
    /* 1B078 0011A0F8 01001226 */  addiu      $s2, $s0, 0x1
.align 2
  .L0011A0FC:
    /* 1B07C 0011A0FC 2D804002 */  daddu      $s0, $s2, $zero
.align 2
  .L0011A100:
    /* 1B080 0011A100 00000292 */  lbu        $v0, 0x0($s0)
    /* 1B084 0011A104 D0FF4224 */  addiu      $v0, $v0, -0x30
    /* 1B088 0011A108 00160200 */  sll        $v0, $v0, 24
    /* 1B08C 0011A10C 03260200 */  sra        $a0, $v0, 24
    /* 1B090 0011A110 4900832C */  sltiu      $v1, $a0, 0x49
    /* 1B094 0011A114 48016010 */  beqz       $v1, .L0011A638
    /* 1B098 0011A118 1500023C */   lui       $v0, %hi(jtbl_001528B0)
    /* 1B09C 0011A11C 80180400 */  sll        $v1, $a0, 2
    /* 1B0A0 0011A120 B0284224 */  addiu      $v0, $v0, %lo(jtbl_001528B0)
    /* 1B0A4 0011A124 21186200 */  addu       $v1, $v1, $v0
    /* 1B0A8 0011A128 0000648C */  lw         $a0, 0x0($v1)
    /* 1B0AC 0011A12C 08008000 */  jr         $a0
    /* 1B0B0 0011A130 00000000 */   nop
.align 2
  jlabel .L0011A134
    /* 1B0B4 0011A134 01004382 */  lb         $v1, 0x1($s2)
    /* 1B0B8 0011A138 D0FF6524 */  addiu      $a1, $v1, -0x30
    /* 1B0BC 0011A13C FF00A230 */  andi       $v0, $a1, 0xFF
    /* 1B0C0 0011A140 0A00422C */  sltiu      $v0, $v0, 0xA
    /* 1B0C4 0011A144 1D004010 */  beqz       $v0, .L0011A1BC
    /* 1B0C8 0011A148 02004682 */   lb        $a2, 0x2($s2)
    /* 1B0CC 0011A14C D0FFC224 */  addiu      $v0, $a2, -0x30
    /* 1B0D0 0011A150 0A00422C */  sltiu      $v0, $v0, 0xA
    /* 1B0D4 0011A154 09004010 */  beqz       $v0, .L0011A17C
    /* 1B0D8 0011A158 0A000324 */   addiu     $v1, $zero, 0xA
    /* 1B0DC 0011A15C 1F000424 */  addiu      $a0, $zero, 0x1F
    /* 1B0E0 0011A160 1818A300 */  mult       $v1, $a1, $v1
    /* 1B0E4 0011A164 02005026 */  addiu      $s0, $s2, 0x2
    /* 1B0E8 0011A168 D0FF6324 */  addiu      $v1, $v1, -0x30
    /* 1B0EC 0011A16C 21286600 */  addu       $a1, $v1, $a2
    /* 1B0F0 0011A170 2000A228 */  slti       $v0, $a1, 0x20
    /* 1B0F4 0011A174 02000010 */  b          .L0011A180
    /* 1B0F8 0011A178 0A288200 */   movz      $a1, $a0, $v0
.align 2
  .L0011A17C:
    /* 1B0FC 0011A17C 01005026 */  addiu      $s0, $s2, 0x1
.align 2
  .L0011A180:
    /* 1B100 0011A180 1F00A227 */  addiu      $v0, $sp, 0x1F
    /* 1B104 0011A184 DCFFA018 */  blez       $a1, .L0011A0F8
    /* 1B108 0011A188 23A04500 */   subu      $s4, $v0, $a1
    /* 1B10C 0011A18C 01001226 */  addiu      $s2, $s0, 0x1
.align 2
  .L0011A190:
    /* 1B110 0011A190 1F000224 */  addiu      $v0, $zero, 0x1F
    /* 1B114 0011A194 30000424 */  addiu      $a0, $zero, 0x30
    /* 1B118 0011A198 23104500 */  subu       $v0, $v0, $a1
    /* 1B11C 0011A19C 2118A203 */  addu       $v1, $sp, $v0
    /* 1B120 0011A1A0 FFFFA524 */  addiu      $a1, $a1, -0x1
    /* 1B124 0011A1A4 000064A0 */  sb         $a0, 0x0($v1)
    /* 1B128 0011A1A8 F9FFA01C */  bgtz       $a1, .L0011A190
    /* 1B12C 0011A1AC 00000000 */   nop
    /* 1B130 0011A1B0 D3FF0010 */  b          .L0011A100
    /* 1B134 0011A1B4 2D804002 */   daddu     $s0, $s2, $zero
.align 2
  jlabel .L0011A1B8
    /* 1B138 0011A1B8 6C000724 */  addiu      $a3, $zero, 0x6C
.align 2
  .L0011A1BC:
    /* 1B13C 0011A1BC CFFF0010 */  b          .L0011A0FC
    /* 1B140 0011A1C0 01005226 */   addiu     $s2, $s2, 0x1
.align 2
  jlabel .L0011A1C4
    /* 1B144 0011A1C4 FDFF0010 */  b          .L0011A1BC
    /* 1B148 0011A1C8 68000724 */   addiu     $a3, $zero, 0x68
.align 2
  jlabel .L0011A1CC
    /* 1B14C 0011A1CC 6C000224 */  addiu      $v0, $zero, 0x6C
    /* 1B150 0011A1D0 0400E214 */  bne        $a3, $v0, .L0011A1E4
    /* 1B154 0011A1D4 68000224 */   addiu     $v0, $zero, 0x68
    /* 1B158 0011A1D8 08007326 */  addiu      $s3, $s3, 0x8
    /* 1B15C 0011A1DC 06000010 */  b          .L0011A1F8
    /* 1B160 0011A1E0 F8FF71DE */   ld        $s1, -0x8($s3)
.align 2
  .L0011A1E4:
    /* 1B164 0011A1E4 0300E214 */  bne        $a3, $v0, .L0011A1F4
    /* 1B168 0011A1E8 08007326 */   addiu     $s3, $s3, 0x8
    /* 1B16C 0011A1EC 02000010 */  b          .L0011A1F8
    /* 1B170 0011A1F0 F8FF7196 */   lhu       $s1, -0x8($s3)
.align 2
  .L0011A1F4:
    /* 1B174 0011A1F4 F8FF719E */  lwu        $s1, -0x8($s3)
.align 2
  .L0011A1F8:
    /* 1B178 0011A1F8 1F00B027 */  addiu      $s0, $sp, 0x1F
    /* 1B17C 0011A1FC 06002016 */  bnez       $s1, .L0011A218
    /* 1B180 0011A200 1F00A0A3 */   sb        $zero, 0x1F($sp)
    /* 1B184 0011A204 30000224 */  addiu      $v0, $zero, 0x30
    /* 1B188 0011A208 1E00B027 */  addiu      $s0, $sp, 0x1E
    /* 1B18C 0011A20C 1E00A2A3 */  sb         $v0, 0x1E($sp)
    /* 1B190 0011A210 0B000010 */  b          .L0011A240
    /* 1B194 0011A214 01005226 */   addiu     $s2, $s2, 0x1
.align 2
  .L0011A218:
    /* 1B198 0011A218 01005226 */  addiu      $s2, $s2, 0x1
    /* 1B19C 0011A21C 00000000 */  nop
.align 2
  .L0011A220:
    /* 1B1A0 0011A220 07002232 */  andi       $v0, $s1, 0x7
    /* 1B1A4 0011A224 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* 1B1A8 0011A228 30004264 */  daddiu     $v0, $v0, 0x30
    /* 1B1AC 0011A22C FA881100 */  dsrl       $s1, $s1, 3
    /* 1B1B0 0011A230 FF004230 */  andi       $v0, $v0, 0xFF
    /* 1B1B4 0011A234 000002A2 */  sb         $v0, 0x0($s0)
    /* 1B1B8 0011A238 F9FF2016 */  bnez       $s1, .L0011A220
    /* 1B1BC 0011A23C 00000000 */   nop
.align 2
  .L0011A240:
    /* 1B1C0 0011A240 02008012 */  beqz       $s4, .L0011A24C
    /* 1B1C4 0011A244 2B109002 */   sltu      $v0, $s4, $s0
    /* 1B1C8 0011A248 0B808202 */  movn       $s0, $s4, $v0
.align 2
  .L0011A24C:
    /* 1B1CC 0011A24C 00000282 */  lb         $v0, 0x0($s0)
    /* 1B1D0 0011A250 FC004010 */  beqz       $v0, .L0011A644
    /* 1B1D4 0011A254 00000492 */   lbu       $a0, 0x0($s0)
    /* 1B1D8 0011A258 1300153C */  lui        $s5, %hi(D_0012FD00)
    /* 1B1DC 0011A25C 00000000 */  nop
.align 2
  .L0011A260:
    /* 1B1E0 0011A260 00260400 */  sll        $a0, $a0, 24
    /* 1B1E4 0011A264 00FDA28E */  lw         $v0, %lo(D_0012FD00)($s5)
    /* 1B1E8 0011A268 03260400 */  sra        $a0, $a0, 24
    /* 1B1EC 0011A26C 09F84000 */  jalr       $v0
    /* 1B1F0 0011A270 01001026 */   addiu     $s0, $s0, 0x1
    /* 1B1F4 0011A274 00000282 */  lb         $v0, 0x0($s0)
    /* 1B1F8 0011A278 F9FF4014 */  bnez       $v0, .L0011A260
    /* 1B1FC 0011A27C 00000492 */   lbu       $a0, 0x0($s0)
    /* 1B200 0011A280 F1000010 */  b          .L0011A648
    /* 1B204 0011A284 2D804002 */   daddu     $s0, $s2, $zero
.align 2
  jlabel .L0011A288
    /* 1B208 0011A288 6C000224 */  addiu      $v0, $zero, 0x6C
    /* 1B20C 0011A28C 0400E214 */  bne        $a3, $v0, .L0011A2A0
    /* 1B210 0011A290 68000224 */   addiu     $v0, $zero, 0x68
    /* 1B214 0011A294 08007326 */  addiu      $s3, $s3, 0x8
    /* 1B218 0011A298 06000010 */  b          .L0011A2B4
    /* 1B21C 0011A29C F8FF71DE */   ld        $s1, -0x8($s3)
.align 2
  .L0011A2A0:
    /* 1B220 0011A2A0 0300E214 */  bne        $a3, $v0, .L0011A2B0
    /* 1B224 0011A2A4 08007326 */   addiu     $s3, $s3, 0x8
    /* 1B228 0011A2A8 02000010 */  b          .L0011A2B4
    /* 1B22C 0011A2AC F8FF7196 */   lhu       $s1, -0x8($s3)
.align 2
  .L0011A2B0:
    /* 1B230 0011A2B0 F8FF719E */  lwu        $s1, -0x8($s3)
.align 2
  .L0011A2B4:
    /* 1B234 0011A2B4 1F00B027 */  addiu      $s0, $sp, 0x1F
    /* 1B238 0011A2B8 06002016 */  bnez       $s1, .L0011A2D4
    /* 1B23C 0011A2BC 1F00A0A3 */   sb        $zero, 0x1F($sp)
    /* 1B240 0011A2C0 30000224 */  addiu      $v0, $zero, 0x30
    /* 1B244 0011A2C4 1E00B027 */  addiu      $s0, $sp, 0x1E
    /* 1B248 0011A2C8 1E00A2A3 */  sb         $v0, 0x1E($sp)
    /* 1B24C 0011A2CC 0C000010 */  b          .L0011A300
    /* 1B250 0011A2D0 01005226 */   addiu     $s2, $s2, 0x1
.align 2
  .L0011A2D4:
    /* 1B254 0011A2D4 01005226 */  addiu      $s2, $s2, 0x1
.align 2
  .L0011A2D8:
    /* 1B258 0011A2D8 0F002332 */  andi       $v1, $s1, 0xF
    /* 1B25C 0011A2DC 0A00622C */  sltiu      $v0, $v1, 0xA
    /* 1B260 0011A2E0 02004014 */  bnez       $v0, .L0011A2EC
    /* 1B264 0011A2E4 30006264 */   daddiu    $v0, $v1, 0x30
    /* 1B268 0011A2E8 57006264 */  daddiu     $v0, $v1, 0x57
.align 2
  .L0011A2EC:
    /* 1B26C 0011A2EC FFFF1026 */  addiu      $s0, $s0, -0x1
    /* 1B270 0011A2F0 FF004230 */  andi       $v0, $v0, 0xFF
    /* 1B274 0011A2F4 3A891100 */  dsrl       $s1, $s1, 4
    /* 1B278 0011A2F8 F7FF2016 */  bnez       $s1, .L0011A2D8
    /* 1B27C 0011A2FC 000002A2 */   sb        $v0, 0x0($s0)
.align 2
  .L0011A300:
    /* 1B280 0011A300 02008012 */  beqz       $s4, .L0011A30C
    /* 1B284 0011A304 2B109002 */   sltu      $v0, $s4, $s0
    /* 1B288 0011A308 0B808202 */  movn       $s0, $s4, $v0
.align 2
  .L0011A30C:
    /* 1B28C 0011A30C 00000282 */  lb         $v0, 0x0($s0)
    /* 1B290 0011A310 CC004010 */  beqz       $v0, .L0011A644
    /* 1B294 0011A314 00000492 */   lbu       $a0, 0x0($s0)
    /* 1B298 0011A318 1300153C */  lui        $s5, %hi(D_0012FD00)
    /* 1B29C 0011A31C 00000000 */  nop
.align 2
  .L0011A320:
    /* 1B2A0 0011A320 00260400 */  sll        $a0, $a0, 24
    /* 1B2A4 0011A324 00FDA28E */  lw         $v0, %lo(D_0012FD00)($s5)
    /* 1B2A8 0011A328 03260400 */  sra        $a0, $a0, 24
    /* 1B2AC 0011A32C 09F84000 */  jalr       $v0
    /* 1B2B0 0011A330 01001026 */   addiu     $s0, $s0, 0x1
    /* 1B2B4 0011A334 00000282 */  lb         $v0, 0x0($s0)
    /* 1B2B8 0011A338 F9FF4014 */  bnez       $v0, .L0011A320
    /* 1B2BC 0011A33C 00000492 */   lbu       $a0, 0x0($s0)
    /* 1B2C0 0011A340 C1000010 */  b          .L0011A648
    /* 1B2C4 0011A344 2D804002 */   daddu     $s0, $s2, $zero
.align 2
  jlabel .L0011A348
    /* 1B2C8 0011A348 6C000224 */  addiu      $v0, $zero, 0x6C
    /* 1B2CC 0011A34C 0400E214 */  bne        $a3, $v0, .L0011A360
    /* 1B2D0 0011A350 68000224 */   addiu     $v0, $zero, 0x68
    /* 1B2D4 0011A354 08007326 */  addiu      $s3, $s3, 0x8
    /* 1B2D8 0011A358 06000010 */  b          .L0011A374
    /* 1B2DC 0011A35C F8FF71DE */   ld        $s1, -0x8($s3)
.align 2
  .L0011A360:
    /* 1B2E0 0011A360 0300E214 */  bne        $a3, $v0, .L0011A370
    /* 1B2E4 0011A364 08007326 */   addiu     $s3, $s3, 0x8
    /* 1B2E8 0011A368 02000010 */  b          .L0011A374
    /* 1B2EC 0011A36C F8FF7186 */   lh        $s1, -0x8($s3)
.align 2
  .L0011A370:
    /* 1B2F0 0011A370 F8FF718E */  lw         $s1, -0x8($s3)
.align 2
  .L0011A374:
    /* 1B2F4 0011A374 1F00B027 */  addiu      $s0, $sp, 0x1F
    /* 1B2F8 0011A378 05002016 */  bnez       $s1, .L0011A390
    /* 1B2FC 0011A37C 1F00A0A3 */   sb        $zero, 0x1F($sp)
    /* 1B300 0011A380 30000224 */  addiu      $v0, $zero, 0x30
    /* 1B304 0011A384 1E00B027 */  addiu      $s0, $sp, 0x1E
    /* 1B308 0011A388 19000010 */  b          .L0011A3F0
    /* 1B30C 0011A38C 1E00A2A3 */   sb        $v0, 0x1E($sp)
.align 2
  .L0011A390:
    /* 1B310 0011A390 05002106 */  bgez       $s1, .L0011A3A8
    /* 1B314 0011A394 1300153C */   lui       $s5, %hi(D_0012FD00)
    /* 1B318 0011A398 2F881100 */  dsubu      $s1, $zero, $s1
    /* 1B31C 0011A39C 00FDA28E */  lw         $v0, %lo(D_0012FD00)($s5)
    /* 1B320 0011A3A0 09F84000 */  jalr       $v0
    /* 1B324 0011A3A4 2D000424 */   addiu     $a0, $zero, 0x2D
.align 2
  .L0011A3A8:
    /* 1B328 0011A3A8 12002012 */  beqz       $s1, .L0011A3F4
    /* 1B32C 0011A3AC 01005226 */   addiu     $s2, $s2, 0x1
    /* 1B330 0011A3B0 2D202002 */  daddu      $a0, $s1, $zero
    /* 1B334 0011A3B4 00000000 */  nop
.align 2
  .L0011A3B8:
    /* 1B338 0011A3B8 187A040C */  jal        func_0011E860
    /* 1B33C 0011A3BC 0A000524 */   addiu     $a1, $zero, 0xA
    /* 1B340 0011A3C0 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* 1B344 0011A3C4 30004264 */  daddiu     $v0, $v0, 0x30
    /* 1B348 0011A3C8 2D202002 */  daddu      $a0, $s1, $zero
    /* 1B34C 0011A3CC FF004230 */  andi       $v0, $v0, 0xFF
    /* 1B350 0011A3D0 0A000524 */  addiu      $a1, $zero, 0xA
    /* 1B354 0011A3D4 FA77040C */  jal        func_0011DFE8
    /* 1B358 0011A3D8 000002A2 */   sb        $v0, 0x0($s0)
    /* 1B35C 0011A3DC 2D884000 */  daddu      $s1, $v0, $zero
    /* 1B360 0011A3E0 F5FF2016 */  bnez       $s1, .L0011A3B8
    /* 1B364 0011A3E4 2D202002 */   daddu     $a0, $s1, $zero
    /* 1B368 0011A3E8 02000010 */  b          .L0011A3F4
    /* 1B36C 0011A3EC 00000000 */   nop
.align 2
  .L0011A3F0:
    /* 1B370 0011A3F0 01005226 */  addiu      $s2, $s2, 0x1
.align 2
  .L0011A3F4:
    /* 1B374 0011A3F4 02008012 */  beqz       $s4, .L0011A400
    /* 1B378 0011A3F8 2B109002 */   sltu      $v0, $s4, $s0
    /* 1B37C 0011A3FC 0B808202 */  movn       $s0, $s4, $v0
.align 2
  .L0011A400:
    /* 1B380 0011A400 00000282 */  lb         $v0, 0x0($s0)
    /* 1B384 0011A404 8F004010 */  beqz       $v0, .L0011A644
    /* 1B388 0011A408 00000492 */   lbu       $a0, 0x0($s0)
    /* 1B38C 0011A40C 1300153C */  lui        $s5, %hi(D_0012FD00)
.align 2
  .L0011A410:
    /* 1B390 0011A410 00260400 */  sll        $a0, $a0, 24
    /* 1B394 0011A414 00FDA28E */  lw         $v0, %lo(D_0012FD00)($s5)
    /* 1B398 0011A418 03260400 */  sra        $a0, $a0, 24
    /* 1B39C 0011A41C 09F84000 */  jalr       $v0
    /* 1B3A0 0011A420 01001026 */   addiu     $s0, $s0, 0x1
    /* 1B3A4 0011A424 00000282 */  lb         $v0, 0x0($s0)
    /* 1B3A8 0011A428 F9FF4014 */  bnez       $v0, .L0011A410
    /* 1B3AC 0011A42C 00000492 */   lbu       $a0, 0x0($s0)
    /* 1B3B0 0011A430 85000010 */  b          .L0011A648
    /* 1B3B4 0011A434 2D804002 */   daddu     $s0, $s2, $zero
.align 2
  jlabel .L0011A438
    /* 1B3B8 0011A438 6C000224 */  addiu      $v0, $zero, 0x6C
    /* 1B3BC 0011A43C 0400E214 */  bne        $a3, $v0, .L0011A450
    /* 1B3C0 0011A440 68000224 */   addiu     $v0, $zero, 0x68
    /* 1B3C4 0011A444 08007326 */  addiu      $s3, $s3, 0x8
    /* 1B3C8 0011A448 06000010 */  b          .L0011A464
    /* 1B3CC 0011A44C F8FF71DE */   ld        $s1, -0x8($s3)
.align 2
  .L0011A450:
    /* 1B3D0 0011A450 0300E214 */  bne        $a3, $v0, .L0011A460
    /* 1B3D4 0011A454 08007326 */   addiu     $s3, $s3, 0x8
    /* 1B3D8 0011A458 02000010 */  b          .L0011A464
    /* 1B3DC 0011A45C F8FF7196 */   lhu       $s1, -0x8($s3)
.align 2
  .L0011A460:
    /* 1B3E0 0011A460 F8FF719E */  lwu        $s1, -0x8($s3)
.align 2
  .L0011A464:
    /* 1B3E4 0011A464 1F00B027 */  addiu      $s0, $sp, 0x1F
    /* 1B3E8 0011A468 06002016 */  bnez       $s1, .L0011A484
    /* 1B3EC 0011A46C 1F00A0A3 */   sb        $zero, 0x1F($sp)
    /* 1B3F0 0011A470 30000224 */  addiu      $v0, $zero, 0x30
    /* 1B3F4 0011A474 1E00B027 */  addiu      $s0, $sp, 0x1E
    /* 1B3F8 0011A478 1E00A2A3 */  sb         $v0, 0x1E($sp)
    /* 1B3FC 0011A47C 10000010 */  b          .L0011A4C0
    /* 1B400 0011A480 01005226 */   addiu     $s2, $s2, 0x1
.align 2
  .L0011A484:
    /* 1B404 0011A484 01005226 */  addiu      $s2, $s2, 0x1
    /* 1B408 0011A488 2D202002 */  daddu      $a0, $s1, $zero
    /* 1B40C 0011A48C 00000000 */  nop
.align 2
  .L0011A490:
    /* 1B410 0011A490 3E7D040C */  jal        func_0011F4F8
    /* 1B414 0011A494 0A000524 */   addiu     $a1, $zero, 0xA
    /* 1B418 0011A498 FFFF1026 */  addiu      $s0, $s0, -0x1
    /* 1B41C 0011A49C 30004264 */  daddiu     $v0, $v0, 0x30
    /* 1B420 0011A4A0 2D202002 */  daddu      $a0, $s1, $zero
    /* 1B424 0011A4A4 FF004230 */  andi       $v0, $v0, 0xFF
    /* 1B428 0011A4A8 0A000524 */  addiu      $a1, $zero, 0xA
    /* 1B42C 0011A4AC CA7B040C */  jal        func_0011EF28
    /* 1B430 0011A4B0 000002A2 */   sb        $v0, 0x0($s0)
    /* 1B434 0011A4B4 2D884000 */  daddu      $s1, $v0, $zero
    /* 1B438 0011A4B8 F5FF2016 */  bnez       $s1, .L0011A490
    /* 1B43C 0011A4BC 2D202002 */   daddu     $a0, $s1, $zero
.align 2
  .L0011A4C0:
    /* 1B440 0011A4C0 02008012 */  beqz       $s4, .L0011A4CC
    /* 1B444 0011A4C4 2B109002 */   sltu      $v0, $s4, $s0
    /* 1B448 0011A4C8 0B808202 */  movn       $s0, $s4, $v0
.align 2
  .L0011A4CC:
    /* 1B44C 0011A4CC 00000282 */  lb         $v0, 0x0($s0)
    /* 1B450 0011A4D0 5C004010 */  beqz       $v0, .L0011A644
    /* 1B454 0011A4D4 00000492 */   lbu       $a0, 0x0($s0)
    /* 1B458 0011A4D8 1300153C */  lui        $s5, %hi(D_0012FD00)
    /* 1B45C 0011A4DC 00000000 */  nop
.align 2
  .L0011A4E0:
    /* 1B460 0011A4E0 00260400 */  sll        $a0, $a0, 24
    /* 1B464 0011A4E4 00FDA28E */  lw         $v0, %lo(D_0012FD00)($s5)
    /* 1B468 0011A4E8 03260400 */  sra        $a0, $a0, 24
    /* 1B46C 0011A4EC 09F84000 */  jalr       $v0
    /* 1B470 0011A4F0 01001026 */   addiu     $s0, $s0, 0x1
    /* 1B474 0011A4F4 00000282 */  lb         $v0, 0x0($s0)
    /* 1B478 0011A4F8 F9FF4014 */  bnez       $v0, .L0011A4E0
    /* 1B47C 0011A4FC 00000492 */   lbu       $a0, 0x0($s0)
    /* 1B480 0011A500 51000010 */  b          .L0011A648
    /* 1B484 0011A504 2D804002 */   daddu     $s0, $s2, $zero
.align 2
  jlabel .L0011A508
    /* 1B488 0011A508 08007326 */  addiu      $s3, $s3, 0x8
    /* 1B48C 0011A50C 00008044 */  mtc1       $zero, $f0
    /* 1B490 0011A510 F8FF6CC6 */  lwc1       $f12, -0x8($s3)
    /* 1B494 0011A514 32600046 */  c.eq.s     $f12, $f0
    /* 1B498 0011A518 00000000 */  nop
    /* 1B49C 0011A51C 07000045 */  bc1f       .L0011A53C
    /* 1B4A0 0011A520 1300153C */   lui       $s5, %hi(D_0012FD00)
    /* 1B4A4 0011A524 30000424 */  addiu      $a0, $zero, 0x30
    /* 1B4A8 0011A528 00FDA28E */  lw         $v0, %lo(D_0012FD00)($s5)
    /* 1B4AC 0011A52C 09F84000 */  jalr       $v0
    /* 1B4B0 0011A530 01005226 */   addiu     $s2, $s2, 0x1
    /* 1B4B4 0011A534 44000010 */  b          .L0011A648
    /* 1B4B8 0011A538 2D804002 */   daddu     $s0, $s2, $zero
.align 2
  .L0011A53C:
    /* 1B4BC 0011A53C DE81040C */  jal        func_00120778
    /* 1B4C0 0011A540 01005226 */   addiu     $s2, $s2, 0x1
    /* 1B4C4 0011A544 CE67040C */  jal        func_00119F38
    /* 1B4C8 0011A548 2D204000 */   daddu     $a0, $v0, $zero
    /* 1B4CC 0011A54C 3E000010 */  b          .L0011A648
    /* 1B4D0 0011A550 2D804002 */   daddu     $s0, $s2, $zero
.align 2
  jlabel .L0011A554
    /* 1B4D4 0011A554 08007326 */  addiu      $s3, $s3, 0x8
    /* 1B4D8 0011A558 F8FF638E */  lw         $v1, -0x8($s3)
    /* 1B4DC 0011A55C 00006280 */  lb         $v0, 0x0($v1)
    /* 1B4E0 0011A560 17004014 */  bnez       $v0, .L0011A5C0
    /* 1B4E4 0011A564 00006490 */   lbu       $a0, 0x0($v1)
    /* 1B4E8 0011A568 1300153C */  lui        $s5, %hi(D_0012FD00)
    /* 1B4EC 0011A56C 28000424 */  addiu      $a0, $zero, 0x28
    /* 1B4F0 0011A570 00FDA28E */  lw         $v0, %lo(D_0012FD00)($s5)
    /* 1B4F4 0011A574 09F84000 */  jalr       $v0
    /* 1B4F8 0011A578 01005226 */   addiu     $s2, $s2, 0x1
    /* 1B4FC 0011A57C 00FDA38E */  lw         $v1, %lo(D_0012FD00)($s5)
    /* 1B500 0011A580 09F86000 */  jalr       $v1
    /* 1B504 0011A584 6E000424 */   addiu     $a0, $zero, 0x6E
    /* 1B508 0011A588 00FDA28E */  lw         $v0, %lo(D_0012FD00)($s5)
    /* 1B50C 0011A58C 09F84000 */  jalr       $v0
    /* 1B510 0011A590 75000424 */   addiu     $a0, $zero, 0x75
    /* 1B514 0011A594 00FDA38E */  lw         $v1, %lo(D_0012FD00)($s5)
    /* 1B518 0011A598 09F86000 */  jalr       $v1
    /* 1B51C 0011A59C 6C000424 */   addiu     $a0, $zero, 0x6C
    /* 1B520 0011A5A0 00FDA28E */  lw         $v0, %lo(D_0012FD00)($s5)
    /* 1B524 0011A5A4 09F84000 */  jalr       $v0
    /* 1B528 0011A5A8 6C000424 */   addiu     $a0, $zero, 0x6C
    /* 1B52C 0011A5AC 00FDA38E */  lw         $v1, %lo(D_0012FD00)($s5)
    /* 1B530 0011A5B0 09F86000 */  jalr       $v1
    /* 1B534 0011A5B4 29000424 */   addiu     $a0, $zero, 0x29
    /* 1B538 0011A5B8 23000010 */  b          .L0011A648
    /* 1B53C 0011A5BC 2D804002 */   daddu     $s0, $s2, $zero
.align 2
  .L0011A5C0:
    /* 1B540 0011A5C0 2D806000 */  daddu      $s0, $v1, $zero
    /* 1B544 0011A5C4 01005226 */  addiu      $s2, $s2, 0x1
    /* 1B548 0011A5C8 1300153C */  lui        $s5, %hi(D_0012FD00)
    /* 1B54C 0011A5CC 00000000 */  nop
.align 2
  .L0011A5D0:
    /* 1B550 0011A5D0 00260400 */  sll        $a0, $a0, 24
    /* 1B554 0011A5D4 00FDA38E */  lw         $v1, %lo(D_0012FD00)($s5)
    /* 1B558 0011A5D8 03260400 */  sra        $a0, $a0, 24
    /* 1B55C 0011A5DC 09F86000 */  jalr       $v1
    /* 1B560 0011A5E0 01001026 */   addiu     $s0, $s0, 0x1
    /* 1B564 0011A5E4 00000292 */  lbu        $v0, 0x0($s0)
    /* 1B568 0011A5E8 F9FF4014 */  bnez       $v0, .L0011A5D0
    /* 1B56C 0011A5EC 2D204000 */   daddu     $a0, $v0, $zero
    /* 1B570 0011A5F0 15000010 */  b          .L0011A648
    /* 1B574 0011A5F4 2D804002 */   daddu     $s0, $s2, $zero
.align 2
  jlabel .L0011A5F8
    /* 1B578 0011A5F8 08007326 */  addiu      $s3, $s3, 0x8
    /* 1B57C 0011A5FC 1300153C */  lui        $s5, %hi(D_0012FD00)
    /* 1B580 0011A600 F8FF7182 */  lb         $s1, -0x8($s3)
    /* 1B584 0011A604 00FDA28E */  lw         $v0, %lo(D_0012FD00)($s5)
    /* 1B588 0011A608 3C201100 */  dsll32     $a0, $s1, 0
    /* 1B58C 0011A60C 3F200400 */  dsra32     $a0, $a0, 0
    /* 1B590 0011A610 09F84000 */  jalr       $v0
    /* 1B594 0011A614 01005226 */   addiu     $s2, $s2, 0x1
    /* 1B598 0011A618 0B000010 */  b          .L0011A648
    /* 1B59C 0011A61C 2D804002 */   daddu     $s0, $s2, $zero
.align 2
  .L0011A620:
    /* 1B5A0 0011A620 1300023C */  lui        $v0, %hi(D_0012FD00)
    /* 1B5A4 0011A624 00FD438C */  lw         $v1, %lo(D_0012FD00)($v0)
    /* 1B5A8 0011A628 09F86000 */  jalr       $v1
    /* 1B5AC 0011A62C 01001226 */   addiu     $s2, $s0, 0x1
    /* 1B5B0 0011A630 05000010 */  b          .L0011A648
    /* 1B5B4 0011A634 2D804002 */   daddu     $s0, $s2, $zero
.align 2
  .L0011A638:
    /* 1B5B8 0011A638 02000010 */  b          .L0011A644
    /* 1B5BC 0011A63C 01001226 */   addiu     $s2, $s0, 0x1
.align 2
  jlabel .L0011A640
    /* 1B5C0 0011A640 01005226 */  addiu      $s2, $s2, 0x1
.align 2
  .L0011A644:
    /* 1B5C4 0011A644 2D804002 */  daddu      $s0, $s2, $zero
.align 2
  .L0011A648:
    /* 1B5C8 0011A648 00000282 */  lb         $v0, 0x0($s0)
    /* 1B5CC 0011A64C A4FE4014 */  bnez       $v0, .L0011A0E0
    /* 1B5D0 0011A650 00000392 */   lbu       $v1, 0x0($s0)
.align 2
  .L0011A654:
    /* 1B5D4 0011A654 0400C012 */  beqz       $s6, .L0011A668
    /* 1B5D8 0011A658 9000BFDF */   ld        $ra, 0x90($sp)
    /* 1B5DC 0011A65C 6A76040C */  jal        func_0011D9A8
    /* 1B5E0 0011A660 00000000 */   nop
    /* 1B5E4 0011A664 9000BFDF */  ld         $ra, 0x90($sp)
.align 2
  .L0011A668:
    /* 1B5E8 0011A668 8000B6DF */  ld         $s6, 0x80($sp)
    /* 1B5EC 0011A66C 7000B5DF */  ld         $s5, 0x70($sp)
    /* 1B5F0 0011A670 6000B4DF */  ld         $s4, 0x60($sp)
    /* 1B5F4 0011A674 5000B3DF */  ld         $s3, 0x50($sp)
    /* 1B5F8 0011A678 4000B2DF */  ld         $s2, 0x40($sp)
    /* 1B5FC 0011A67C 3000B1DF */  ld         $s1, 0x30($sp)
    /* 1B600 0011A680 2000B0DF */  ld         $s0, 0x20($sp)
    /* 1B604 0011A684 0800E003 */  jr         $ra
    /* 1B608 0011A688 A000BD27 */   addiu     $sp, $sp, 0xA0
endlabel func_0011A0A0
    /* 1B60C 0011A68C 00000000 */  nop
