.align 3
nonmatching func_0023AA38, 0x5CC

glabel func_0023AA38
    /* 13B9B8 0023AA38 A0FDBD27 */  addiu      $sp, $sp, -0x260
    /* 13B9BC 0023AA3C 6000A227 */  addiu      $v0, $sp, 0x60
    /* 13B9C0 0023AA40 4000A327 */  addiu      $v1, $sp, 0x40
    /* 13B9C4 0023AA44 5001A2AF */  sw         $v0, 0x150($sp)
    /* 13B9C8 0023AA48 5000A227 */  addiu      $v0, $sp, 0x50
    /* 13B9CC 0023AA4C 8C01A3AF */  sw         $v1, 0x18C($sp)
    /* 13B9D0 0023AA50 9001A2AF */  sw         $v0, 0x190($sp)
    /* 13B9D4 0023AA54 3001A327 */  addiu      $v1, $sp, 0x130
    /* 13B9D8 0023AA58 3401A227 */  addiu      $v0, $sp, 0x134
    /* 13B9DC 0023AA5C 6401A3AF */  sw         $v1, 0x164($sp)
    /* 13B9E0 0023AA60 6801A2AF */  sw         $v0, 0x168($sp)
    /* 13B9E4 0023AA64 3801A327 */  addiu      $v1, $sp, 0x138
    /* 13B9E8 0023AA68 3C01A227 */  addiu      $v0, $sp, 0x13C
    /* 13B9EC 0023AA6C 6C01A3AF */  sw         $v1, 0x16C($sp)
    /* 13B9F0 0023AA70 7001A2AF */  sw         $v0, 0x170($sp)
    /* 13B9F4 0023AA74 8000A327 */  addiu      $v1, $sp, 0x80
    /* 13B9F8 0023AA78 9000A227 */  addiu      $v0, $sp, 0x90
    /* 13B9FC 0023AA7C 5801A3AF */  sw         $v1, 0x158($sp)
    /* 13BA00 0023AA80 6001A2AF */  sw         $v0, 0x160($sp)
    /* 13BA04 0023AA84 A000A327 */  addiu      $v1, $sp, 0xA0
    /* 13BA08 0023AA88 B000A227 */  addiu      $v0, $sp, 0xB0
    /* 13BA0C 0023AA8C 7401A3AF */  sw         $v1, 0x174($sp)
    /* 13BA10 0023AA90 8801A2AF */  sw         $v0, 0x188($sp)
    /* 13BA14 0023AA94 1001A327 */  addiu      $v1, $sp, 0x110
    /* 13BA18 0023AA98 2001A227 */  addiu      $v0, $sp, 0x120
    /* 13BA1C 0023AA9C 5401A3AF */  sw         $v1, 0x154($sp)
    /* 13BA20 0023AAA0 5C01A2AF */  sw         $v0, 0x15C($sp)
    /* 13BA24 0023AAA4 4001A327 */  addiu      $v1, $sp, 0x140
    /* 13BA28 0023AAA8 4401A227 */  addiu      $v0, $sp, 0x144
    /* 13BA2C 0023AAAC 7801A3AF */  sw         $v1, 0x178($sp)
    /* 13BA30 0023AAB0 7C01A2AF */  sw         $v0, 0x17C($sp)
    /* 13BA34 0023AAB4 4801A327 */  addiu      $v1, $sp, 0x148
    /* 13BA38 0023AAB8 4C01A227 */  addiu      $v0, $sp, 0x14C
    /* 13BA3C 0023AABC 1002B77F */  sq         $s7, 0x210($sp)
    /* 13BA40 0023AAC0 0002B67F */  sq         $s6, 0x200($sp)
    /* 13BA44 0023AAC4 2DB80000 */  daddu      $s7, $zero, $zero
    /* 13BA48 0023AAC8 F001B57F */  sq         $s5, 0x1F0($sp)
    /* 13BA4C 0023AACC 3000B627 */  addiu      $s6, $sp, 0x30
    /* 13BA50 0023AAD0 E001B47F */  sq         $s4, 0x1E0($sp)
    /* 13BA54 0023AAD4 2DA88000 */  daddu      $s5, $a0, $zero
    /* 13BA58 0023AAD8 D001B37F */  sq         $s3, 0x1D0($sp)
    /* 13BA5C 0023AADC 1000B427 */  addiu      $s4, $sp, 0x10
    /* 13BA60 0023AAE0 C001B27F */  sq         $s2, 0x1C0($sp)
    /* 13BA64 0023AAE4 7000B327 */  addiu      $s3, $sp, 0x70
    /* 13BA68 0023AAE8 3002BF7F */  sq         $ra, 0x230($sp)
    /* 13BA6C 0023AAEC 2000B227 */  addiu      $s2, $sp, 0x20
    /* 13BA70 0023AAF0 2002BE7F */  sq         $fp, 0x220($sp)
    /* 13BA74 0023AAF4 B001B17F */  sq         $s1, 0x1B0($sp)
    /* 13BA78 0023AAF8 A001B07F */  sq         $s0, 0x1A0($sp)
    /* 13BA7C 0023AAFC 5802B7E7 */  swc1       $f23, 0x258($sp)
    /* 13BA80 0023AB00 5002B6E7 */  swc1       $f22, 0x250($sp)
    /* 13BA84 0023AB04 4802B5E7 */  swc1       $f21, 0x248($sp)
    /* 13BA88 0023AB08 4002B4E7 */  swc1       $f20, 0x240($sp)
    /* 13BA8C 0023AB0C 8001A3AF */  sw         $v1, 0x180($sp)
    /* 13BA90 0023AB10 8401A2AF */  sw         $v0, 0x184($sp)
    /* 13BA94 0023AB14 80801700 */  sll        $s0, $s7, 2
