.align 3
nonmatching func_0012B2C0, 0x5B0

glabel func_0012B2C0
    /* 2C240 0012B2C0 40FFBD27 */  addiu      $sp, $sp, -0xC0
    /* 2C244 0012B2C4 1500033C */  lui        $v1, %hi(D_00153AC8)
    /* 2C248 0012B2C8 6000B4FF */  sd         $s4, 0x60($sp)
    /* 2C24C 0012B2CC 5000B3FF */  sd         $s3, 0x50($sp)
    /* 2C250 0012B2D0 2DA0C000 */  daddu      $s4, $a2, $zero
    /* 2C254 0012B2D4 B000BFFF */  sd         $ra, 0xB0($sp)
    /* 2C258 0012B2D8 2D98A000 */  daddu      $s3, $a1, $zero
    /* 2C25C 0012B2DC A000BEFF */  sd         $fp, 0xA0($sp)
    /* 2C260 0012B2E0 18000524 */  addiu      $a1, $zero, 0x18
    /* 2C264 0012B2E4 9000B7FF */  sd         $s7, 0x90($sp)
    /* 2C268 0012B2E8 8000B6FF */  sd         $s6, 0x80($sp)
    /* 2C26C 0012B2EC 7000B5FF */  sd         $s5, 0x70($sp)
    /* 2C270 0012B2F0 4000B2FF */  sd         $s2, 0x40($sp)
    /* 2C274 0012B2F4 3000B1FF */  sd         $s1, 0x30($sp)
    /* 2C278 0012B2F8 2000B0FF */  sd         $s0, 0x20($sp)
    /* 2C27C 0012B2FC 1800628E */  lw         $v0, 0x18($s3)
    /* 2C280 0012B300 1000A4AF */  sw         $a0, 0x10($sp)
    /* 2C284 0012B304 280082AE */  sw         $v0, 0x28($s4)
    /* 2C288 0012B308 C83A6824 */  addiu      $t0, $v1, %lo(D_00153AC8)
    /* 2C28C 0012B30C 07000269 */  ldl        $v0, 0x7($t0)
    /* 2C290 0012B310 0000026D */  ldr        $v0, 0x0($t0)
    /* 2C294 0012B314 0F000669 */  ldl        $a2, 0xF($t0)
    /* 2C298 0012B318 0800066D */  ldr        $a2, 0x8($t0)
    /* 2C29C 0012B31C 0700A2B3 */  sdl        $v0, 0x7($sp)
    /* 2C2A0 0012B320 0000A2B7 */  sdr        $v0, 0x0($sp)
    /* 2C2A4 0012B324 0F00A6B3 */  sdl        $a2, 0xF($sp)
    /* 2C2A8 0012B328 0800A6B7 */  sdr        $a2, 0x8($sp)
    /* 2C2AC 0012B32C D8AA040C */  jal        func_0012AB60
    /* 2C2B0 0012B330 2D206002 */   daddu     $a0, $s3, $zero
    /* 2C2B4 0012B334 2D206002 */  daddu      $a0, $s3, $zero
    /* 2C2B8 0012B338 D8AA040C */  jal        func_0012AB60
    /* 2C2BC 0012B33C 08000524 */   addiu     $a1, $zero, 0x8
    /* 2C2C0 0012B340 3C100200 */  dsll32     $v0, $v0, 0
    /* 2C2C4 0012B344 2D206002 */  daddu      $a0, $s3, $zero
    /* 2C2C8 0012B348 000082FE */  sd         $v0, 0x0($s4)
    /* 2C2CC 0012B34C D8AA040C */  jal        func_0012AB60
    /* 2C2D0 0012B350 10000524 */   addiu     $a1, $zero, 0x10
    /* 2C2D4 0012B354 000084DE */  ld         $a0, 0x0($s4)
    /* 2C2D8 0012B358 FFFF0324 */  addiu      $v1, $zero, -0x1
    /* 2C2DC 0012B35C 080082AE */  sw         $v0, 0x8($s4)
    /* 2C2E0 0012B360 00BC0234 */  ori        $v0, $zero, 0xBC00
    /* 2C2E4 0012B364 38160200 */  dsll       $v0, $v0, 24
    /* 2C2E8 0012B368 2D288000 */  daddu      $a1, $a0, $zero
    /* 2C2EC 0012B36C 100083FE */  sd         $v1, 0x10($s4)
    /* 2C2F0 0012B370 15018210 */  beq        $a0, $v0, .L0012B7C8
    /* 2C2F4 0012B374 180083FE */   sd        $v1, 0x18($s4)
    /* 2C2F8 0012B378 00BE0234 */  ori        $v0, $zero, 0xBE00
    /* 2C2FC 0012B37C 38160200 */  dsll       $v0, $v0, 24
    /* 2C300 0012B380 F5008210 */  beq        $a0, $v0, .L0012B758
    /* 2C304 0012B384 00000000 */   nop
    /* 2C308 0012B388 00BF0234 */  ori        $v0, $zero, 0xBF00
    /* 2C30C 0012B38C 38160200 */  dsll       $v0, $v0, 24
    /* 2C310 0012B390 F1008210 */  beq        $a0, $v0, .L0012B758
    /* 2C314 0012B394 00000000 */   nop
    /* 2C318 0012B398 00F00234 */  ori        $v0, $zero, 0xF000
    /* 2C31C 0012B39C 38160200 */  dsll       $v0, $v0, 24
    /* 2C320 0012B3A0 ED008210 */  beq        $a0, $v0, .L0012B758
    /* 2C324 0012B3A4 00000000 */   nop
    /* 2C328 0012B3A8 00F10234 */  ori        $v0, $zero, 0xF100
    /* 2C32C 0012B3AC 38160200 */  dsll       $v0, $v0, 24
    /* 2C330 0012B3B0 E9008210 */  beq        $a0, $v0, .L0012B758
    /* 2C334 0012B3B4 00000000 */   nop
    /* 2C338 0012B3B8 00FF0234 */  ori        $v0, $zero, 0xFF00
    /* 2C33C 0012B3BC 38160200 */  dsll       $v0, $v0, 24
    /* 2C340 0012B3C0 E5008210 */  beq        $a0, $v0, .L0012B758
    /* 2C344 0012B3C4 00000000 */   nop
    /* 2C348 0012B3C8 00F20234 */  ori        $v0, $zero, 0xF200
    /* 2C34C 0012B3CC 38160200 */  dsll       $v0, $v0, 24
    /* 2C350 0012B3D0 E1008210 */  beq        $a0, $v0, .L0012B758
    /* 2C354 0012B3D4 00000000 */   nop
    /* 2C358 0012B3D8 00F80234 */  ori        $v0, $zero, 0xF800
    /* 2C35C 0012B3DC 38160200 */  dsll       $v0, $v0, 24
    /* 2C360 0012B3E0 DD008210 */  beq        $a0, $v0, .L0012B758
    /* 2C364 0012B3E4 00000000 */   nop
    /* 2C368 0012B3E8 2D206002 */  daddu      $a0, $s3, $zero
    /* 2C36C 0012B3EC D8AA040C */  jal        func_0012AB60
    /* 2C370 0012B3F0 02000524 */   addiu     $a1, $zero, 0x2
    /* 2C374 0012B3F4 2D206002 */  daddu      $a0, $s3, $zero
    /* 2C378 0012B3F8 D8AA040C */  jal        func_0012AB60
    /* 2C37C 0012B3FC 02000524 */   addiu     $a1, $zero, 0x2
    /* 2C380 0012B400 0C0082AE */  sw         $v0, 0xC($s4)
    /* 2C384 0012B404 2D206002 */  daddu      $a0, $s3, $zero
    /* 2C388 0012B408 D8AA040C */  jal        func_0012AB60
    /* 2C38C 0012B40C 04000524 */   addiu     $a1, $zero, 0x4
    /* 2C390 0012B410 2D206002 */  daddu      $a0, $s3, $zero
    /* 2C394 0012B414 D8AA040C */  jal        func_0012AB60
    /* 2C398 0012B418 02000524 */   addiu     $a1, $zero, 0x2
    /* 2C39C 0012B41C 2DB84000 */  daddu      $s7, $v0, $zero
    /* 2C3A0 0012B420 2D206002 */  daddu      $a0, $s3, $zero
    /* 2C3A4 0012B424 D8AA040C */  jal        func_0012AB60
    /* 2C3A8 0012B428 01000524 */   addiu     $a1, $zero, 0x1
    /* 2C3AC 0012B42C 1400A2AF */  sw         $v0, 0x14($sp)
    /* 2C3B0 0012B430 2D206002 */  daddu      $a0, $s3, $zero
    /* 2C3B4 0012B434 D8AA040C */  jal        func_0012AB60
    /* 2C3B8 0012B438 04000524 */   addiu     $a1, $zero, 0x4
    /* 2C3BC 0012B43C 2DF04000 */  daddu      $fp, $v0, $zero
    /* 2C3C0 0012B440 2D206002 */  daddu      $a0, $s3, $zero
    /* 2C3C4 0012B444 D8AA040C */  jal        func_0012AB60
    /* 2C3C8 0012B448 01000524 */   addiu     $a1, $zero, 0x1
    /* 2C3CC 0012B44C 2DA84000 */  daddu      $s5, $v0, $zero
    /* 2C3D0 0012B450 2D206002 */  daddu      $a0, $s3, $zero
    /* 2C3D4 0012B454 D8AA040C */  jal        func_0012AB60
    /* 2C3D8 0012B458 08000524 */   addiu     $a1, $zero, 0x8
    /* 2C3DC 0012B45C 1800A2AF */  sw         $v0, 0x18($sp)
    /* 2C3E0 0012B460 0200E332 */  andi       $v1, $s7, 0x2
    /* 2C3E4 0012B464 180062DE */  ld         $v0, 0x18($s3)
    /* 2C3E8 0012B468 3CB00200 */  dsll32     $s6, $v0, 0
    /* 2C3EC 0012B46C 3FB01600 */  dsra32     $s6, $s6, 0
    /* 2C3F0 0012B470 22006010 */  beqz       $v1, .L0012B4FC
    /* 2C3F4 0012B474 03000224 */   addiu     $v0, $zero, 0x3
    /* 2C3F8 0012B478 2D206002 */  daddu      $a0, $s3, $zero
    /* 2C3FC 0012B47C D8AA040C */  jal        func_0012AB60
    /* 2C400 0012B480 04000524 */   addiu     $a1, $zero, 0x4
    /* 2C404 0012B484 2D206002 */  daddu      $a0, $s3, $zero
    /* 2C408 0012B488 D8AA040C */  jal        func_0012AB60
    /* 2C40C 0012B48C 03000524 */   addiu     $a1, $zero, 0x3
    /* 2C410 0012B490 2D804000 */  daddu      $s0, $v0, $zero
    /* 2C414 0012B494 ECAA040C */  jal        func_0012ABB0
    /* 2C418 0012B498 2D206002 */   daddu     $a0, $s3, $zero
    /* 2C41C 0012B49C 2D206002 */  daddu      $a0, $s3, $zero
    /* 2C420 0012B4A0 D8AA040C */  jal        func_0012AB60
    /* 2C424 0012B4A4 0F000524 */   addiu     $a1, $zero, 0xF
    /* 2C428 0012B4A8 2D884000 */  daddu      $s1, $v0, $zero
    /* 2C42C 0012B4AC ECAA040C */  jal        func_0012ABB0
    /* 2C430 0012B4B0 2D206002 */   daddu     $a0, $s3, $zero
    /* 2C434 0012B4B4 2D206002 */  daddu      $a0, $s3, $zero
    /* 2C438 0012B4B8 D8AA040C */  jal        func_0012AB60
    /* 2C43C 0012B4BC 0F000524 */   addiu     $a1, $zero, 0xF
    /* 2C440 0012B4C0 2D904000 */  daddu      $s2, $v0, $zero
    /* 2C444 0012B4C4 ECAA040C */  jal        func_0012ABB0
    /* 2C448 0012B4C8 2D206002 */   daddu     $a0, $s3, $zero
    /* 2C44C 0012B4CC 80171000 */  sll        $v0, $s0, 30
    /* 2C450 0012B4D0 C08B1100 */  sll        $s1, $s1, 15
    /* 2C454 0012B4D4 25105100 */  or         $v0, $v0, $s1
    /* 2C458 0012B4D8 82801000 */  srl        $s0, $s0, 2
    /* 2C45C 0012B4DC 25105200 */  or         $v0, $v0, $s2
    /* 2C460 0012B4E0 01001032 */  andi       $s0, $s0, 0x1
    /* 2C464 0012B4E4 3C100200 */  dsll32     $v0, $v0, 0
    /* 2C468 0012B4E8 3C801000 */  dsll32     $s0, $s0, 0
    /* 2C46C 0012B4EC 3E100200 */  dsrl32     $v0, $v0, 0
    /* 2C470 0012B4F0 25800202 */  or         $s0, $s0, $v0
    /* 2C474 0012B4F4 100090FE */  sd         $s0, 0x10($s4)
    /* 2C478 0012B4F8 03000224 */  addiu      $v0, $zero, 0x3
