.align 3
nonmatching func_001FA790, 0x48

glabel func_001FA790
    /* FB710 001FA790 01600D46 */  sub.s      $f0, $f12, $f13
    /* FB714 001FA794 4940013C */  lui        $at, (0x40490FDB >> 16)
    /* FB718 001FA798 49C0023C */  lui        $v0, (0xC0490FDB >> 16)
    /* FB71C 001FA79C DB0F2134 */  ori        $at, $at, (0x40490FDB & 0xFFFF)
    /* FB720 001FA7A0 DB0F4234 */  ori        $v0, $v0, (0xC0490FDB & 0xFFFF)
    /* FB724 001FA7A4 00708144 */  mtc1       $at, $f14
    /* FB728 001FA7A8 34000E46 */  c.lt.s     $f0, $f14
    /* FB72C 001FA7AC 00788244 */  mtc1       $v0, $f15
    /* FB730 001FA7B0 03000145 */  bc1t       .L001FA7C0
    /* FB734 001FA7B4 34000F46 */   c.lt.s    $f0, $f15
    /* FB738 001FA7B8 01000E46 */  sub.s      $f0, $f0, $f14
    /* FB73C 001FA7BC 01000E46 */  sub.s      $f0, $f0, $f14
.align 2
  .L001FA7C0:
    /* FB740 001FA7C0 03000045 */  bc1f       .L001FA7D0
    /* FB744 001FA7C4 00000000 */   nop
    /* FB748 001FA7C8 00000E46 */  add.s      $f0, $f0, $f14
    /* FB74C 001FA7CC 00000E46 */  add.s      $f0, $f0, $f14
.align 2
  .L001FA7D0:
    /* FB750 001FA7D0 0800E003 */  jr         $ra
    /* FB754 001FA7D4 00000000 */   nop
endlabel func_001FA790
