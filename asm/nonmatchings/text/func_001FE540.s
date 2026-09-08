.align 3
nonmatching func_001FE540, 0x40

glabel func_001FE540
    /* FF4C0 001FE540 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* FF4C4 001FE544 0000BF7F */  sq         $ra, 0x0($sp)
    /* FF4C8 001FE548 34F9070C */  jal        func_001FE4D0
    /* FF4CC 001FE54C 00000000 */   nop
    /* FF4D0 001FE550 2D184000 */  daddu      $v1, $v0, $zero
    /* FF4D4 001FE554 04006304 */  bgezl      $v1, .L001FE568
    /* FF4D8 001FE558 808A828F */   lw        $v0, -0x7580($gp)
    /* FF4DC 001FE55C 1A00023C */  lui        $v0, %hi(D_00199A68)
    /* FF4E0 001FE560 04000010 */  b          .L001FE574
    /* FF4E4 001FE564 689A4224 */   addiu     $v0, $v0, %lo(D_00199A68)
.align 2
  .L001FE568:
    /* FF4E8 001FE568 00190300 */  sll        $v1, $v1, 4
    /* FF4EC 001FE56C 21186200 */  addu       $v1, $v1, $v0
    /* FF4F0 001FE570 0000628C */  lw         $v0, 0x0($v1)
.align 2
  .L001FE574:
    /* FF4F4 001FE574 0000BF7B */  lq         $ra, 0x0($sp)
    /* FF4F8 001FE578 0800E003 */  jr         $ra
    /* FF4FC 001FE57C 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_001FE540