.align 2
  .L0012B4FC:
    /* 2C47C 0012B4FC 2200E216 */  bne        $s7, $v0, .L0012B588
    /* 2C480 0012B500 1400A28F */   lw        $v0, 0x14($sp)
    /* 2C484 0012B504 2D206002 */  daddu      $a0, $s3, $zero
    /* 2C488 0012B508 D8AA040C */  jal        func_0012AB60
    /* 2C48C 0012B50C 04000524 */   addiu     $a1, $zero, 0x4
    /* 2C490 0012B510 2D206002 */  daddu      $a0, $s3, $zero
    /* 2C494 0012B514 D8AA040C */  jal        func_0012AB60
    /* 2C498 0012B518 03000524 */   addiu     $a1, $zero, 0x3
    /* 2C49C 0012B51C 2D804000 */  daddu      $s0, $v0, $zero
    /* 2C4A0 0012B520 ECAA040C */  jal        func_0012ABB0
    /* 2C4A4 0012B524 2D206002 */   daddu     $a0, $s3, $zero
    /* 2C4A8 0012B528 2D206002 */  daddu      $a0, $s3, $zero
    /* 2C4AC 0012B52C D8AA040C */  jal        func_0012AB60
    /* 2C4B0 0012B530 0F000524 */   addiu     $a1, $zero, 0xF
    /* 2C4B4 0012B534 2D884000 */  daddu      $s1, $v0, $zero
    /* 2C4B8 0012B538 ECAA040C */  jal        func_0012ABB0
    /* 2C4BC 0012B53C 2D206002 */   daddu     $a0, $s3, $zero
    /* 2C4C0 0012B540 2D206002 */  daddu      $a0, $s3, $zero
    /* 2C4C4 0012B544 D8AA040C */  jal        func_0012AB60
    /* 2C4C8 0012B548 0F000524 */   addiu     $a1, $zero, 0xF
    /* 2C4CC 0012B54C 2D904000 */  daddu      $s2, $v0, $zero
    /* 2C4D0 0012B550 ECAA040C */  jal        func_0012ABB0
    /* 2C4D4 0012B554 2D206002 */   daddu     $a0, $s3, $zero
    /* 2C4D8 0012B558 80171000 */  sll        $v0, $s0, 30
    /* 2C4DC 0012B55C C08B1100 */  sll        $s1, $s1, 15
    /* 2C4E0 0012B560 25105100 */  or         $v0, $v0, $s1
    /* 2C4E4 0012B564 82801000 */  srl        $s0, $s0, 2
    /* 2C4E8 0012B568 25105200 */  or         $v0, $v0, $s2
    /* 2C4EC 0012B56C 01001032 */  andi       $s0, $s0, 0x1
    /* 2C4F0 0012B570 3C100200 */  dsll32     $v0, $v0, 0
    /* 2C4F4 0012B574 3C801000 */  dsll32     $s0, $s0, 0
    /* 2C4F8 0012B578 3E100200 */  dsrl32     $v0, $v0, 0
    /* 2C4FC 0012B57C 25800202 */  or         $s0, $s0, $v0
    /* 2C500 0012B580 180090FE */  sd         $s0, 0x18($s4)
    /* 2C504 0012B584 1400A28F */  lw         $v0, 0x14($sp)
