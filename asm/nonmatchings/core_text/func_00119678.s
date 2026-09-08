.align 3
/* Handwritten function */
nonmatching func_00119678, 0x94

glabel func_00119678
    /* 1A5F8 00119678 E0FFBD27 */  addiu      $sp, $sp, -0x20
    /* 1A5FC 0011967C 1000BFFF */  sd         $ra, 0x10($sp)
    /* 1A600 00119680 0000B0FF */  sd         $s0, 0x0($sp)
    /* 1A604 00119684 D1FF0324 */  addiu      $v1, $zero, -0x2F
    /* 1A608 00119688 0C000000 */  syscall    0 /* handwritten instruction */
    /* 1A60C 0011968C 2D804000 */  daddu      $s0, $v0, $zero
    /* 1A610 00119690 05000412 */  beq        $s0, $a0, .L001196A8
    /* 1A614 00119694 0001022E */   sltiu     $v0, $s0, 0x100
    /* 1A618 00119698 0863040C */  jal        func_00118C20
    /* 1A61C 0011969C 00000000 */   nop
    /* 1A620 001196A0 17000010 */  b          .L00119700
    /* 1A624 001196A4 1000BFDF */   ld        $ra, 0x10($sp)
.align 2
  .L001196A8:
    /* 1A628 001196A8 04004010 */  beqz       $v0, .L001196BC
    /* 1A62C 001196AC 1300023C */   lui       $v0, %hi(D_0012FCF8)
    /* 1A630 001196B0 F8FC438C */  lw         $v1, %lo(D_0012FCF8)($v0)
    /* 1A634 001196B4 03006014 */  bnez       $v1, .L001196C4
    /* 1A638 001196B8 1500033C */   lui       $v1, %hi(D_00154608)
.align 2
  .L001196BC:
    /* 1A63C 001196BC 0F000010 */  b          .L001196FC
    /* 1A640 001196C0 FFFF0224 */   addiu     $v0, $zero, -0x1
.align 2
  .L001196C4:
    /* 1A644 001196C4 1500053C */  lui        $a1, %hi(D_00154600)
    /* 1A648 001196C8 08466324 */  addiu      $v1, $v1, %lo(D_00154608)
    /* 1A64C 001196CC 0046A48C */  lw         $a0, %lo(D_00154600)($a1)
    /* 1A650 001196D0 0400628C */  lw         $v0, 0x4($v1)
    /* 1A654 001196D4 FF014230 */  andi       $v0, $v0, 0x1FF
    /* 1A658 001196D8 40300200 */  sll        $a2, $v0, 1
    /* 1A65C 001196DC 01004224 */  addiu      $v0, $v0, 0x1
    /* 1A660 001196E0 21286600 */  addu       $a1, $v1, $a2
    /* 1A664 001196E4 040062AC */  sw         $v0, 0x4($v1)
    /* 1A668 001196E8 2D18A000 */  daddu      $v1, $a1, $zero
    /* 1A66C 001196EC 0800A0A0 */  sb         $zero, 0x8($a1)
    /* 1A670 001196F0 2863040C */  jal        func_00118CA0
    /* 1A674 001196F4 090070A0 */   sb        $s0, 0x9($v1)
    /* 1A678 001196F8 2D100002 */  daddu      $v0, $s0, $zero
.align 2
  .L001196FC:
    /* 1A67C 001196FC 1000BFDF */  ld         $ra, 0x10($sp)
.align 2
  .L00119700:
    /* 1A680 00119700 0000B0DF */  ld         $s0, 0x0($sp)
    /* 1A684 00119704 0800E003 */  jr         $ra
    /* 1A688 00119708 2000BD27 */   addiu     $sp, $sp, 0x20
endlabel func_00119678
    /* 1A68C 0011970C 00000000 */  nop
