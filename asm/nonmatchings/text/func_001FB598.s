.align 3
nonmatching func_001FB598, 0x6C

glabel func_001FB598
    /* FC518 001FB598 1600043C */  lui        $a0, %hi(D_00161000)
    /* FC51C 001FB59C 0010848C */  lw         $a0, %lo(D_00161000)($a0)
    /* FC520 001FB5A0 0030023C */  lui        $v0, (0x30000009 >> 16)
    /* FC524 001FB5A4 09004234 */  ori        $v0, $v0, (0x30000009 & 0xFFFF)
    /* FC528 001FB5A8 FF0F033C */  lui        $v1, (0xFFFFFFF >> 16)
    /* FC52C 001FB5AC 000082AC */  sw         $v0, 0x0($a0)
    /* FC530 001FB5B0 FFFF6334 */  ori        $v1, $v1, (0xFFFFFFF & 0xFFFF)
    /* FC534 001FB5B4 0050053C */  lui        $a1, (0x50000009 >> 16)
    /* FC538 001FB5B8 1600023C */  lui        $v0, %hi(D_0015EFB8)
    /* FC53C 001FB5BC B8EF428C */  lw         $v0, %lo(D_0015EFB8)($v0)
    /* FC540 001FB5C0 0900A534 */  ori        $a1, $a1, (0x50000009 & 0xFFFF)
    /* FC544 001FB5C4 1600043C */  lui        $a0, %hi(D_00161000)
    /* FC548 001FB5C8 0010848C */  lw         $a0, %lo(D_00161000)($a0)
    /* FC54C 001FB5CC C0004224 */  addiu      $v0, $v0, 0xC0
    /* FC550 001FB5D0 24104300 */  and        $v0, $v0, $v1
    /* FC554 001FB5D4 040082AC */  sw         $v0, 0x4($a0)
    /* FC558 001FB5D8 1600033C */  lui        $v1, %hi(D_00161000)
    /* FC55C 001FB5DC 0010638C */  lw         $v1, %lo(D_00161000)($v1)
    /* FC560 001FB5E0 080060AC */  sw         $zero, 0x8($v1)
    /* FC564 001FB5E4 1600043C */  lui        $a0, %hi(D_00161000)
    /* FC568 001FB5E8 0010848C */  lw         $a0, %lo(D_00161000)($a0)
    /* FC56C 001FB5EC 0C0085AC */  sw         $a1, 0xC($a0)
    /* FC570 001FB5F0 1600023C */  lui        $v0, %hi(D_00161000)
    /* FC574 001FB5F4 0010428C */  lw         $v0, %lo(D_00161000)($v0)
    /* FC578 001FB5F8 10004224 */  addiu      $v0, $v0, 0x10
    /* FC57C 001FB5FC 0800E003 */  jr         $ra
    /* FC580 001FB600 00A382AF */   sw        $v0, -0x5D00($gp)
endlabel func_001FB598
    /* FC584 001FB604 00000000 */  nop
