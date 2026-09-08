.align 3
nonmatching func_0011AA38, 0x2C

glabel func_0011AA38
    /* 1B9B8 0011AA38 04008104 */  bgez       $4, .L0011AA4C
    /* 1B9BC 0011AA3C C0180400 */   sll       $3, $4, 3
    /* 1B9C0 0011AA40 1500023C */  lui        $2, %hi(D_00154F64)
    /* 1B9C4 0011AA44 03000010 */  b          .L0011AA54
    /* 1B9C8 0011AA48 644F448C */   lw        $4, %lo(D_00154F64)($2)
.align 2
  .L0011AA4C:
    /* 1B9CC 0011AA4C 1500023C */  lui        $2, %hi(D_00154F6C)
    /* 1B9D0 0011AA50 6C4F448C */  lw         $4, %lo(D_00154F6C)($2)
.align 2
  .L0011AA54:
    /* 1B9D4 0011AA54 21186400 */  addu       $3, $3, $4
    /* 1B9D8 0011AA58 040066AC */  sw         $6, 0x4($3)
    /* 1B9DC 0011AA5C 0800E003 */  jr         $31
    /* 1B9E0 0011AA60 000065AC */   sw        $5, 0x0($3)
endlabel func_0011AA38
    /* 1B9E4 0011AA64 00000000 */  nop
