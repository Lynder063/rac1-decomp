.align 3
nonmatching func_001FA7D8, 0x78

glabel func_001FA7D8
    /* FB758 001FA7D8 06600046 */  mov.s      $f0, $f12
    /* FB75C 001FA7DC 4940013C */  lui        $1, (0x40490FDB >> 16)
    /* FB760 001FA7E0 49C0023C */  lui        $2, (0xC0490FDB >> 16)
    /* FB764 001FA7E4 DB0F2134 */  ori        $1, $1, (0x40490FDB & 0xFFFF)
    /* FB768 001FA7E8 DB0F4234 */  ori        $2, $2, (0xC0490FDB & 0xFFFF)
    /* FB76C 001FA7EC 00708144 */  mtc1       $1, $f14
    /* FB770 001FA7F0 34000E46 */  c.lt.s     $f0, $f14
    /* FB774 001FA7F4 00788244 */  mtc1       $2, $f15
    /* FB778 001FA7F8 08000145 */  bc1t       .L001FA81C
    /* FB77C 001FA7FC 00000000 */   nop
.align 2
  .L001FA800:
    /* FB780 001FA800 01000E46 */  sub.s      $f0, $f0, $f14
    /* FB784 001FA804 01000E46 */  sub.s      $f0, $f0, $f14
    /* FB788 001FA808 34000E46 */  c.lt.s     $f0, $f14
    /* FB78C 001FA80C 00000000 */  nop
    /* FB790 001FA810 00000000 */  nop
    /* FB794 001FA814 FAFF0045 */  bc1f       .L001FA800
    /* FB798 001FA818 00000000 */   nop
.align 2
  .L001FA81C:
    /* FB79C 001FA81C 34000F46 */  c.lt.s     $f0, $f15
    /* FB7A0 001FA820 00000000 */  nop
    /* FB7A4 001FA824 08000045 */  bc1f       .L001FA848
    /* FB7A8 001FA828 00000000 */   nop
.align 2
  .L001FA82C:
    /* FB7AC 001FA82C 00000E46 */  add.s      $f0, $f0, $f14
    /* FB7B0 001FA830 00000E46 */  add.s      $f0, $f0, $f14
    /* FB7B4 001FA834 34000F46 */  c.lt.s     $f0, $f15
    /* FB7B8 001FA838 00000000 */  nop
    /* FB7BC 001FA83C 00000000 */  nop
    /* FB7C0 001FA840 FAFF0145 */  bc1t       .L001FA82C
    /* FB7C4 001FA844 00000000 */   nop
.align 2
  .L001FA848:
    /* FB7C8 001FA848 0800E003 */  jr         $31
    /* FB7CC 001FA84C 00000000 */   nop
endlabel func_001FA7D8