.align 2
  .L0023AB18:
    /* 13BA98 0023AB18 5001A68F */  lw         $a2, 0x150($sp)
    /* 13BA9C 0023AB1C 01000226 */  addiu      $v0, $s0, 0x1
    /* 13BAA0 0023AB20 02000326 */  addiu      $v1, $s0, 0x2
    /* 13BAA4 0023AB24 6400A2AF */  sw         $v0, 0x64($sp)
    /* 13BAA8 0023AB28 2D20A002 */  daddu      $a0, $s5, $zero
    /* 13BAAC 0023AB2C 6800A3AF */  sw         $v1, 0x68($sp)
    /* 13BAB0 0023AB30 03000524 */  addiu      $a1, $zero, 0x3
    /* 13BAB4 0023AB34 6000B0AF */  sw         $s0, 0x60($sp)
    /* 13BAB8 0023AB38 E636080C */  jal        func_0020DB98
    /* 13BABC 0023AB3C 2D38C002 */   daddu     $a3, $s6, $zero
    /* 13BAC0 0023AB40 0000C27A */  lq         $v0, 0x0($s6)
    /* 13BAC4 0023AB44 0000427E */  sq         $v0, 0x0($s2)
    /* 13BAC8 0023AB48 8C01A58F */  lw         $a1, 0x18C($sp)
    /* 13BACC 0023AB4C 2D20A003 */  daddu      $a0, $sp, $zero
    /* 13BAD0 0023AB50 2D30C002 */  daddu      $a2, $s6, $zero
    /* 13BAD4 0023AB54 FCE6070C */  jal        func_001F9BF0
    /* 13BAD8 0023AB58 2DF00002 */   daddu     $fp, $s0, $zero
    /* 13BADC 0023AB5C 00891700 */  sll        $s1, $s7, 4
    /* 13BAE0 0023AB60 1E00033C */  lui        $v1, %hi(D_001E6518)
    /* 13BAE4 0023AB64 9001A58F */  lw         $a1, 0x190($sp)
    /* 13BAE8 0023AB68 18657024 */  addiu      $s0, $v1, %lo(D_001E6518)
    /* 13BAEC 0023AB6C 2D30C002 */  daddu      $a2, $s6, $zero
    /* 13BAF0 0023AB70 FCE6070C */  jal        func_001F9BF0
    /* 13BAF4 0023AB74 2D208002 */   daddu     $a0, $s4, $zero
    /* 13BAF8 0023AB78 2EE7070C */  jal        func_001F9CB8
    /* 13BAFC 0023AB7C 2D20A003 */   daddu     $a0, $sp, $zero
    /* 13BB00 0023AB80 21103002 */  addu       $v0, $s1, $s0
    /* 13BB04 0023AB84 2D28A003 */  daddu      $a1, $sp, $zero
    /* 13BB08 0023AB88 00004CC4 */  lwc1       $f12, 0x0($v0)
    /* 13BB0C 0023AB8C 86050046 */  mov.s      $f22, $f0
    /* 13BB10 0023AB90 70E7070C */  jal        func_001F9DC0
    /* 13BB14 0023AB94 2D206002 */   daddu     $a0, $s3, $zero
    /* 13BB18 0023AB98 2D306002 */  daddu      $a2, $s3, $zero
    /* 13BB1C 0023AB9C 2D204002 */  daddu      $a0, $s2, $zero
    /* 13BB20 0023ABA0 F6E6070C */  jal        func_001F9BD8
    /* 13BB24 0023ABA4 2D284002 */   daddu     $a1, $s2, $zero
    /* 13BB28 0023ABA8 21101102 */  addu       $v0, $s0, $s1
    /* 13BB2C 0023ABAC 2D20A003 */  daddu      $a0, $sp, $zero
    /* 13BB30 0023ABB0 08004CC4 */  lwc1       $f12, 0x8($v0)
    /* 13BB34 0023ABB4 2D28A003 */  daddu      $a1, $sp, $zero
    /* 13BB38 0023ABB8 00630C46 */  add.s      $f12, $f12, $f12
    /* 13BB3C 0023ABBC 70E7070C */  jal        func_001F9DC0
    /* 13BB40 0023ABC0 01B30C46 */   sub.s     $f12, $f22, $f12
    /* 13BB44 0023ABC4 2EE7070C */  jal        func_001F9CB8
    /* 13BB48 0023ABC8 2D208002 */   daddu     $a0, $s4, $zero
    /* 13BB4C 0023ABCC 21101102 */  addu       $v0, $s0, $s1
    /* 13BB50 0023ABD0 86050046 */  mov.s      $f22, $f0
    /* 13BB54 0023ABD4 04004CC4 */  lwc1       $f12, 0x4($v0)
    /* 13BB58 0023ABD8 2D206002 */  daddu      $a0, $s3, $zero
    /* 13BB5C 0023ABDC 70E7070C */  jal        func_001F9DC0
    /* 13BB60 0023ABE0 2D288002 */   daddu     $a1, $s4, $zero
    /* 13BB64 0023ABE4 2D306002 */  daddu      $a2, $s3, $zero
    /* 13BB68 0023ABE8 2D204002 */  daddu      $a0, $s2, $zero
    /* 13BB6C 0023ABEC F6E6070C */  jal        func_001F9BD8
    /* 13BB70 0023ABF0 2D284002 */   daddu     $a1, $s2, $zero
    /* 13BB74 0023ABF4 21801102 */  addu       $s0, $s0, $s1
    /* 13BB78 0023ABF8 2D208002 */  daddu      $a0, $s4, $zero
    /* 13BB7C 0023ABFC 0C000CC6 */  lwc1       $f12, 0xC($s0)
    /* 13BB80 0023AC00 2D288002 */  daddu      $a1, $s4, $zero
    /* 13BB84 0023AC04 00630C46 */  add.s      $f12, $f12, $f12
    /* 13BB88 0023AC08 70E7070C */  jal        func_001F9DC0
    /* 13BB8C 0023AC0C 01B30C46 */   sub.s     $f12, $f22, $f12
    /* 13BB90 0023AC10 2D30A003 */  daddu      $a2, $sp, $zero
    /* 13BB94 0023AC14 2D206002 */  daddu      $a0, $s3, $zero
    /* 13BB98 0023AC18 F6E6070C */  jal        func_001F9BD8
    /* 13BB9C 0023AC1C 2D284002 */   daddu     $a1, $s2, $zero
    /* 13BBA0 0023AC20 2D206002 */  daddu      $a0, $s3, $zero
    /* 13BBA4 0023AC24 2D286002 */  daddu      $a1, $s3, $zero
    /* 13BBA8 0023AC28 F6E6070C */  jal        func_001F9BD8
    /* 13BBAC 0023AC2C 2D308002 */   daddu     $a2, $s4, $zero
    /* 13BBB0 0023AC30 6401A68F */  lw         $a2, 0x164($sp)
    /* 13BBB4 0023AC34 2D204002 */  daddu      $a0, $s2, $zero
    /* 13BBB8 0023AC38 6801A78F */  lw         $a3, 0x168($sp)
    /* 13BBBC 0023AC3C 2D286002 */  daddu      $a1, $s3, $zero
    /* 13BBC0 0023AC40 6C01A88F */  lw         $t0, 0x16C($sp)
    /* 13BBC4 0023AC44 E6E3080C */  jal        func_00238F98
    /* 13BBC8 0023AC48 7001A98F */   lw        $t1, 0x170($sp)
    /* 13BBCC 0023AC4C 1600023C */  lui        $v0, %hi(D_00161398)
    /* 13BBD0 0023AC50 9813428C */  lw         $v0, %lo(D_00161398)($v0)
    /* 13BBD4 0023AC54 03004014 */  bnez       $v0, .L0023AC64
    /* 13BBD8 0023AC58 A0A6828F */   lw        $v0, -0x5960($gp)
    /* 13BBDC 0023AC5C 3C004010 */  beqz       $v0, .L0023AD50
    /* 13BBE0 0023AC60 5801A38F */   lw        $v1, 0x158($sp)
