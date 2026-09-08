.align 3
nonmatching func_0012F348, 0xAC

glabel func_0012F348
    /* 302C8 0012F348 A0FFBD27 */  addiu      $sp, $sp, -0x60
    /* 302CC 0012F34C 1600033C */  lui        $v1, %hi(D_0015EE58)
    /* 302D0 0012F350 58EE6390 */  lbu        $v1, %lo(D_0015EE58)($v1)
    /* 302D4 0012F354 1000B07F */  sq         $s0, 0x10($sp)
    /* 302D8 0012F358 20000224 */  addiu      $v0, $zero, 0x20
    /* 302DC 0012F35C 4000B37F */  sq         $s3, 0x40($sp)
    /* 302E0 0012F360 2D80A000 */  daddu      $s0, $a1, $zero
    /* 302E4 0012F364 3000B27F */  sq         $s2, 0x30($sp)
    /* 302E8 0012F368 C09A1000 */  sll        $s3, $s0, 11
    /* 302EC 0012F36C 2000B17F */  sq         $s1, 0x20($sp)
    /* 302F0 0012F370 2D908000 */  daddu      $s2, $a0, $zero
    /* 302F4 0012F374 5000BF7F */  sq         $ra, 0x50($sp)
    /* 302F8 0012F378 2D88C000 */  daddu      $s1, $a2, $zero
    /* 302FC 0012F37C 0000A2A3 */  sb         $v0, 0x0($sp)
    /* 30300 0012F380 0100A3A3 */  sb         $v1, 0x1($sp)
    /* 30304 0012F384 0200A0A3 */  sb         $zero, 0x2($sp)
    /* 30308 0012F388 0300A0A3 */  sb         $zero, 0x3($sp)
    /* 3030C 0012F38C 2D204002 */  daddu      $a0, $s2, $zero
.align 2
  .L0012F390:
    /* 30310 0012F390 2D280002 */  daddu      $a1, $s0, $zero
    /* 30314 0012F394 2D302002 */  daddu      $a2, $s1, $zero
    /* 30318 0012F398 D485040C */  jal        func_00121750
    /* 3031C 0012F39C 2D38A003 */   daddu     $a3, $sp, $zero
    /* 30320 0012F3A0 03000010 */  b          .L0012F3B0
    /* 30324 0012F3A4 00000000 */   nop
.align 2
  .L0012F3A8:
    /* 30328 0012F3A8 6689040C */  jal        func_00122598
    /* 3032C 0012F3AC 2D200000 */   daddu     $a0, $zero, $zero
.align 2
  .L0012F3B0:
    /* 30330 0012F3B0 CC83040C */  jal        func_00120F30
    /* 30334 0012F3B4 01000424 */   addiu     $a0, $zero, 0x1
    /* 30338 0012F3B8 00000000 */  nop
    /* 3033C 0012F3BC FAFF4014 */  bnez       $v0, .L0012F3A8
    /* 30340 0012F3C0 00000000 */   nop
    /* 30344 0012F3C4 4C86040C */  jal        func_00121930
    /* 30348 0012F3C8 00000000 */   nop
    /* 3034C 0012F3CC F0FF4014 */  bnez       $v0, .L0012F390
    /* 30350 0012F3D0 2D204002 */   daddu     $a0, $s2, $zero
    /* 30354 0012F3D4 2D106002 */  daddu      $v0, $s3, $zero
    /* 30358 0012F3D8 5000BF7B */  lq         $ra, 0x50($sp)
    /* 3035C 0012F3DC 4000B37B */  lq         $s3, 0x40($sp)
    /* 30360 0012F3E0 3000B27B */  lq         $s2, 0x30($sp)
    /* 30364 0012F3E4 2000B17B */  lq         $s1, 0x20($sp)
    /* 30368 0012F3E8 1000B07B */  lq         $s0, 0x10($sp)
    /* 3036C 0012F3EC 0800E003 */  jr         $ra
    /* 30370 0012F3F0 6000BD27 */   addiu     $sp, $sp, 0x60
endlabel func_0012F348
    /* 30374 0012F3F4 00000000 */  nop
