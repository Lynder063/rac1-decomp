.align 3
nonmatching func_00129C78, 0x28

glabel func_00129C78
    /* 2ABF8 00129C78 0800828C */  lw         $v0, 0x8($a0)
    /* 2ABFC 00129C7C 02000324 */  addiu      $v1, $zero, 0x2
    /* 2AC00 00129C80 05004310 */  beq        $v0, $v1, .L00129C98
    /* 2AC04 00129C84 01000224 */   addiu     $v0, $zero, 0x1
    /* 2AC08 00129C88 1801828C */  lw         $v0, 0x118($a0)
    /* 2AC0C 00129C8C 080083AC */  sw         $v1, 0x8($a0)
    /* 2AC10 00129C90 AC0082AC */  sw         $v0, 0xAC($a0)
    /* 2AC14 00129C94 01000224 */  addiu      $v0, $zero, 0x1
.align 2
  .L00129C98:
    /* 2AC18 00129C98 0800E003 */  jr         $ra
    /* 2AC1C 00129C9C 200882AC */   sw        $v0, 0x820($a0)
endlabel func_00129C78