.align 2
  .L0023AC64:
    /* 13BBE4 0023AC64 803F013C */  lui        $at, (0x3F800000 >> 16)
    /* 13BBE8 0023AC68 00B88144 */  mtc1       $at, $f23
    /* 13BBEC 0023AC6C 08004010 */  beqz       $v0, .L0023AC90
    /* 13BBF0 0023AC70 9CA6828F */   lw        $v0, -0x5964($gp)
    /* 13BBF4 0023AC74 08000424 */  addiu      $a0, $zero, 0x8
    /* 13BBF8 0023AC78 22EA070C */  jal        func_001FA888
    /* 13BBFC 0023AC7C 23208200 */   subu      $a0, $a0, $v0
    /* 13BC00 0023AC80 003E013C */  lui        $at, (0x3E000000 >> 16)
    /* 13BC04 0023AC84 00088144 */  mtc1       $at, $f1
    /* 13BC08 0023AC88 00000000 */  nop
    /* 13BC0C 0023AC8C C2050146 */  mul.s      $f23, $f0, $f1
.align 2
  .L0023AC90:
    /* 13BC10 0023AC90 1600023C */  lui        $v0, %hi(D_00161398)
    /* 13BC14 0023AC94 9813428C */  lw         $v0, %lo(D_00161398)($v0)
    /* 13BC18 0023AC98 07004010 */  beqz       $v0, .L0023ACB8
    /* 13BC1C 0023AC9C 00000000 */   nop
    /* 13BC20 0023ACA0 22EA070C */  jal        func_001FA888
    /* 13BC24 0023ACA4 94A6848F */   lw        $a0, -0x596C($gp)
    /* 13BC28 0023ACA8 003E013C */  lui        $at, (0x3E000000 >> 16)
    /* 13BC2C 0023ACAC 00088144 */  mtc1       $at, $f1
    /* 13BC30 0023ACB0 00000000 */  nop
    /* 13BC34 0023ACB4 C2050146 */  mul.s      $f23, $f0, $f1
