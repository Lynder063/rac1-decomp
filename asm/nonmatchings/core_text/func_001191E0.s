.align 3
/* Handwritten function */
nonmatching func_001191E0, 0xA4

glabel func_001191E0
    /* 1A160 001191E0 FFFF073C */  lui        $7, (0xFFFFF000 >> 16)
    /* 1A164 001191E4 2D300000 */  daddu      $6, $0, $0
    /* 1A168 001191E8 00F0E734 */  ori        $7, $7, (0xFFFFF000 & 0xFFFF)
    /* 1A16C 001191EC 00000000 */  nop
.align 2
  .L001191F0:
    /* 1A170 001191F0 0F000000 */  sync
    /* 1A174 001191F4 0000D0BC */  cache      0x10, 0x0($6) /* handwritten instruction */
    /* 1A178 001191F8 0F000000 */  sync
    /* 1A17C 001191FC 00E00240 */  mfc0       $2, $28 /* handwritten instruction */
    /* 1A180 00119200 24104700 */  and        $2, $2, $7
    /* 1A184 00119204 21104600 */  addu       $2, $2, $6
    /* 1A188 00119208 2B18A200 */  sltu       $3, $5, $2
    /* 1A18C 0011920C 2B104400 */  sltu       $2, $2, $4
    /* 1A190 00119210 06004014 */  bnez       $2, .L0011922C
    /* 1A194 00119214 00000000 */   nop
    /* 1A198 00119218 04006014 */  bnez       $3, .L0011922C
    /* 1A19C 0011921C 00000000 */   nop
    /* 1A1A0 00119220 0F000000 */  sync
    /* 1A1A4 00119224 0000D4BC */  cache      0x14, 0x0($6) /* handwritten instruction */
    /* 1A1A8 00119228 0F000000 */  sync
.align 2
  .L0011922C:
    /* 1A1AC 0011922C 0F000000 */  sync
    /* 1A1B0 00119230 0100D0BC */  cache      0x10, 0x1($6) /* handwritten instruction */
    /* 1A1B4 00119234 0F000000 */  sync
    /* 1A1B8 00119238 00E00240 */  mfc0       $2, $28 /* handwritten instruction */
    /* 1A1BC 0011923C 24104700 */  and        $2, $2, $7
    /* 1A1C0 00119240 21104600 */  addu       $2, $2, $6
    /* 1A1C4 00119244 2B18A200 */  sltu       $3, $5, $2
    /* 1A1C8 00119248 2B104400 */  sltu       $2, $2, $4
    /* 1A1CC 0011924C 06004014 */  bnez       $2, .L00119268
    /* 1A1D0 00119250 00000000 */   nop
    /* 1A1D4 00119254 04006014 */  bnez       $3, .L00119268
    /* 1A1D8 00119258 00000000 */   nop
    /* 1A1DC 0011925C 0F000000 */  sync
    /* 1A1E0 00119260 0100D4BC */  cache      0x14, 0x1($6) /* handwritten instruction */
    /* 1A1E4 00119264 0F000000 */  sync
.align 2
  .L00119268:
    /* 1A1E8 00119268 0F000000 */  sync
    /* 1A1EC 0011926C 4000C624 */  addiu      $6, $6, 0x40
    /* 1A1F0 00119270 0010C228 */  slti       $2, $6, 0x1000
    /* 1A1F4 00119274 DEFF4014 */  bnez       $2, .L001191F0
    /* 1A1F8 00119278 00000000 */   nop
    /* 1A1FC 0011927C 0800E003 */  jr         $31
    /* 1A200 00119280 00000000 */   nop
endlabel func_001191E0
    /* 1A204 00119284 00000000 */  nop