.align 2
  .L0012B588:
    /* 2C508 0012B588 01001024 */  addiu      $s0, $zero, 0x1
    /* 2C50C 0012B58C 03005014 */  bne        $v0, $s0, .L0012B59C
    /* 2C510 0012B590 2D206002 */   daddu     $a0, $s3, $zero
    /* 2C514 0012B594 D8AA040C */  jal        func_0012AB60
    /* 2C518 0012B598 30000524 */   addiu     $a1, $zero, 0x30
.align 2
  .L0012B59C:
    /* 2C51C 0012B59C 0400C013 */  beqz       $fp, .L0012B5B0
    /* 2C520 0012B5A0 2110BE03 */   addu      $v0, $sp, $fp
    /* 2C524 0012B5A4 2D206002 */  daddu      $a0, $s3, $zero
    /* 2C528 0012B5A8 D8AA040C */  jal        func_0012AB60
    /* 2C52C 0012B5AC 00004590 */   lbu       $a1, 0x0($v0)
.align 2
  .L0012B5B0:
    /* 2C530 0012B5B0 4500B016 */  bne        $s5, $s0, .L0012B6C8
    /* 2C534 0012B5B4 2D90C002 */   daddu     $s2, $s6, $zero
    /* 2C538 0012B5B8 2D206002 */  daddu      $a0, $s3, $zero
    /* 2C53C 0012B5BC D8AA040C */  jal        func_0012AB60
    /* 2C540 0012B5C0 01000524 */   addiu     $a1, $zero, 0x1
    /* 2C544 0012B5C4 2D804000 */  daddu      $s0, $v0, $zero
    /* 2C548 0012B5C8 2D206002 */  daddu      $a0, $s3, $zero
    /* 2C54C 0012B5CC D8AA040C */  jal        func_0012AB60
    /* 2C550 0012B5D0 01000524 */   addiu     $a1, $zero, 0x1
    /* 2C554 0012B5D4 2DF04000 */  daddu      $fp, $v0, $zero
    /* 2C558 0012B5D8 2D206002 */  daddu      $a0, $s3, $zero
    /* 2C55C 0012B5DC D8AA040C */  jal        func_0012AB60
    /* 2C560 0012B5E0 01000524 */   addiu     $a1, $zero, 0x1
    /* 2C564 0012B5E4 2D904000 */  daddu      $s2, $v0, $zero
    /* 2C568 0012B5E8 2D206002 */  daddu      $a0, $s3, $zero
    /* 2C56C 0012B5EC D8AA040C */  jal        func_0012AB60
    /* 2C570 0012B5F0 01000524 */   addiu     $a1, $zero, 0x1
    /* 2C574 0012B5F4 2DB84000 */  daddu      $s7, $v0, $zero
    /* 2C578 0012B5F8 2D206002 */  daddu      $a0, $s3, $zero
    /* 2C57C 0012B5FC D8AA040C */  jal        func_0012AB60
    /* 2C580 0012B600 03000524 */   addiu     $a1, $zero, 0x3
    /* 2C584 0012B604 2D206002 */  daddu      $a0, $s3, $zero
    /* 2C588 0012B608 D8AA040C */  jal        func_0012AB60
    /* 2C58C 0012B60C 01000524 */   addiu     $a1, $zero, 0x1
    /* 2C590 0012B610 0A001516 */  bne        $s0, $s5, .L0012B63C
    /* 2C594 0012B614 2D884000 */   daddu     $s1, $v0, $zero
    /* 2C598 0012B618 2D206002 */  daddu      $a0, $s3, $zero
    /* 2C59C 0012B61C D8AA040C */  jal        func_0012AB60
    /* 2C5A0 0012B620 30000524 */   addiu     $a1, $zero, 0x30
    /* 2C5A4 0012B624 2D206002 */  daddu      $a0, $s3, $zero
    /* 2C5A8 0012B628 D8AA040C */  jal        func_0012AB60
    /* 2C5AC 0012B62C 30000524 */   addiu     $a1, $zero, 0x30
    /* 2C5B0 0012B630 2D206002 */  daddu      $a0, $s3, $zero
    /* 2C5B4 0012B634 D8AA040C */  jal        func_0012AB60
    /* 2C5B8 0012B638 20000524 */   addiu     $a1, $zero, 0x20
