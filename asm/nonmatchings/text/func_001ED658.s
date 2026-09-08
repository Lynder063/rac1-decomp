.align 3
nonmatching func_001ED658, 0xB0

glabel func_001ED658
    /* EE5D8 001ED658 D0FFBD27 */  addiu      $sp, $sp, -0x30
    /* EE5DC 001ED65C 1800033C */  lui        $v1, %hi(D_001872B0)
    /* EE5E0 001ED660 1000B17F */  sq         $s1, 0x10($sp)
    /* EE5E4 001ED664 0000B07F */  sq         $s0, 0x0($sp)
    /* EE5E8 001ED668 B0727124 */  addiu      $s1, $v1, %lo(D_001872B0)
    /* EE5EC 001ED66C 2000BF7F */  sq         $ra, 0x20($sp)
    /* EE5F0 001ED670 02002292 */  lbu        $v0, 0x2($s1)
    /* EE5F4 001ED674 05004014 */  bnez       $v0, .L001ED68C
    /* EE5F8 001ED678 2D808000 */   daddu     $s0, $a0, $zero
    /* EE5FC 001ED67C A8B3070C */  jal        func_001ECEA0
    /* EE600 001ED680 10002526 */   addiu     $a1, $s1, 0x10
    /* EE604 001ED684 04000010 */  b          .L001ED698
    /* EE608 001ED688 00000000 */   nop
.align 2
  .L001ED68C:
    /* EE60C 001ED68C 2D200002 */  daddu      $a0, $s0, $zero
    /* EE610 001ED690 20B4070C */  jal        func_001ED080
    /* EE614 001ED694 70002526 */   addiu     $a1, $s1, 0x70
.align 2
  .L001ED698:
    /* EE618 001ED698 16004010 */  beqz       $v0, .L001ED6F4
    /* EE61C 001ED69C 1900023C */   lui       $v0, %hi(D_0018C42C)
    /* EE620 001ED6A0 2CC4438C */  lw         $v1, %lo(D_0018C42C)($v0)
    /* EE624 001ED6A4 12006054 */  bnel       $v1, $zero, .L001ED6F0
    /* EE628 001ED6A8 020020A2 */   sb        $zero, 0x2($s1)
    /* EE62C 001ED6AC 1800033C */  lui        $v1, %hi(D_00187390)
    /* EE630 001ED6B0 90736324 */  addiu      $v1, $v1, %lo(D_00187390)
    /* EE634 001ED6B4 0000027A */  lq         $v0, 0x0($s0)
    /* EE638 001ED6B8 0000627C */  sq         $v0, 0x0($v1)
    /* EE63C 001ED6BC 10006524 */  addiu      $a1, $v1, 0x10
    /* EE640 001ED6C0 10000426 */  addiu      $a0, $s0, 0x10
    /* EE644 001ED6C4 00008278 */  lq         $v0, 0x0($a0)
    /* EE648 001ED6C8 0000A27C */  sq         $v0, 0x0($a1)
    /* EE64C 001ED6CC 20006624 */  addiu      $a2, $v1, 0x20
    /* EE650 001ED6D0 20000426 */  addiu      $a0, $s0, 0x20
    /* EE654 001ED6D4 00008278 */  lq         $v0, 0x0($a0)
    /* EE658 001ED6D8 0000C27C */  sq         $v0, 0x0($a2)
    /* EE65C 001ED6DC F0FD6324 */  addiu      $v1, $v1, -0x210
    /* EE660 001ED6E0 30000426 */  addiu      $a0, $s0, 0x30
    /* EE664 001ED6E4 00008278 */  lq         $v0, 0x0($a0)
    /* EE668 001ED6E8 0000627C */  sq         $v0, 0x0($v1)
    /* EE66C 001ED6EC 020020A2 */  sb         $zero, 0x2($s1)
.align 2
  .L001ED6F0:
    /* EE670 001ED6F0 000020A6 */  sh         $zero, 0x0($s1)
.align 2
  .L001ED6F4:
    /* EE674 001ED6F4 2000BF7B */  lq         $ra, 0x20($sp)
    /* EE678 001ED6F8 1000B17B */  lq         $s1, 0x10($sp)
    /* EE67C 001ED6FC 0000B07B */  lq         $s0, 0x0($sp)
    /* EE680 001ED700 0800E003 */  jr         $ra
    /* EE684 001ED704 3000BD27 */   addiu     $sp, $sp, 0x30
endlabel func_001ED658
