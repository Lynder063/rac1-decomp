.align 3
nonmatching func_0011D248, 0x110

glabel func_0011D248
    /* 1E1C8 0011D248 80FFBD27 */  addiu      $sp, $sp, -0x80
    /* 1E1CC 0011D24C 1500023C */  lui        $v0, %hi(D_00152A60)
    /* 1E1D0 0011D250 6000B1FF */  sd         $s1, 0x60($sp)
    /* 1E1D4 0011D254 5000B0FF */  sd         $s0, 0x50($sp)
    /* 1E1D8 0011D258 7000BFFF */  sd         $ra, 0x70($sp)
    /* 1E1DC 0011D25C 2D808000 */  daddu      $s0, $a0, $zero
    /* 1E1E0 0011D260 00000382 */  lb         $v1, 0x0($s0)
    /* 1E1E4 0011D264 0B006010 */  beqz       $v1, .L0011D294
    /* 1E1E8 0011D268 602A5124 */   addiu     $s1, $v0, %lo(D_00152A60)
    /* 1E1EC 0011D26C F5FF0326 */  addiu      $v1, $s0, -0xB
.align 2
  .L0011D270:
    /* 1E1F0 0011D270 01008424 */  addiu      $a0, $a0, 0x1
    /* 1E1F4 0011D274 00008280 */  lb         $v0, 0x0($a0)
    /* 1E1F8 0011D278 00000000 */  nop
    /* 1E1FC 0011D27C 00000000 */  nop
    /* 1E200 0011D280 00000000 */  nop
    /* 1E204 0011D284 FAFF4014 */  bnez       $v0, .L0011D270
    /* 1E208 0011D288 00000000 */   nop
    /* 1E20C 0011D28C 03000010 */  b          .L0011D29C
    /* 1E210 0011D290 23108300 */   subu      $v0, $a0, $v1
.align 2
  .L0011D294:
    /* 1E214 0011D294 F5FF0326 */  addiu      $v1, $s0, -0xB
    /* 1E218 0011D298 23108300 */  subu       $v0, $a0, $v1
.align 2
  .L0011D29C:
    /* 1E21C 0011D29C 5100422C */  sltiu      $v0, $v0, 0x51
    /* 1E220 0011D2A0 06004014 */  bnez       $v0, .L0011D2BC
    /* 1E224 0011D2A4 1500043C */   lui       $a0, %hi(D_00152A70)
    /* 1E228 0011D2A8 2D280002 */  daddu      $a1, $s0, $zero
    /* 1E22C 0011D2AC B269040C */  jal        func_0011A6C8
    /* 1E230 0011D2B0 702A8424 */   addiu     $a0, $a0, %lo(D_00152A70)
    /* 1E234 0011D2B4 23000010 */  b          .L0011D344
    /* 1E238 0011D2B8 2D100000 */   daddu     $v0, $zero, $zero
.align 2
  .L0011D2BC:
    /* 1E23C 0011D2BC 886B040C */  jal        func_0011AE20
    /* 1E240 0011D2C0 2D200000 */   daddu     $a0, $zero, $zero
    /* 1E244 0011D2C4 F06B040C */  jal        func_0011AFC0
    /* 1E248 0011D2C8 00000000 */   nop
    /* 1E24C 0011D2CC 00002282 */  lb         $v0, 0x0($s1)
    /* 1E250 0011D2D0 2D18A003 */  daddu      $v1, $sp, $zero
    /* 1E254 0011D2D4 0B004010 */  beqz       $v0, .L0011D304
    /* 1E258 0011D2D8 00002492 */   lbu       $a0, 0x0($s1)
    /* 1E25C 0011D2DC 00000592 */  lbu        $a1, 0x0($s0)
.align 2
  .L0011D2E0:
    /* 1E260 0011D2E0 000064A0 */  sb         $a0, 0x0($v1)
    /* 1E264 0011D2E4 01003126 */  addiu      $s1, $s1, 0x1
    /* 1E268 0011D2E8 01006324 */  addiu      $v1, $v1, 0x1
    /* 1E26C 0011D2EC 00002492 */  lbu        $a0, 0x0($s1)
    /* 1E270 0011D2F0 00002282 */  lb         $v0, 0x0($s1)
    /* 1E274 0011D2F4 FAFF4014 */  bnez       $v0, .L0011D2E0
    /* 1E278 0011D2F8 00000000 */   nop
    /* 1E27C 0011D2FC 03000010 */  b          .L0011D30C
    /* 1E280 0011D300 2D20A000 */   daddu     $a0, $a1, $zero
.align 2
  .L0011D304:
    /* 1E284 0011D304 00000592 */  lbu        $a1, 0x0($s0)
    /* 1E288 0011D308 2D20A000 */  daddu      $a0, $a1, $zero
.align 2
  .L0011D30C:
    /* 1E28C 0011D30C 0A008050 */  beql       $a0, $zero, .L0011D338
    /* 1E290 0011D310 000060A0 */   sb        $zero, 0x0($v1)
    /* 1E294 0011D314 00000000 */  nop
.align 2
  .L0011D318:
    /* 1E298 0011D318 000064A0 */  sb         $a0, 0x0($v1)
    /* 1E29C 0011D31C 01001026 */  addiu      $s0, $s0, 0x1
    /* 1E2A0 0011D320 01006324 */  addiu      $v1, $v1, 0x1
    /* 1E2A4 0011D324 00000282 */  lb         $v0, 0x0($s0)
    /* 1E2A8 0011D328 2D204000 */  daddu      $a0, $v0, $zero
    /* 1E2AC 0011D32C FAFF4014 */  bnez       $v0, .L0011D318
    /* 1E2B0 0011D330 00000000 */   nop
    /* 1E2B4 0011D334 000060A0 */  sb         $zero, 0x0($v1)
.align 2
  .L0011D338:
    /* 1E2B8 0011D338 2D20A003 */  daddu      $a0, $sp, $zero
    /* 1E2BC 0011D33C 3474040C */  jal        func_0011D0D0
    /* 1E2C0 0011D340 2D280000 */   daddu     $a1, $zero, $zero
.align 2
  .L0011D344:
    /* 1E2C4 0011D344 7000BFDF */  ld         $ra, 0x70($sp)
    /* 1E2C8 0011D348 6000B1DF */  ld         $s1, 0x60($sp)
    /* 1E2CC 0011D34C 5000B0DF */  ld         $s0, 0x50($sp)
    /* 1E2D0 0011D350 0800E003 */  jr         $ra
    /* 1E2D4 0011D354 8000BD27 */   addiu     $sp, $sp, 0x80
endlabel func_0011D248