.align 2
  .L0012B63C:
    /* 2C5BC 0012B63C 0600D517 */  bne        $fp, $s5, .L0012B658
    /* 2C5C0 0012B640 1500053C */   lui       $a1, %hi(D_00153AD8)
    /* 2C5C4 0012B644 1000A48F */  lw         $a0, 0x10($sp)
    /* 2C5C8 0012B648 1AB1040C */  jal        func_0012C468
    /* 2C5CC 0012B64C D83AA524 */   addiu     $a1, $a1, %lo(D_00153AD8)
    /* 2C5D0 0012B650 7B000010 */  b          .L0012B840
    /* 2C5D4 0012B654 2D100000 */   daddu     $v0, $zero, $zero
.align 2
  .L0012B658:
    /* 2C5D8 0012B658 03005516 */  bne        $s2, $s5, .L0012B668
    /* 2C5DC 0012B65C 2D206002 */   daddu     $a0, $s3, $zero
    /* 2C5E0 0012B660 D8AA040C */  jal        func_0012AB60
    /* 2C5E4 0012B664 10000524 */   addiu     $a1, $zero, 0x10
.align 2
  .L0012B668:
    /* 2C5E8 0012B668 0300F516 */  bne        $s7, $s5, .L0012B678
    /* 2C5EC 0012B66C 2D206002 */   daddu     $a0, $s3, $zero
    /* 2C5F0 0012B670 D8AA040C */  jal        func_0012AB60
    /* 2C5F4 0012B674 10000524 */   addiu     $a1, $zero, 0x10
