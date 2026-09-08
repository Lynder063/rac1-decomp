.align 3
nonmatching func_001FF668, 0x4C

glabel func_001FF668
    /* 1005E8 001FF668 1A00023C */  lui        $v0, %hi(D_0019A504)
    /* 1005EC 001FF66C 04A5458C */  lw         $a1, %lo(D_0019A504)($v0)
    /* 1005F0 001FF670 FFFF0334 */  ori        $v1, $zero, 0xFFFF
    /* 1005F4 001FF674 0000A294 */  lhu        $v0, 0x0($a1)
    /* 1005F8 001FF678 0C004310 */  beq        $v0, $v1, .L001FF6AC
    /* 1005FC 001FF67C 2D300000 */   daddu     $a2, $zero, $zero
    /* 100600 001FF680 0A004410 */  beq        $v0, $a0, .L001FF6AC
    /* 100604 001FF684 2D18A000 */   daddu     $v1, $a1, $zero
    /* 100608 001FF688 FFFF0534 */  ori        $a1, $zero, 0xFFFF
    /* 10060C 001FF68C 08006324 */  addiu      $v1, $v1, 0x8
.align 2
  .L001FF690:
    /* 100610 001FF690 00006294 */  lhu        $v0, 0x0($v1)
    /* 100614 001FF694 05004510 */  beq        $v0, $a1, .L001FF6AC
    /* 100618 001FF698 0100C624 */   addiu     $a2, $a2, 0x1
    /* 10061C 001FF69C 00000000 */  nop
    /* 100620 001FF6A0 00000000 */  nop
    /* 100624 001FF6A4 FAFF4414 */  bne        $v0, $a0, .L001FF690
    /* 100628 001FF6A8 08006324 */   addiu     $v1, $v1, 0x8
.align 2
  .L001FF6AC:
    /* 10062C 001FF6AC 0800E003 */  jr         $ra
    /* 100630 001FF6B0 2D10C000 */   daddu     $v0, $a2, $zero
endlabel func_001FF668
    /* 100634 001FF6B4 00000000 */  nop
