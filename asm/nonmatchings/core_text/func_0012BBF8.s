.align 3
nonmatching func_0012BBF8, 0x54

glabel func_0012BBF8
    /* 2CB78 0012BBF8 4000838C */  lw         $v1, 0x40($a0)
    /* 2CB7C 0012BBFC B801628C */  lw         $v0, 0x1B8($v1)
    /* 2CB80 0012BC00 01004054 */  bnel       $v0, $zero, .L0012BC08
    /* 2CB84 0012BC04 280040AC */   sw        $zero, 0x28($v0)
.align 2
  .L0012BC08:
    /* 2CB88 0012BC08 C801628C */  lw         $v0, 0x1C8($v1)
    /* 2CB8C 0012BC0C 01004054 */  bnel       $v0, $zero, .L0012BC14
    /* 2CB90 0012BC10 280040AC */   sw        $zero, 0x28($v0)
.align 2
  .L0012BC14:
    /* 2CB94 0012BC14 D801628C */  lw         $v0, 0x1D8($v1)
    /* 2CB98 0012BC18 01004054 */  bnel       $v0, $zero, .L0012BC20
    /* 2CB9C 0012BC1C 280040AC */   sw        $zero, 0x28($v0)
.align 2
  .L0012BC20:
    /* 2CBA0 0012BC20 BC01628C */  lw         $v0, 0x1BC($v1)
    /* 2CBA4 0012BC24 01004054 */  bnel       $v0, $zero, .L0012BC2C
    /* 2CBA8 0012BC28 280040AC */   sw        $zero, 0x28($v0)
.align 2
  .L0012BC2C:
    /* 2CBAC 0012BC2C CC01628C */  lw         $v0, 0x1CC($v1)
    /* 2CBB0 0012BC30 01004054 */  bnel       $v0, $zero, .L0012BC38
    /* 2CBB4 0012BC34 280040AC */   sw        $zero, 0x28($v0)
.align 2
  .L0012BC38:
    /* 2CBB8 0012BC38 DC01628C */  lw         $v0, 0x1DC($v1)
    /* 2CBBC 0012BC3C 01004054 */  bnel       $v0, $zero, .L0012BC44
    /* 2CBC0 0012BC40 280040AC */   sw        $zero, 0x28($v0)
.align 2
  .L0012BC44:
    /* 2CBC4 0012BC44 0800E003 */  jr         $ra
    /* 2CBC8 0012BC48 01000224 */   addiu     $v0, $zero, 0x1
endlabel func_0012BBF8
    /* 2CBCC 0012BC4C 00000000 */  nop