.align 2
  .L0012B678:
    /* 2C5F8 0012B678 13003516 */  bne        $s1, $s5, .L0012B6C8
    /* 2C5FC 0012B67C 2D90C002 */   daddu     $s2, $s6, $zero
    /* 2C600 0012B680 2D206002 */  daddu      $a0, $s3, $zero
    /* 2C604 0012B684 ECAA040C */  jal        func_0012ABB0
    /* 2C608 0012B688 2D800000 */   daddu     $s0, $zero, $zero
    /* 2C60C 0012B68C 2D206002 */  daddu      $a0, $s3, $zero
    /* 2C610 0012B690 D8AA040C */  jal        func_0012AB60
    /* 2C614 0012B694 07000524 */   addiu     $a1, $zero, 0x7
    /* 2C618 0012B698 2D884000 */  daddu      $s1, $v0, $zero
    /* 2C61C 0012B69C 0A002012 */  beqz       $s1, .L0012B6C8
    /* 2C620 0012B6A0 2D90C002 */   daddu     $s2, $s6, $zero
    /* 2C624 0012B6A4 2D206002 */  daddu      $a0, $s3, $zero
.align 2
  .L0012B6A8:
    /* 2C628 0012B6A8 D8AA040C */  jal        func_0012AB60
    /* 2C62C 0012B6AC 08000524 */   addiu     $a1, $zero, 0x8
    /* 2C630 0012B6B0 01001026 */  addiu      $s0, $s0, 0x1
    /* 2C634 0012B6B4 2B101102 */  sltu       $v0, $s0, $s1
    /* 2C638 0012B6B8 FBFF4014 */  bnez       $v0, .L0012B6A8
    /* 2C63C 0012B6BC 2D206002 */   daddu     $a0, $s3, $zero
    /* 2C640 0012B6C0 02000010 */  b          .L0012B6CC
    /* 2C644 0012B6C4 180062DE */   ld        $v0, 0x18($s3)
