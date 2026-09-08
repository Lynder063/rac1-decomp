.align 3
nonmatching func_0012D4E0, 0x20

glabel func_0012D4E0
    /* 2E460 0012D4E0 FF008230 */  andi       $2, $4, 0xFF
    /* 2E464 0012D4E4 02190200 */  srl        $3, $2, 4
    /* 2E468 0012D4E8 06000424 */  addiu      $4, $0, 0x6
    /* 2E46C 0012D4EC 18006400 */  mult       $0, $3, $4
    /* 2E470 0012D4F0 12180000 */  mflo       $3
    /* 2E474 0012D4F4 23104300 */  subu       $2, $2, $3
    /* 2E478 0012D4F8 0800E003 */  jr         $31
    /* 2E47C 0012D4FC FF004230 */   andi      $2, $2, 0xFF
endlabel func_0012D4E0