.align 2
  .L0023ACB8:
    /* 13BC38 0023ACB8 003F013C */  lui        $at, (0x3F000000 >> 16)
    /* 13BC3C 0023ACBC 00A88144 */  mtc1       $at, $f21
    /* 13BC40 0023ACC0 2EE7070C */  jal        func_001F9CB8
    /* 13BC44 0023ACC4 2D20A003 */   daddu     $a0, $sp, $zero
    /* 13BC48 0023ACC8 803F013C */  lui        $at, (0x3F800000 >> 16)
    /* 13BC4C 0023ACCC 00A08144 */  mtc1       $at, $f20
    /* 13BC50 0023ACD0 86050046 */  mov.s      $f22, $f0
    /* 13BC54 0023ACD4 2D28A003 */  daddu      $a1, $sp, $zero
    /* 13BC58 0023ACD8 2D206002 */  daddu      $a0, $s3, $zero
    /* 13BC5C 0023ACDC 01A51746 */  sub.s      $f20, $f20, $f23
    /* 13BC60 0023ACE0 02B31446 */  mul.s      $f12, $f22, $f20
    /* 13BC64 0023ACE4 70E7070C */  jal        func_001F9DC0
    /* 13BC68 0023ACE8 02631546 */   mul.s     $f12, $f12, $f21
    /* 13BC6C 0023ACEC 02B31746 */  mul.s      $f12, $f22, $f23
    /* 13BC70 0023ACF0 2D20A003 */  daddu      $a0, $sp, $zero
    /* 13BC74 0023ACF4 70E7070C */  jal        func_001F9DC0
    /* 13BC78 0023ACF8 2D28A003 */   daddu     $a1, $sp, $zero
    /* 13BC7C 0023ACFC 2D306002 */  daddu      $a2, $s3, $zero
    /* 13BC80 0023AD00 2D284002 */  daddu      $a1, $s2, $zero
    /* 13BC84 0023AD04 F6E6070C */  jal        func_001F9BD8
    /* 13BC88 0023AD08 2D204002 */   daddu     $a0, $s2, $zero
    /* 13BC8C 0023AD0C 2EE7070C */  jal        func_001F9CB8
    /* 13BC90 0023AD10 2D208002 */   daddu     $a0, $s4, $zero
    /* 13BC94 0023AD14 86050046 */  mov.s      $f22, $f0
    /* 13BC98 0023AD18 2D206002 */  daddu      $a0, $s3, $zero
    /* 13BC9C 0023AD1C 02B51446 */  mul.s      $f20, $f22, $f20
    /* 13BCA0 0023AD20 2D288002 */  daddu      $a1, $s4, $zero
    /* 13BCA4 0023AD24 70E7070C */  jal        func_001F9DC0
    /* 13BCA8 0023AD28 02A31546 */   mul.s     $f12, $f20, $f21
    /* 13BCAC 0023AD2C 02B31746 */  mul.s      $f12, $f22, $f23
    /* 13BCB0 0023AD30 2D208002 */  daddu      $a0, $s4, $zero
    /* 13BCB4 0023AD34 70E7070C */  jal        func_001F9DC0
    /* 13BCB8 0023AD38 2D288002 */   daddu     $a1, $s4, $zero
    /* 13BCBC 0023AD3C 2D204002 */  daddu      $a0, $s2, $zero
    /* 13BCC0 0023AD40 2D284002 */  daddu      $a1, $s2, $zero
    /* 13BCC4 0023AD44 F6E6070C */  jal        func_001F9BD8
    /* 13BCC8 0023AD48 2D306002 */   daddu     $a2, $s3, $zero
    /* 13BCCC 0023AD4C 5801A38F */  lw         $v1, 0x158($sp)
