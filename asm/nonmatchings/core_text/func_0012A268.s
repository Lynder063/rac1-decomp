.align 3
nonmatching func_0012A268, 0x84

glabel func_0012A268
    /* 2B1E8 0012A268 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 2B1EC 0012A26C 1000B1FF */  sd         $s1, 0x10($sp)
    /* 2B1F0 0012A270 0000B0FF */  sd         $s0, 0x0($sp)
    /* 2B1F4 0012A274 2D88A000 */  daddu      $s1, $a1, $zero
    /* 2B1F8 0012A278 2000BFFF */  sd         $ra, 0x20($sp)
    /* 2B1FC 0012A27C 5876040C */  jal        func_0011D960
    /* 2B200 0012A280 2D808000 */   daddu     $s0, $a0, $zero
    /* 2B204 0012A284 FF0F033C */  lui        $v1, (0xFFFFFFF >> 16)
    /* 2B208 0012A288 0010053C */  lui        $a1, (0x1000B010 >> 16)
    /* 2B20C 0012A28C FFFF6334 */  ori        $v1, $v1, (0xFFFFFFF & 0xFFFF)
    /* 2B210 0012A290 0080063C */  lui        $a2, (0x80000000 >> 16)
    /* 2B214 0012A294 24800302 */  and        $s0, $s0, $v1
    /* 2B218 0012A298 10B0A534 */  ori        $a1, $a1, (0x1000B010 & 0xFFFF)
    /* 2B21C 0012A29C 25800602 */  or         $s0, $s0, $a2
    /* 2B220 0012A2A0 0010043C */  lui        $a0, (0x1000B020 >> 16)
    /* 2B224 0012A2A4 0000B0AC */  sw         $s0, 0x0($a1)
    /* 2B228 0012A2A8 20B08434 */  ori        $a0, $a0, (0x1000B020 & 0xFFFF)
    /* 2B22C 0012A2AC 03891100 */  sra        $s1, $s1, 4
    /* 2B230 0012A2B0 0010033C */  lui        $v1, (0x1000B000 >> 16)
    /* 2B234 0012A2B4 000091AC */  sw         $s1, 0x0($a0)
    /* 2B238 0012A2B8 00B06334 */  ori        $v1, $v1, (0x1000B000 & 0xFFFF)
    /* 2B23C 0012A2BC 00010424 */  addiu      $a0, $zero, 0x100
    /* 2B240 0012A2C0 000064AC */  sw         $a0, 0x0($v1)
    /* 2B244 0012A2C4 05004010 */  beqz       $v0, .L0012A2DC
    /* 2B248 0012A2C8 2000BFDF */   ld        $ra, 0x20($sp)
    /* 2B24C 0012A2CC 1000B1DF */  ld         $s1, 0x10($sp)
    /* 2B250 0012A2D0 0000B0DF */  ld         $s0, 0x0($sp)
    /* 2B254 0012A2D4 6A760408 */  j          func_0011D9A8
    /* 2B258 0012A2D8 3000BD27 */   addiu     $sp, $sp, 0x30
.align 2
  .L0012A2DC:
    /* 2B25C 0012A2DC 1000B1DF */  ld         $s1, 0x10($sp)
    /* 2B260 0012A2E0 0000B0DF */  ld         $s0, 0x0($sp)
    /* 2B264 0012A2E4 0800E003 */  jr         $ra
    /* 2B268 0012A2E8 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_0012A268
