.align 3
nonmatching func_001FB848, 0x5C

glabel func_001FB848
    /* FC7C8 001FB848 1600043C */  lui        $a0, %hi(D_00161000)
    /* FC7CC 001FB84C 0010848C */  lw         $a0, %lo(D_00161000)($a0)
    /* FC7D0 001FB850 0030023C */  lui        $v0, (0x30000026 >> 16)
    /* FC7D4 001FB854 26004234 */  ori        $v0, $v0, (0x30000026 & 0xFFFF)
    /* FC7D8 001FB858 1500033C */  lui        $v1, %hi(D_00151A00)
    /* FC7DC 001FB85C 000082AC */  sw         $v0, 0x0($a0)
    /* FC7E0 001FB860 001A6324 */  addiu      $v1, $v1, %lo(D_00151A00)
    /* FC7E4 001FB864 0050043C */  lui        $a0, (0x50000026 >> 16)
    /* FC7E8 001FB868 1600053C */  lui        $a1, %hi(D_00161000)
    /* FC7EC 001FB86C 0010A58C */  lw         $a1, %lo(D_00161000)($a1)
    /* FC7F0 001FB870 26008434 */  ori        $a0, $a0, (0x50000026 & 0xFFFF)
    /* FC7F4 001FB874 0400A3AC */  sw         $v1, 0x4($a1)
    /* FC7F8 001FB878 1600023C */  lui        $v0, %hi(D_00161000)
    /* FC7FC 001FB87C 0010428C */  lw         $v0, %lo(D_00161000)($v0)
    /* FC800 001FB880 080040AC */  sw         $zero, 0x8($v0)
    /* FC804 001FB884 1600033C */  lui        $v1, %hi(D_00161000)
    /* FC808 001FB888 0010638C */  lw         $v1, %lo(D_00161000)($v1)
    /* FC80C 001FB88C 0C0064AC */  sw         $a0, 0xC($v1)
    /* FC810 001FB890 1600023C */  lui        $v0, %hi(D_00161000)
    /* FC814 001FB894 0010428C */  lw         $v0, %lo(D_00161000)($v0)
    /* FC818 001FB898 10004224 */  addiu      $v0, $v0, 0x10
    /* FC81C 001FB89C 0800E003 */  jr         $ra
    /* FC820 001FB8A0 00A382AF */   sw        $v0, -0x5D00($gp)
endlabel func_001FB848
    /* FC824 001FB8A4 00000000 */  nop
