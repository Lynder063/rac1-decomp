.align 3
nonmatching func_00217A08, 0x58

glabel func_00217A08
    /* 118988 00217A08 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 11898C 00217A0C 3C280500 */  dsll32     $a1, $a1, 0
    /* 118990 00217A10 3F280500 */  dsra32     $a1, $a1, 0
    /* 118994 00217A14 0F00A010 */  beqz       $a1, .L00217A54
    /* 118998 00217A18 0000BF7F */   sq        $ra, 0x0($sp)
    /* 11899C 00217A1C FFFF023C */  lui        $v0, (0xFFFFFFFF >> 16)
    /* 1189A0 00217A20 0000A38C */  lw         $v1, 0x0($a1)
    /* 1189A4 00217A24 FFFF4234 */  ori        $v0, $v0, (0xFFFFFFFF & 0xFFFF)
    /* 1189A8 00217A28 06006210 */  beq        $v1, $v0, .L00217A44
    /* 1189AC 00217A2C 00000000 */   nop
    /* 1189B0 00217A30 1600043C */  lui        $a0, %hi(D_00160168)
    /* 1189B4 00217A34 CCA5070C */  jal        func_001E9730
    /* 1189B8 00217A38 68018424 */   addiu     $a0, $a0, %lo(D_00160168)
    /* 1189BC 00217A3C 06000010 */  b          .L00217A58
    /* 1189C0 00217A40 0000BF7B */   lq        $ra, 0x0($sp)
.align 2
  .L00217A44:
    /* 1189C4 00217A44 03008014 */  bnez       $a0, .L00217A54
    /* 1189C8 00217A48 0000A4AC */   sw        $a0, 0x0($a1)
    /* 1189CC 00217A4C 07000224 */  addiu      $v0, $zero, 0x7
    /* 1189D0 00217A50 0A00A2A4 */  sh         $v0, 0xA($a1)
.align 2
  .L00217A54:
    /* 1189D4 00217A54 0000BF7B */  lq         $ra, 0x0($sp)
.align 2
  .L00217A58:
    /* 1189D8 00217A58 0800E003 */  jr         $ra
    /* 1189DC 00217A5C 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_00217A08
