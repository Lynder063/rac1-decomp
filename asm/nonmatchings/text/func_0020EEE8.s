.align 3
/* Handwritten function */
nonmatching func_0020EEE8, 0x48

glabel func_0020EEE8
    /* 10FE68 0020EEE8 20008580 */  lb         $5, 0x20($4)
    /* 10FE6C 0020EEEC 34008894 */  lhu        $8, 0x34($4)
    /* 10FE70 0020EEF0 0D00A004 */  bltz       $5, .L0020EF28
    /* 10FE74 0020EEF4 400080CC */   pref      0x00, 0x40($4)
    /* 10FE78 0020EEF8 2400828C */  lw         $2, 0x24($4)
    /* 10FE7C 0020EEFC 00009920 */  addi       $25, $4, 0x0 /* handwritten instruction */
    /* 10FE80 0020EF00 00800731 */  andi       $7, $8, 0x8000
    /* 10FE84 0020EF04 52002493 */  lbu        $4, 0x52($25)
    /* 10FE88 0020EF08 53002593 */  lbu        $5, 0x53($25)
    /* 10FE8C 0020EF0C 2C00238F */  lw         $3, 0x2C($25)
    /* 10FE90 0020EF10 C00034DB */  lqc2       $vf20, 0xC0($25)
    /* 10FE94 0020EF14 D00035DB */  lqc2       $vf21, 0xD0($25)
    /* 10FE98 0020EF18 E00036DB */  lqc2       $vf22, 0xE0($25)
    /* 10FE9C 0020EF1C 3C03F74B */  vmove.xyzw $vf23, $vf0
    /* 10FEA0 0020EF20 603B0808 */  j          func_0020ED80
    /* 10FEA4 0020EF24 00000000 */   nop
.align 2
  .L0020EF28:
    /* 10FEA8 0020EF28 0800E003 */  jr         $31
    /* 10FEAC 0020EF2C 00000000 */   nop
endlabel func_0020EEE8
