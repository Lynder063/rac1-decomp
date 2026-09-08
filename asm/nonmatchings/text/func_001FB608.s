.align 3
nonmatching func_001FB608, 0x23C

glabel func_001FB608
    /* FC588 001FB608 2D408000 */  daddu      $t0, $a0, $zero
    /* FC58C 001FB60C 01000724 */  addiu      $a3, $zero, 0x1
    /* FC590 001FB610 FAFF0225 */  addiu      $v0, $t0, -0x6
    /* FC594 001FB614 034A0600 */  sra        $t1, $a2, 8
    /* FC598 001FB618 2A180200 */  slt        $v1, $zero, $v0
    /* FC59C 001FB61C B0FFBD27 */  addiu      $sp, $sp, -0x50
    /* FC5A0 001FB620 0A10E300 */  movz       $v0, $a3, $v1
    /* FC5A4 001FB624 2D20A000 */  daddu      $a0, $a1, $zero
    /* FC5A8 001FB628 04104700 */  sllv       $v0, $a3, $v0
    /* FC5AC 001FB62C 2D180001 */  daddu      $v1, $t0, $zero
    /* FC5B0 001FB630 B81E0300 */  dsll       $v1, $v1, 26
    /* FC5B4 001FB634 B8130200 */  dsll       $v0, $v0, 14
    /* FC5B8 001FB638 0000B07F */  sq         $s0, 0x0($sp)
    /* FC5BC 001FB63C 25102201 */  or         $v0, $t1, $v0
    /* FC5C0 001FB640 B8270400 */  dsll       $a0, $a0, 30
    /* FC5C4 001FB644 25104300 */  or         $v0, $v0, $v1
    /* FC5C8 001FB648 04400701 */  sllv       $t0, $a3, $t0
    /* FC5CC 001FB64C 25104400 */  or         $v0, $v0, $a0
    /* FC5D0 001FB650 1500103C */  lui        $s0, %hi(D_00151880)
    /* FC5D4 001FB654 80181026 */  addiu      $s0, $s0, %lo(D_00151880)
    /* FC5D8 001FB658 4000BF7F */  sq         $ra, 0x40($sp)
    /* FC5DC 001FB65C 3000B37F */  sq         $s3, 0x30($sp)
    /* FC5E0 001FB660 0438A700 */  sllv       $a3, $a3, $a1
    /* FC5E4 001FB664 2000B27F */  sq         $s2, 0x20($sp)
    /* FC5E8 001FB668 00800334 */  ori        $v1, $zero, 0x8000
    /* FC5EC 001FB66C F81C0300 */  dsll       $v1, $v1, 19
    /* FC5F0 001FB670 1000B17F */  sq         $s1, 0x10($sp)
    /* FC5F4 001FB674 43330600 */  sra        $a2, $a2, 13
    /* FC5F8 001FB678 1600043C */  lui        $a0, %hi(D_00161000)
    /* FC5FC 001FB67C 0010848C */  lw         $a0, %lo(D_00161000)($a0)
    /* FC600 001FB680 25104300 */  or         $v0, $v0, $v1
    /* FC604 001FB684 660106A6 */  sh         $a2, 0x166($s0)
    /* FC608 001FB688 F0000524 */  addiu      $a1, $zero, 0xF0
    /* FC60C 001FB68C 600108A6 */  sh         $t0, 0x160($s0)
    /* FC610 001FB690 0E001324 */  addiu      $s3, $zero, 0xE
    /* FC614 001FB694 620107A6 */  sh         $a3, 0x162($s0)
    /* FC618 001FB698 76E6070C */  jal        func_001F99D8
    /* FC61C 001FB69C D08282FF */   sd        $v0, -0x7D30($gp)
    /* FC620 001FB6A0 1600033C */  lui        $v1, %hi(D_00161000)
    /* FC624 001FB6A4 0010638C */  lw         $v1, %lo(D_00161000)($v1)
    /* FC628 001FB6A8 0010023C */  lui        $v0, (0x1000000E >> 16)
    /* FC62C 001FB6AC 0E004234 */  ori        $v0, $v0, (0x1000000E & 0xFFFF)
    /* FC630 001FB6B0 0050043C */  lui        $a0, (0x5000000E >> 16)
    /* FC634 001FB6B4 000062AC */  sw         $v0, 0x0($v1)
    /* FC638 001FB6B8 0E008434 */  ori        $a0, $a0, (0x5000000E & 0xFFFF)
    /* FC63C 001FB6BC 00800534 */  ori        $a1, $zero, 0x8000
    /* FC640 001FB6C0 7C2B0500 */  dsll32     $a1, $a1, 13
    /* FC644 001FB6C4 0800A534 */  ori        $a1, $a1, 0x8
    /* FC648 001FB6C8 03000824 */  addiu      $t0, $zero, 0x3
    /* FC64C 001FB6CC 1600033C */  lui        $v1, %hi(D_00161000)
    /* FC650 001FB6D0 0010638C */  lw         $v1, %lo(D_00161000)($v1)
    /* FC654 001FB6D4 2D480000 */  daddu      $t1, $zero, $zero
    /* FC658 001FB6D8 040060AC */  sw         $zero, 0x4($v1)
    /* FC65C 001FB6DC 1600023C */  lui        $v0, %hi(D_00161000)
    /* FC660 001FB6E0 0010428C */  lw         $v0, %lo(D_00161000)($v0)
    /* FC664 001FB6E4 080040AC */  sw         $zero, 0x8($v0)
    /* FC668 001FB6E8 1600033C */  lui        $v1, %hi(D_00161000)
    /* FC66C 001FB6EC 0010638C */  lw         $v1, %lo(D_00161000)($v1)
    /* FC670 001FB6F0 0C0064AC */  sw         $a0, 0xC($v1)
    /* FC674 001FB6F4 1600023C */  lui        $v0, %hi(D_00161000)
    /* FC678 001FB6F8 0010428C */  lw         $v0, %lo(D_00161000)($v0)
    /* FC67C 001FB6FC 10004324 */  addiu      $v1, $v0, 0x10
    /* FC680 001FB700 1600013C */  lui        $at, %hi(D_00161000)
    /* FC684 001FB704 001023AC */  sw         $v1, %lo(D_00161000)($at)
    /* FC688 001FB708 100045FC */  sd         $a1, 0x10($v0)
    /* FC68C 001FB70C 080073FC */  sd         $s3, 0x8($v1)
    /* FC690 001FB710 1600113C */  lui        $s1, %hi(D_00161000)
    /* FC694 001FB714 0010318E */  lw         $s1, %lo(D_00161000)($s1)
    /* FC698 001FB718 64010586 */  lh         $a1, 0x164($s0)
    /* FC69C 001FB71C 10003226 */  addiu      $s2, $s1, 0x10
    /* FC6A0 001FB720 60010686 */  lh         $a2, 0x160($s0)
    /* FC6A4 001FB724 62010786 */  lh         $a3, 0x162($s0)
    /* FC6A8 001FB728 2D204002 */  daddu      $a0, $s2, $zero
    /* FC6AC 001FB72C B288040C */  jal        func_001222C8
    /* FC6B0 001FB730 00A392AF */   sw        $s2, -0x5D00($gp)
    /* FC6B4 001FB734 100023DE */  ld         $v1, 0x10($s1)
    /* FC6B8 001FB738 00FE0424 */  addiu      $a0, $zero, -0x200
    /* FC6BC 001FB73C 66010286 */  lh         $v0, 0x166($s0)
    /* FC6C0 001FB740 00800A34 */  ori        $t2, $zero, 0x8000
    /* FC6C4 001FB744 7C530A00 */  dsll32     $t2, $t2, 13
    /* FC6C8 001FB748 01004A35 */  ori        $t2, $t2, 0x1
    /* FC6CC 001FB74C 24186400 */  and        $v1, $v1, $a0
    /* FC6D0 001FB750 03000B3C */  lui        $t3, (0x30003 >> 16)
    /* FC6D4 001FB754 03006B35 */  ori        $t3, $t3, (0x30003 & 0xFFFF)
    /* FC6D8 001FB758 FF014230 */  andi       $v0, $v0, 0x1FF
    /* FC6DC 001FB75C 47000924 */  addiu      $t1, $zero, 0x47
    /* FC6E0 001FB760 25186200 */  or         $v1, $v1, $v0
    /* FC6E4 001FB764 00880834 */  ori        $t0, $zero, 0x8800
    /* FC6E8 001FB768 FC430800 */  dsll32     $t0, $t0, 15
    /* FC6EC 001FB76C 01800835 */  ori        $t0, $t0, 0x8001
    /* FC6F0 001FB770 100023FE */  sd         $v1, 0x10($s1)
    /* FC6F4 001FB774 10440624 */  addiu      $a2, $zero, 0x4410
    /* FC6F8 001FB778 06010724 */  addiu      $a3, $zero, 0x106
    /* FC6FC 001FB77C 00800534 */  ori        $a1, $zero, 0x8000
    /* FC700 001FB780 6C010296 */  lhu        $v0, 0x16C($s0)
    /* FC704 001FB784 6E010386 */  lh         $v1, 0x16E($s0)
    /* FC708 001FB788 0F004230 */  andi       $v0, $v0, 0xF
    /* FC70C 001FB78C 4000BF7B */  lq         $ra, 0x40($sp)
    /* FC710 001FB790 38160200 */  dsll       $v0, $v0, 24
    /* FC714 001FB794 1000B17B */  lq         $s1, 0x10($sp)
    /* FC718 001FB798 25186200 */  or         $v1, $v1, $v0
    /* FC71C 001FB79C 100043FE */  sd         $v1, 0x10($s2)
    /* FC720 001FB7A0 2000B27B */  lq         $s2, 0x20($sp)
    /* FC724 001FB7A4 1600023C */  lui        $v0, %hi(D_00161000)
    /* FC728 001FB7A8 0010428C */  lw         $v0, %lo(D_00161000)($v0)
    /* FC72C 001FB7AC 80004424 */  addiu      $a0, $v0, 0x80
    /* FC730 001FB7B0 1600013C */  lui        $at, %hi(D_00161000)
    /* FC734 001FB7B4 001024AC */  sw         $a0, %lo(D_00161000)($at)
    /* FC738 001FB7B8 80004AFC */  sd         $t2, 0x80($v0)
    /* FC73C 001FB7BC 080093FC */  sd         $s3, 0x8($a0)
    /* FC740 001FB7C0 10008BFC */  sd         $t3, 0x10($a0)
    /* FC744 001FB7C4 180089FC */  sd         $t1, 0x18($a0)
    /* FC748 001FB7C8 200088FC */  sd         $t0, 0x20($a0)
    /* FC74C 001FB7CC 280086FC */  sd         $a2, 0x28($a0)
    /* FC750 001FB7D0 300087FC */  sd         $a3, 0x30($a0)
    /* FC754 001FB7D4 380080FC */  sd         $zero, 0x38($a0)
    /* FC758 001FB7D8 3000B37B */  lq         $s3, 0x30($sp)
    /* FC75C 001FB7DC 62010286 */  lh         $v0, 0x162($s0)
    /* FC760 001FB7E0 60010386 */  lh         $v1, 0x160($s0)
    /* FC764 001FB7E4 C0100200 */  sll        $v0, $v0, 3
    /* FC768 001FB7E8 2310A200 */  subu       $v0, $a1, $v0
    /* FC76C 001FB7EC C0180300 */  sll        $v1, $v1, 3
    /* FC770 001FB7F0 2318A300 */  subu       $v1, $a1, $v1
    /* FC774 001FB7F4 38140200 */  dsll       $v0, $v0, 16
    /* FC778 001FB7F8 25186200 */  or         $v1, $v1, $v0
    /* FC77C 001FB7FC 400083FC */  sd         $v1, 0x40($a0)
    /* FC780 001FB800 62010286 */  lh         $v0, 0x162($s0)
    /* FC784 001FB804 60010386 */  lh         $v1, 0x160($s0)
    /* FC788 001FB808 C0100200 */  sll        $v0, $v0, 3
    /* FC78C 001FB80C 0000B07B */  lq         $s0, 0x0($sp)
    /* FC790 001FB810 C0180300 */  sll        $v1, $v1, 3
    /* FC794 001FB814 F07F4224 */  addiu      $v0, $v0, 0x7FF0
    /* FC798 001FB818 21186500 */  addu       $v1, $v1, $a1
    /* FC79C 001FB81C 38140200 */  dsll       $v0, $v0, 16
    /* FC7A0 001FB820 25186200 */  or         $v1, $v1, $v0
    /* FC7A4 001FB824 480083FC */  sd         $v1, 0x48($a0)
    /* FC7A8 001FB828 1600023C */  lui        $v0, %hi(D_00161000)
    /* FC7AC 001FB82C 0010428C */  lw         $v0, %lo(D_00161000)($v0)
    /* FC7B0 001FB830 50004224 */  addiu      $v0, $v0, 0x50
    /* FC7B4 001FB834 1600013C */  lui        $at, %hi(D_00161000)
    /* FC7B8 001FB838 001022AC */  sw         $v0, %lo(D_00161000)($at)
    /* FC7BC 001FB83C 0800E003 */  jr         $ra
    /* FC7C0 001FB840 5000BD27 */   addiu     $sp, $sp, 0x50
endlabel func_001FB608
    /* FC7C4 001FB844 00000000 */  nop
