.align 3
nonmatching func_00234AC8, 0x80

glabel func_00234AC8
    /* 135A48 00234AC8 B0FFBD27 */  addiu      $sp, $sp, -0x50
    /* 135A4C 00234ACC 0000B07F */  sq         $s0, 0x0($sp)
    /* 135A50 00234AD0 3000B37F */  sq         $s3, 0x30($sp)
    /* 135A54 00234AD4 0100103C */  lui        $s0, (0x186A0 >> 16)
    /* 135A58 00234AD8 2000B27F */  sq         $s2, 0x20($sp)
    /* 135A5C 00234ADC A0861036 */  ori        $s0, $s0, (0x186A0 & 0xFFFF)
    /* 135A60 00234AE0 1000B17F */  sq         $s1, 0x10($sp)
    /* 135A64 00234AE4 2D908000 */  daddu      $s2, $a0, $zero
    /* 135A68 00234AE8 4000BF7F */  sq         $ra, 0x40($sp)
    /* 135A6C 00234AEC 2D880000 */  daddu      $s1, $zero, $zero
    /* 135A70 00234AF0 1F00133C */  lui        $s3, %hi(D_001E8D10)
    /* 135A74 00234AF4 00000000 */  nop
.align 2
  .L00234AF8:
    /* 135A78 00234AF8 E0A2828F */  lw         $v0, -0x5D20($gp)
    /* 135A7C 00234AFC 24105200 */  and        $v0, $v0, $s2
    /* 135A80 00234B00 0B004010 */  beqz       $v0, .L00234B30
    /* 135A84 00234B04 4000BF7B */   lq        $ra, 0x40($sp)
    /* 135A88 00234B08 62E6070C */  jal        func_001F9988
    /* 135A8C 00234B0C 00040424 */   addiu     $a0, $zero, 0x400
    /* 135A90 00234B10 2A101102 */  slt        $v0, $s0, $s1
    /* 135A94 00234B14 F8FF4010 */  beqz       $v0, .L00234AF8
    /* 135A98 00234B18 01003126 */   addiu     $s1, $s1, 0x1
    /* 135A9C 00234B1C CCA5070C */  jal        func_001E9730
    /* 135AA0 00234B20 108D6426 */   addiu     $a0, $s3, %lo(D_001E8D10)
    /* 135AA4 00234B24 5AC9070C */  jal        func_001F2568
    /* 135AA8 00234B28 00000000 */   nop
    /* 135AAC 00234B2C 4000BF7B */  lq         $ra, 0x40($sp)
.align 2
  .L00234B30:
    /* 135AB0 00234B30 3000B37B */  lq         $s3, 0x30($sp)
    /* 135AB4 00234B34 2000B27B */  lq         $s2, 0x20($sp)
    /* 135AB8 00234B38 1000B17B */  lq         $s1, 0x10($sp)
    /* 135ABC 00234B3C 0000B07B */  lq         $s0, 0x0($sp)
    /* 135AC0 00234B40 0800E003 */  jr         $ra
    /* 135AC4 00234B44 5000BD27 */   addiu     $sp, $sp, 0x50
endlabel func_00234AC8
