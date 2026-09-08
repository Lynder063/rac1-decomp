.align 3
nonmatching func_0012D5D0, 0xB4

glabel func_0012D5D0
    /* 2E550 0012D5D0 2D288000 */  daddu      $a1, $a0, $zero
    /* 2E554 0012D5D4 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 2E558 0012D5D8 0500A390 */  lbu        $v1, 0x5($a1)
    /* 2E55C 0012D5DC 1500023C */  lui        $v0, %hi(D_00153D40)
    /* 2E560 0012D5E0 0700A490 */  lbu        $a0, 0x7($a1)
    /* 2E564 0012D5E4 01006324 */  addiu      $v1, $v1, 0x1
    /* 2E568 0012D5E8 403D4924 */  addiu      $t1, $v0, %lo(D_00153D40)
    /* 2E56C 0012D5EC 07002669 */  ldl        $a2, 0x7($t1)
    /* 2E570 0012D5F0 0000266D */  ldr        $a2, 0x0($t1)
    /* 2E574 0012D5F4 0B002789 */  lwl        $a3, 0xB($t1)
    /* 2E578 0012D5F8 08002799 */  lwr        $a3, 0x8($t1)
    /* 2E57C 0012D5FC 0700A6B3 */  sdl        $a2, 0x7($sp)
    /* 2E580 0012D600 0000A6B7 */  sdr        $a2, 0x0($sp)
    /* 2E584 0012D604 0B00A7AB */  swl        $a3, 0xB($sp)
    /* 2E588 0012D608 0800A7BB */  swr        $a3, 0x8($sp)
    /* 2E58C 0012D60C 03008430 */  andi       $a0, $a0, 0x3
    /* 2E590 0012D610 03008014 */  bnez       $a0, .L0012D620
    /* 2E594 0012D614 0500A3A0 */   sb        $v1, 0x5($a1)
    /* 2E598 0012D618 1D000224 */  addiu      $v0, $zero, 0x1D
    /* 2E59C 0012D61C 0100A2A3 */  sb         $v0, 0x1($sp)
.align 2
  .L0012D620:
    /* 2E5A0 0012D620 0600A290 */  lbu        $v0, 0x6($a1)
    /* 2E5A4 0012D624 0500A490 */  lbu        $a0, 0x5($a1)
    /* 2E5A8 0012D628 21105D00 */  addu       $v0, $v0, $sp
    /* 2E5AC 0012D62C FFFF4380 */  lb         $v1, -0x1($v0)
    /* 2E5B0 0012D630 2A186400 */  slt        $v1, $v1, $a0
    /* 2E5B4 0012D634 11006010 */  beqz       $v1, .L0012D67C
    /* 2E5B8 0012D638 01000224 */   addiu     $v0, $zero, 0x1
    /* 2E5BC 0012D63C 0600A390 */  lbu        $v1, 0x6($a1)
    /* 2E5C0 0012D640 0500A2A0 */  sb         $v0, 0x5($a1)
    /* 2E5C4 0012D644 0D000424 */  addiu      $a0, $zero, 0xD
    /* 2E5C8 0012D648 01006324 */  addiu      $v1, $v1, 0x1
    /* 2E5CC 0012D64C FF006230 */  andi       $v0, $v1, 0xFF
    /* 2E5D0 0012D650 0A004414 */  bne        $v0, $a0, .L0012D67C
    /* 2E5D4 0012D654 0600A3A0 */   sb        $v1, 0x6($a1)
    /* 2E5D8 0012D658 0700A390 */  lbu        $v1, 0x7($a1)
    /* 2E5DC 0012D65C 63000224 */  addiu      $v0, $zero, 0x63
    /* 2E5E0 0012D660 03006214 */  bne        $v1, $v0, .L0012D670
    /* 2E5E4 0012D664 01006224 */   addiu     $v0, $v1, 0x1
    /* 2E5E8 0012D668 02000010 */  b          .L0012D674
    /* 2E5EC 0012D66C 0700A0A0 */   sb        $zero, 0x7($a1)
.align 2
  .L0012D670:
    /* 2E5F0 0012D670 0700A2A0 */  sb         $v0, 0x7($a1)
.align 2
  .L0012D674:
    /* 2E5F4 0012D674 01000224 */  addiu      $v0, $zero, 0x1
    /* 2E5F8 0012D678 0600A2A0 */  sb         $v0, 0x6($a1)
.align 2
  .L0012D67C:
    /* 2E5FC 0012D67C 0800E003 */  jr         $ra
    /* 2E600 0012D680 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_0012D5D0
    /* 2E604 0012D684 00000000 */  nop
