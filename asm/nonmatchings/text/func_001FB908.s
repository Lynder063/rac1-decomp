.align 3
nonmatching func_001FB908, 0x1B0

glabel func_001FB908
    /* FC888 001FB908 C0FFBD27 */  addiu      $sp, $sp, -0x40
    /* FC88C 001FB90C FFFF0224 */  addiu      $v0, $zero, -0x1
    /* FC890 001FB910 1000B17F */  sq         $s1, 0x10($sp)
    /* FC894 001FB914 2D888000 */  daddu      $s1, $a0, $zero
    /* FC898 001FB918 2000B27F */  sq         $s2, 0x20($sp)
    /* FC89C 001FB91C 2A105100 */  slt        $v0, $v0, $s1
    /* FC8A0 001FB920 1F002326 */  addiu      $v1, $s1, 0x1F
    /* FC8A4 001FB924 0B182202 */  movn       $v1, $s1, $v0
    /* FC8A8 001FB928 0000B07F */  sq         $s0, 0x0($sp)
    /* FC8AC 001FB92C 2D90A000 */  daddu      $s2, $a1, $zero
    /* FC8B0 001FB930 43810300 */  sra        $s0, $v1, 5
    /* FC8B4 001FB934 00800534 */  ori        $a1, $zero, 0x8000
    /* FC8B8 001FB938 382E0500 */  dsll       $a1, $a1, 24
    /* FC8BC 001FB93C 4A00A534 */  ori        $a1, $a1, 0x4A
    /* FC8C0 001FB940 3000BF7F */  sq         $ra, 0x30($sp)
    /* FC8C4 001FB944 26D3080C */  jal        func_00234C98
    /* FC8C8 001FB948 42000424 */   addiu     $a0, $zero, 0x42
    /* FC8CC 001FB94C 1600053C */  lui        $a1, %hi(D_00161000)
    /* FC8D0 001FB950 0010A58C */  lw         $a1, %lo(D_00161000)($a1)
    /* FC8D4 001FB954 05000426 */  addiu      $a0, $s0, 0x5
    /* FC8D8 001FB958 0010023C */  lui        $v0, (0x10000000 >> 16)
    /* FC8DC 001FB95C 0050033C */  lui        $v1, (0x50000000 >> 16)
    /* FC8E0 001FB960 25108200 */  or         $v0, $a0, $v0
    /* FC8E4 001FB964 00800D34 */  ori        $t5, $zero, 0x8000
    /* FC8E8 001FB968 7C6B0D00 */  dsll32     $t5, $t5, 13
    /* FC8EC 001FB96C 0100AD35 */  ori        $t5, $t5, 0x1
    /* FC8F0 001FB970 0000A2AC */  sw         $v0, 0x0($a1)
    /* FC8F4 001FB974 25208300 */  or         $a0, $a0, $v1
    /* FC8F8 001FB978 00800236 */  ori        $v0, $s0, 0x8000
    /* FC8FC 001FB97C 00900534 */  ori        $a1, $zero, 0x9000
    /* FC900 001FB980 BC2B0500 */  dsll32     $a1, $a1, 14
    /* FC904 001FB984 1600033C */  lui        $v1, %hi(D_00161000)
    /* FC908 001FB988 0010638C */  lw         $v1, %lo(D_00161000)($v1)
    /* FC90C 001FB98C 25284500 */  or         $a1, $v0, $a1
    /* FC910 001FB990 0E000B24 */  addiu      $t3, $zero, 0xE
    /* FC914 001FB994 03000C3C */  lui        $t4, (0x32003 >> 16)
    /* FC918 001FB998 03208C35 */  ori        $t4, $t4, (0x32003 & 0xFFFF)
    /* FC91C 001FB99C 040060AC */  sw         $zero, 0x4($v1)
    /* FC920 001FB9A0 47000824 */  addiu      $t0, $zero, 0x47
    /* FC924 001FB9A4 00900934 */  ori        $t1, $zero, 0x9000
    /* FC928 001FB9A8 BC4B0900 */  dsll32     $t1, $t1, 14
    /* FC92C 001FB9AC 01002935 */  ori        $t1, $t1, 0x1
    /* FC930 001FB9B0 10000A24 */  addiu      $t2, $zero, 0x10
    /* FC934 001FB9B4 1600023C */  lui        $v0, %hi(D_00161000)
    /* FC938 001FB9B8 0010428C */  lw         $v0, %lo(D_00161000)($v0)
    /* FC93C 001FB9BC 46010624 */  addiu      $a2, $zero, 0x146
    /* FC940 001FB9C0 00800734 */  ori        $a3, $zero, 0x8000
    /* FC944 001FB9C4 383C0700 */  dsll       $a3, $a3, 16
    /* FC948 001FB9C8 8080E734 */  ori        $a3, $a3, 0x8080
    /* FC94C 001FB9CC 44000324 */  addiu      $v1, $zero, 0x44
    /* FC950 001FB9D0 080040AC */  sw         $zero, 0x8($v0)
    /* FC954 001FB9D4 2D700000 */  daddu      $t6, $zero, $zero
    /* FC958 001FB9D8 1600023C */  lui        $v0, %hi(D_00161000)
    /* FC95C 001FB9DC 0010428C */  lw         $v0, %lo(D_00161000)($v0)
    /* FC960 001FB9E0 0C0044AC */  sw         $a0, 0xC($v0)
    /* FC964 001FB9E4 16000F3C */  lui        $t7, %hi(D_00161000)
    /* FC968 001FB9E8 0010EF8D */  lw         $t7, %lo(D_00161000)($t7)
    /* FC96C 001FB9EC 1000E225 */  addiu      $v0, $t7, 0x10
    /* FC970 001FB9F0 1600013C */  lui        $at, %hi(D_00161000)
    /* FC974 001FB9F4 001022AC */  sw         $v0, %lo(D_00161000)($at)
    /* FC978 001FB9F8 1000EDFD */  sd         $t5, 0x10($t7)
    /* FC97C 001FB9FC 480043FC */  sd         $v1, 0x48($v0)
    /* FC980 001FBA00 08004BFC */  sd         $t3, 0x8($v0)
    /* FC984 001FBA04 10004CFC */  sd         $t4, 0x10($v0)
    /* FC988 001FBA08 180048FC */  sd         $t0, 0x18($v0)
    /* FC98C 001FBA0C 200049FC */  sd         $t1, 0x20($v0)
    /* FC990 001FBA10 28004AFC */  sd         $t2, 0x28($v0)
    /* FC994 001FBA14 300046FC */  sd         $a2, 0x30($v0)
    /* FC998 001FBA18 380047FC */  sd         $a3, 0x38($v0)
    /* FC99C 001FBA1C 1900001A */  blez       $s0, .L001FBA84
    /* FC9A0 001FBA20 400045FC */   sd        $a1, 0x40($v0)
    /* FC9A4 001FBA24 C0101200 */  sll        $v0, $s2, 3
    /* FC9A8 001FBA28 00800534 */  ori        $a1, $zero, 0x8000
    /* FC9AC 001FBA2C F07F4424 */  addiu      $a0, $v0, 0x7FF0
    /* FC9B0 001FBA30 C0181100 */  sll        $v1, $s1, 3
    /* FC9B4 001FBA34 2310A200 */  subu       $v0, $a1, $v0
    /* FC9B8 001FBA38 23180300 */  negu       $v1, $v1
    /* FC9BC 001FBA3C 38440200 */  dsll       $t0, $v0, 16
    /* FC9C0 001FBA40 383C0400 */  dsll       $a3, $a0, 16
    /* FC9C4 001FBA44 00820234 */  ori        $v0, $zero, 0x8200
    /* FC9C8 001FBA48 21306500 */  addu       $a2, $v1, $a1
    /* FC9CC 001FBA4C 21206200 */  addu       $a0, $v1, $v0
    /* FC9D0 001FBA50 6000E525 */  addiu      $a1, $t7, 0x60
    /* FC9D4 001FBA54 00000000 */  nop
