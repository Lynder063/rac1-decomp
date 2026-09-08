.align 3
nonmatching func_00213C78, 0x94

glabel func_00213C78
    /* 114BF8 00213C78 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 114BFC 00213C7C 0000B07F */  sq         $s0, 0x0($sp)
    /* 114C00 00213C80 1000BF7F */  sq         $ra, 0x10($sp)
    /* 114C04 00213C84 AE39080C */  jal        func_0020E6B8
    /* 114C08 00213C88 00000000 */   nop
    /* 114C0C 00213C8C 2D804000 */  daddu      $s0, $v0, $zero
    /* 114C10 00213C90 1A000012 */  beqz       $s0, .L00213CFC
    /* 114C14 00213C94 249382AF */   sw        $v0, -0x6CDC($gp)
    /* 114C18 00213C98 20000282 */  lb         $v0, 0x20($s0)
    /* 114C1C 00213C9C 00000000 */  nop
.align 2
  .L00213CA0:
    /* 114C20 00213CA0 14004204 */  bltzl      $v0, .L00213CF4
    /* 114C24 00213CA4 2800108E */   lw        $s0, 0x28($s0)
    /* 114C28 00213CA8 34000296 */  lhu        $v0, 0x34($s0)
    /* 114C2C 00213CAC 40004230 */  andi       $v0, $v0, 0x40
    /* 114C30 00213CB0 04004054 */  bnel       $v0, $zero, .L00213CC4
    /* 114C34 00213CB4 7400038E */   lw        $v1, 0x74($s0)
    /* 114C38 00213CB8 F438080C */  jal        func_0020E3D0
    /* 114C3C 00213CBC 2D200002 */   daddu     $a0, $s0, $zero
    /* 114C40 00213CC0 7400038E */  lw         $v1, 0x74($s0)
.align 2
  .L00213CC4:
    /* 114C44 00213CC4 04006010 */  beqz       $v1, .L00213CD8
    /* 114C48 00213CC8 00000000 */   nop
    /* 114C4C 00213CCC 2D200002 */  daddu      $a0, $s0, $zero
    /* 114C50 00213CD0 09F86000 */  jalr       $v1
    /* 114C54 00213CD4 00000000 */   nop
.align 2
  .L00213CD8:
    /* 114C58 00213CD8 34000296 */  lhu        $v0, 0x34($s0)
    /* 114C5C 00213CDC 04004230 */  andi       $v0, $v0, 0x4
    /* 114C60 00213CE0 04004054 */  bnel       $v0, $zero, .L00213CF4
    /* 114C64 00213CE4 2800108E */   lw        $s0, 0x28($s0)
    /* 114C68 00213CE8 523B080C */  jal        func_0020ED48
    /* 114C6C 00213CEC 2D200002 */   daddu     $a0, $s0, $zero
    /* 114C70 00213CF0 2800108E */  lw         $s0, 0x28($s0)
.align 2
  .L00213CF4:
    /* 114C74 00213CF4 EAFF0056 */  bnel       $s0, $zero, .L00213CA0
    /* 114C78 00213CF8 20000282 */   lb        $v0, 0x20($s0)
.align 2
  .L00213CFC:
    /* 114C7C 00213CFC 1000BF7B */  lq         $ra, 0x10($sp)
    /* 114C80 00213D00 0000B07B */  lq         $s0, 0x0($sp)
    /* 114C84 00213D04 0800E003 */  jr         $ra
    /* 114C88 00213D08 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_00213C78
    /* 114C8C 00213D0C 00000000 */  nop
