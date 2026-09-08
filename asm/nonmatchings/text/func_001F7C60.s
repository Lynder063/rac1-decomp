.align 3
/* Handwritten function */
nonmatching func_001F7C60, 0x178

glabel func_001F7C60
    /* F8BE0 001F7C60 42480700 */  srl        $9, $7, 1
    /* F8BE4 001F7C64 0C00A0C4 */  lwc1       $f0, 0xC($5)
    /* F8BE8 001F7C68 80480900 */  sll        $9, $9, 2
    /* F8BEC 001F7C6C 0C00C1C4 */  lwc1       $f1, 0xC($6)
    /* F8BF0 001F7C70 2040A900 */  add        $8, $5, $9 /* handwritten instruction */
    /* F8BF4 001F7C74 1000A5C4 */  lwc1       $f5, 0x10($5)
    /* F8BF8 001F7C78 41080046 */  sub.s      $f1, $f1, $f0
    /* F8BFC 001F7C7C 0000088D */  lw         $8, 0x0($8)
    /* F8C00 001F7C80 2048C900 */  add        $9, $6, $9 /* handwritten instruction */
    /* F8C04 001F7C84 1000C4C4 */  lwc1       $f4, 0x10($6)
    /* F8C08 001F7C88 C03F0700 */  sll        $7, $7, 31
    /* F8C0C 001F7C8C 0000298D */  lw         $9, 0x0($9)
    /* F8C10 001F7C90 26400701 */  xor        $8, $8, $7
    /* F8C14 001F7C94 01210546 */  sub.s      $f4, $f4, $f5
    /* F8C18 001F7C98 00108844 */  mtc1       $8, $f2
    /* F8C1C 001F7C9C 26482701 */  xor        $9, $9, $7
    /* F8C20 001F7CA0 00188944 */  mtc1       $9, $f3
    /* F8C24 001F7CA4 00000000 */  nop
    /* F8C28 001F7CA8 01100046 */  sub.s      $f0, $f2, $f0
    /* F8C2C 001F7CAC 1800A98C */  lw         $9, 0x18($5)
    /* F8C30 001F7CB0 C1100346 */  sub.s      $f3, $f2, $f3
    /* F8C34 001F7CB4 00000000 */  nop
    /* F8C38 001F7CB8 884E0970 */  pextlb     $9, $0, $9
    /* F8C3C 001F7CBC 1800C88C */  lw         $8, 0x18($6)
    /* F8C40 001F7CC0 884D0970 */  pextlh     $9, $0, $9
    /* F8C44 001F7CC4 1400A2C4 */  lwc1       $f2, 0x14($5)
    /* F8C48 001F7CC8 88460870 */  pextlb     $8, $0, $8
    /* F8C4C 001F7CCC 0018A948 */  qmtc2.ni   $9, $vf3
    /* F8C50 001F7CD0 40080346 */  add.s      $f1, $f1, $f3
    /* F8C54 001F7CD4 00000000 */  nop
    /* F8C58 001F7CD8 88450870 */  pextlh     $8, $0, $8
    /* F8C5C 001F7CDC E0FF0014 */  bnez       $0, func_001F7C60
    /* F8C60 001F7CE0 00000000 */   nop
    /* F8C64 001F7CE4 00000000 */  nop
    /* F8C68 001F7CE8 3C19E34B */  vitof0.xyzw $vf3, $vf3
    /* F8C6C 001F7CEC 00000000 */  nop
    /* F8C70 001F7CF0 03000146 */  div.s      $f0, $f0, $f1
    /* F8C74 001F7CF4 0020A848 */  qmtc2.ni   $8, $vf4
    /* F8C78 001F7CF8 1400C3C4 */  lwc1       $f3, 0x14($6)
    /* F8C7C 001F7CFC 00000000 */  nop
    /* F8C80 001F7D00 00000000 */  nop
    /* F8C84 001F7D04 00000000 */  nop
    /* F8C88 001F7D08 00000000 */  nop
    /* F8C8C 001F7D0C 00000000 */  nop
    /* F8C90 001F7D10 3C21E44B */  vitof0.xyzw $vf4, $vf4
    /* F8C94 001F7D14 00000000 */  nop
    /* F8C98 001F7D18 00000000 */  nop
    /* F8C9C 001F7D1C 00000000 */  nop
    /* F8CA0 001F7D20 C1180246 */  sub.s      $f3, $f3, $f2
    /* F8CA4 001F7D24 0000C2D8 */  lqc2       $vf2, 0x0($6)
    /* F8CA8 001F7D28 02210046 */  mul.s      $f4, $f4, $f0
    /* F8CAC 001F7D2C 0000A1D8 */  lqc2       $vf1, 0x0($5)
    /* F8CB0 001F7D30 00000844 */  mfc1       $8, $f0
    /* F8CB4 001F7D34 00000000 */  nop
    /* F8CB8 001F7D38 00000000 */  nop
    /* F8CBC 001F7D3C 00000000 */  nop
    /* F8CC0 001F7D40 0028A848 */  qmtc2.ni   $8, $vf5
    /* F8CC4 001F7D44 C2180046 */  mul.s      $f3, $f3, $f0
    /* F8CC8 001F7D48 BF19E04B */  .word      0x4BE019BF    # vmulaw.xyzw ACC, $vf3, $vf0w
    /* F8CCC 001F7D4C 00000000 */  nop
    /* F8CD0 001F7D50 BC20E54B */  .word      0x4BE520BC    # vmaddax.xyzw ACC, $vf4, $vf5x
    /* F8CD4 001F7D54 00000000 */  nop
    /* F8CD8 001F7D58 CC18E54B */  vmsubx.xyzw $vf3, $vf3, $vf5x
    /* F8CDC 001F7D5C 00000000 */  nop
    /* F8CE0 001F7D60 BF09E04B */  .word      0x4BE009BF    # vmulaw.xyzw ACC, $vf1, $vf0w
    /* F8CE4 001F7D64 00000000 */  nop
    /* F8CE8 001F7D68 BC10E54B */  .word      0x4BE510BC    # vmaddax.xyzw ACC, $vf2, $vf5x
    /* F8CEC 001F7D6C 00000000 */  nop
    /* F8CF0 001F7D70 00210546 */  add.s      $f4, $f4, $f5
    /* F8CF4 001F7D74 00000000 */  nop
    /* F8CF8 001F7D78 7D19E34B */  vftoi4.xyzw $vf3, $vf3
    /* F8CFC 001F7D7C 00000000 */  nop
    /* F8D00 001F7D80 C0180246 */  add.s      $f3, $f3, $f2
    /* F8D04 001F7D84 00000000 */  nop
    /* F8D08 001F7D88 8C08E54B */  vmsubx.xyzw $vf2, $vf1, $vf5x
    /* F8D0C 001F7D8C 00000000 */  nop
    /* F8D10 001F7D90 00000000 */  nop
    /* F8D14 001F7D94 00000000 */  nop
    /* F8D18 001F7D98 100084E4 */  swc1       $f4, 0x10($4)
    /* F8D1C 001F7D9C 00000000 */  nop
    /* F8D20 001F7DA0 00182948 */  qmfc2.ni   $9, $vf3
    /* F8D24 001F7DA4 02000834 */  ori        $8, $0, 0x2
    /* F8D28 001F7DA8 140083E4 */  swc1       $f3, 0x14($4)
    /* F8D2C 001F7DAC E9460870 */  pcpyh      $8, $8
    /* F8D30 001F7DB0 C84D0970 */  ppach      $9, $0, $9
    /* F8D34 001F7DB4 000082F8 */  sqc2       $vf2, 0x0($4)
    /* F8D38 001F7DB8 A9FF0014 */  bnez       $0, func_001F7C60
    /* F8D3C 001F7DBC 08492871 */   paddh     $9, $9, $8
    /* F8D40 001F7DC0 A7FF0014 */  bnez       $0, func_001F7C60
    /* F8D44 001F7DC4 36490970 */   psrlh     $9, $9, 4
    /* F8D48 001F7DC8 A5FF0014 */  bnez       $0, func_001F7C60
    /* F8D4C 001F7DCC C84E0970 */   ppacb     $9, $0, $9
    /* F8D50 001F7DD0 0800E003 */  jr         $31
    /* F8D54 001F7DD4 180089AC */   sw        $9, 0x18($4)
endlabel func_001F7C60
