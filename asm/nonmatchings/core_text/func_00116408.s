.align 3
nonmatching func_00116408, 0x20

glabel func_00116408
    /* 17388 00116408 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 1738C 0011640C 0000BFFF */  sd         $ra, 0x0($sp)
    /* 17390 00116410 0E008584 */  lh         $a1, 0xE($a0)
    /* 17394 00116414 1A49040C */  jal        func_00112468
    /* 17398 00116418 5400848C */   lw        $a0, 0x54($a0)
    /* 1739C 0011641C 0000BFDF */  ld         $ra, 0x0($sp)
    /* 173A0 00116420 0800E003 */  jr         $ra
    /* 173A4 00116424 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_00116408
