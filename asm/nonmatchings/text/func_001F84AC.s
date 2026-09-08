/* Handwritten function */
nonmatching func_001F84AC, 0x80

glabel func_001F84AC
    /* F942C 001F84AC 89FF1F70 */  pexew      $ra, $ra
    /* F9430 001F84B0 00002048 */  qmfc2.ni   $zero, $vf0
    /* F9434 001F84B4 4BE1070C */  jal        func_001F852C
    /* F9438 001F84B8 05000420 */   addi      $a0, $zero, 0x5 /* handwritten instruction */
    /* F943C 001F84BC 0024083C */  lui        $t0, (0x24000000 >> 16)
    /* F9440 001F84C0 70004ADE */  ld         $t2, 0x70($s2)
    /* F9444 001F84C4 3C400800 */  dsll32     $t0, $t0, 0
    /* F9448 001F84C8 78004BDE */  ld         $t3, 0x78($s2)
    /* F944C 001F84CC 01000835 */  ori        $t0, $t0, 0x1
    /* F9450 001F84D0 68000934 */  ori        $t1, $zero, 0x68
    /* F9454 001F84D4 89536A71 */  pcpyld     $t2, $t3, $t2
    /* F9458 001F84D8 80004CDE */  ld         $t4, 0x80($s2)
    /* F945C 001F84DC 89432871 */  pcpyld     $t0, $t1, $t0
    /* F9460 001F84E0 10002A7C */  sq         $t2, 0x10($at)
    /* F9464 001F84E4 0000287C */  sq         $t0, 0x0($at)
    /* F9468 001F84E8 14000B34 */  ori        $t3, $zero, 0x14
    /* F946C 001F84EC 89636C71 */  pcpyld     $t4, $t3, $t4
    /* F9470 001F84F0 88004ADE */  ld         $t2, 0x88($s2)
    /* F9474 001F84F4 0020083C */  lui        $t0, (0x20000000 >> 16)
    /* F9478 001F84F8 EE000934 */  ori        $t1, $zero, 0xEE
    /* F947C 001F84FC 3C400800 */  dsll32     $t0, $t0, 0
    /* F9480 001F8500 42000B34 */  ori        $t3, $zero, 0x42
    /* F9484 001F8504 01800835 */  ori        $t0, $t0, 0x8001
    /* F9488 001F8508 00000000 */  nop
    /* F948C 001F850C 89432871 */  pcpyld     $t0, $t1, $t0
    /* F9490 001F8510 30002C7C */  sq         $t4, 0x30($at)
    /* F9494 001F8514 89536A71 */  pcpyld     $t2, $t3, $t2
    /* F9498 001F8518 2000287C */  sq         $t0, 0x20($at)
    /* F949C 001F851C 89FF1F70 */  pexew      $ra, $ra
    /* F94A0 001F8520 00002048 */  qmfc2.ni   $zero, $vf0
    /* F94A4 001F8524 0800E003 */  jr         $ra
    /* F94A8 001F8528 40002A7C */   sq        $t2, 0x40($at)
endlabel func_001F84AC
