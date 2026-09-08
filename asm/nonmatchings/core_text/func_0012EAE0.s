.align 3
nonmatching func_0012EAE0, 0x38

glabel func_0012EAE0
    /* 2FA60 0012EAE0 C080838F */  lw         $3, -0x7F40($28)
    /* 2FA64 0012EAE4 F0FFBD27 */  addiu      $29, $29, -0x10
    /* 2FA68 0012EAE8 0000BF7F */  sq         $31, 0x0($29)
    /* 2FA6C 0012EAEC A0808227 */  addiu      $2, $28, -0x7F60
    /* 2FA70 0012EAF0 80180300 */  sll        $3, $3, 2
    /* 2FA74 0012EAF4 21186200 */  addu       $3, $3, $2
    /* 2FA78 0012EAF8 0000648C */  lw         $4, 0x0($3)
    /* 2FA7C 0012EAFC 0000828C */  lw         $2, 0x0($4)
    /* 2FA80 0012EB00 01004224 */  addiu      $2, $2, 0x1
    /* 2FA84 0012EB04 70B7040C */  jal        func_0012DDC0
    /* 2FA88 0012EB08 000082AC */   sw        $2, 0x0($4)
    /* 2FA8C 0012EB0C 0000BF7B */  lq         $31, 0x0($29)
    /* 2FA90 0012EB10 0800E003 */  jr         $31
    /* 2FA94 0012EB14 1000BD27 */   addiu     $29, $29, 0x10
endlabel func_0012EAE0
