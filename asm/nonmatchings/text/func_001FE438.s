.align 3
nonmatching func_001FE438, 0x88

glabel func_001FE438
    /* FF3B8 001FE438 1A00033C */  lui        $3, %hi(D_001997D0)
    /* FF3BC 001FE43C 2D306000 */  daddu      $6, $3, $0
    /* FF3C0 001FE440 D097638C */  lw         $3, %lo(D_001997D0)($3)
    /* FF3C4 001FE444 0800622C */  sltiu      $2, $3, 0x8
    /* FF3C8 001FE448 1B004010 */  beqz       $2, .L001FE4B8
    /* FF3CC 001FE44C 1E00023C */   lui       $2, %hi(jtbl_001E7D50)
    /* FF3D0 001FE450 80180300 */  sll        $3, $3, 2
    /* FF3D4 001FE454 507D4224 */  addiu      $2, $2, %lo(jtbl_001E7D50)
    /* FF3D8 001FE458 21186200 */  addu       $3, $3, $2
    /* FF3DC 001FE45C 0000648C */  lw         $4, 0x0($3)
    /* FF3E0 001FE460 08008000 */  jr         $4
    /* FF3E4 001FE464 00000000 */   nop
    /* FF3E8 001FE468 D097C324 */  addiu      $3, $6, %lo(D_001997D0)
    /* FF3EC 001FE46C FFFF0224 */  addiu      $2, $0, -0x1
    /* FF3F0 001FE470 0800E003 */  jr         $31
    /* FF3F4 001FE474 240062AC */   sw        $2, 0x24($3)
    /* FF3F8 001FE478 0C000010 */  b          .L001FE4AC
    /* FF3FC 001FE47C 07000224 */   addiu     $2, $0, 0x7
    /* FF400 001FE480 0A000010 */  b          .L001FE4AC
    /* FF404 001FE484 07000224 */   addiu     $2, $0, 0x7
    /* FF408 001FE488 D097C524 */  addiu      $5, $6, -0x6830
    /* FF40C 001FE48C 04000324 */  addiu      $3, $0, 0x4
    /* FF410 001FE490 0400A48C */  lw         $4, 0x4($5)
    /* FF414 001FE494 06000224 */  addiu      $2, $0, 0x6
    /* FF418 001FE498 D097C2AC */  sw         $2, -0x6830($6)
    /* FF41C 001FE49C 23186400 */  subu       $3, $3, $4
    /* FF420 001FE4A0 0800E003 */  jr         $31
    /* FF424 001FE4A4 0400A3AC */   sw        $3, 0x4($5)
    /* FF428 001FE4A8 06000224 */  addiu      $2, $0, 0x6
.align 2
  .L001FE4AC:
    /* FF42C 001FE4AC D097C324 */  addiu      $3, $6, -0x6830
    /* FF430 001FE4B0 D097C2AC */  sw         $2, -0x6830($6)
    /* FF434 001FE4B4 040060AC */  sw         $0, 0x4($3)
.align 2
  .L001FE4B8:
    /* FF438 001FE4B8 0800E003 */  jr         $31
    /* FF43C 001FE4BC 00000000 */   nop
endlabel func_001FE438
