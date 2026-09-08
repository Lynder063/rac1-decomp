.align 3
nonmatching func_001F62C8, 0x144

glabel func_001F62C8
    /* F7248 001F62C8 50FFBD27 */  addiu      $sp, $sp, -0xB0
    /* F724C 001F62CC 00460800 */  sll        $t0, $t0, 24
    /* F7250 001F62D0 1000B07F */  sq         $s0, 0x10($sp)
    /* F7254 001F62D4 2000B17F */  sq         $s1, 0x20($sp)
    /* F7258 001F62D8 0400103C */  lui        $s0, (0x40404 >> 16)
    /* F725C 001F62DC 7000B67F */  sq         $s6, 0x70($sp)
    /* F7260 001F62E0 2D888000 */  daddu      $s1, $a0, $zero
    /* F7264 001F62E4 4000B37F */  sq         $s3, 0x40($sp)
    /* F7268 001F62E8 04041036 */  ori        $s0, $s0, (0x40404 & 0xFFFF)
    /* F726C 001F62EC 3000B27F */  sq         $s2, 0x30($sp)
    /* F7270 001F62F0 25801001 */  or         $s0, $t0, $s0
    /* F7274 001F62F4 2D98C000 */  daddu      $s3, $a2, $zero
    /* F7278 001F62F8 2DB0E000 */  daddu      $s6, $a3, $zero
    /* F727C 001F62FC 01002226 */  addiu      $v0, $s1, 0x1
    /* F7280 001F6300 2D90A000 */  daddu      $s2, $a1, $zero
    /* F7284 001F6304 A000BF7F */  sq         $ra, 0xA0($sp)
    /* F7288 001F6308 9000BE7F */  sq         $fp, 0x90($sp)
    /* F728C 001F630C 8000B77F */  sq         $s7, 0x80($sp)
    /* F7290 001F6310 6000B57F */  sq         $s5, 0x60($sp)
    /* F7294 001F6314 5000B47F */  sq         $s4, 0x50($sp)
    /* F7298 001F6318 2D400002 */  daddu      $t0, $s0, $zero
    /* F729C 001F631C 0000A2AF */  sw         $v0, 0x0($sp)
    /* F72A0 001F6320 94D5070C */  jal        func_001F5650
    /* F72A4 001F6324 FEFF7426 */   addiu     $s4, $s3, -0x2
    /* F72A8 001F6328 02003726 */  addiu      $s7, $s1, 0x2
    /* F72AC 001F632C FFFF4226 */  addiu      $v0, $s2, -0x1
    /* F72B0 001F6330 0000A48F */  lw         $a0, 0x0($sp)
    /* F72B4 001F6334 2D284000 */  daddu      $a1, $v0, $zero
    /* F72B8 001F6338 0400A2AF */  sw         $v0, 0x4($sp)
    /* F72BC 001F633C 2D308002 */  daddu      $a2, $s4, $zero
    /* F72C0 001F6340 2D386002 */  daddu      $a3, $s3, $zero
    /* F72C4 001F6344 2D400002 */  daddu      $t0, $s0, $zero
    /* F72C8 001F6348 94D5070C */  jal        func_001F5650
    /* F72CC 001F634C FEFF5E26 */   addiu     $fp, $s2, -0x2
    /* F72D0 001F6350 FDFF7526 */  addiu      $s5, $s3, -0x3
    /* F72D4 001F6354 2D388002 */  daddu      $a3, $s4, $zero
    /* F72D8 001F6358 2D20E002 */  daddu      $a0, $s7, $zero
    /* F72DC 001F635C 2D28C003 */  daddu      $a1, $fp, $zero
    /* F72E0 001F6360 2D30A002 */  daddu      $a2, $s5, $zero
    /* F72E4 001F6364 2D400002 */  daddu      $t0, $s0, $zero
    /* F72E8 001F6368 94D5070C */  jal        func_001F5650
    /* F72EC 001F636C 04003126 */   addiu     $s1, $s1, 0x4
    /* F72F0 001F6370 FCFF5226 */  addiu      $s2, $s2, -0x4
    /* F72F4 001F6374 FCFF6626 */  addiu      $a2, $s3, -0x4
    /* F72F8 001F6378 2D38A002 */  daddu      $a3, $s5, $zero
    /* F72FC 001F637C 2D202002 */  daddu      $a0, $s1, $zero
    /* F7300 001F6380 2D284002 */  daddu      $a1, $s2, $zero
    /* F7304 001F6384 2D400002 */  daddu      $t0, $s0, $zero
    /* F7308 001F6388 94D5070C */  jal        func_001F5650
    /* F730C 001F638C 0200D326 */   addiu     $s3, $s6, 0x2
    /* F7310 001F6390 0300D426 */  addiu      $s4, $s6, 0x3
    /* F7314 001F6394 0000A48F */  lw         $a0, 0x0($sp)
    /* F7318 001F6398 2D30C002 */  daddu      $a2, $s6, $zero
    /* F731C 001F639C 0400A58F */  lw         $a1, 0x4($sp)
    /* F7320 001F63A0 2D386002 */  daddu      $a3, $s3, $zero
    /* F7324 001F63A4 94D5070C */  jal        func_001F5650
    /* F7328 001F63A8 2D400002 */   daddu     $t0, $s0, $zero
    /* F732C 001F63AC 2D20E002 */  daddu      $a0, $s7, $zero
    /* F7330 001F63B0 2D28C003 */  daddu      $a1, $fp, $zero
    /* F7334 001F63B4 2D306002 */  daddu      $a2, $s3, $zero
    /* F7338 001F63B8 2D388002 */  daddu      $a3, $s4, $zero
    /* F733C 001F63BC 94D5070C */  jal        func_001F5650
    /* F7340 001F63C0 2D400002 */   daddu     $t0, $s0, $zero
    /* F7344 001F63C4 2D202002 */  daddu      $a0, $s1, $zero
    /* F7348 001F63C8 2D284002 */  daddu      $a1, $s2, $zero
    /* F734C 001F63CC 2D308002 */  daddu      $a2, $s4, $zero
    /* F7350 001F63D0 0400C726 */  addiu      $a3, $s6, 0x4
    /* F7354 001F63D4 94D5070C */  jal        func_001F5650
    /* F7358 001F63D8 2D400002 */   daddu     $t0, $s0, $zero
    /* F735C 001F63DC A000BF7B */  lq         $ra, 0xA0($sp)
    /* F7360 001F63E0 9000BE7B */  lq         $fp, 0x90($sp)
    /* F7364 001F63E4 8000B77B */  lq         $s7, 0x80($sp)
    /* F7368 001F63E8 7000B67B */  lq         $s6, 0x70($sp)
    /* F736C 001F63EC 6000B57B */  lq         $s5, 0x60($sp)
    /* F7370 001F63F0 5000B47B */  lq         $s4, 0x50($sp)
    /* F7374 001F63F4 4000B37B */  lq         $s3, 0x40($sp)
    /* F7378 001F63F8 3000B27B */  lq         $s2, 0x30($sp)
    /* F737C 001F63FC 2000B17B */  lq         $s1, 0x20($sp)
    /* F7380 001F6400 1000B07B */  lq         $s0, 0x10($sp)
    /* F7384 001F6404 0800E003 */  jr         $ra
    /* F7388 001F6408 B000BD27 */   addiu     $sp, $sp, 0xB0
endlabel func_001F62C8
    /* F738C 001F640C 00000000 */  nop
