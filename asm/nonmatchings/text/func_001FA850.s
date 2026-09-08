.align 3
nonmatching func_001FA850, 0x38

glabel func_001FA850
    /* FB7D0 001FA850 01600D46 */  sub.s      $f0, $f12, $f13
    /* FB7D4 001FA854 4940013C */  lui        $1, (0x40490FDB >> 16)
    /* FB7D8 001FA858 DB0F2134 */  ori        $1, $1, (0x40490FDB & 0xFFFF)
    /* FB7DC 001FA85C 00708144 */  mtc1       $1, $f14
    /* FB7E0 001FA860 00000000 */  nop
    /* FB7E4 001FA864 05000046 */  abs.s      $f0, $f0
    /* FB7E8 001FA868 34000E46 */  c.lt.s     $f0, $f14
    /* FB7EC 001FA86C 00000000 */  nop
    /* FB7F0 001FA870 03000145 */  bc1t       .L001FA880
    /* FB7F4 001FA874 00000000 */   nop
    /* FB7F8 001FA878 40700E46 */  add.s      $f1, $f14, $f14
    /* FB7FC 001FA87C 01080046 */  sub.s      $f0, $f1, $f0
.align 2
  .L001FA880:
    /* FB800 001FA880 0800E003 */  jr         $31
    /* FB804 001FA884 00000000 */   nop
endlabel func_001FA850
