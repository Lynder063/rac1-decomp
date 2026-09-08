.align 3
nonmatching func_0012D4E0, 0x20

glabel func_0012D4E0
    /* 2E460 0012D4E0 FF008230 */  andi       $v0, $a0, 0xFF
    /* 2E464 0012D4E4 02190200 */  srl        $v1, $v0, 4
    /* 2E468 0012D4E8 06000424 */  addiu      $a0, $zero, 0x6
    /* 2E46C 0012D4EC 18006400 */  mult       $zero, $v1, $a0
    /* 2E470 0012D4F0 12180000 */  mflo       $v1
    /* 2E474 0012D4F4 23104300 */  subu       $v0, $v0, $v1
    /* 2E478 0012D4F8 0800E003 */  jr         $ra
    /* 2E47C 0012D4FC FF004230 */   andi      $v0, $v0, 0xFF
endlabel func_0012D4E0
