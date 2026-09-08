.align 3
nonmatching func_001FA748, 0x48

glabel func_001FA748
    /* FB6C8 001FA748 00600D46 */  add.s      $f0, $f12, $f13
    /* FB6CC 001FA74C 4940013C */  lui        $at, (0x40490FDB >> 16)
    /* FB6D0 001FA750 49C0023C */  lui        $v0, (0xC0490FDB >> 16)
    /* FB6D4 001FA754 DB0F2134 */  ori        $at, $at, (0x40490FDB & 0xFFFF)
    /* FB6D8 001FA758 DB0F4234 */  ori        $v0, $v0, (0xC0490FDB & 0xFFFF)
    /* FB6DC 001FA75C 00708144 */  mtc1       $at, $f14
    /* FB6E0 001FA760 34000E46 */  c.lt.s     $f0, $f14
    /* FB6E4 001FA764 00788244 */  mtc1       $v0, $f15
    /* FB6E8 001FA768 03000145 */  bc1t       .L001FA778
    /* FB6EC 001FA76C 34000F46 */   c.lt.s    $f0, $f15
    /* FB6F0 001FA770 01000E46 */  sub.s      $f0, $f0, $f14
    /* FB6F4 001FA774 01000E46 */  sub.s      $f0, $f0, $f14
.align 2
  .L001FA778:
    /* FB6F8 001FA778 03000045 */  bc1f       .L001FA788
    /* FB6FC 001FA77C 00000000 */   nop
    /* FB700 001FA780 00000E46 */  add.s      $f0, $f0, $f14
    /* FB704 001FA784 00000E46 */  add.s      $f0, $f0, $f14
.align 2
  .L001FA788:
    /* FB708 001FA788 0800E003 */  jr         $ra
    /* FB70C 001FA78C 00000000 */   nop
endlabel func_001FA748