.align 2
  .L0012B6C8:
    /* 2C648 0012B6C8 180062DE */  ld         $v0, 0x18($s3)
.align 2
  .L0012B6CC:
    /* 2C64C 0012B6CC 1800A38F */  lw         $v1, 0x18($sp)
    /* 2C650 0012B6D0 2F105200 */  dsubu      $v0, $v0, $s2
    /* 2C654 0012B6D4 78170200 */  dsll       $v0, $v0, 29
    /* 2C658 0012B6D8 3F100200 */  dsra32     $v0, $v0, 0
    /* 2C65C 0012B6DC 23286200 */  subu       $a1, $v1, $v0
    /* 2C660 0012B6E0 0400A050 */  beql       $a1, $zero, .L0012B6F4
    /* 2C664 0012B6E4 1800A58F */   lw        $a1, 0x18($sp)
    /* 2C668 0012B6E8 FEAA040C */  jal        func_0012ABF8
    /* 2C66C 0012B6EC 2D206002 */   daddu     $a0, $s3, $zero
    /* 2C670 0012B6F0 1800A58F */  lw         $a1, 0x18($sp)
.align 2
  .L0012B6F4:
    /* 2C674 0012B6F4 00BD0434 */  ori        $a0, $zero, 0xBD00
    /* 2C678 0012B6F8 38260400 */  dsll       $a0, $a0, 24
    /* 2C67C 0012B6FC 0800828E */  lw         $v0, 0x8($s4)
    /* 2C680 0012B700 000083DE */  ld         $v1, 0x0($s4)
    /* 2C684 0012B704 23804500 */  subu       $s0, $v0, $a1
    /* 2C688 0012B708 FDFF0526 */  addiu      $a1, $s0, -0x3
    /* 2C68C 0012B70C 240085AE */  sw         $a1, 0x24($s4)
    /* 2C690 0012B710 1800628E */  lw         $v0, 0x18($s3)
    /* 2C694 0012B714 0A006414 */  bne        $v1, $a0, .L0012B740
    /* 2C698 0012B718 200082AE */   sw        $v0, 0x20($s4)
    /* 2C69C 0012B71C 2D206002 */  daddu      $a0, $s3, $zero
    /* 2C6A0 0012B720 D8AA040C */  jal        func_0012AB60
    /* 2C6A4 0012B724 20000524 */   addiu     $a1, $zero, 0x20
    /* 2C6A8 0012B728 000083DE */  ld         $v1, 0x0($s4)
    /* 2C6AC 0012B72C 3C100200 */  dsll32     $v0, $v0, 0
    /* 2C6B0 0012B730 3E100200 */  dsrl32     $v0, $v0, 0
    /* 2C6B4 0012B734 F9FF0526 */  addiu      $a1, $s0, -0x7
    /* 2C6B8 0012B738 25186200 */  or         $v1, $v1, $v0
    /* 2C6BC 0012B73C 000083FE */  sd         $v1, 0x0($s4)
