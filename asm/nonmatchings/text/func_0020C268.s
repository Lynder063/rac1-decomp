.align 3
/* Handwritten function */
nonmatching func_0020C268, 0x8C

glabel func_0020C268
    /* 10D1E8 0020C268 0010023C */  lui        $v0, (0x1000E020 >> 16)
    /* 10D1EC 0020C26C 20E04234 */  ori        $v0, $v0, (0x1000E020 & 0xFFFF)
    /* 10D1F0 0020C270 0000418C */  lw         $at, 0x0($v0)
    /* 10D1F4 0020C274 00022134 */  ori        $at, $at, 0x200
    /* 10D1F8 0020C278 000041AC */  sw         $at, 0x0($v0)
    /* 10D1FC 0020C27C 00000000 */  nop
    /* 10D200 0020C280 0010023C */  lui        $v0, (0x1000E000 >> 16)
    /* 10D204 0020C284 00E04234 */  ori        $v0, $v0, (0x1000E000 & 0xFFFF)
    /* 10D208 0020C288 01000134 */  ori        $at, $zero, 0x1
    /* 10D20C 0020C28C 000041AC */  sw         $at, 0x0($v0)
    /* 10D210 0020C290 0010013C */  lui        $at, (0x10000000 >> 16)
    /* 10D214 0020C294 00800234 */  ori        $v0, $zero, 0x8000
    /* 10D218 0020C298 20102200 */  add        $v0, $at, $v0 /* handwritten instruction */
    /* 10D21C 0020C29C 200040AC */  sw         $zero, 0x20($v0)
    /* 10D220 0020C2A0 00900234 */  ori        $v0, $zero, 0x9000
    /* 10D224 0020C2A4 20102200 */  add        $v0, $at, $v0 /* handwritten instruction */
    /* 10D228 0020C2A8 200040AC */  sw         $zero, 0x20($v0)
    /* 10D22C 0020C2AC 00A00234 */  ori        $v0, $zero, 0xA000
    /* 10D230 0020C2B0 20102200 */  add        $v0, $at, $v0 /* handwritten instruction */
    /* 10D234 0020C2B4 200040AC */  sw         $zero, 0x20($v0)
    /* 10D238 0020C2B8 00B00234 */  ori        $v0, $zero, 0xB000
    /* 10D23C 0020C2BC 20102200 */  add        $v0, $at, $v0 /* handwritten instruction */
    /* 10D240 0020C2C0 200040AC */  sw         $zero, 0x20($v0)
    /* 10D244 0020C2C4 00B40234 */  ori        $v0, $zero, 0xB400
    /* 10D248 0020C2C8 20102200 */  add        $v0, $at, $v0 /* handwritten instruction */
    /* 10D24C 0020C2CC 200040AC */  sw         $zero, 0x20($v0)
    /* 10D250 0020C2D0 00D00234 */  ori        $v0, $zero, 0xD000
    /* 10D254 0020C2D4 20102200 */  add        $v0, $at, $v0 /* handwritten instruction */
    /* 10D258 0020C2D8 200040AC */  sw         $zero, 0x20($v0)
    /* 10D25C 0020C2DC 00D40234 */  ori        $v0, $zero, 0xD400
    /* 10D260 0020C2E0 20102200 */  add        $v0, $at, $v0 /* handwritten instruction */
    /* 10D264 0020C2E4 200040AC */  sw         $zero, 0x20($v0)
    /* 10D268 0020C2E8 00000000 */  nop
    /* 10D26C 0020C2EC 0800E003 */  jr         $ra
    /* 10D270 0020C2F0 00000000 */   nop
endlabel func_0020C268
    /* 10D274 0020C2F4 00000000 */  nop
