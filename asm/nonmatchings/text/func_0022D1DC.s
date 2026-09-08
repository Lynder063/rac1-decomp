/* Handwritten function */
nonmatching func_0022D1DC, 0xD0

glabel func_0022D1DC
    /* 12E15C 0022D1DC 5888868F */  lw         $a2, -0x77A8($gp)
    /* 12E160 0022D1E0 1900073C */  lui        $a3, %hi(D_0018D140)
    /* 12E164 0022D1E4 40D1E724 */  addiu      $a3, $a3, %lo(D_0018D140)
    /* 12E168 0022D1E8 7482818F */  lw         $at, -0x7D8C($gp)
    /* 12E16C 0022D1EC 0100C220 */  addi       $v0, $a2, 0x1 /* handwritten instruction */
    /* 12E170 0022D1F0 00310600 */  sll        $a2, $a2, 4
    /* 12E174 0022D1F4 588882AF */  sw         $v0, -0x77A8($gp)
    /* 12E178 0022D1F8 2038E600 */  add        $a3, $a3, $a2 /* handwritten instruction */
    /* 12E17C 0022D1FC 02120100 */  srl        $v0, $at, 8
    /* 12E180 0022D200 00042120 */  addi       $at, $at, 0x400 /* handwritten instruction */
    /* 12E184 0022D204 0600E2A4 */  sh         $v0, 0x6($a3)
    /* 12E188 0022D208 021A0100 */  srl        $v1, $at, 8
    /* 12E18C 0022D20C 0E00E3A4 */  sh         $v1, 0xE($a3)
    /* 12E190 0022D210 00000000 */  nop
    /* 12E194 0022D214 0C002491 */  lbu        $a0, 0xC($t1)
    /* 12E198 0022D218 01000620 */  addi       $a2, $zero, 0x1 /* handwritten instruction */
    /* 12E19C 0022D21C 0E002591 */  lbu        $a1, 0xE($t1)
    /* 12E1A0 0022D220 00000000 */  nop
    /* 12E1A4 0022D224 0C00E4A0 */  sb         $a0, 0xC($a3)
    /* 12E1A8 0022D228 04308600 */  sllv       $a2, $a2, $a0
    /* 12E1AC 0022D22C 0D00E5A0 */  sb         $a1, 0xD($a3)
    /* 12E1B0 0022D230 0430A600 */  sllv       $a2, $a2, $a1
    /* 12E1B4 0022D234 20082600 */  add        $at, $at, $a2 /* handwritten instruction */
    /* 12E1B8 0022D238 0400E0A4 */  sh         $zero, 0x4($a3)
    /* 12E1BC 0022D23C 748281AF */  sw         $at, -0x7D8C($gp)
    /* 12E1C0 0022D240 00000000 */  nop
    /* 12E1C4 0022D244 0A002195 */  lhu        $at, 0xA($t1)
    /* 12E1C8 0022D248 08002695 */  lhu        $a2, 0x8($t1)
    /* 12E1CC 0022D24C 00090100 */  sll        $at, $at, 4
    /* 12E1D0 0022D250 00310600 */  sll        $a2, $a2, 4
    /* 12E1D4 0022D254 20082D00 */  add        $at, $at, $t5 /* handwritten instruction */
    /* 12E1D8 0022D258 2030CD00 */  add        $a2, $a2, $t5 /* handwritten instruction */
    /* 12E1DC 0022D25C 0000E1AC */  sw         $at, 0x0($a3)
    /* 12E1E0 0022D260 FAFF8120 */  addi       $at, $a0, -0x6 /* handwritten instruction */
    /* 12E1E4 0022D264 0800E6AC */  sw         $a2, 0x8($a3)
    /* 12E1E8 0022D268 01000620 */  addi       $a2, $zero, 0x1 /* handwritten instruction */
    /* 12E1EC 0022D26C 00A02848 */  qmfc2.ni   $t0, $vf20
    /* 12E1F0 0022D270 C8082070 */  pmaxw      $at, $at, $zero
    /* 12E1F4 0022D274 04302600 */  sllv       $a2, $a2, $at
    /* 12E1F8 0022D278 00000000 */  nop
    /* 12E1FC 0022D27C 25400301 */  or         $t0, $t0, $v1
    /* 12E200 0022D280 B8330600 */  dsll       $a2, $a2, 14
    /* 12E204 0022D284 25400601 */  or         $t0, $t0, $a2
    /* 12E208 0022D288 B8260400 */  dsll       $a0, $a0, 26
    /* 12E20C 0022D28C 25400401 */  or         $t0, $t0, $a0
    /* 12E210 0022D290 B82F0500 */  dsll       $a1, $a1, 30
    /* 12E214 0022D294 25400501 */  or         $t0, $t0, $a1
    /* 12E218 0022D298 7C110200 */  dsll32     $v0, $v0, 5
    /* 12E21C 0022D29C 25400201 */  or         $t0, $t0, $v0
    /* 12E220 0022D2A0 00000000 */  nop
    /* 12E224 0022D2A4 0800E003 */  jr         $ra
    /* 12E228 0022D2A8 000028FD */   sd        $t0, 0x0($t1)
endlabel func_0022D1DC