.align 2
  .L0012B740:
    /* 2C6C0 0012B740 3F00A010 */  beqz       $a1, .L0012B840
    /* 2C6C4 0012B744 01000224 */   addiu     $v0, $zero, 0x1
    /* 2C6C8 0012B748 FEAA040C */  jal        func_0012ABF8
    /* 2C6CC 0012B74C 2D206002 */   daddu     $a0, $s3, $zero
    /* 2C6D0 0012B750 3B000010 */  b          .L0012B840
    /* 2C6D4 0012B754 01000224 */   addiu     $v0, $zero, 0x1
.align 2
  .L0012B758:
    /* 2C6D8 0012B758 00BC0234 */  ori        $v0, $zero, 0xBC00
    /* 2C6DC 0012B75C 38160200 */  dsll       $v0, $v0, 24
    /* 2C6E0 0012B760 1900A210 */  beq        $a1, $v0, .L0012B7C8
    /* 2C6E4 0012B764 00000000 */   nop
    /* 2C6E8 0012B768 00BF0234 */  ori        $v0, $zero, 0xBF00
    /* 2C6EC 0012B76C 38160200 */  dsll       $v0, $v0, 24
    /* 2C6F0 0012B770 17008210 */  beq        $a0, $v0, .L0012B7D0
    /* 2C6F4 0012B774 00000000 */   nop
    /* 2C6F8 0012B778 00F00234 */  ori        $v0, $zero, 0xF000
    /* 2C6FC 0012B77C 38160200 */  dsll       $v0, $v0, 24
    /* 2C700 0012B780 11008210 */  beq        $a0, $v0, .L0012B7C8
    /* 2C704 0012B784 00000000 */   nop
    /* 2C708 0012B788 00F10234 */  ori        $v0, $zero, 0xF100
    /* 2C70C 0012B78C 38160200 */  dsll       $v0, $v0, 24
    /* 2C710 0012B790 0D008210 */  beq        $a0, $v0, .L0012B7C8
    /* 2C714 0012B794 00000000 */   nop
    /* 2C718 0012B798 00FF0234 */  ori        $v0, $zero, 0xFF00
    /* 2C71C 0012B79C 38160200 */  dsll       $v0, $v0, 24
    /* 2C720 0012B7A0 09008210 */  beq        $a0, $v0, .L0012B7C8
    /* 2C724 0012B7A4 00000000 */   nop
    /* 2C728 0012B7A8 00F20234 */  ori        $v0, $zero, 0xF200
    /* 2C72C 0012B7AC 38160200 */  dsll       $v0, $v0, 24
    /* 2C730 0012B7B0 05008210 */  beq        $a0, $v0, .L0012B7C8
    /* 2C734 0012B7B4 00000000 */   nop
    /* 2C738 0012B7B8 00F80234 */  ori        $v0, $zero, 0xF800
    /* 2C73C 0012B7BC 38160200 */  dsll       $v0, $v0, 24
    /* 2C740 0012B7C0 15008214 */  bne        $a0, $v0, .L0012B818
    /* 2C744 0012B7C4 00000000 */   nop
