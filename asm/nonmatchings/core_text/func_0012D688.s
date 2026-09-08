.align 3
nonmatching func_0012D688, 0xA4

glabel func_0012D688
    /* 2E608 0012D688 2D288000 */  daddu      $a1, $a0, $zero
    /* 2E60C 0012D68C F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 2E610 0012D690 0500A390 */  lbu        $v1, 0x5($a1)
    /* 2E614 0012D694 1500023C */  lui        $v0, %hi(D_00153D40)
    /* 2E618 0012D698 0700A490 */  lbu        $a0, 0x7($a1)
    /* 2E61C 0012D69C FFFF6324 */  addiu      $v1, $v1, -0x1
    /* 2E620 0012D6A0 403D4924 */  addiu      $t1, $v0, %lo(D_00153D40)
    /* 2E624 0012D6A4 07002669 */  ldl        $a2, 0x7($t1)
    /* 2E628 0012D6A8 0000266D */  ldr        $a2, 0x0($t1)
    /* 2E62C 0012D6AC 0B002789 */  lwl        $a3, 0xB($t1)
    /* 2E630 0012D6B0 08002799 */  lwr        $a3, 0x8($t1)
    /* 2E634 0012D6B4 0700A6B3 */  sdl        $a2, 0x7($sp)
    /* 2E638 0012D6B8 0000A6B7 */  sdr        $a2, 0x0($sp)
    /* 2E63C 0012D6BC 0B00A7AB */  swl        $a3, 0xB($sp)
    /* 2E640 0012D6C0 0800A7BB */  swr        $a3, 0x8($sp)
    /* 2E644 0012D6C4 03008430 */  andi       $a0, $a0, 0x3
    /* 2E648 0012D6C8 03008014 */  bnez       $a0, .L0012D6D8
    /* 2E64C 0012D6CC 0500A3A0 */   sb        $v1, 0x5($a1)
    /* 2E650 0012D6D0 1D000224 */  addiu      $v0, $zero, 0x1D
    /* 2E654 0012D6D4 0100A2A3 */  sb         $v0, 0x1($sp)
.align 2
  .L0012D6D8:
    /* 2E658 0012D6D8 0500A290 */  lbu        $v0, 0x5($a1)
    /* 2E65C 0012D6DC 11004014 */  bnez       $v0, .L0012D724
    /* 2E660 0012D6E0 00000000 */   nop
    /* 2E664 0012D6E4 0600A290 */  lbu        $v0, 0x6($a1)
    /* 2E668 0012D6E8 FFFF4224 */  addiu      $v0, $v0, -0x1
    /* 2E66C 0012D6EC FF004330 */  andi       $v1, $v0, 0xFF
    /* 2E670 0012D6F0 08006014 */  bnez       $v1, .L0012D714
    /* 2E674 0012D6F4 0600A2A0 */   sb        $v0, 0x6($a1)
    /* 2E678 0012D6F8 0700A290 */  lbu        $v0, 0x7($a1)
    /* 2E67C 0012D6FC 02004014 */  bnez       $v0, .L0012D708
    /* 2E680 0012D700 FFFF4224 */   addiu     $v0, $v0, -0x1
    /* 2E684 0012D704 63000224 */  addiu      $v0, $zero, 0x63
.align 2
  .L0012D708:
    /* 2E688 0012D708 0700A2A0 */  sb         $v0, 0x7($a1)
    /* 2E68C 0012D70C 0C000224 */  addiu      $v0, $zero, 0xC
    /* 2E690 0012D710 0600A2A0 */  sb         $v0, 0x6($a1)
.align 2
  .L0012D714:
    /* 2E694 0012D714 0600A290 */  lbu        $v0, 0x6($a1)
    /* 2E698 0012D718 21105D00 */  addu       $v0, $v0, $sp
    /* 2E69C 0012D71C FFFF4390 */  lbu        $v1, -0x1($v0)
    /* 2E6A0 0012D720 0500A3A0 */  sb         $v1, 0x5($a1)
.align 2
  .L0012D724:
    /* 2E6A4 0012D724 0800E003 */  jr         $ra
    /* 2E6A8 0012D728 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_0012D688
    /* 2E6AC 0012D72C 00000000 */  nop
