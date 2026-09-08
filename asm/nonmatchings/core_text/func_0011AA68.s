.align 3
nonmatching func_0011AA68, 0x28

glabel func_0011AA68
    /* 1B9E8 0011AA68 04008104 */  bgez       $4, .L0011AA7C
    /* 1B9EC 0011AA6C C0180400 */   sll       $3, $4, 3
    /* 1B9F0 0011AA70 1500023C */  lui        $2, %hi(D_00154F64)
    /* 1B9F4 0011AA74 03000010 */  b          .L0011AA84
    /* 1B9F8 0011AA78 644F448C */   lw        $4, %lo(D_00154F64)($2)
.align 2
  .L0011AA7C:
    /* 1B9FC 0011AA7C 1500023C */  lui        $2, %hi(D_00154F6C)
    /* 1BA00 0011AA80 6C4F448C */  lw         $4, %lo(D_00154F6C)($2)
.align 2
  .L0011AA84:
    /* 1BA04 0011AA84 21186400 */  addu       $3, $3, $4
    /* 1BA08 0011AA88 0800E003 */  jr         $31
    /* 1BA0C 0011AA8C 000060AC */   sw        $0, 0x0($3)
endlabel func_0011AA68