.align 2
  .L0012B7C8:
    /* 2C748 0012B7C8 00BF0234 */  ori        $v0, $zero, 0xBF00
    /* 2C74C 0012B7CC 38160200 */  dsll       $v0, $v0, 24
.align 2
  .L0012B7D0:
    /* 2C750 0012B7D0 0A00A214 */  bne        $a1, $v0, .L0012B7FC
    /* 2C754 0012B7D4 0800908E */   lw        $s0, 0x8($s4)
    /* 2C758 0012B7D8 2D206002 */  daddu      $a0, $s3, $zero
    /* 2C75C 0012B7DC D8AA040C */  jal        func_0012AB60
    /* 2C760 0012B7E0 20000524 */   addiu     $a1, $zero, 0x20
    /* 2C764 0012B7E4 FCFF1026 */  addiu      $s0, $s0, -0x4
    /* 2C768 0012B7E8 000083DE */  ld         $v1, 0x0($s4)
    /* 2C76C 0012B7EC 3C100200 */  dsll32     $v0, $v0, 0
    /* 2C770 0012B7F0 3E100200 */  dsrl32     $v0, $v0, 0
    /* 2C774 0012B7F4 25186200 */  or         $v1, $v1, $v0
    /* 2C778 0012B7F8 000083FE */  sd         $v1, 0x0($s4)
.align 2
  .L0012B7FC:
    /* 2C77C 0012B7FC 10000012 */  beqz       $s0, .L0012B840
    /* 2C780 0012B800 01000224 */   addiu     $v0, $zero, 0x1
    /* 2C784 0012B804 2D206002 */  daddu      $a0, $s3, $zero
    /* 2C788 0012B808 FEAA040C */  jal        func_0012ABF8
    /* 2C78C 0012B80C 2D280002 */   daddu     $a1, $s0, $zero
    /* 2C790 0012B810 0B000010 */  b          .L0012B840
    /* 2C794 0012B814 01000224 */   addiu     $v0, $zero, 0x1
.align 2
  .L0012B818:
    /* 2C798 0012B818 00BE0234 */  ori        $v0, $zero, 0xBE00
    /* 2C79C 0012B81C 38160200 */  dsll       $v0, $v0, 24
    /* 2C7A0 0012B820 07008214 */  bne        $a0, $v0, .L0012B840
    /* 2C7A4 0012B824 01000224 */   addiu     $v0, $zero, 0x1
    /* 2C7A8 0012B828 0800858E */  lw         $a1, 0x8($s4)
    /* 2C7AC 0012B82C 0500A010 */  beqz       $a1, .L0012B844
    /* 2C7B0 0012B830 B000BFDF */   ld        $ra, 0xB0($sp)
    /* 2C7B4 0012B834 FEAA040C */  jal        func_0012ABF8
    /* 2C7B8 0012B838 2D206002 */   daddu     $a0, $s3, $zero
    /* 2C7BC 0012B83C 01000224 */  addiu      $v0, $zero, 0x1
.align 2
  .L0012B840:
    /* 2C7C0 0012B840 B000BFDF */  ld         $ra, 0xB0($sp)
.align 2
  .L0012B844:
    /* 2C7C4 0012B844 A000BEDF */  ld         $fp, 0xA0($sp)
    /* 2C7C8 0012B848 9000B7DF */  ld         $s7, 0x90($sp)
    /* 2C7CC 0012B84C 8000B6DF */  ld         $s6, 0x80($sp)
    /* 2C7D0 0012B850 7000B5DF */  ld         $s5, 0x70($sp)
    /* 2C7D4 0012B854 6000B4DF */  ld         $s4, 0x60($sp)
    /* 2C7D8 0012B858 5000B3DF */  ld         $s3, 0x50($sp)
    /* 2C7DC 0012B85C 4000B2DF */  ld         $s2, 0x40($sp)
    /* 2C7E0 0012B860 3000B1DF */  ld         $s1, 0x30($sp)
    /* 2C7E4 0012B864 2000B0DF */  ld         $s0, 0x20($sp)
    /* 2C7E8 0012B868 0800E003 */  jr         $ra
    /* 2C7EC 0012B86C C000BD27 */   addiu     $sp, $sp, 0xC0
endlabel func_0012B2C0
