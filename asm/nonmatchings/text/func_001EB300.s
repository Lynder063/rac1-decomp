.align 3
nonmatching func_001EB300, 0x38

glabel func_001EB300
    /* EC280 001EB300 1600053C */  lui        $5, %hi(D_0015F064)
    /* EC284 001EB304 64F0A58C */  lw         $5, %lo(D_0015F064)($5)
    /* EC288 001EB308 80200400 */  sll        $4, $4, 2
    /* EC28C 001EB30C 1600033C */  lui        $3, %hi(D_0015F060)
    /* EC290 001EB310 60F0638C */  lw         $3, %lo(D_0015F060)($3)
    /* EC294 001EB314 1A00063C */  lui        $6, %hi(D_001997FC)
    /* EC298 001EB318 21208500 */  addu       $4, $4, $5
    /* EC29C 001EB31C 0000828C */  lw         $2, 0x0($4)
    /* EC2A0 001EB320 21186200 */  addu       $3, $3, $2
    /* EC2A4 001EB324 0000648C */  lw         $4, 0x0($3)
    /* EC2A8 001EB328 08006324 */  addiu      $3, $3, 0x8
    /* EC2AC 001EB32C FC97C4AC */  sw         $4, %lo(D_001997FC)($6)
    /* EC2B0 001EB330 0800E003 */  jr         $31
    /* EC2B4 001EB334 808A83AF */   sw        $3, -0x7580($28)
endlabel func_001EB300
