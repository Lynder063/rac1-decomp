.align 3
nonmatching func_001FB598, 0x6C

glabel func_001FB598
    /* FC518 001FB598 1600043C */  lui        $4, %hi(D_00161000)
    /* FC51C 001FB59C 0010848C */  lw         $4, %lo(D_00161000)($4)
    /* FC520 001FB5A0 0030023C */  lui        $2, (0x30000009 >> 16)
    /* FC524 001FB5A4 09004234 */  ori        $2, $2, (0x30000009 & 0xFFFF)
    /* FC528 001FB5A8 FF0F033C */  lui        $3, (0xFFFFFFF >> 16)
    /* FC52C 001FB5AC 000082AC */  sw         $2, 0x0($4)
    /* FC530 001FB5B0 FFFF6334 */  ori        $3, $3, (0xFFFFFFF & 0xFFFF)
    /* FC534 001FB5B4 0050053C */  lui        $5, (0x50000009 >> 16)
    /* FC538 001FB5B8 1600023C */  lui        $2, %hi(D_0015EFB8)
    /* FC53C 001FB5BC B8EF428C */  lw         $2, %lo(D_0015EFB8)($2)
    /* FC540 001FB5C0 0900A534 */  ori        $5, $5, (0x50000009 & 0xFFFF)
    /* FC544 001FB5C4 1600043C */  lui        $4, %hi(D_00161000)
    /* FC548 001FB5C8 0010848C */  lw         $4, %lo(D_00161000)($4)
    /* FC54C 001FB5CC C0004224 */  addiu      $2, $2, 0xC0
    /* FC550 001FB5D0 24104300 */  and        $2, $2, $3
    /* FC554 001FB5D4 040082AC */  sw         $2, 0x4($4)
    /* FC558 001FB5D8 1600033C */  lui        $3, %hi(D_00161000)
    /* FC55C 001FB5DC 0010638C */  lw         $3, %lo(D_00161000)($3)
    /* FC560 001FB5E0 080060AC */  sw         $0, 0x8($3)
    /* FC564 001FB5E4 1600043C */  lui        $4, %hi(D_00161000)
    /* FC568 001FB5E8 0010848C */  lw         $4, %lo(D_00161000)($4)
    /* FC56C 001FB5EC 0C0085AC */  sw         $5, 0xC($4)
    /* FC570 001FB5F0 1600023C */  lui        $2, %hi(D_00161000)
    /* FC574 001FB5F4 0010428C */  lw         $2, %lo(D_00161000)($2)
    /* FC578 001FB5F8 10004224 */  addiu      $2, $2, 0x10
    /* FC57C 001FB5FC 0800E003 */  jr         $31
    /* FC580 001FB600 00A382AF */   sw        $2, -0x5D00($28)
endlabel func_001FB598
    /* FC584 001FB604 00000000 */  nop
