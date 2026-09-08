.align 3
nonmatching func_0012F2E0, 0x24

glabel func_0012F2E0
    /* 30260 0012F2E0 F4050524 */  addiu      $a1, $zero, 0x5F4
    /* 30264 0012F2E4 E5020324 */  addiu      $v1, $zero, 0x2E5
    /* 30268 0012F2E8 18108500 */  mult       $v0, $a0, $a1
    /* 3026C 0012F2EC 01006050 */  beql       $v1, $zero, .L0012F2F4
    /* 30270 0012F2F0 CD010000 */   break     0, 7
.align 2
  .L0012F2F4:
    /* 30274 0012F2F4 1A004300 */  div        $zero, $v0, $v1
    /* 30278 0012F2F8 12100000 */  mflo       $v0
    /* 3027C 0012F2FC 0800E003 */  jr         $ra
    /* 30280 0012F300 00000000 */   nop
endlabel func_0012F2E0
    /* 30284 0012F304 00000000 */  nop
