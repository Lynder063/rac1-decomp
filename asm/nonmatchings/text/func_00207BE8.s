.align 3
nonmatching func_00207BE8, 0xC4

glabel func_00207BE8
    /* 108B68 00207BE8 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 108B6C 00207BEC 1400023C */  lui        $v0, %hi(D_0013F450)
    /* 108B70 00207BF0 1000B17F */  sq         $s1, 0x10($sp)
    /* 108B74 00207BF4 50F44324 */  addiu      $v1, $v0, %lo(D_0013F450)
    /* 108B78 00207BF8 0000B07F */  sq         $s0, 0x0($sp)
    /* 108B7C 00207BFC 2D888000 */  daddu      $s1, $a0, $zero
    /* 108B80 00207C00 2000BF7F */  sq         $ra, 0x20($sp)
    /* 108B84 00207C04 2D80A000 */  daddu      $s0, $a1, $zero
    /* 108B88 00207C08 8C20628C */  lw         $v0, 0x208C($v1)
    /* 108B8C 00207C0C EFFF4224 */  addiu      $v0, $v0, -0x11
    /* 108B90 00207C10 0200422C */  sltiu      $v0, $v0, 0x2
    /* 108B94 00207C14 05004014 */  bnez       $v0, .L00207C2C
    /* 108B98 00207C18 2D200000 */   daddu     $a0, $zero, $zero
    /* 108B9C 00207C1C E4126390 */  lbu        $v1, 0x12E4($v1)
    /* 108BA0 00207C20 01000224 */  addiu      $v0, $zero, 0x1
    /* 108BA4 00207C24 02006214 */  bne        $v1, $v0, .L00207C30
    /* 108BA8 00207C28 00000000 */   nop
.align 2
  .L00207C2C:
    /* 108BAC 00207C2C 01000424 */  addiu      $a0, $zero, 0x1
.align 2
  .L00207C30:
    /* 108BB0 00207C30 19008014 */  bnez       $a0, .L00207C98
    /* 108BB4 00207C34 2D100000 */   daddu     $v0, $zero, $zero
    /* 108BB8 00207C38 8F42013C */  lui        $at, (0x428F0000 >> 16)
    /* 108BBC 00207C3C 00008144 */  mtc1       $at, $f0
    /* 108BC0 00207C40 00000000 */  nop
    /* 108BC4 00207C44 34700046 */  c.lt.s     $f14, $f0
    /* 108BC8 00207C48 00000000 */  nop
    /* 108BCC 00207C4C 13000145 */  bc1t       .L00207C9C
    /* 108BD0 00207C50 2000BF7B */   lq        $ra, 0x20($sp)
    /* 108BD4 00207C54 2D202002 */  daddu      $a0, $s1, $zero
    /* 108BD8 00207C58 2D280002 */  daddu      $a1, $s0, $zero
    /* 108BDC 00207C5C 31010624 */  addiu      $a2, $zero, 0x131
    /* 108BE0 00207C60 E2000724 */  addiu      $a3, $zero, 0xE2
    /* 108BE4 00207C64 C6000824 */  addiu      $t0, $zero, 0xC6
    /* 108BE8 00207C68 1224080C */  jal        func_00209048
    /* 108BEC 00207C6C 93000924 */   addiu     $t1, $zero, 0x93
    /* 108BF0 00207C70 09004054 */  bnel       $v0, $zero, .L00207C98
    /* 108BF4 00207C74 2D100000 */   daddu     $v0, $zero, $zero
    /* 108BF8 00207C78 2D202002 */  daddu      $a0, $s1, $zero
    /* 108BFC 00207C7C 2D280002 */  daddu      $a1, $s0, $zero
    /* 108C00 00207C80 90010624 */  addiu      $a2, $zero, 0x190
    /* 108C04 00207C84 89000724 */  addiu      $a3, $zero, 0x89
    /* 108C08 00207C88 D1000824 */  addiu      $t0, $zero, 0xD1
    /* 108C0C 00207C8C 1224080C */  jal        func_00209048
    /* 108C10 00207C90 FB000924 */   addiu     $t1, $zero, 0xFB
    /* 108C14 00207C94 0100422C */  sltiu      $v0, $v0, 0x1
.align 2
  .L00207C98:
    /* 108C18 00207C98 2000BF7B */  lq         $ra, 0x20($sp)
.align 2
  .L00207C9C:
    /* 108C1C 00207C9C 1000B17B */  lq         $s1, 0x10($sp)
    /* 108C20 00207CA0 0000B07B */  lq         $s0, 0x0($sp)
    /* 108C24 00207CA4 0800E003 */  jr         $ra
    /* 108C28 00207CA8 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_00207BE8
    /* 108C2C 00207CAC 00000000 */  nop
