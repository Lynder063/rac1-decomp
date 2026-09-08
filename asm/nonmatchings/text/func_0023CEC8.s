.align 3
nonmatching func_0023CEC8, 0x44

glabel func_0023CEC8
    /* 13DE48 0023CEC8 2D308000 */  daddu      $a2, $a0, $zero
    /* 13DE4C 0023CECC FF0F023C */  lui        $v0, (0xFFFFFFF >> 16)
    /* 13DE50 0023CED0 0800C38C */  lw         $v1, 0x8($a2)
    /* 13DE54 0023CED4 FFFF4234 */  ori        $v0, $v0, (0xFFFFFFF & 0xFFFF)
    /* 13DE58 0023CED8 0400C48C */  lw         $a0, 0x4($a2)
    /* 13DE5C 0023CEDC 00190300 */  sll        $v1, $v1, 4
    /* 13DE60 0023CEE0 21186400 */  addu       $v1, $v1, $a0
    /* 13DE64 0023CEE4 10006324 */  addiu      $v1, $v1, 0x10
    /* 13DE68 0023CEE8 24186200 */  and        $v1, $v1, $v0
    /* 13DE6C 0023CEEC 0500A310 */  beq        $a1, $v1, .L0023CF04
    /* 13DE70 0023CEF0 00000000 */   nop
    /* 13DE74 0023CEF4 0000C28C */  lw         $v0, 0x0($a2)
    /* 13DE78 0023CEF8 2310A200 */  subu       $v0, $a1, $v0
    /* 13DE7C 0023CEFC 0800E003 */  jr         $ra
    /* 13DE80 0023CF00 C2120200 */   srl       $v0, $v0, 11
.align 2
  .L0023CF04:
    /* 13DE84 0023CF04 0800E003 */  jr         $ra
    /* 13DE88 0023CF08 2D100000 */   daddu     $v0, $zero, $zero
endlabel func_0023CEC8
    /* 13DE8C 0023CF0C 00000000 */  nop