.align 2
  .L0023AD50:
    /* 13BCD0 0023AD50 0000427A */  lq         $v0, 0x0($s2)
    /* 13BCD4 0023AD54 0000627C */  sq         $v0, 0x0($v1)
    /* 13BCD8 0023AD58 6001A48F */  lw         $a0, 0x160($sp)
    /* 13BCDC 0023AD5C 2D30A003 */  daddu      $a2, $sp, $zero
    /* 13BCE0 0023AD60 F6E6070C */  jal        func_001F9BD8
    /* 13BCE4 0023AD64 2D284002 */   daddu     $a1, $s2, $zero
    /* 13BCE8 0023AD68 7401A48F */  lw         $a0, 0x174($sp)
    /* 13BCEC 0023AD6C 2D284002 */  daddu      $a1, $s2, $zero
    /* 13BCF0 0023AD70 F6E6070C */  jal        func_001F9BD8
    /* 13BCF4 0023AD74 2D308002 */   daddu     $a2, $s4, $zero
    /* 13BCF8 0023AD78 8801A48F */  lw         $a0, 0x188($sp)
    /* 13BCFC 0023AD7C 2D30A003 */  daddu      $a2, $sp, $zero
    /* 13BD00 0023AD80 F6E6070C */  jal        func_001F9BD8
    /* 13BD04 0023AD84 7401A58F */   lw        $a1, 0x174($sp)
    /* 13BD08 0023AD88 8000A27B */  lq         $v0, 0x80($sp)
    /* 13BD0C 0023AD8C B000A37B */  lq         $v1, 0xB0($sp)
    /* 13BD10 0023AD90 5401A48F */  lw         $a0, 0x154($sp)
    /* 13BD14 0023AD94 5C01A58F */  lw         $a1, 0x15C($sp)
    /* 13BD18 0023AD98 7801A68F */  lw         $a2, 0x178($sp)
    /* 13BD1C 0023AD9C 7C01A78F */  lw         $a3, 0x17C($sp)
    /* 13BD20 0023ADA0 8001A88F */  lw         $t0, 0x180($sp)
    /* 13BD24 0023ADA4 8401A98F */  lw         $t1, 0x184($sp)
    /* 13BD28 0023ADA8 1001A27F */  sq         $v0, 0x110($sp)
    /* 13BD2C 0023ADAC E6E3080C */  jal        func_00238F98
    /* 13BD30 0023ADB0 2001A37F */   sq        $v1, 0x120($sp)
    /* 13BD34 0023ADB4 803F013C */  lui        $at, (0x3F800000 >> 16)
    /* 13BD38 0023ADB8 00608144 */  mtc1       $at, $f12
    /* 13BD3C 0023ADBC 09000424 */  addiu      $a0, $zero, 0x9
    /* 13BD40 0023ADC0 52EA080C */  jal        func_0023A948
    /* 13BD44 0023ADC4 07000524 */   addiu     $a1, $zero, 0x7
    /* 13BD48 0023ADC8 00020424 */  addiu      $a0, $zero, 0x200
    /* 13BD4C 0023ADCC 42EE070C */  jal        func_001FB908
    /* 13BD50 0023ADD0 00020524 */   addiu     $a1, $zero, 0x200
    /* 13BD54 0023ADD4 00800534 */  ori        $a1, $zero, 0x8000
    /* 13BD58 0023ADD8 382E0500 */  dsll       $a1, $a1, 24
    /* 13BD5C 0023ADDC 6400A534 */  ori        $a1, $a1, 0x64
    /* 13BD60 0023ADE0 26D3080C */  jal        func_00234C98
    /* 13BD64 0023ADE4 42000424 */   addiu     $a0, $zero, 0x42
    /* 13BD68 0023ADE8 0600E22E */  sltiu      $v0, $s7, 0x6
    /* 13BD6C 0023ADEC 22004010 */  beqz       $v0, .L0023AE78
    /* 13BD70 0023ADF0 1F00023C */   lui       $v0, %hi(jtbl_001E8E00)
    /* 13BD74 0023ADF4 008E4224 */  addiu      $v0, $v0, %lo(jtbl_001E8E00)
    /* 13BD78 0023ADF8 2110C203 */  addu       $v0, $fp, $v0
    /* 13BD7C 0023ADFC 0000438C */  lw         $v1, 0x0($v0)
    /* 13BD80 0023AE00 08006000 */  jr         $v1
    /* 13BD84 0023AE04 00000000 */   nop
    /* 13BD88 0023AE08 0EE6080C */  jal        func_00239838
    /* 13BD8C 0023AE0C 2D20A002 */   daddu     $a0, $s5, $zero
    /* 13BD90 0023AE10 1A000010 */  b          .L0023AE7C
    /* 13BD94 0023AE14 4001ACC7 */   lwc1      $f12, 0x140($sp)
    /* 13BD98 0023AE18 3EE7080C */  jal        func_00239CF8
    /* 13BD9C 0023AE1C 2D20A002 */   daddu     $a0, $s5, $zero
    /* 13BDA0 0023AE20 16000010 */  b          .L0023AE7C
    /* 13BDA4 0023AE24 4001ACC7 */   lwc1      $f12, 0x140($sp)
    /* 13BDA8 0023AE28 52E6080C */  jal        func_00239948
    /* 13BDAC 0023AE2C 2D20A002 */   daddu     $a0, $s5, $zero
    /* 13BDB0 0023AE30 12000010 */  b          .L0023AE7C
    /* 13BDB4 0023AE34 4001ACC7 */   lwc1      $f12, 0x140($sp)
    /* 13BDB8 0023AE38 4001A1C7 */  lwc1       $f1, 0x140($sp)
    /* 13BDBC 0023AE3C 4401A0C7 */  lwc1       $f0, 0x144($sp)
    /* 13BDC0 0023AE40 A4080046 */  .word      0x460008A4                    # cvt.w.s    $f2, $f1 # 00000000 <InstrIdType: CPU_COP1_FPUS>
    /* 13BDC4 0023AE44 00100544 */  mfc1       $a1, $f2
    /* 13BDC8 0023AE48 64000046 */  .word      0x46000064                    # cvt.w.s    $f1, $f0 # 00000000 <InstrIdType: CPU_COP1_FPUS>
    /* 13BDCC 0023AE4C 00080644 */  mfc1       $a2, $f1
    /* 13BDD0 0023AE50 88E8080C */  jal        func_0023A220
    /* 13BDD4 0023AE54 2D20A002 */   daddu     $a0, $s5, $zero
    /* 13BDD8 0023AE58 08000010 */  b          .L0023AE7C
    /* 13BDDC 0023AE5C 4001ACC7 */   lwc1      $f12, 0x140($sp)
    /* 13BDE0 0023AE60 1EE9080C */  jal        func_0023A478
    /* 13BDE4 0023AE64 2D20A002 */   daddu     $a0, $s5, $zero
    /* 13BDE8 0023AE68 04000010 */  b          .L0023AE7C
    /* 13BDEC 0023AE6C 4001ACC7 */   lwc1      $f12, 0x140($sp)
    /* 13BDF0 0023AE70 80E6080C */  jal        func_00239A00
    /* 13BDF4 0023AE74 2D20A002 */   daddu     $a0, $s5, $zero
