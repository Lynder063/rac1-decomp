.align 3
nonmatching func_001EB300, 0x38

glabel func_001EB300
    /* EC280 001EB300 1600053C */  lui        $a1, %hi(D_0015F064)
    /* EC284 001EB304 64F0A58C */  lw         $a1, %lo(D_0015F064)($a1)
    /* EC288 001EB308 80200400 */  sll        $a0, $a0, 2
    /* EC28C 001EB30C 1600033C */  lui        $v1, %hi(D_0015F060)
    /* EC290 001EB310 60F0638C */  lw         $v1, %lo(D_0015F060)($v1)
    /* EC294 001EB314 1A00063C */  lui        $a2, %hi(D_001997FC)
    /* EC298 001EB318 21208500 */  addu       $a0, $a0, $a1
    /* EC29C 001EB31C 0000828C */  lw         $v0, 0x0($a0)
    /* EC2A0 001EB320 21186200 */  addu       $v1, $v1, $v0
    /* EC2A4 001EB324 0000648C */  lw         $a0, 0x0($v1)
    /* EC2A8 001EB328 08006324 */  addiu      $v1, $v1, 0x8
    /* EC2AC 001EB32C FC97C4AC */  sw         $a0, %lo(D_001997FC)($a2)
    /* EC2B0 001EB330 0800E003 */  jr         $ra
    /* EC2B4 001EB334 808A83AF */   sw        $v1, -0x7580($gp)
endlabel func_001EB300
