.align 3
nonmatching func_00127C80, 0xBC

glabel func_00127C80
    /* 28C00 00127C80 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 28C04 00127C84 40010324 */  addiu      $v1, $zero, 0x140
    /* 28C08 00127C88 0000B0FF */  sd         $s0, 0x0($sp)
    /* 28C0C 00127C8C 01000924 */  addiu      $t1, $zero, 0x1
    /* 28C10 00127C90 1000BFFF */  sd         $ra, 0x10($sp)
    /* 28C14 00127C94 2D800001 */  daddu      $s0, $t0, $zero
    /* 28C18 00127C98 02000824 */  addiu      $t0, $zero, 0x2
    /* 28C1C 00127C9C 1008828C */  lw         $v0, 0x810($a0)
    /* 28C20 00127CA0 18504300 */  mult       $t2, $v0, $v1
    /* 28C24 00127CA4 21104401 */  addu       $v0, $t2, $a0
    /* 28C28 00127CA8 CC0649AC */  sw         $t1, 0x6CC($v0)
    /* 28C2C 00127CAC B00189AC */  sw         $t1, 0x1B0($a0)
    /* 28C30 00127CB0 5001828C */  lw         $v0, 0x150($a0)
    /* 28C34 00127CB4 06004854 */  bnel       $v0, $t0, .L00127CD0
    /* 28C38 00127CB8 7401838C */   lw        $v1, 0x174($a0)
    /* 28C3C 00127CBC 0000A0AC */  sw         $zero, 0x0($a1)
    /* 28C40 00127CC0 1400A0AC */  sw         $zero, 0x14($a1)
    /* 28C44 00127CC4 1000A0AC */  sw         $zero, 0x10($a1)
    /* 28C48 00127CC8 0400A0AC */  sw         $zero, 0x4($a1)
    /* 28C4C 00127CCC 7401838C */  lw         $v1, 0x174($a0)
.align 2
  .L00127CD0:
    /* 28C50 00127CD0 03000224 */  addiu      $v0, $zero, 0x3
    /* 28C54 00127CD4 03006254 */  bnel       $v1, $v0, .L00127CE4
    /* 28C58 00127CD8 0000C9AC */   sw        $t1, 0x0($a2)
    /* 28C5C 00127CDC 06000010 */  b          .L00127CF8
    /* 28C60 00127CE0 0000C8AC */   sw        $t0, 0x0($a2)
.align 2
  .L00127CE4:
    /* 28C64 00127CE4 7401828C */  lw         $v0, 0x174($a0)
    /* 28C68 00127CE8 02004238 */  xori       $v0, $v0, 0x2
    /* 28C6C 00127CEC 0100422C */  sltiu      $v0, $v0, 0x1
    /* 28C70 00127CF0 0000E2AC */  sw         $v0, 0x0($a3)
    /* 28C74 00127CF4 0400E2AC */  sw         $v0, 0x4($a3)
.align 2
  .L00127CF8:
    /* 28C78 00127CF8 5001838C */  lw         $v1, 0x150($a0)
    /* 28C7C 00127CFC 01000224 */  addiu      $v0, $zero, 0x1
    /* 28C80 00127D00 06006254 */  bnel       $v1, $v0, .L00127D1C
    /* 28C84 00127D04 0000038E */   lw        $v1, 0x0($s0)
    /* 28C88 00127D08 1500053C */  lui        $a1, %hi(D_00153968)
    /* 28C8C 00127D0C 1AB1040C */  jal        func_0012C468
    /* 28C90 00127D10 6839A524 */   addiu     $a1, $a1, %lo(D_00153968)
    /* 28C94 00127D14 2D480000 */  daddu      $t1, $zero, $zero
    /* 28C98 00127D18 0000038E */  lw         $v1, 0x0($s0)
.align 2
  .L00127D1C:
    /* 28C9C 00127D1C FEFF0424 */  addiu      $a0, $zero, -0x2
    /* 28CA0 00127D20 1000BFDF */  ld         $ra, 0x10($sp)
    /* 28CA4 00127D24 2D102001 */  daddu      $v0, $t1, $zero
    /* 28CA8 00127D28 24186400 */  and        $v1, $v1, $a0
    /* 28CAC 00127D2C 000003AE */  sw         $v1, 0x0($s0)
    /* 28CB0 00127D30 0000B0DF */  ld         $s0, 0x0($sp)
    /* 28CB4 00127D34 0800E003 */  jr         $ra
    /* 28CB8 00127D38 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_00127C80
    /* 28CBC 00127D3C 00000000 */  nop
