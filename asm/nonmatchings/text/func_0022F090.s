.align 3
nonmatching func_0022F090, 0x18

glabel func_0022F090
    /* 130010 0022F090 3C280500 */  dsll32     $a1, $a1, 0
    /* 130014 0022F094 3F280500 */  dsra32     $a1, $a1, 0
    /* 130018 0022F098 0100A054 */  bnel       $a1, $zero, .L0022F0A0
    /* 13001C 0022F09C 0000A4AC */   sw        $a0, 0x0($a1)
.align 2
  .L0022F0A0:
    /* 130020 0022F0A0 0800E003 */  jr         $ra
    /* 130024 0022F0A4 00000000 */   nop
endlabel func_0022F090
