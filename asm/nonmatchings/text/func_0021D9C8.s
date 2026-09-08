.align 3
nonmatching func_0021D9C8, 0x98

glabel func_0021D9C8
    /* 11E948 0021D9C8 2D308000 */  daddu      $a2, $a0, $zero
    /* 11E94C 0021D9CC 1400023C */  lui        $v0, %hi(D_00141FA0)
    /* 11E950 0021D9D0 3000C724 */  addiu      $a3, $a2, 0x30
    /* 11E954 0021D9D4 A01F4524 */  addiu      $a1, $v0, %lo(D_00141FA0)
    /* 11E958 0021D9D8 2D18E000 */  daddu      $v1, $a3, $zero
    /* 11E95C 0021D9DC 07000424 */  addiu      $a0, $zero, 0x7
.align 2
  .L0021D9E0:
    /* 11E960 0021D9E0 0000A28C */  lw         $v0, 0x0($a1)
    /* 11E964 0021D9E4 FFFF8424 */  addiu      $a0, $a0, -0x1
    /* 11E968 0021D9E8 0400A524 */  addiu      $a1, $a1, 0x4
    /* 11E96C 0021D9EC 000062AC */  sw         $v0, 0x0($v1)
    /* 11E970 0021D9F0 00000000 */  nop
    /* 11E974 0021D9F4 FAFF8104 */  bgez       $a0, .L0021D9E0
    /* 11E978 0021D9F8 04006324 */   addiu     $v1, $v1, 0x4
    /* 11E97C 0021D9FC 3000C28C */  lw         $v0, 0x30($a2)
    /* 11E980 0021DA00 0C004010 */  beqz       $v0, .L0021DA34
    /* 11E984 0021DA04 5000C0AC */   sw        $zero, 0x50($a2)
    /* 11E988 0021DA08 2D28E000 */  daddu      $a1, $a3, $zero
    /* 11E98C 0021DA0C 5000C28C */  lw         $v0, 0x50($a2)
.align 2
  .L0021DA10:
    /* 11E990 0021DA10 01004424 */  addiu      $a0, $v0, 0x1
    /* 11E994 0021DA14 5000C4AC */  sw         $a0, 0x50($a2)
    /* 11E998 0021DA18 80100400 */  sll        $v0, $a0, 2
    /* 11E99C 0021DA1C 2110A200 */  addu       $v0, $a1, $v0
    /* 11E9A0 0021DA20 0000438C */  lw         $v1, 0x0($v0)
    /* 11E9A4 0021DA24 03006010 */  beqz       $v1, .L0021DA34
    /* 11E9A8 0021DA28 08008228 */   slti      $v0, $a0, 0x8
    /* 11E9AC 0021DA2C F8FF4054 */  bnel       $v0, $zero, .L0021DA10
    /* 11E9B0 0021DA30 5000C28C */   lw        $v0, 0x50($a2)
.align 2
  .L0021DA34:
    /* 11E9B4 0021DA34 5000C58C */  lw         $a1, 0x50($a2)
    /* 11E9B8 0021DA38 FFFF0424 */  addiu      $a0, $zero, -0x1
    /* 11E9BC 0021DA3C 2D100000 */  daddu      $v0, $zero, $zero
    /* 11E9C0 0021DA40 2A208500 */  slt        $a0, $a0, $a1
    /* 11E9C4 0021DA44 0700A324 */  addiu      $v1, $a1, 0x7
    /* 11E9C8 0021DA48 0B18A400 */  movn       $v1, $a1, $a0
    /* 11E9CC 0021DA4C C3180300 */  sra        $v1, $v1, 3
    /* 11E9D0 0021DA50 C0180300 */  sll        $v1, $v1, 3
    /* 11E9D4 0021DA54 2328A300 */  subu       $a1, $a1, $v1
    /* 11E9D8 0021DA58 0800E003 */  jr         $ra
    /* 11E9DC 0021DA5C 5000C5AC */   sw        $a1, 0x50($a2)
endlabel func_0021D9C8