.align 2
  .L001FBA58:
    /* FC9D8 001FBA58 2510C800 */  or         $v0, $a2, $t0
    /* FC9DC 001FBA5C 25188700 */  or         $v1, $a0, $a3
    /* FC9E0 001FBA60 0000A2FC */  sd         $v0, 0x0($a1)
    /* FC9E4 001FBA64 0100CE25 */  addiu      $t6, $t6, 0x1
    /* FC9E8 001FBA68 0800A524 */  addiu      $a1, $a1, 0x8
    /* FC9EC 001FBA6C 00028424 */  addiu      $a0, $a0, 0x200
    /* FC9F0 001FBA70 0000A3FC */  sd         $v1, 0x0($a1)
    /* FC9F4 001FBA74 0002C624 */  addiu      $a2, $a2, 0x200
    /* FC9F8 001FBA78 2A10D001 */  slt        $v0, $t6, $s0
    /* FC9FC 001FBA7C F6FF4014 */  bnez       $v0, .L001FBA58
    /* FCA00 001FBA80 0800A524 */   addiu     $a1, $a1, 0x8
.align 2
  .L001FBA84:
    /* FCA04 001FBA84 1600033C */  lui        $v1, %hi(D_00161000)
    /* FCA08 001FBA88 0010638C */  lw         $v1, %lo(D_00161000)($v1)
    /* FCA0C 001FBA8C 00111000 */  sll        $v0, $s0, 4
    /* FCA10 001FBA90 50004224 */  addiu      $v0, $v0, 0x50
    /* FCA14 001FBA94 3000BF7B */  lq         $ra, 0x30($sp)
    /* FCA18 001FBA98 21186200 */  addu       $v1, $v1, $v0
    /* FCA1C 001FBA9C 2000B27B */  lq         $s2, 0x20($sp)
    /* FCA20 001FBAA0 1000B17B */  lq         $s1, 0x10($sp)
    /* FCA24 001FBAA4 0000B07B */  lq         $s0, 0x0($sp)
    /* FCA28 001FBAA8 1600013C */  lui        $at, %hi(D_00161000)
    /* FCA2C 001FBAAC 001023AC */  sw         $v1, %lo(D_00161000)($at)
    /* FCA30 001FBAB0 0800E003 */  jr         $ra
    /* FCA34 001FBAB4 4000BD27 */   addiu     $sp, $sp, 0x40
endlabel func_001FB908