.align 2
  .L0023AE78:
    /* 13BDF8 0023AE78 4001ACC7 */  lwc1       $f12, 0x140($sp)
.align 2
  .L0023AE7C:
    /* 13BDFC 0023AE7C 2D20E002 */  daddu      $a0, $s7, $zero
    /* 13BE00 0023AE80 78E9080C */  jal        func_0023A5E0
    /* 13BE04 0023AE84 4401ADC7 */   lwc1      $f13, 0x144($sp)
    /* 13BE08 0023AE88 82EA080C */  jal        func_0023AA08
    /* 13BE0C 0023AE8C 00000000 */   nop
    /* 13BE10 0023AE90 00020424 */  addiu      $a0, $zero, 0x200
    /* 13BE14 0023AE94 42EE070C */  jal        func_001FB908
    /* 13BE18 0023AE98 00020524 */   addiu     $a1, $zero, 0x200
    /* 13BE1C 0023AE9C 00800534 */  ori        $a1, $zero, 0x8000
    /* 13BE20 0023AEA0 382E0500 */  dsll       $a1, $a1, 24
    /* 13BE24 0023AEA4 6400A534 */  ori        $a1, $a1, 0x64
    /* 13BE28 0023AEA8 26D3080C */  jal        func_00234C98
    /* 13BE2C 0023AEAC 42000424 */   addiu     $a0, $zero, 0x42
    /* 13BE30 0023AEB0 08000424 */  addiu      $a0, $zero, 0x8
    /* 13BE34 0023AEB4 26D3080C */  jal        func_00234C98
    /* 13BE38 0023AEB8 05000524 */   addiu     $a1, $zero, 0x5
    /* 13BE3C 0023AEBC A0D3080C */  jal        func_00234E80
    /* 13BE40 0023AEC0 00000000 */   nop
    /* 13BE44 0023AEC4 1600023C */  lui        $v0, %hi(D_0015EE80)
    /* 13BE48 0023AEC8 80EE428C */  lw         $v0, %lo(D_0015EE80)($v0)
    /* 13BE4C 0023AECC 21004010 */  beqz       $v0, .L0023AF54
    /* 13BE50 0023AED0 D08291DF */   ld        $s1, -0x7D30($gp)
    /* 13BE54 0023AED4 6D3F013C */  lui        $at, (0x3F6DB6DC >> 16)
    /* 13BE58 0023AED8 DCB62134 */  ori        $at, $at, (0x3F6DB6DC & 0xFFFF)
    /* 13BE5C 0023AEDC 00008144 */  mtc1       $at, $f0
    /* 13BE60 0023AEE0 3401ACC7 */  lwc1       $f12, 0x134($sp)
    /* 13BE64 0023AEE4 803F013C */  lui        $at, (0x3F800000 >> 16)
    /* 13BE68 0023AEE8 00108144 */  mtc1       $at, $f2
    /* 13BE6C 0023AEEC 3001A1C7 */  lwc1       $f1, 0x130($sp)
    /* 13BE70 0023AEF0 02630046 */  mul.s      $f12, $f12, $f0
    /* 13BE74 0023AEF4 4801B7C7 */  lwc1       $f23, 0x148($sp)
    /* 13BE78 0023AEF8 41080246 */  sub.s      $f1, $f1, $f2
    /* 13BE7C 0023AEFC 4C01B6C7 */  lwc1       $f22, 0x14C($sp)
    /* 13BE80 0023AF00 01630246 */  sub.s      $f12, $f12, $f2
    /* 13BE84 0023AF04 4001B4C7 */  lwc1       $f20, 0x140($sp)
    /* 13BE88 0023AF08 24080046 */  .word      0x46000824                    # cvt.w.s    $f0, $f1 # 00000000 <InstrIdType: CPU_COP1_FPUS>
    /* 13BE8C 0023AF0C 00001044 */  mfc1       $s0, $f0
    /* 13BE90 0023AF10 26EA070C */  jal        func_001FA898
    /* 13BE94 0023AF14 4401B5C7 */   lwc1      $f21, 0x144($sp)
    /* 13BE98 0023AF18 06BB0046 */  mov.s      $f12, $f23
    /* 13BE9C 0023AF1C 46B30046 */  mov.s      $f13, $f22
    /* 13BEA0 0023AF20 86A30046 */  mov.s      $f14, $f20
    /* 13BEA4 0023AF24 C6AB0046 */  mov.s      $f15, $f21
    /* 13BEA8 0023AF28 2D300002 */  daddu      $a2, $s0, $zero
    /* 13BEAC 0023AF2C 2D384000 */  daddu      $a3, $v0, $zero
    /* 13BEB0 0023AF30 2D482002 */  daddu      $t1, $s1, $zero
    /* 13BEB4 0023AF34 2D200000 */  daddu      $a0, $zero, $zero
    /* 13BEB8 0023AF38 80800834 */  ori        $t0, $zero, 0x8080
    /* 13BEBC 0023AF3C 38440800 */  dsll       $t0, $t0, 16
    /* 13BEC0 0023AF40 80800835 */  ori        $t0, $t0, 0x8080
    /* 13BEC4 0023AF44 62D6070C */  jal        func_001F5988
    /* 13BEC8 0023AF48 2D280000 */   daddu     $a1, $zero, $zero
    /* 13BECC 0023AF4C 17000010 */  b          .L0023AFAC
    /* 13BED0 0023AF50 08000424 */   addiu     $a0, $zero, 0x8
