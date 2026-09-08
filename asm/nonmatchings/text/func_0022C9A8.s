.align 3
nonmatching func_0022C9A8, 0x58

glabel func_0022C9A8
    /* 12D928 0022C9A8 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 12D92C 0022C9AC 1600033C */  lui        $v1, %hi(D_0016055C)
    /* 12D930 0022C9B0 5C05638C */  lw         $v1, %lo(D_0016055C)($v1)
    /* 12D934 0022C9B4 0000BF7F */  sq         $ra, 0x0($sp)
    /* 12D938 0022C9B8 06006284 */  lh         $v0, 0x6($v1)
    /* 12D93C 0022C9BC 2A108200 */  slt        $v0, $a0, $v0
    /* 12D940 0022C9C0 0C004010 */  beqz       $v0, .L0022C9F4
    /* 12D944 0022C9C4 80100400 */   sll       $v0, $a0, 2
    /* 12D948 0022C9C8 21106200 */  addu       $v0, $v1, $v0
    /* 12D94C 0022C9CC 2000448C */  lw         $a0, 0x20($v0)
    /* 12D950 0022C9D0 0400838C */  lw         $v1, 0x4($a0)
    /* 12D954 0022C9D4 05006010 */  beqz       $v1, .L0022C9EC
    /* 12D958 0022C9D8 00000000 */   nop
    /* 12D95C 0022C9DC 10B3080C */  jal        func_0022CC40
    /* 12D960 0022C9E0 00000000 */   nop
    /* 12D964 0022C9E4 04000010 */  b          .L0022C9F8
    /* 12D968 0022C9E8 0000BF7B */   lq        $ra, 0x0($sp)
.align 2
  .L0022C9EC:
    /* 12D96C 0022C9EC 80B2080C */  jal        func_0022CA00
    /* 12D970 0022C9F0 00000000 */   nop
.align 2
  .L0022C9F4:
    /* 12D974 0022C9F4 0000BF7B */  lq         $ra, 0x0($sp)
.align 2
  .L0022C9F8:
    /* 12D978 0022C9F8 0800E003 */  jr         $ra
    /* 12D97C 0022C9FC 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_0022C9A8
