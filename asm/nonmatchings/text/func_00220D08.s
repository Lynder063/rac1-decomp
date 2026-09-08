.align 3
nonmatching func_00220D08, 0x94

glabel func_00220D08
    /* 121C88 00220D08 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 121C8C 00220D0C 0000B07F */  sq         $s0, 0x0($sp)
    /* 121C90 00220D10 1000BF7F */  sq         $ra, 0x10($sp)
    /* 121C94 00220D14 2D808000 */  daddu      $s0, $a0, $zero
    /* 121C98 00220D18 440000AE */  sw         $zero, 0x44($s0)
    /* 121C9C 00220D1C 3400048E */  lw         $a0, 0x34($s0)
    /* 121CA0 00220D20 AA9B080C */  jal        func_00226EA8
    /* 121CA4 00220D24 00028430 */   andi      $a0, $a0, 0x200
    /* 121CA8 00220D28 3400048E */  lw         $a0, 0x34($s0)
    /* 121CAC 00220D2C 480002AE */  sw         $v0, 0x48($s0)
    /* 121CB0 00220D30 AA9B080C */  jal        func_00226EA8
    /* 121CB4 00220D34 00028430 */   andi      $a0, $a0, 0x200
    /* 121CB8 00220D38 3400038E */  lw         $v1, 0x34($s0)
    /* 121CBC 00220D3C 00026330 */  andi       $v1, $v1, 0x200
    /* 121CC0 00220D40 0D006014 */  bnez       $v1, .L00220D78
    /* 121CC4 00220D44 4C0002AE */   sw        $v0, 0x4C($s0)
    /* 121CC8 00220D48 4800028E */  lw         $v0, 0x48($s0)
    /* 121CCC 00220D4C 05004054 */  bnel       $v0, $zero, .L00220D64
    /* 121CD0 00220D50 4C00028E */   lw        $v0, 0x4C($s0)
    /* 121CD4 00220D54 AA9B080C */  jal        func_00226EA8
    /* 121CD8 00220D58 01000424 */   addiu     $a0, $zero, 0x1
    /* 121CDC 00220D5C 480002AE */  sw         $v0, 0x48($s0)
    /* 121CE0 00220D60 4C00028E */  lw         $v0, 0x4C($s0)
.align 2
  .L00220D64:
    /* 121CE4 00220D64 05004014 */  bnez       $v0, .L00220D7C
    /* 121CE8 00220D68 FFFF0324 */   addiu     $v1, $zero, -0x1
    /* 121CEC 00220D6C AA9B080C */  jal        func_00226EA8
    /* 121CF0 00220D70 01000424 */   addiu     $a0, $zero, 0x1
    /* 121CF4 00220D74 4C0002AE */  sw         $v0, 0x4C($s0)
.align 2
  .L00220D78:
    /* 121CF8 00220D78 FFFF0324 */  addiu      $v1, $zero, -0x1
.align 2
  .L00220D7C:
    /* 121CFC 00220D7C 5C0000AE */  sw         $zero, 0x5C($s0)
    /* 121D00 00220D80 540003AE */  sw         $v1, 0x54($s0)
    /* 121D04 00220D84 2D100000 */  daddu      $v0, $zero, $zero
    /* 121D08 00220D88 500003AE */  sw         $v1, 0x50($s0)
    /* 121D0C 00220D8C 1000BF7B */  lq         $ra, 0x10($sp)
    /* 121D10 00220D90 0000B07B */  lq         $s0, 0x0($sp)
    /* 121D14 00220D94 0800E003 */  jr         $ra
    /* 121D18 00220D98 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_00220D08
    /* 121D1C 00220D9C 00000000 */  nop