.align 2
  .L0023AF54:
    /* 13BED4 0023AF54 803F013C */  lui        $at, (0x3F800000 >> 16)
    /* 13BED8 0023AF58 00008144 */  mtc1       $at, $f0
    /* 13BEDC 0023AF5C 2D482002 */  daddu      $t1, $s1, $zero
    /* 13BEE0 0023AF60 3001A1C7 */  lwc1       $f1, 0x130($sp)
    /* 13BEE4 0023AF64 2D200000 */  daddu      $a0, $zero, $zero
    /* 13BEE8 0023AF68 3401A2C7 */  lwc1       $f2, 0x134($sp)
    /* 13BEEC 0023AF6C 2D280000 */  daddu      $a1, $zero, $zero
    /* 13BEF0 0023AF70 41080046 */  sub.s      $f1, $f1, $f0
    /* 13BEF4 0023AF74 4801ACC7 */  lwc1       $f12, 0x148($sp)
    /* 13BEF8 0023AF78 81100046 */  sub.s      $f2, $f2, $f0
    /* 13BEFC 0023AF7C 4C01ADC7 */  lwc1       $f13, 0x14C($sp)
    /* 13BF00 0023AF80 4001AEC7 */  lwc1       $f14, 0x140($sp)
    /* 13BF04 0023AF84 80800834 */  ori        $t0, $zero, 0x8080
    /* 13BF08 0023AF88 38440800 */  dsll       $t0, $t0, 16
    /* 13BF0C 0023AF8C 80800835 */  ori        $t0, $t0, 0x8080
    /* 13BF10 0023AF90 24080046 */  .word      0x46000824                    # cvt.w.s    $f0, $f1 # 00000000 <InstrIdType: CPU_COP1_FPUS>
    /* 13BF14 0023AF94 00000644 */  mfc1       $a2, $f0
    /* 13BF18 0023AF98 24100046 */  .word      0x46001024                    # cvt.w.s    $f0, $f2 # 00000000 <InstrIdType: CPU_COP1_FPUS>
    /* 13BF1C 0023AF9C 00000744 */  mfc1       $a3, $f0
    /* 13BF20 0023AFA0 62D6070C */  jal        func_001F5988
    /* 13BF24 0023AFA4 4401AFC7 */   lwc1      $f15, 0x144($sp)
    /* 13BF28 0023AFA8 08000424 */  addiu      $a0, $zero, 0x8
