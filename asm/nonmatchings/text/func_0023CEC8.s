.align 3
nonmatching func_0023CEC8, 0x44

glabel func_0023CEC8
    /* 13DE48 0023CEC8 2D308000 */  daddu      $6, $4, $0
    /* 13DE4C 0023CECC FF0F023C */  lui        $2, (0xFFFFFFF >> 16)
    /* 13DE50 0023CED0 0800C38C */  lw         $3, 0x8($6)
    /* 13DE54 0023CED4 FFFF4234 */  ori        $2, $2, (0xFFFFFFF & 0xFFFF)
    /* 13DE58 0023CED8 0400C48C */  lw         $4, 0x4($6)
    /* 13DE5C 0023CEDC 00190300 */  sll        $3, $3, 4
    /* 13DE60 0023CEE0 21186400 */  addu       $3, $3, $4
    /* 13DE64 0023CEE4 10006324 */  addiu      $3, $3, 0x10
    /* 13DE68 0023CEE8 24186200 */  and        $3, $3, $2
    /* 13DE6C 0023CEEC 0500A310 */  beq        $5, $3, .L0023CF04
    /* 13DE70 0023CEF0 00000000 */   nop
    /* 13DE74 0023CEF4 0000C28C */  lw         $2, 0x0($6)
    /* 13DE78 0023CEF8 2310A200 */  subu       $2, $5, $2
    /* 13DE7C 0023CEFC 0800E003 */  jr         $31
    /* 13DE80 0023CF00 C2120200 */   srl       $2, $2, 11
.align 2
  .L0023CF04:
    /* 13DE84 0023CF04 0800E003 */  jr         $31
    /* 13DE88 0023CF08 2D100000 */   daddu     $2, $0, $0
endlabel func_0023CEC8
    /* 13DE8C 0023CF0C 00000000 */  nop
