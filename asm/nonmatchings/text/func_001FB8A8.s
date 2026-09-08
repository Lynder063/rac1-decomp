.align 3
nonmatching func_001FB8A8, 0x5C

glabel func_001FB8A8
    /* FC828 001FB8A8 1600043C */  lui        $a0, %hi(D_00161000)
    /* FC82C 001FB8AC 0010848C */  lw         $a0, %lo(D_00161000)($a0)
    /* FC830 001FB8B0 0030023C */  lui        $v0, (0x30000029 >> 16)
    /* FC834 001FB8B4 29004234 */  ori        $v0, $v0, (0x30000029 & 0xFFFF)
    /* FC838 001FB8B8 1500033C */  lui        $v1, %hi(D_00151C60)
    /* FC83C 001FB8BC 000082AC */  sw         $v0, 0x0($a0)
    /* FC840 001FB8C0 601C6324 */  addiu      $v1, $v1, %lo(D_00151C60)
    /* FC844 001FB8C4 0050043C */  lui        $a0, (0x50000029 >> 16)
    /* FC848 001FB8C8 1600053C */  lui        $a1, %hi(D_00161000)
    /* FC84C 001FB8CC 0010A58C */  lw         $a1, %lo(D_00161000)($a1)
    /* FC850 001FB8D0 29008434 */  ori        $a0, $a0, (0x50000029 & 0xFFFF)
    /* FC854 001FB8D4 0400A3AC */  sw         $v1, 0x4($a1)
    /* FC858 001FB8D8 1600023C */  lui        $v0, %hi(D_00161000)
    /* FC85C 001FB8DC 0010428C */  lw         $v0, %lo(D_00161000)($v0)
    /* FC860 001FB8E0 080040AC */  sw         $zero, 0x8($v0)
    /* FC864 001FB8E4 1600033C */  lui        $v1, %hi(D_00161000)
    /* FC868 001FB8E8 0010638C */  lw         $v1, %lo(D_00161000)($v1)
    /* FC86C 001FB8EC 0C0064AC */  sw         $a0, 0xC($v1)
    /* FC870 001FB8F0 1600023C */  lui        $v0, %hi(D_00161000)
    /* FC874 001FB8F4 0010428C */  lw         $v0, %lo(D_00161000)($v0)
    /* FC878 001FB8F8 10004224 */  addiu      $v0, $v0, 0x10
    /* FC87C 001FB8FC 0800E003 */  jr         $ra
    /* FC880 001FB900 00A382AF */   sw        $v0, -0x5D00($gp)
endlabel func_001FB8A8
    /* FC884 001FB904 00000000 */  nop
