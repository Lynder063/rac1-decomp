.align 3
nonmatching func_00220C90, 0x74

glabel func_00220C90
    /* 121C10 00220C90 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 121C14 00220C94 2D288000 */  daddu      $a1, $a0, $zero
    /* 121C18 00220C98 1000BF7F */  sq         $ra, 0x10($sp)
    /* 121C1C 00220C9C 4400A28C */  lw         $v0, 0x44($a1)
    /* 121C20 00220CA0 02004228 */  slti       $v0, $v0, 0x2
    /* 121C24 00220CA4 14004054 */  bnel       $v0, $zero, .L00220CF8
    /* 121C28 00220CA8 2D100000 */   daddu     $v0, $zero, $zero
    /* 121C2C 00220CAC 1A00033C */  lui        $v1, %hi(D_001A0448)
    /* 121C30 00220CB0 1500023C */  lui        $v0, %hi(D_00151880)
    /* 121C34 00220CB4 80184224 */  addiu      $v0, $v0, %lo(D_00151880)
    /* 121C38 00220CB8 480468DC */  ld         $t0, %lo(D_001A0448)($v1)
    /* 121C3C 00220CBC 62014784 */  lh         $a3, 0x162($v0)
    /* 121C40 00220CC0 80800334 */  ori        $v1, $zero, 0x8080
    /* 121C44 00220CC4 381C0300 */  dsll       $v1, $v1, 16
    /* 121C48 00220CC8 80806334 */  ori        $v1, $v1, 0x8080
    /* 121C4C 00220CCC 60014684 */  lh         $a2, 0x160($v0)
    /* 121C50 00220CD0 2D200000 */  daddu      $a0, $zero, $zero
    /* 121C54 00220CD4 3C00AB8C */  lw         $t3, 0x3C($a1)
    /* 121C58 00220CD8 2D480000 */  daddu      $t1, $zero, $zero
    /* 121C5C 00220CDC 3800AA8C */  lw         $t2, 0x38($a1)
    /* 121C60 00220CE0 0800A8FF */  sd         $t0, 0x8($sp)
    /* 121C64 00220CE4 2D280000 */  daddu      $a1, $zero, $zero
    /* 121C68 00220CE8 0000A3FF */  sd         $v1, 0x0($sp)
    /* 121C6C 00220CEC 00D6070C */  jal        func_001F5800
    /* 121C70 00220CF0 2D400000 */   daddu     $t0, $zero, $zero
    /* 121C74 00220CF4 10000224 */  addiu      $v0, $zero, 0x10
.align 2
  .L00220CF8:
    /* 121C78 00220CF8 1000BF7B */  lq         $ra, 0x10($sp)
    /* 121C7C 00220CFC 0800E003 */  jr         $ra
    /* 121C80 00220D00 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_00220C90
    /* 121C84 00220D04 00000000 */  nop
