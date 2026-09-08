.align 3
nonmatching func_0022F0A8, 0x44

glabel func_0022F0A8
    /* 130028 0022F0A8 3C280500 */  dsll32     $a1, $a1, 0
    /* 13002C 0022F0AC 3F280500 */  dsra32     $a1, $a1, 0
    /* 130030 0022F0B0 0C00A010 */  beqz       $a1, .L0022F0E4
    /* 130034 0022F0B4 00000000 */   nop
    /* 130038 0022F0B8 07008010 */  beqz       $a0, .L0022F0D8
    /* 13003C 0022F0BC 0000A4AC */   sw        $a0, 0x0($a1)
    /* 130040 0022F0C0 0400A390 */  lbu        $v1, 0x4($a1)
    /* 130044 0022F0C4 01000224 */  addiu      $v0, $zero, 0x1
    /* 130048 0022F0C8 06006214 */  bne        $v1, $v0, .L0022F0E4
    /* 13004C 0022F0CC 02000224 */   addiu     $v0, $zero, 0x2
    /* 130050 0022F0D0 0800E003 */  jr         $ra
    /* 130054 0022F0D4 0400A2A0 */   sb        $v0, 0x4($a1)
.align 2
  .L0022F0D8:
    /* 130058 0022F0D8 0400A0A0 */  sb         $zero, 0x4($a1)
    /* 13005C 0022F0DC 1800A0AC */  sw         $zero, 0x18($a1)
    /* 130060 0022F0E0 1C00A0AC */  sw         $zero, 0x1C($a1)
.align 2
  .L0022F0E4:
    /* 130064 0022F0E4 0800E003 */  jr         $ra
    /* 130068 0022F0E8 00000000 */   nop
endlabel func_0022F0A8
    /* 13006C 0022F0EC 00000000 */  nop
