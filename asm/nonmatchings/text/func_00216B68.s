.align 3
nonmatching func_00216B68, 0xE4

glabel func_00216B68
    /* 117AE8 00216B68 1500023C */  lui        $v0, %hi(D_001517D0)
    /* 117AEC 00216B6C D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* 117AF0 00216B70 D0174C24 */  addiu      $t4, $v0, %lo(D_001517D0)
    /* 117AF4 00216B74 2000BF7F */  sq         $ra, 0x20($sp)
    /* 117AF8 00216B78 3E008285 */  lh         $v0, 0x3E($t4)
    /* 117AFC 00216B7C 2D508000 */  daddu      $t2, $a0, $zero
    /* 117B00 00216B80 09000E24 */  addiu      $t6, $zero, 0x9
    /* 117B04 00216B84 2E004E10 */  beq        $v0, $t6, .L00216C40
    /* 117B08 00216B88 2D68C000 */   daddu     $t5, $a2, $zero
    /* 117B0C 00216B8C 34008B8D */  lw         $t3, 0x34($t4)
    /* 117B10 00216B90 2C006011 */  beqz       $t3, .L00216C44
    /* 117B14 00216B94 2000BF7B */   lq        $ra, 0x20($sp)
    /* 117B18 00216B98 FFFF023C */  lui        $v0, (0xFFFFFFFF >> 16)
    /* 117B1C 00216B9C FFFF4234 */  ori        $v0, $v0, (0xFFFFFFFF & 0xFFFF)
    /* 117B20 00216BA0 28006211 */  beq        $t3, $v0, .L00216C44
    /* 117B24 00216BA4 1300023C */   lui       $v0, %hi(D_00137C80)
    /* 117B28 00216BA8 01004325 */  addiu      $v1, $t2, 0x1
    /* 117B2C 00216BAC 807C4224 */  addiu      $v0, $v0, %lo(D_00137C80)
    /* 117B30 00216BB0 80180300 */  sll        $v1, $v1, 2
    /* 117B34 00216BB4 A82A4224 */  addiu      $v0, $v0, 0x2AA8
    /* 117B38 00216BB8 21186200 */  addu       $v1, $v1, $v0
    /* 117B3C 00216BBC 0000648C */  lw         $a0, 0x0($v1)
    /* 117B40 00216BC0 20008010 */  beqz       $a0, .L00216C44
    /* 117B44 00216BC4 34008925 */   addiu     $t1, $t4, 0x34
    /* 117B48 00216BC8 0100A330 */  andi       $v1, $a1, 0x1
    /* 117B4C 00216BCC 24000224 */  addiu      $v0, $zero, 0x24
    /* 117B50 00216BD0 3C480900 */  dsll32     $t1, $t1, 0
    /* 117B54 00216BD4 20000624 */  addiu      $a2, $zero, 0x20
    /* 117B58 00216BD8 2100073C */  lui        $a3, %hi(func_00217970)
    /* 117B5C 00216BDC 0B304300 */  movn       $a2, $v0, $v1
    /* 117B60 00216BE0 7079E724 */  addiu      $a3, $a3, %lo(func_00217970)
    /* 117B64 00216BE4 3E480900 */  dsrl32     $t1, $t1, 0
    /* 117B68 00216BE8 00440D00 */  sll        $t0, $t5, 16
    /* 117B6C 00216BEC 0A000224 */  addiu      $v0, $zero, 0xA
    /* 117B70 00216BF0 80BB0334 */  ori        $v1, $zero, 0xBB80
    /* 117B74 00216BF4 38008AA5 */  sh         $t2, 0x38($t4)
    /* 117B78 00216BF8 3C0085A5 */  sh         $a1, 0x3C($t4)
    /* 117B7C 00216BFC 3C200400 */  dsll32     $a0, $a0, 0
    /* 117B80 00216C00 3F200400 */  dsra32     $a0, $a0, 0
    /* 117B84 00216C04 0000A6AF */  sw         $a2, 0x0($sp)
    /* 117B88 00216C08 03440800 */  sra        $t0, $t0, 16
    /* 117B8C 00216C0C 0800A7AF */  sw         $a3, 0x8($sp)
    /* 117B90 00216C10 2D280000 */  daddu      $a1, $zero, $zero
    /* 117B94 00216C14 1000A9FF */  sd         $t1, 0x10($sp)
    /* 117B98 00216C18 2D300000 */  daddu      $a2, $zero, $zero
    /* 117B9C 00216C1C 3E008EA5 */  sh         $t6, 0x3E($t4)
    /* 117BA0 00216C20 2D380000 */  daddu      $a3, $zero, $zero
    /* 117BA4 00216C24 480082AD */  sw         $v0, 0x48($t4)
    /* 117BA8 00216C28 2D480000 */  daddu      $t1, $zero, $zero
    /* 117BAC 00216C2C 4C0083AD */  sw         $v1, 0x4C($t4)
    /* 117BB0 00216C30 01000A24 */  addiu      $t2, $zero, 0x1
    /* 117BB4 00216C34 3A008DA5 */  sh         $t5, 0x3A($t4)
    /* 117BB8 00216C38 52BB040C */  jal        func_0012ED48
    /* 117BBC 00216C3C 440080A5 */   sh        $zero, 0x44($t4)
.align 2
  .L00216C40:
    /* 117BC0 00216C40 2000BF7B */  lq         $ra, 0x20($sp)
.align 2
  .L00216C44:
    /* 117BC4 00216C44 0800E003 */  jr         $ra
    /* 117BC8 00216C48 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_00216B68
    /* 117BCC 00216C4C 00000000 */  nop
