.align 3
nonmatching func_001FB530, 0x68

glabel func_001FB530
    /* FC4B0 001FB530 1600033C */  lui        $v1, %hi(D_00161000)
    /* FC4B4 001FB534 0010638C */  lw         $v1, %lo(D_00161000)($v1)
    /* FC4B8 001FB538 15006010 */  beqz       $v1, .L001FB590
    /* FC4BC 001FB53C 0030023C */   lui       $v0, (0x30000015 >> 16)
    /* FC4C0 001FB540 1500043C */  lui        $a0, %hi(D_00152140)
    /* FC4C4 001FB544 15004234 */  ori        $v0, $v0, (0x30000015 & 0xFFFF)
    /* FC4C8 001FB548 40218424 */  addiu      $a0, $a0, %lo(D_00152140)
    /* FC4CC 001FB54C 000062AC */  sw         $v0, 0x0($v1)
    /* FC4D0 001FB550 0050053C */  lui        $a1, (0x50000015 >> 16)
    /* FC4D4 001FB554 1500A534 */  ori        $a1, $a1, (0x50000015 & 0xFFFF)
    /* FC4D8 001FB558 1600023C */  lui        $v0, %hi(D_00161000)
    /* FC4DC 001FB55C 0010428C */  lw         $v0, %lo(D_00161000)($v0)
    /* FC4E0 001FB560 040044AC */  sw         $a0, 0x4($v0)
    /* FC4E4 001FB564 1600033C */  lui        $v1, %hi(D_00161000)
    /* FC4E8 001FB568 0010638C */  lw         $v1, %lo(D_00161000)($v1)
    /* FC4EC 001FB56C 080060AC */  sw         $zero, 0x8($v1)
    /* FC4F0 001FB570 1600043C */  lui        $a0, %hi(D_00161000)
    /* FC4F4 001FB574 0010848C */  lw         $a0, %lo(D_00161000)($a0)
    /* FC4F8 001FB578 0C0085AC */  sw         $a1, 0xC($a0)
    /* FC4FC 001FB57C 1600023C */  lui        $v0, %hi(D_00161000)
    /* FC500 001FB580 0010428C */  lw         $v0, %lo(D_00161000)($v0)
    /* FC504 001FB584 10004224 */  addiu      $v0, $v0, 0x10
    /* FC508 001FB588 1600013C */  lui        $at, %hi(D_00161000)
    /* FC50C 001FB58C 001022AC */  sw         $v0, %lo(D_00161000)($at)
.align 2
  .L001FB590:
    /* FC510 001FB590 0800E003 */  jr         $ra
    /* FC514 001FB594 00000000 */   nop
endlabel func_001FB530