.align 2
  .L0023AFAC:
    /* 13BF2C 0023AFAC 26D3080C */  jal        func_00234C98
    /* 13BF30 0023AFB0 2D280000 */   daddu     $a1, $zero, $zero
    /* 13BF34 0023AFB4 0100F726 */  addiu      $s7, $s7, 0x1
    /* 13BF38 0023AFB8 0600E22A */  slti       $v0, $s7, 0x6
    /* 13BF3C 0023AFBC D6FE4014 */  bnez       $v0, .L0023AB18
    /* 13BF40 0023AFC0 80801700 */   sll       $s0, $s7, 2
    /* 13BF44 0023AFC4 3002BF7B */  lq         $ra, 0x230($sp)
    /* 13BF48 0023AFC8 2002BE7B */  lq         $fp, 0x220($sp)
    /* 13BF4C 0023AFCC 1002B77B */  lq         $s7, 0x210($sp)
    /* 13BF50 0023AFD0 0002B67B */  lq         $s6, 0x200($sp)
    /* 13BF54 0023AFD4 F001B57B */  lq         $s5, 0x1F0($sp)
    /* 13BF58 0023AFD8 E001B47B */  lq         $s4, 0x1E0($sp)
    /* 13BF5C 0023AFDC D001B37B */  lq         $s3, 0x1D0($sp)
    /* 13BF60 0023AFE0 C001B27B */  lq         $s2, 0x1C0($sp)
    /* 13BF64 0023AFE4 B001B17B */  lq         $s1, 0x1B0($sp)
    /* 13BF68 0023AFE8 A001B07B */  lq         $s0, 0x1A0($sp)
    /* 13BF6C 0023AFEC 5802B7C7 */  lwc1       $f23, 0x258($sp)
    /* 13BF70 0023AFF0 5002B6C7 */  lwc1       $f22, 0x250($sp)
    /* 13BF74 0023AFF4 4802B5C7 */  lwc1       $f21, 0x248($sp)
    /* 13BF78 0023AFF8 4002B4C7 */  lwc1       $f20, 0x240($sp)
    /* 13BF7C 0023AFFC 0800E003 */  jr         $ra
    /* 13BF80 0023B000 6002BD27 */   addiu     $sp, $sp, 0x260
endlabel func_0023AA38
    /* 13BF84 0023B004 00000000 */  nop
