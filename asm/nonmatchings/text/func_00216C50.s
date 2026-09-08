.align 3
nonmatching func_00216C50, 0xE0

glabel func_00216C50
    /* 117BD0 00216C50 1500023C */  lui        $v0, %hi(D_001517D0)
    /* 117BD4 00216C54 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 117BD8 00216C58 D0174D24 */  addiu      $t5, $v0, %lo(D_001517D0)
    /* 117BDC 00216C5C 2000BF7F */  sq         $ra, 0x20($sp)
    /* 117BE0 00216C60 6C00A28D */  lw         $v0, 0x6C($t5)
    /* 117BE4 00216C64 2D788000 */  daddu      $t7, $a0, $zero
    /* 117BE8 00216C68 2D58C000 */  daddu      $t3, $a2, $zero
    /* 117BEC 00216C6C 2C004014 */  bnez       $v0, .L00216D20
    /* 117BF0 00216C70 2D70E000 */   daddu     $t6, $a3, $zero
    /* 117BF4 00216C74 1300023C */  lui        $v0, %hi(D_00137C80)
    /* 117BF8 00216C78 80200500 */  sll        $a0, $a1, 2
    /* 117BFC 00216C7C 807C4224 */  addiu      $v0, $v0, %lo(D_00137C80)
    /* 117C00 00216C80 A82A4224 */  addiu      $v0, $v0, 0x2AA8
    /* 117C04 00216C84 21208200 */  addu       $a0, $a0, $v0
    /* 117C08 00216C88 0000838C */  lw         $v1, 0x0($a0)
    /* 117C0C 00216C8C 24006010 */  beqz       $v1, .L00216D20
    /* 117C10 00216C90 6C00A325 */   addiu     $v1, $t5, 0x6C
    /* 117C14 00216C94 21000A3C */  lui        $t2, %hi(func_00217920)
    /* 117C18 00216C98 0000848C */  lw         $a0, 0x0($a0)
    /* 117C1C 00216C9C 20794A25 */  addiu      $t2, $t2, %lo(func_00217920)
    /* 117C20 00216CA0 0A000524 */  addiu      $a1, $zero, 0xA
    /* 117C24 00216CA4 80BB0634 */  ori        $a2, $zero, 0xBB80
    /* 117C28 00216CA8 20000924 */  addiu      $t1, $zero, 0x20
    /* 117C2C 00216CAC 3C180300 */  dsll32     $v1, $v1, 0
    /* 117C30 00216CB0 FFFF023C */  lui        $v0, (0xFFFFFFFF >> 16)
    /* 117C34 00216CB4 01000C24 */  addiu      $t4, $zero, 0x1
    /* 117C38 00216CB8 00440E00 */  sll        $t0, $t6, 16
    /* 117C3C 00216CBC 3E180300 */  dsrl32     $v1, $v1, 0
    /* 117C40 00216CC0 FFFF4234 */  ori        $v0, $v0, (0xFFFFFFFF & 0xFFFF)
    /* 117C44 00216CC4 7400ABA5 */  sh         $t3, 0x74($t5)
    /* 117C48 00216CC8 8000A5AD */  sw         $a1, 0x80($t5)
    /* 117C4C 00216CCC 3C200400 */  dsll32     $a0, $a0, 0
    /* 117C50 00216CD0 3F200400 */  dsra32     $a0, $a0, 0
    /* 117C54 00216CD4 8400A6AD */  sw         $a2, 0x84($t5)
    /* 117C58 00216CD8 03440800 */  sra        $t0, $t0, 16
    /* 117C5C 00216CDC 0000A9AF */  sw         $t1, 0x0($sp)
    /* 117C60 00216CE0 2D280000 */  daddu      $a1, $zero, $zero
    /* 117C64 00216CE4 0800AAAF */  sw         $t2, 0x8($sp)
    /* 117C68 00216CE8 2D300000 */  daddu      $a2, $zero, $zero
    /* 117C6C 00216CEC 6C00A2AD */  sw         $v0, 0x6C($t5)
    /* 117C70 00216CF0 2D380000 */  daddu      $a3, $zero, $zero
    /* 117C74 00216CF4 7000AFA5 */  sh         $t7, 0x70($t5)
    /* 117C78 00216CF8 2D480000 */  daddu      $t1, $zero, $zero
    /* 117C7C 00216CFC 7C00ACA5 */  sh         $t4, 0x7C($t5)
    /* 117C80 00216D00 01000A24 */  addiu      $t2, $zero, 0x1
    /* 117C84 00216D04 1000A3FF */  sd         $v1, 0x10($sp)
    /* 117C88 00216D08 2D580000 */  daddu      $t3, $zero, $zero
    /* 117C8C 00216D0C 7600ACA5 */  sh         $t4, 0x76($t5)
    /* 117C90 00216D10 52BB040C */  jal        func_0012ED48
    /* 117C94 00216D14 7200AEA5 */   sh        $t6, 0x72($t5)
    /* 117C98 00216D18 02000010 */  b          .L00216D24
    /* 117C9C 00216D1C 01000224 */   addiu     $v0, $zero, 0x1
.align 2
  .L00216D20:
    /* 117CA0 00216D20 2D100000 */  daddu      $v0, $zero, $zero
.align 2
  .L00216D24:
    /* 117CA4 00216D24 2000BF7B */  lq         $ra, 0x20($sp)
    /* 117CA8 00216D28 0800E003 */  jr         $ra
    /* 117CAC 00216D2C 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_00216C50
