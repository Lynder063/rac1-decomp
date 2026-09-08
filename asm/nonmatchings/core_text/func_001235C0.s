.align 3
nonmatching func_001235C0, 0x70

glabel func_001235C0
    /* 24540 001235C0 000064AC */  sw         $a0, 0x0($v1)
    /* 24544 001235C4 00000000 */  nop
.align 2
  alabel func_001235C8
    /* 24548 001235C8 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 2454C 001235CC 0000B0FF */  sd         $s0, 0x0($sp)
    /* 24550 001235D0 2D808000 */  daddu      $s0, $a0, $zero
    /* 24554 001235D4 1000B1FF */  sd         $s1, 0x10($sp)
    /* 24558 001235D8 2000BFFF */  sd         $ra, 0x20($sp)
    /* 2455C 001235DC A08C040C */  jal        func_00123280
    /* 24560 001235E0 2D20A000 */   daddu     $a0, $a1, $zero
    /* 24564 001235E4 2D884000 */  daddu      $s1, $v0, $zero
    /* 24568 001235E8 828C040C */  jal        func_00123208
    /* 2456C 001235EC 2D200002 */   daddu     $a0, $s0, $zero
    /* 24570 001235F0 FFFF023C */  lui        $v0, (0xFFFFFFFF >> 16)
    /* 24574 001235F4 3000038E */  lw         $v1, 0x30($s0)
    /* 24578 001235F8 FFFF4234 */  ori        $v0, $v0, (0xFFFFFFFF & 0xFFFF)
    /* 2457C 001235FC 01006254 */  bnel       $v1, $v0, .L00123604
    /* 24580 00123600 300011AE */   sw        $s1, 0x30($s0)
.align 2
  .L00123604:
    /* 24584 00123604 0000028E */  lw         $v0, 0x0($s0)
    /* 24588 00123608 F3FF0324 */  addiu      $v1, $zero, -0xD
    /* 2458C 0012360C 200000AE */  sw         $zero, 0x20($s0)
    /* 24590 00123610 24104300 */  and        $v0, $v0, $v1
    /* 24594 00123614 2000BFDF */  ld         $ra, 0x20($sp)
    /* 24598 00123618 05014234 */  ori        $v0, $v0, 0x105
    /* 2459C 0012361C 1000B1DF */  ld         $s1, 0x10($sp)
    /* 245A0 00123620 000002AE */  sw         $v0, 0x0($s0)
    /* 245A4 00123624 0000B0DF */  ld         $s0, 0x0($sp)
    /* 245A8 00123628 0800E003 */  jr         $ra
    /* 245AC 0012362C 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_001235C0
