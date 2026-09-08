.align 3
nonmatching func_0011B1F8, 0x4C

glabel func_0011B1F8
    /* 1C178 0011B1F8 2800A58C */  lw         $a1, 0x28($a1)
    /* 1C17C 0011B1FC 0F00A010 */  beqz       $a1, .L0011B23C
    /* 1C180 0011B200 00000000 */   nop
    /* 1C184 0011B204 0800A38C */  lw         $v1, 0x8($a1)
.align 2
  .L0011B208:
    /* 1C188 0011B208 0A006050 */  beql       $v1, $zero, .L0011B234
    /* 1C18C 0011B20C 1400A58C */   lw        $a1, 0x14($a1)
    /* 1C190 0011B210 0000628C */  lw         $v0, 0x0($v1)
    /* 1C194 0011B214 00000000 */  nop
.align 2
  .L0011B218:
    /* 1C198 0011B218 03004454 */  bnel       $v0, $a0, .L0011B228
    /* 1C19C 0011B21C 3800638C */   lw        $v1, 0x38($v1)
    /* 1C1A0 0011B220 0800E003 */  jr         $ra
    /* 1C1A4 0011B224 2D106000 */   daddu     $v0, $v1, $zero
.align 2
  .L0011B228:
    /* 1C1A8 0011B228 FBFF6054 */  bnel       $v1, $zero, .L0011B218
    /* 1C1AC 0011B22C 0000628C */   lw        $v0, 0x0($v1)
    /* 1C1B0 0011B230 1400A58C */  lw         $a1, 0x14($a1)
.align 2
  .L0011B234:
    /* 1C1B4 0011B234 F4FFA054 */  bnel       $a1, $zero, .L0011B208
    /* 1C1B8 0011B238 0800A38C */   lw        $v1, 0x8($a1)
.align 2
  .L0011B23C:
    /* 1C1BC 0011B23C 0800E003 */  jr         $ra
    /* 1C1C0 0011B240 2D100000 */   daddu     $v0, $zero, $zero
endlabel func_0011B1F8
    /* 1C1C4 0011B244 00000000 */  nop
