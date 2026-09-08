.align 3
nonmatching func_0012C358, 0xC8

glabel func_0012C358
    /* 2D2D8 0012C358 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 2D2DC 0012C35C 01000224 */  addiu      $v0, $zero, 0x1
    /* 2D2E0 0012C360 0000BFFF */  sd         $ra, 0x0($sp)
    /* 2D2E4 0012C364 180882AC */  sw         $v0, 0x818($a0)
    /* 2D2E8 0012C368 5876040C */  jal        func_0011D960
    /* 2D2EC 0012C36C B00180AC */   sw        $zero, 0x1B0($a0)
    /* 2D2F0 0012C370 0010063C */  lui        $a2, (0x1000F520 >> 16)
    /* 2D2F4 0012C374 0010073C */  lui        $a3, (0x1000F590 >> 16)
    /* 2D2F8 0012C378 20F5C634 */  ori        $a2, $a2, (0x1000F520 & 0xFFFF)
    /* 2D2FC 0012C37C 0100083C */  lui        $t0, (0x10000 >> 16)
    /* 2D300 0012C380 0000C38C */  lw         $v1, 0x0($a2)
    /* 2D304 0012C384 90F5E734 */  ori        $a3, $a3, (0x1000F590 & 0xFFFF)
    /* 2D308 0012C388 0010043C */  lui        $a0, (0x1000B000 >> 16)
    /* 2D30C 0012C38C 0010053C */  lui        $a1, (0x1000B400 >> 16)
    /* 2D310 0012C390 25186800 */  or         $v1, $v1, $t0
    /* 2D314 0012C394 00B08434 */  ori        $a0, $a0, (0x1000B000 & 0xFFFF)
    /* 2D318 0012C398 0000E3AC */  sw         $v1, 0x0($a3)
    /* 2D31C 0012C39C 00B4A534 */  ori        $a1, $a1, (0x1000B400 & 0xFFFF)
    /* 2D320 0012C3A0 000080AC */  sw         $zero, 0x0($a0)
    /* 2D324 0012C3A4 0010033C */  lui        $v1, (0x1000D400 >> 16)
    /* 2D328 0012C3A8 0000A0AC */  sw         $zero, 0x0($a1)
    /* 2D32C 0012C3AC 00D46334 */  ori        $v1, $v1, (0x1000D400 & 0xFFFF)
    /* 2D330 0012C3B0 000060AC */  sw         $zero, 0x0($v1)
    /* 2D334 0012C3B4 FEFF043C */  lui        $a0, (0xFFFEFFFF >> 16)
    /* 2D338 0012C3B8 FFFF8434 */  ori        $a0, $a0, (0xFFFEFFFF & 0xFFFF)
    /* 2D33C 0012C3BC 0000C38C */  lw         $v1, 0x0($a2)
    /* 2D340 0012C3C0 24186400 */  and        $v1, $v1, $a0
    /* 2D344 0012C3C4 0000E3AC */  sw         $v1, 0x0($a3)
    /* 2D348 0012C3C8 04004010 */  beqz       $v0, .L0012C3DC
    /* 2D34C 0012C3CC 0010023C */   lui       $v0, (0x1000B020 >> 16)
    /* 2D350 0012C3D0 6A76040C */  jal        func_0011D9A8
    /* 2D354 0012C3D4 00000000 */   nop
    /* 2D358 0012C3D8 0010023C */  lui        $v0, (0x1000B020 >> 16)
.align 2
  .L0012C3DC:
    /* 2D35C 0012C3DC 0010043C */  lui        $a0, (0x1000B420 >> 16)
    /* 2D360 0012C3E0 20B04234 */  ori        $v0, $v0, (0x1000B020 & 0xFFFF)
    /* 2D364 0012C3E4 20B48434 */  ori        $a0, $a0, (0x1000B420 & 0xFFFF)
    /* 2D368 0012C3E8 000040AC */  sw         $zero, 0x0($v0)
    /* 2D36C 0012C3EC 0010033C */  lui        $v1, (0x1000D420 >> 16)
    /* 2D370 0012C3F0 000080AC */  sw         $zero, 0x0($a0)
    /* 2D374 0012C3F4 20D46334 */  ori        $v1, $v1, (0x1000D420 & 0xFFFF)
    /* 2D378 0012C3F8 000060AC */  sw         $zero, 0x0($v1)
    /* 2D37C 0012C3FC 0010023C */  lui        $v0, (0x10002010 >> 16)
    /* 2D380 0012C400 10204234 */  ori        $v0, $v0, (0x10002010 & 0xFFFF)
    /* 2D384 0012C404 0040033C */  lui        $v1, (0x40000000 >> 16)
    /* 2D388 0012C408 0000BFDF */  ld         $ra, 0x0($sp)
    /* 2D38C 0012C40C 2D200000 */  daddu      $a0, $zero, $zero
    /* 2D390 0012C410 000043AC */  sw         $v1, 0x0($v0)
    /* 2D394 0012C414 2D280000 */  daddu      $a1, $zero, $zero
    /* 2D398 0012C418 E6B30408 */  j          func_0012CF98
    /* 2D39C 0012C41C 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_0012C358
