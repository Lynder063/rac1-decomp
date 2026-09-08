.align 3
nonmatching func_001ED658, 0xB0

glabel func_001ED658
    /* EE5D8 001ED658 D0FFBD27 */  addiu      $29, $29, -0x30
    /* EE5DC 001ED65C 1800033C */  lui        $3, %hi(D_001872B0)
    /* EE5E0 001ED660 1000B17F */  sq         $17, 0x10($29)
    /* EE5E4 001ED664 0000B07F */  sq         $16, 0x0($29)
    /* EE5E8 001ED668 B0727124 */  addiu      $17, $3, %lo(D_001872B0)
    /* EE5EC 001ED66C 2000BF7F */  sq         $31, 0x20($29)
    /* EE5F0 001ED670 02002292 */  lbu        $2, 0x2($17)
    /* EE5F4 001ED674 05004014 */  bnez       $2, .L001ED68C
    /* EE5F8 001ED678 2D808000 */   daddu     $16, $4, $0
    /* EE5FC 001ED67C A8B3070C */  jal        func_001ECEA0
    /* EE600 001ED680 10002526 */   addiu     $5, $17, 0x10
    /* EE604 001ED684 04000010 */  b          .L001ED698
    /* EE608 001ED688 00000000 */   nop
.align 2
  .L001ED68C:
    /* EE60C 001ED68C 2D200002 */  daddu      $4, $16, $0
    /* EE610 001ED690 20B4070C */  jal        func_001ED080
    /* EE614 001ED694 70002526 */   addiu     $5, $17, 0x70
.align 2
  .L001ED698:
    /* EE618 001ED698 16004010 */  beqz       $2, .L001ED6F4
    /* EE61C 001ED69C 1900023C */   lui       $2, %hi(D_0018C42C)
    /* EE620 001ED6A0 2CC4438C */  lw         $3, %lo(D_0018C42C)($2)
    /* EE624 001ED6A4 12006054 */  bnel       $3, $0, .L001ED6F0
    /* EE628 001ED6A8 020020A2 */   sb        $0, 0x2($17)
    /* EE62C 001ED6AC 1800033C */  lui        $3, %hi(D_00187390)
    /* EE630 001ED6B0 90736324 */  addiu      $3, $3, %lo(D_00187390)
    /* EE634 001ED6B4 0000027A */  lq         $2, 0x0($16)
    /* EE638 001ED6B8 0000627C */  sq         $2, 0x0($3)
    /* EE63C 001ED6BC 10006524 */  addiu      $5, $3, 0x10
    /* EE640 001ED6C0 10000426 */  addiu      $4, $16, 0x10
    /* EE644 001ED6C4 00008278 */  lq         $2, 0x0($4)
    /* EE648 001ED6C8 0000A27C */  sq         $2, 0x0($5)
    /* EE64C 001ED6CC 20006624 */  addiu      $6, $3, 0x20
    /* EE650 001ED6D0 20000426 */  addiu      $4, $16, 0x20
    /* EE654 001ED6D4 00008278 */  lq         $2, 0x0($4)
    /* EE658 001ED6D8 0000C27C */  sq         $2, 0x0($6)
    /* EE65C 001ED6DC F0FD6324 */  addiu      $3, $3, -0x210
    /* EE660 001ED6E0 30000426 */  addiu      $4, $16, 0x30
    /* EE664 001ED6E4 00008278 */  lq         $2, 0x0($4)
    /* EE668 001ED6E8 0000627C */  sq         $2, 0x0($3)
    /* EE66C 001ED6EC 020020A2 */  sb         $0, 0x2($17)
.align 2
  .L001ED6F0:
    /* EE670 001ED6F0 000020A6 */  sh         $0, 0x0($17)
.align 2
  .L001ED6F4:
    /* EE674 001ED6F4 2000BF7B */  lq         $31, 0x20($29)
    /* EE678 001ED6F8 1000B17B */  lq         $17, 0x10($29)
    /* EE67C 001ED6FC 0000B07B */  lq         $16, 0x0($29)
    /* EE680 001ED700 0800E003 */  jr         $31
    /* EE684 001ED704 3000BD27 */   addiu     $29, $29, 0x30
endlabel func_001ED658
