.align 3
/* Handwritten function */
nonmatching func_0022D7E0, 0xE0

glabel func_0022D7E0
    /* 12E760 0022D7E0 1900013C */  lui        $1, %hi(D_0018D080)
    /* 12E764 0022D7E4 80D02124 */  addiu      $1, $1, %lo(D_0018D080)
    /* 12E768 0022D7E8 300038D8 */  lqc2       $vf24, 0x30($1)
    /* 12E76C 0022D7EC 000026D8 */  lqc2       $vf6, 0x0($1)
    /* 12E770 0022D7F0 100027D8 */  lqc2       $vf7, 0x10($1)
    /* 12E774 0022D7F4 200028D8 */  lqc2       $vf8, 0x20($1)
    /* 12E778 0022D7F8 400034D8 */  lqc2       $vf20, 0x40($1)
    /* 12E77C 0022D7FC 500035D8 */  lqc2       $vf21, 0x50($1)
    /* 12E780 0022D800 600036D8 */  lqc2       $vf22, 0x60($1)
    /* 12E784 0022D804 700037D8 */  lqc2       $vf23, 0x70($1)
    /* 12E788 0022D808 1E00013C */  lui        $1, %hi(D_001D9A70)
    /* 12E78C 0022D80C 709A2124 */  addiu      $1, $1, %lo(D_001D9A70)
    /* 12E790 0022D810 00002BD8 */  lqc2       $vf11, 0x0($1)
    /* 12E794 0022D814 10002CD8 */  lqc2       $vf12, 0x10($1)
    /* 12E798 0022D818 20002DD8 */  lqc2       $vf13, 0x20($1)
    /* 12E79C 0022D81C 30002ED8 */  lqc2       $vf14, 0x30($1)
    /* 12E7A0 0022D820 BC31CB4B */  .word      0x4BCB31BC    # vmulax.xyz ACC, $vf6, $vf11x
    /* 12E7A4 0022D824 BD38CB4B */  .word      0x4BCB38BD    # vmadday.xyz ACC, $vf7, $vf11y
    /* 12E7A8 0022D828 4A46CB4B */  vmaddz.xyz $vf25, $vf8, $vf11z
    /* 12E7AC 0022D82C BC31CC4B */  .word      0x4BCC31BC    # vmulax.xyz ACC, $vf6, $vf12x
    /* 12E7B0 0022D830 BD38CC4B */  .word      0x4BCC38BD    # vmadday.xyz ACC, $vf7, $vf12y
    /* 12E7B4 0022D834 8A46CC4B */  vmaddz.xyz $vf26, $vf8, $vf12z
    /* 12E7B8 0022D838 BC31CD4B */  .word      0x4BCD31BC    # vmulax.xyz ACC, $vf6, $vf13x
    /* 12E7BC 0022D83C BD38CD4B */  .word      0x4BCD38BD    # vmadday.xyz ACC, $vf7, $vf13y
    /* 12E7C0 0022D840 CA46CD4B */  vmaddz.xyz $vf27, $vf8, $vf13z
    /* 12E7C4 0022D844 01000320 */  addi       $3, $0, 0x1 /* handwritten instruction */
.align 2
  .L0022D848:
    /* 12E7C8 0022D848 000081D8 */  lqc2       $vf1, 0x0($4)
    /* 12E7CC 0022D84C 5B08F84B */  vmulw.xyzw $vf1, $vf1, $vf24w
    /* 12E7D0 0022D850 3C0BC24B */  vmove.xyz  $vf2, $vf1
    /* 12E7D4 0022D854 FFFFA520 */  addi       $5, $5, -0x1 /* handwritten instruction */
    /* 12E7D8 0022D858 C300014B */  vaddw.x    $vf3, $vf0, $vf1w
    /* 12E7DC 0022D85C 20008424 */  addiu      $4, $4, 0x20
    /* 12E7E0 0022D860 C700814A */  vsubw.y    $vf3, $vf0, $vf1w
    /* 12E7E4 0022D864 00000000 */  nop
    /* 12E7E8 0022D868 BCC9C24B */  .word      0x4BC2C9BC    # vmulax.xyz ACC, $vf25, $vf2x
    /* 12E7EC 0022D86C BDD0C24B */  .word      0x4BC2D0BD    # vmadday.xyz ACC, $vf26, $vf2y
    /* 12E7F0 0022D870 8AD8C24B */  vmaddz.xyz $vf2, $vf27, $vf2z
    /* 12E7F4 0022D874 0100C624 */  addiu      $6, $6, 0x1
    /* 12E7F8 0022D878 1BB2814B */  vmulw.xy   $vf8, $vf22, $vf1w
    /* 12E7FC 0022D87C 5AA1824B */  vmulz.xy   $vf5, $vf20, $vf2z
    /* 12E800 0022D880 FD11824B */  vabs.xy    $vf2, $vf2
    /* 12E804 0022D884 AC11884B */  vsub.xy    $vf6, $vf2, $vf8
    /* 12E808 0022D888 EC29864B */  vsub.xy    $vf7, $vf5, $vf6
    /* 12E80C 0022D88C 00382248 */  qmfc2.ni   $2, $vf7
    /* 12E810 0022D890 07004004 */  bltz       $2, .L0022D8B0
    /* 12E814 0022D894 3C100200 */   dsll32    $2, $2, 0
    /* 12E818 0022D898 05004004 */  bltz       $2, .L0022D8B0
    /* 12E81C 0022D89C 00000000 */   nop
    /* 12E820 0022D8A0 E9FFA014 */  bnez       $5, .L0022D848
    /* 12E824 0022D8A4 FFFFC3A0 */   sb        $3, -0x1($6)
    /* 12E828 0022D8A8 0800E003 */  jr         $31
    /* 12E82C 0022D8AC 00000000 */   nop
.align 2
  .L0022D8B0:
    /* 12E830 0022D8B0 E5FFA014 */  bnez       $5, .L0022D848
    /* 12E834 0022D8B4 FFFFC0A0 */   sb        $0, -0x1($6)
    /* 12E838 0022D8B8 0800E003 */  jr         $31
    /* 12E83C 0022D8BC 00000000 */   nop
endlabel func_0022D7E0
