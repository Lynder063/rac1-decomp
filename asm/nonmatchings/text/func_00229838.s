.align 3
/* Handwritten function */
nonmatching func_00229838, 0x74

glabel func_00229838
    /* 12A7B8 00229838 1600013C */  lui        $1, %hi(D_001604A0)
    /* 12A7BC 0022983C A0042124 */  addiu      $1, $1, %lo(D_001604A0)
    /* 12A7C0 00229840 00002B8C */  lw         $11, 0x0($1)
    /* 12A7C4 00229844 00700A3C */  lui        $10, (0x70000010 >> 16)
    /* 12A7C8 00229848 0305C04B */  vaddw.xyz  $vf20, $vf0, $vf0w
    /* 12A7CC 0022984C 00008AD8 */  lqc2       $vf10, 0x0($4)
    /* 12A7D0 00229850 0000ABD8 */  lqc2       $vf11, 0x0($5)
.align 2
  .L00229854:
    /* 12A7D4 00229854 000041D9 */  lqc2       $vf1, (0x70000000 & 0xFFFF)($10)
    /* 12A7D8 00229858 FFFF6B21 */  addi       $11, $11, -0x1 /* handwritten instruction */
    /* 12A7DC 0022985C 100042D9 */  lqc2       $vf2, (0x70000010 & 0xFFFF)($10)
    /* 12A7E0 00229860 00000000 */  nop
    /* 12A7E4 00229864 EC10C14B */  vsub.xyz   $vf3, $vf2, $vf1
    /* 12A7E8 00229868 BC03634B */  .word      0x4B6303BC    # vdiv       Q, $vf0w, $vf3z
    /* 12A7EC 0022986C 2C51414A */  vsub.z     $vf4, $vf10, $vf1
    /* 12A7F0 00229870 6C59424A */  vsub.z     $vf5, $vf11, $vf2
    /* 12A7F4 00229874 1A19C44B */  vmulz.xyz  $vf4, $vf3, $vf4z
    /* 12A7F8 00229878 5A19C54B */  vmulz.xyz  $vf5, $vf3, $vf5z
    /* 12A7FC 0022987C 00000000 */  nop
    /* 12A800 00229880 BF03004A */  .word      0x4A0003BF    # vwaitq
    /* 12A804 00229884 1C21C04B */  .word      0x4BC0211C    # vmulq.xyz  $vf4, $vf4, Q
    /* 12A808 00229888 5C29C04B */  .word      0x4BC0295C    # vmulq.xyz  $vf5, $vf5, Q
    /* 12A80C 0022988C 6808C44B */  vadd.xyz   $vf1, $vf1, $vf4
    /* 12A810 00229890 A810C54B */  vadd.xyz   $vf2, $vf2, $vf5
    /* 12A814 00229894 000041F9 */  sqc2       $vf1, (0x70000000 & 0xFFFF)($10)
    /* 12A818 00229898 100042F9 */  sqc2       $vf2, (0x70000010 & 0xFFFF)($10)
    /* 12A81C 0022989C EDFF6015 */  bnez       $11, .L00229854
    /* 12A820 002298A0 20004A25 */   addiu     $10, $10, %lo(D_70000020)
    /* 12A824 002298A4 0800E003 */  jr         $31
    /* 12A828 002298A8 00000000 */   nop
endlabel func_00229838
    /* 12A82C 002298AC 00000000 */  nop
