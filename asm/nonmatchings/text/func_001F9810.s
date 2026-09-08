.align 3
nonmatching func_001F9810, 0x40

glabel func_001F9810
    /* FA790 001F9810 8000BD27 */  addiu      $sp, $sp, 0x80
    /* FA794 001F9814 00000000 */  nop
    /* FA798 001F9818 8000BD27 */  addiu      $sp, $sp, 0x80
    /* FA79C 001F981C 00000000 */  nop
    /* FA7A0 001F9820 5000BD27 */  addiu      $sp, $sp, 0x50
    /* FA7A4 001F9824 00000000 */  nop
    /* FA7A8 001F9828 00000000 */  nop
    /* FA7AC 001F982C 00000000 */  nop
    /* FA7B0 001F9830 1000BD27 */  addiu      $sp, $sp, 0x10
    /* FA7B4 001F9834 00000000 */  nop
    /* FA7B8 001F9838 9000BD27 */  addiu      $sp, $sp, 0x90
    /* FA7BC 001F983C 00000000 */  nop
    /* FA7C0 001F9840 608180C7 */  lwc1       $f0, -0x7EA0($gp)
    /* FA7C4 001F9844 00000000 */  nop
    /* FA7C8 001F9848 0800E003 */  jr         $ra
    /* FA7CC 001F984C 02000C46 */   mul.s     $f0, $f0, $f12
endlabel func_001F9810
