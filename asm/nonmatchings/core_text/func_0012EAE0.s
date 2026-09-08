.align 3
nonmatching func_0012EAE0, 0x38

glabel func_0012EAE0
    /* 2FA60 0012EAE0 C080838F */  lw         $v1, -0x7F40($gp)
    /* 2FA64 0012EAE4 F0FFBD27 */  addiu      $sp, $sp, -0x10
    /* 2FA68 0012EAE8 0000BF7F */  sq         $ra, 0x0($sp)
    /* 2FA6C 0012EAEC A0808227 */  addiu      $v0, $gp, -0x7F60
    /* 2FA70 0012EAF0 80180300 */  sll        $v1, $v1, 2
    /* 2FA74 0012EAF4 21186200 */  addu       $v1, $v1, $v0
    /* 2FA78 0012EAF8 0000648C */  lw         $a0, 0x0($v1)
    /* 2FA7C 0012EAFC 0000828C */  lw         $v0, 0x0($a0)
    /* 2FA80 0012EB00 01004224 */  addiu      $v0, $v0, 0x1
    /* 2FA84 0012EB04 70B7040C */  jal        func_0012DDC0
    /* 2FA88 0012EB08 000082AC */   sw        $v0, 0x0($a0)
    /* 2FA8C 0012EB0C 0000BF7B */  lq         $ra, 0x0($sp)
    /* 2FA90 0012EB10 0800E003 */  jr         $ra
    /* 2FA94 0012EB14 1000BD27 */   addiu     $sp, $sp, 0x10
endlabel func_0012EAE0
