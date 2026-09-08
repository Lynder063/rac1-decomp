.align 3
nonmatching func_00129C78, 0x28

glabel func_00129C78
    /* 2ABF8 00129C78 0800828C */  lw         $2, 0x8($4)
    /* 2ABFC 00129C7C 02000324 */  addiu      $3, $0, 0x2
    /* 2AC00 00129C80 05004310 */  beq        $2, $3, .L00129C98
    /* 2AC04 00129C84 01000224 */   addiu     $2, $0, 0x1
    /* 2AC08 00129C88 1801828C */  lw         $2, 0x118($4)
    /* 2AC0C 00129C8C 080083AC */  sw         $3, 0x8($4)
    /* 2AC10 00129C90 AC0082AC */  sw         $2, 0xAC($4)
    /* 2AC14 00129C94 01000224 */  addiu      $2, $0, 0x1
.align 2
  .L00129C98:
    /* 2AC18 00129C98 0800E003 */  jr         $31
    /* 2AC1C 00129C9C 200882AC */   sw        $2, 0x820($4)
endlabel func_00129C78
