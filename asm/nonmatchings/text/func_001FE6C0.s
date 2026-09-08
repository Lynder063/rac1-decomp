.align 3
nonmatching func_001FE6C0, 0xA04

glabel func_001FE6C0
    /* FF640 001FE6C0 B0FFBD27 */  addiu      $29, $29, -0x50
    /* FF644 001FE6C4 1A00033C */  lui        $3, %hi(D_001997D0)
    /* FF648 001FE6C8 2000B27F */  sq         $18, 0x20($29)
    /* FF64C 001FE6CC D0976424 */  addiu      $4, $3, %lo(D_001997D0)
    /* FF650 001FE6D0 4000BF7F */  sq         $31, 0x40($29)
    /* FF654 001FE6D4 3000B37F */  sq         $19, 0x30($29)
    /* FF658 001FE6D8 1000B17F */  sq         $17, 0x10($29)
    /* FF65C 001FE6DC 0000B07F */  sq         $16, 0x0($29)
    /* FF660 001FE6E0 3000828C */  lw         $2, 0x30($4)
    /* FF664 001FE6E4 17004014 */  bnez       $2, .L001FE744
    /* FF668 001FE6E8 2D906000 */   daddu     $18, $3, $0
    /* FF66C 001FE6EC 3400828C */  lw         $2, 0x34($4)
    /* FF670 001FE6F0 0A004014 */  bnez       $2, .L001FE71C
    /* FF674 001FE6F4 D0975126 */   addiu     $17, $18, %lo(D_001997D0)
    /* FF678 001FE6F8 1400033C */  lui        $3, %hi(D_0013CBE0)
    /* FF67C 001FE6FC E0CB628C */  lw         $2, %lo(D_0013CBE0)($3)
    /* FF680 001FE700 00F04230 */  andi       $2, $2, 0xF000
    /* FF684 001FE704 02004010 */  beqz       $2, .L001FE710
    /* FF688 001FE708 01000224 */   addiu     $2, $0, 0x1
    /* FF68C 001FE70C 340082AC */  sw         $2, 0x34($4)
.align 2
  .L001FE710:
    /* FF690 001FE710 3400828C */  lw         $2, 0x34($4)
    /* FF694 001FE714 0B004010 */  beqz       $2, .L001FE744
    /* FF698 001FE718 D0975126 */   addiu     $17, $18, %lo(D_001997D0)
.align 2
  .L001FE71C:
    /* FF69C 001FE71C 78000424 */  addiu      $4, $0, 0x78
    /* FF6A0 001FE720 3400308E */  lw         $16, 0x34($17)
    /* FF6A4 001FE724 01001026 */  addiu      $16, $16, 0x1
    /* FF6A8 001FE728 30E6070C */  jal        func_001F98C0
    /* FF6AC 001FE72C 340030AE */   sw        $16, 0x34($17)
    /* FF6B0 001FE730 2A800202 */  slt        $16, $16, $2
    /* FF6B4 001FE734 05000016 */  bnez       $16, .L001FE74C
    /* FF6B8 001FE738 E889828F */   lw        $2, -0x7618($28)
    /* FF6BC 001FE73C 01000224 */  addiu      $2, $0, 0x1
    /* FF6C0 001FE740 300022AE */  sw         $2, 0x30($17)
.align 2
  .L001FE744:
    /* FF6C4 001FE744 1600023C */  lui        $2, %hi(D_0015F6E8)
    /* FF6C8 001FE748 E8F6428C */  lw         $2, %lo(D_0015F6E8)($2)
.align 2
  .L001FE74C:
    /* FF6CC 001FE74C 05004014 */  bnez       $2, .L001FE764
    /* FF6D0 001FE750 D0974326 */   addiu     $3, $18, %lo(D_001997D0)
    /* FF6D4 001FE754 3000628C */  lw         $2, 0x30($3)
    /* FF6D8 001FE758 07004054 */  bnel       $2, $0, .L001FE778
    /* FF6DC 001FE75C 0400628C */   lw        $2, 0x4($3)
    /* FF6E0 001FE760 D0974326 */  addiu      $3, $18, %lo(D_001997D0)
.align 2
  .L001FE764:
    /* FF6E4 001FE764 FFFF0224 */  addiu      $2, $0, -0x1
    /* FF6E8 001FE768 240062AC */  sw         $2, 0x24($3)
    /* FF6EC 001FE76C D09740AE */  sw         $0, %lo(D_001997D0)($18)
    /* FF6F0 001FE770 4D020010 */  b          .L001FF0A8
    /* FF6F4 001FE774 040060AC */   sw        $0, 0x4($3)
.align 2
  .L001FE778:
    /* FF6F8 001FE778 D097448E */  lw         $4, %lo(D_001997D0)($18)
    /* FF6FC 001FE77C 01004224 */  addiu      $2, $2, 0x1
    /* FF700 001FE780 040062AC */  sw         $2, 0x4($3)
    /* FF704 001FE784 0900832C */  sltiu      $3, $4, 0x9
    /* FF708 001FE788 47026010 */  beqz       $3, .L001FF0A8
    /* FF70C 001FE78C 1E00023C */   lui       $2, %hi(jtbl_001E7D70)
    /* FF710 001FE790 80180400 */  sll        $3, $4, 2
    /* FF714 001FE794 707D4224 */  addiu      $2, $2, %lo(jtbl_001E7D70)
    /* FF718 001FE798 21186200 */  addu       $3, $3, $2
    /* FF71C 001FE79C 0000648C */  lw         $4, 0x0($3)
    /* FF720 001FE7A0 08008000 */  jr         $4
    /* FF724 001FE7A4 00000000 */   nop
    /* FF728 001FE7A8 D0975026 */  addiu      $16, $18, -0x6830
    /* FF72C 001FE7AC 38000286 */  lh         $2, 0x38($16)
    /* FF730 001FE7B0 3E024014 */  bnez       $2, .L001FF0AC
    /* FF734 001FE7B4 4000BF7B */   lq        $31, 0x40($29)
    /* FF738 001FE7B8 2000028E */  lw         $2, 0x20($16)
    /* FF73C 001FE7BC 1B004004 */  bltz       $2, .L001FE82C
    /* FF740 001FE7C0 A482848F */   lw        $4, -0x7D5C($28)
    /* FF744 001FE7C4 3A000286 */  lh         $2, 0x3A($16)
    /* FF748 001FE7C8 0B004054 */  bnel       $2, $0, .L001FE7F8
    /* FF74C 001FE7CC 2800028E */   lw        $2, 0x28($16)
    /* FF750 001FE7D0 42E6070C */  jal        func_001F9908
    /* FF754 001FE7D4 3C000426 */   addiu     $4, $16, 0x3C
    /* FF758 001FE7D8 34024010 */  beqz       $2, .L001FF0AC
    /* FF75C 001FE7DC 4000BF7B */   lq        $31, 0x40($29)
    /* FF760 001FE7E0 62F9070C */  jal        func_001FE588
    /* FF764 001FE7E4 00000000 */   nop
    /* FF768 001FE7E8 3A000296 */  lhu        $2, 0x3A($16)
    /* FF76C 001FE7EC 01004224 */  addiu      $2, $2, 0x1
    /* FF770 001FE7F0 2D020010 */  b          .L001FF0A8
    /* FF774 001FE7F4 3A0002A6 */   sh        $2, 0x3A($16)
.align 2
  .L001FE7F8:
    /* FF778 001FE7F8 1400033C */  lui        $3, %hi(D_00141A68)
    /* FF77C 001FE7FC 681A6324 */  addiu      $3, $3, %lo(D_00141A68)
    /* FF780 001FE800 FEFF0434 */  ori        $4, $0, 0xFFFE
    /* FF784 001FE804 C0100200 */  sll        $2, $2, 3
    /* FF788 001FE808 21184300 */  addu       $3, $2, $3
    /* FF78C 001FE80C 00006294 */  lhu        $2, 0x0($3)
    /* FF790 001FE810 2B208200 */  sltu       $4, $4, $2
    /* FF794 001FE814 05008014 */  bnez       $4, .L001FE82C
    /* FF798 001FE818 A482848F */   lw        $4, -0x7D5C($28)
    /* FF79C 001FE81C 01004224 */  addiu      $2, $2, 0x1
    /* FF7A0 001FE820 000062A4 */  sh         $2, 0x0($3)
    /* FF7A4 001FE824 1600043C */  lui        $4, %hi(D_0015EFA4)
    /* FF7A8 001FE828 A4EF848C */  lw         $4, %lo(D_0015EFA4)($4)
.align 2
  .L001FE82C:
    /* FF7AC 001FE82C 58021024 */  addiu      $16, $0, 0x258
    /* FF7B0 001FE830 30E6070C */  jal        func_001F98C0
    /* FF7B4 001FE834 D0975326 */   addiu     $19, $18, -0x6830
    /* FF7B8 001FE838 1A005000 */  div        $0, $2, $16
    /* FF7BC 001FE83C 01000052 */  beql       $16, $0, .L001FE844
    /* FF7C0 001FE840 CD010000 */   break     0, 7
.align 2
  .L001FE844:
    /* FF7C4 001FE844 2800648E */  lw         $4, 0x28($19)
    /* FF7C8 001FE848 1400033C */  lui        $3, %hi(D_00141A68)
    /* FF7CC 001FE84C 681A7124 */  addiu      $17, $3, %lo(D_00141A68)
    /* FF7D0 001FE850 C0200400 */  sll        $4, $4, 3
    /* FF7D4 001FE854 21209100 */  addu       $4, $4, $17
    /* FF7D8 001FE858 02008394 */  lhu        $3, 0x2($4)
    /* FF7DC 001FE85C 12100000 */  mflo       $2
    /* FF7E0 001FE860 2A186200 */  slt        $3, $3, $2
    /* FF7E4 001FE864 0D006050 */  beql       $3, $0, .L001FE89C
    /* FF7E8 001FE868 2800658E */   lw        $5, 0x28($19)
    /* FF7EC 001FE86C 30E6070C */  jal        func_001F98C0
    /* FF7F0 001FE870 A482848F */   lw        $4, -0x7D5C($28)
    /* FF7F4 001FE874 1A005000 */  div        $0, $2, $16
    /* FF7F8 001FE878 2800638E */  lw         $3, 0x28($19)
    /* FF7FC 001FE87C 58020424 */  addiu      $4, $0, 0x258
    /* FF800 001FE880 C0180300 */  sll        $3, $3, 3
    /* FF804 001FE884 01008050 */  beql       $4, $0, .L001FE88C
    /* FF808 001FE888 CD010000 */   break     0, 7
.align 2
  .L001FE88C:
    /* FF80C 001FE88C 21187100 */  addu       $3, $3, $17
    /* FF810 001FE890 12100000 */  mflo       $2
    /* FF814 001FE894 020062A4 */  sh         $2, 0x2($3)
    /* FF818 001FE898 2800658E */  lw         $5, 0x28($19)
.align 2
  .L001FE89C:
    /* FF81C 001FE89C 04002226 */  addiu      $2, $17, 0x4
    /* FF820 001FE8A0 1600063C */  lui        $6, %hi(D_0015EE84)
    /* FF824 001FE8A4 84EEC68C */  lw         $6, %lo(D_0015EE84)($6)
    /* FF828 001FE8A8 01000424 */  addiu      $4, $0, 0x1
    /* FF82C 001FE8AC C0280500 */  sll        $5, $5, 3
    /* FF830 001FE8B0 0080073C */  lui        $7, (0x80000000 >> 16)
    /* FF834 001FE8B4 2128A200 */  addu       $5, $5, $2
    /* FF838 001FE8B8 0420C400 */  sllv       $4, $4, $6
    /* FF83C 001FE8BC 0000A38C */  lw         $3, 0x0($5)
    /* FF840 001FE8C0 FFFF0224 */  addiu      $2, $0, -0x1
    /* FF844 001FE8C4 200062AE */  sw         $2, 0x20($19)
    /* FF848 001FE8C8 D09740AE */  sw         $0, -0x6830($18)
    /* FF84C 001FE8CC 25186400 */  or         $3, $3, $4
    /* FF850 001FE8D0 25186700 */  or         $3, $3, $7
    /* FF854 001FE8D4 3A0060A6 */  sh         $0, 0x3A($19)
    /* FF858 001FE8D8 F3010010 */  b          .L001FF0A8
    /* FF85C 001FE8DC 0000A3AC */   sw        $3, 0x0($5)
    /* FF860 001FE8E0 D0975026 */  addiu      $16, $18, -0x6830
    /* FF864 001FE8E4 2400048E */  lw         $4, 0x24($16)
    /* FF868 001FE8E8 F0018004 */  bltz       $4, .L001FF0AC
    /* FF86C 001FE8EC 4000BF7B */   lq        $31, 0x40($29)
    /* FF870 001FE8F0 34F9070C */  jal        func_001FE4D0
    /* FF874 001FE8F4 00000000 */   nop
    /* FF878 001FE8F8 FFFF0324 */  addiu      $3, $0, -0x1
    /* FF87C 001FE8FC 200002AE */  sw         $2, 0x20($16)
    /* FF880 001FE900 E9014004 */  bltz       $2, .L001FF0A8
    /* FF884 001FE904 240003AE */   sw        $3, 0x24($16)
    /* FF888 001FE908 62F9070C */  jal        func_001FE588
    /* FF88C 001FE90C 00000000 */   nop
    /* FF890 001FE910 E6010010 */  b          .L001FF0AC
    /* FF894 001FE914 4000BF7B */   lq        $31, 0x40($29)
    /* FF898 001FE918 05000424 */  addiu      $4, $0, 0x5
    /* FF89C 001FE91C 0A58080C */  jal        func_00216028
    /* FF8A0 001FE920 2D280000 */   daddu     $5, $0, $0
    /* FF8A4 001FE924 D0974326 */  addiu      $3, $18, -0x6830
    /* FF8A8 001FE928 1600043C */  lui        $4, %hi(D_0015F780)
    /* FF8AC 001FE92C 80F7848C */  lw         $4, %lo(D_0015F780)($4)
    /* FF8B0 001FE930 2000628C */  lw         $2, 0x20($3)
    /* FF8B4 001FE934 00110200 */  sll        $2, $2, 4
    /* FF8B8 001FE938 21104400 */  addu       $2, $2, $4
    /* FF8BC 001FE93C 0800458C */  lw         $5, 0x8($2)
    /* FF8C0 001FE940 0B00A004 */  bltz       $5, .L001FE970
    /* FF8C4 001FE944 1500023C */   lui       $2, %hi(D_001517D0)
    /* FF8C8 001FE948 D0174424 */  addiu      $4, $2, %lo(D_001517D0)
    /* FF8CC 001FE94C 5000838C */  lw         $3, 0x50($4)
    /* FF8D0 001FE950 08006014 */  bnez       $3, .L001FE974
    /* FF8D4 001FE954 1400033C */   lui       $3, %hi(D_0013CBE4)
    /* FF8D8 001FE958 1C00838C */  lw         $3, 0x1C($4)
    /* FF8DC 001FE95C FFFF0224 */  addiu      $2, $0, -0x1
    /* FF8E0 001FE960 04006214 */  bne        $3, $2, .L001FE974
    /* FF8E4 001FE964 1400033C */   lui       $3, %hi(D_0013CBE4)
    /* FF8E8 001FE968 3075A224 */  addiu      $2, $5, 0x7530
    /* FF8EC 001FE96C 1C0082AC */  sw         $2, 0x1C($4)
.align 2
  .L001FE970:
    /* FF8F0 001FE970 1400033C */  lui        $3, %hi(D_0013CBE4)
.align 2
  .L001FE974:
    /* FF8F4 001FE974 E4CB628C */  lw         $2, %lo(D_0013CBE4)($3)
    /* FF8F8 001FE978 10004230 */  andi       $2, $2, 0x10
    /* FF8FC 001FE97C 3B004010 */  beqz       $2, .L001FEA6C
    /* FF900 001FE980 D0975326 */   addiu     $19, $18, -0x6830
    /* FF904 001FE984 1400023C */  lui        $2, %hi(D_00141A68)
    /* FF908 001FE988 2800638E */  lw         $3, 0x28($19)
    /* FF90C 001FE98C 681A5124 */  addiu      $17, $2, %lo(D_00141A68)
    /* FF910 001FE990 FEFF0434 */  ori        $4, $0, 0xFFFE
    /* FF914 001FE994 C0180300 */  sll        $3, $3, 3
    /* FF918 001FE998 21187100 */  addu       $3, $3, $17
    /* FF91C 001FE99C 00006294 */  lhu        $2, 0x0($3)
    /* FF920 001FE9A0 2B208200 */  sltu       $4, $4, $2
    /* FF924 001FE9A4 05008014 */  bnez       $4, .L001FE9BC
    /* FF928 001FE9A8 A482848F */   lw        $4, -0x7D5C($28)
    /* FF92C 001FE9AC 01004224 */  addiu      $2, $2, 0x1
    /* FF930 001FE9B0 000062A4 */  sh         $2, 0x0($3)
    /* FF934 001FE9B4 1600043C */  lui        $4, %hi(D_0015EFA4)
    /* FF938 001FE9B8 A4EF848C */  lw         $4, %lo(D_0015EFA4)($4)
.align 2
  .L001FE9BC:
    /* FF93C 001FE9BC 30E6070C */  jal        func_001F98C0
    /* FF940 001FE9C0 58021024 */   addiu     $16, $0, 0x258
    /* FF944 001FE9C4 1A005000 */  div        $0, $2, $16
    /* FF948 001FE9C8 01000052 */  beql       $16, $0, .L001FE9D0
    /* FF94C 001FE9CC CD010000 */   break     0, 7
.align 2
  .L001FE9D0:
    /* FF950 001FE9D0 2800638E */  lw         $3, 0x28($19)
    /* FF954 001FE9D4 C0180300 */  sll        $3, $3, 3
    /* FF958 001FE9D8 21187100 */  addu       $3, $3, $17
    /* FF95C 001FE9DC 02006494 */  lhu        $4, 0x2($3)
    /* FF960 001FE9E0 12100000 */  mflo       $2
    /* FF964 001FE9E4 2A208200 */  slt        $4, $4, $2
    /* FF968 001FE9E8 0D008050 */  beql       $4, $0, .L001FEA20
    /* FF96C 001FE9EC 2800658E */   lw        $5, 0x28($19)
    /* FF970 001FE9F0 30E6070C */  jal        func_001F98C0
    /* FF974 001FE9F4 A482848F */   lw        $4, -0x7D5C($28)
    /* FF978 001FE9F8 1A005000 */  div        $0, $2, $16
    /* FF97C 001FE9FC 2800638E */  lw         $3, 0x28($19)
    /* FF980 001FEA00 58020424 */  addiu      $4, $0, 0x258
    /* FF984 001FEA04 C0180300 */  sll        $3, $3, 3
    /* FF988 001FEA08 01008050 */  beql       $4, $0, .L001FEA10
    /* FF98C 001FEA0C CD010000 */   break     0, 7
.align 2
  .L001FEA10:
    /* FF990 001FEA10 21187100 */  addu       $3, $3, $17
    /* FF994 001FEA14 12100000 */  mflo       $2
    /* FF998 001FEA18 020062A4 */  sh         $2, 0x2($3)
    /* FF99C 001FEA1C 2800658E */  lw         $5, 0x28($19)
.align 2
  .L001FEA20:
    /* FF9A0 001FEA20 04002226 */  addiu      $2, $17, 0x4
    /* FF9A4 001FEA24 1600063C */  lui        $6, %hi(D_0015EE84)
    /* FF9A8 001FEA28 84EEC68C */  lw         $6, %lo(D_0015EE84)($6)
    /* FF9AC 001FEA2C 01000424 */  addiu      $4, $0, 0x1
    /* FF9B0 001FEA30 C0280500 */  sll        $5, $5, 3
    /* FF9B4 001FEA34 0400688E */  lw         $8, 0x4($19)
    /* FF9B8 001FEA38 2128A200 */  addu       $5, $5, $2
    /* FF9BC 001FEA3C 0420C400 */  sllv       $4, $4, $6
    /* FF9C0 001FEA40 0000A38C */  lw         $3, 0x0($5)
    /* FF9C4 001FEA44 08000224 */  addiu      $2, $0, 0x8
    /* FF9C8 001FEA48 0080063C */  lui        $6, (0x80000000 >> 16)
    /* FF9CC 001FEA4C 23104800 */  subu       $2, $2, $8
    /* FF9D0 001FEA50 25186400 */  or         $3, $3, $4
    /* FF9D4 001FEA54 040062AE */  sw         $2, 0x4($19)
    /* FF9D8 001FEA58 25186600 */  or         $3, $3, $6
    /* FF9DC 001FEA5C 07000724 */  addiu      $7, $0, 0x7
    /* FF9E0 001FEA60 0000A3AC */  sw         $3, 0x0($5)
    /* FF9E4 001FEA64 90010010 */  b          .L001FF0A8
    /* FF9E8 001FEA68 D09747AE */   sw        $7, -0x6830($18)
.align 2
  .L001FEA6C:
    /* FF9EC 001FEA6C D0974326 */  addiu      $3, $18, -0x6830
    /* FF9F0 001FEA70 0400628C */  lw         $2, 0x4($3)
    /* FF9F4 001FEA74 06004228 */  slti       $2, $2, 0x6
    /* FF9F8 001FEA78 8C014014 */  bnez       $2, .L001FF0AC
    /* FF9FC 001FEA7C 4000BF7B */   lq        $31, 0x40($29)
    /* FFA00 001FEA80 96000010 */  b          .L001FECDC
    /* FFA04 001FEA84 02000224 */   addiu     $2, $0, 0x2
    /* FFA08 001FEA88 05000424 */  addiu      $4, $0, 0x5
    /* FFA0C 001FEA8C 0A58080C */  jal        func_00216028
    /* FFA10 001FEA90 2D280000 */   daddu     $5, $0, $0
    /* FFA14 001FEA94 1400033C */  lui        $3, %hi(D_0013CBE4)
    /* FFA18 001FEA98 E4CB628C */  lw         $2, %lo(D_0013CBE4)($3)
    /* FFA1C 001FEA9C 10004230 */  andi       $2, $2, 0x10
    /* FFA20 001FEAA0 33004010 */  beqz       $2, .L001FEB70
    /* FFA24 001FEAA4 D0975326 */   addiu     $19, $18, -0x6830
    /* FFA28 001FEAA8 1400023C */  lui        $2, %hi(D_00141A68)
    /* FFA2C 001FEAAC 2800638E */  lw         $3, 0x28($19)
    /* FFA30 001FEAB0 681A5124 */  addiu      $17, $2, %lo(D_00141A68)
    /* FFA34 001FEAB4 FEFF0434 */  ori        $4, $0, 0xFFFE
    /* FFA38 001FEAB8 C0180300 */  sll        $3, $3, 3
    /* FFA3C 001FEABC 21187100 */  addu       $3, $3, $17
    /* FFA40 001FEAC0 00006294 */  lhu        $2, 0x0($3)
    /* FFA44 001FEAC4 2B208200 */  sltu       $4, $4, $2
    /* FFA48 001FEAC8 05008014 */  bnez       $4, .L001FEAE0
    /* FFA4C 001FEACC A482848F */   lw        $4, -0x7D5C($28)
    /* FFA50 001FEAD0 01004224 */  addiu      $2, $2, 0x1
    /* FFA54 001FEAD4 000062A4 */  sh         $2, 0x0($3)
    /* FFA58 001FEAD8 1600043C */  lui        $4, %hi(D_0015EFA4)
    /* FFA5C 001FEADC A4EF848C */  lw         $4, %lo(D_0015EFA4)($4)
.align 2
  .L001FEAE0:
    /* FFA60 001FEAE0 30E6070C */  jal        func_001F98C0
    /* FFA64 001FEAE4 58021024 */   addiu     $16, $0, 0x258
    /* FFA68 001FEAE8 1A005000 */  div        $0, $2, $16
    /* FFA6C 001FEAEC 01000052 */  beql       $16, $0, .L001FEAF4
    /* FFA70 001FEAF0 CD010000 */   break     0, 7
.align 2
  .L001FEAF4:
    /* FFA74 001FEAF4 2800638E */  lw         $3, 0x28($19)
    /* FFA78 001FEAF8 C0180300 */  sll        $3, $3, 3
    /* FFA7C 001FEAFC 21187100 */  addu       $3, $3, $17
    /* FFA80 001FEB00 02006494 */  lhu        $4, 0x2($3)
    /* FFA84 001FEB04 12100000 */  mflo       $2
    /* FFA88 001FEB08 2A208200 */  slt        $4, $4, $2
    /* FFA8C 001FEB0C 0D008050 */  beql       $4, $0, .L001FEB44
    /* FFA90 001FEB10 2800648E */   lw        $4, 0x28($19)
    /* FFA94 001FEB14 30E6070C */  jal        func_001F98C0
    /* FFA98 001FEB18 A482848F */   lw        $4, -0x7D5C($28)
    /* FFA9C 001FEB1C 1A005000 */  div        $0, $2, $16
    /* FFAA0 001FEB20 2800638E */  lw         $3, 0x28($19)
    /* FFAA4 001FEB24 58020424 */  addiu      $4, $0, 0x258
    /* FFAA8 001FEB28 C0180300 */  sll        $3, $3, 3
    /* FFAAC 001FEB2C 01008050 */  beql       $4, $0, .L001FEB34
    /* FFAB0 001FEB30 CD010000 */   break     0, 7
.align 2
  .L001FEB34:
    /* FFAB4 001FEB34 21187100 */  addu       $3, $3, $17
    /* FFAB8 001FEB38 12100000 */  mflo       $2
    /* FFABC 001FEB3C 020062A4 */  sh         $2, 0x2($3)
    /* FFAC0 001FEB40 2800648E */  lw         $4, 0x28($19)
.align 2
  .L001FEB44:
    /* FFAC4 001FEB44 04002226 */  addiu      $2, $17, 0x4
    /* FFAC8 001FEB48 1600033C */  lui        $3, %hi(D_0015EE84)
    /* FFACC 001FEB4C 84EE638C */  lw         $3, %lo(D_0015EE84)($3)
    /* FFAD0 001FEB50 01000524 */  addiu      $5, $0, 0x1
    /* FFAD4 001FEB54 C0200400 */  sll        $4, $4, 3
    /* FFAD8 001FEB58 0080063C */  lui        $6, (0x80000000 >> 16)
    /* FFADC 001FEB5C 21208200 */  addu       $4, $4, $2
    /* FFAE0 001FEB60 04286500 */  sllv       $5, $5, $3
    /* FFAE4 001FEB64 0000828C */  lw         $2, 0x0($4)
    /* FFAE8 001FEB68 10010010 */  b          .L001FEFAC
    /* FFAEC 001FEB6C 07000324 */   addiu     $3, $0, 0x7
.align 2
  .L001FEB70:
    /* FFAF0 001FEB70 18000424 */  addiu      $4, $0, 0x18
    /* FFAF4 001FEB74 30E6070C */  jal        func_001F98C0
    /* FFAF8 001FEB78 D0975026 */   addiu     $16, $18, -0x6830
    /* FFAFC 001FEB7C 0400038E */  lw         $3, 0x4($16)
    /* FFB00 001FEB80 2A186200 */  slt        $3, $3, $2
    /* FFB04 001FEB84 49016014 */  bnez       $3, .L001FF0AC
    /* FFB08 001FEB88 4000BF7B */   lq        $31, 0x40($29)
    /* FFB0C 001FEB8C 1500023C */  lui        $2, %hi(D_001517D0)
    /* FFB10 001FEB90 03000424 */  addiu      $4, $0, 0x3
    /* FFB14 001FEB94 D0174524 */  addiu      $5, $2, %lo(D_001517D0)
    /* FFB18 001FEB98 5A00A384 */  lh         $3, 0x5A($5)
    /* FFB1C 001FEB9C 0D006410 */  beq        $3, $4, .L001FEBD4
    /* FFB20 001FEBA0 FFFF0424 */   addiu     $4, $0, -0x1
    /* FFB24 001FEBA4 2000028E */  lw         $2, 0x20($16)
    /* FFB28 001FEBA8 1600033C */  lui        $3, %hi(D_0015F780)
    /* FFB2C 001FEBAC 80F7638C */  lw         $3, %lo(D_0015F780)($3)
    /* FFB30 001FEBB0 00110200 */  sll        $2, $2, 4
    /* FFB34 001FEBB4 21104300 */  addu       $2, $2, $3
    /* FFB38 001FEBB8 0800438C */  lw         $3, 0x8($2)
    /* FFB3C 001FEBBC 0E016410 */  beq        $3, $4, .L001FEFF8
    /* FFB40 001FEBC0 03000224 */   addiu     $2, $0, 0x3
    /* FFB44 001FEBC4 5400A284 */  lh         $2, 0x54($5)
    /* FFB48 001FEBC8 D08A4224 */  addiu      $2, $2, -0x7530
    /* FFB4C 001FEBCC 38016210 */  beq        $3, $2, .L001FF0B0
    /* FFB50 001FEBD0 3000B37B */   lq        $19, 0x30($29)
.align 2
  .L001FEBD4:
    /* FFB54 001FEBD4 08010010 */  b          .L001FEFF8
    /* FFB58 001FEBD8 03000224 */   addiu     $2, $0, 0x3
    /* FFB5C 001FEBDC 05000424 */  addiu      $4, $0, 0x5
    /* FFB60 001FEBE0 0A58080C */  jal        func_00216028
    /* FFB64 001FEBE4 2D280000 */   daddu     $5, $0, $0
    /* FFB68 001FEBE8 1400033C */  lui        $3, %hi(D_0013CBE4)
    /* FFB6C 001FEBEC E4CB628C */  lw         $2, %lo(D_0013CBE4)($3)
    /* FFB70 001FEBF0 10004230 */  andi       $2, $2, 0x10
    /* FFB74 001FEBF4 33004010 */  beqz       $2, .L001FECC4
    /* FFB78 001FEBF8 D0975326 */   addiu     $19, $18, -0x6830
    /* FFB7C 001FEBFC 1400023C */  lui        $2, %hi(D_00141A68)
    /* FFB80 001FEC00 2800638E */  lw         $3, 0x28($19)
    /* FFB84 001FEC04 681A5124 */  addiu      $17, $2, %lo(D_00141A68)
    /* FFB88 001FEC08 FEFF0434 */  ori        $4, $0, 0xFFFE
    /* FFB8C 001FEC0C C0180300 */  sll        $3, $3, 3
    /* FFB90 001FEC10 21187100 */  addu       $3, $3, $17
    /* FFB94 001FEC14 00006294 */  lhu        $2, 0x0($3)
    /* FFB98 001FEC18 2B208200 */  sltu       $4, $4, $2
    /* FFB9C 001FEC1C 05008014 */  bnez       $4, .L001FEC34
    /* FFBA0 001FEC20 A482848F */   lw        $4, -0x7D5C($28)
    /* FFBA4 001FEC24 01004224 */  addiu      $2, $2, 0x1
    /* FFBA8 001FEC28 000062A4 */  sh         $2, 0x0($3)
    /* FFBAC 001FEC2C 1600043C */  lui        $4, %hi(D_0015EFA4)
    /* FFBB0 001FEC30 A4EF848C */  lw         $4, %lo(D_0015EFA4)($4)
.align 2
  .L001FEC34:
    /* FFBB4 001FEC34 30E6070C */  jal        func_001F98C0
    /* FFBB8 001FEC38 58021024 */   addiu     $16, $0, 0x258
    /* FFBBC 001FEC3C 1A005000 */  div        $0, $2, $16
    /* FFBC0 001FEC40 01000052 */  beql       $16, $0, .L001FEC48
    /* FFBC4 001FEC44 CD010000 */   break     0, 7
.align 2
  .L001FEC48:
    /* FFBC8 001FEC48 2800638E */  lw         $3, 0x28($19)
    /* FFBCC 001FEC4C C0180300 */  sll        $3, $3, 3
    /* FFBD0 001FEC50 21187100 */  addu       $3, $3, $17
    /* FFBD4 001FEC54 02006494 */  lhu        $4, 0x2($3)
    /* FFBD8 001FEC58 12100000 */  mflo       $2
    /* FFBDC 001FEC5C 2A208200 */  slt        $4, $4, $2
    /* FFBE0 001FEC60 0D008050 */  beql       $4, $0, .L001FEC98
    /* FFBE4 001FEC64 2800648E */   lw        $4, 0x28($19)
    /* FFBE8 001FEC68 30E6070C */  jal        func_001F98C0
    /* FFBEC 001FEC6C A482848F */   lw        $4, -0x7D5C($28)
    /* FFBF0 001FEC70 1A005000 */  div        $0, $2, $16
    /* FFBF4 001FEC74 2800638E */  lw         $3, 0x28($19)
    /* FFBF8 001FEC78 58020424 */  addiu      $4, $0, 0x258
    /* FFBFC 001FEC7C C0180300 */  sll        $3, $3, 3
    /* FFC00 001FEC80 01008050 */  beql       $4, $0, .L001FEC88
    /* FFC04 001FEC84 CD010000 */   break     0, 7
.align 2
  .L001FEC88:
    /* FFC08 001FEC88 21187100 */  addu       $3, $3, $17
    /* FFC0C 001FEC8C 12100000 */  mflo       $2
    /* FFC10 001FEC90 020062A4 */  sh         $2, 0x2($3)
    /* FFC14 001FEC94 2800648E */  lw         $4, 0x28($19)
.align 2
  .L001FEC98:
    /* FFC18 001FEC98 04002226 */  addiu      $2, $17, 0x4
    /* FFC1C 001FEC9C 1600033C */  lui        $3, %hi(D_0015EE84)
    /* FFC20 001FECA0 84EE638C */  lw         $3, %lo(D_0015EE84)($3)
    /* FFC24 001FECA4 01000524 */  addiu      $5, $0, 0x1
    /* FFC28 001FECA8 C0200400 */  sll        $4, $4, 3
    /* FFC2C 001FECAC 0080063C */  lui        $6, (0x80000000 >> 16)
    /* FFC30 001FECB0 21208200 */  addu       $4, $4, $2
    /* FFC34 001FECB4 04286500 */  sllv       $5, $5, $3
    /* FFC38 001FECB8 0000828C */  lw         $2, 0x0($4)
    /* FFC3C 001FECBC BB000010 */  b          .L001FEFAC
    /* FFC40 001FECC0 07000324 */   addiu     $3, $0, 0x7
.align 2
  .L001FECC4:
    /* FFC44 001FECC4 D0974326 */  addiu      $3, $18, -0x6830
    /* FFC48 001FECC8 0400628C */  lw         $2, 0x4($3)
    /* FFC4C 001FECCC 08004228 */  slti       $2, $2, 0x8
    /* FFC50 001FECD0 F6004014 */  bnez       $2, .L001FF0AC
    /* FFC54 001FECD4 4000BF7B */   lq        $31, 0x40($29)
    /* FFC58 001FECD8 04000224 */  addiu      $2, $0, 0x4
.align 2
  .L001FECDC:
    /* FFC5C 001FECDC 040060AC */  sw         $0, 0x4($3)
    /* FFC60 001FECE0 F1000010 */  b          .L001FF0A8
    /* FFC64 001FECE4 D09742AE */   sw        $2, -0x6830($18)
    /* FFC68 001FECE8 05000424 */  addiu      $4, $0, 0x5
    /* FFC6C 001FECEC 0A58080C */  jal        func_00216028
    /* FFC70 001FECF0 2D280000 */   daddu     $5, $0, $0
    /* FFC74 001FECF4 1400033C */  lui        $3, %hi(D_0013CBE4)
    /* FFC78 001FECF8 E4CB628C */  lw         $2, %lo(D_0013CBE4)($3)
    /* FFC7C 001FECFC 10004230 */  andi       $2, $2, 0x10
    /* FFC80 001FED00 3B004010 */  beqz       $2, .L001FEDF0
    /* FFC84 001FED04 D0975326 */   addiu     $19, $18, -0x6830
    /* FFC88 001FED08 1400023C */  lui        $2, %hi(D_00141A68)
    /* FFC8C 001FED0C 2800638E */  lw         $3, 0x28($19)
    /* FFC90 001FED10 681A5124 */  addiu      $17, $2, %lo(D_00141A68)
    /* FFC94 001FED14 FEFF0434 */  ori        $4, $0, 0xFFFE
    /* FFC98 001FED18 C0180300 */  sll        $3, $3, 3
    /* FFC9C 001FED1C 21187100 */  addu       $3, $3, $17
    /* FFCA0 001FED20 00006294 */  lhu        $2, 0x0($3)
    /* FFCA4 001FED24 2B208200 */  sltu       $4, $4, $2
    /* FFCA8 001FED28 05008014 */  bnez       $4, .L001FED40
    /* FFCAC 001FED2C A482848F */   lw        $4, -0x7D5C($28)
    /* FFCB0 001FED30 01004224 */  addiu      $2, $2, 0x1
    /* FFCB4 001FED34 000062A4 */  sh         $2, 0x0($3)
    /* FFCB8 001FED38 1600043C */  lui        $4, %hi(D_0015EFA4)
    /* FFCBC 001FED3C A4EF848C */  lw         $4, %lo(D_0015EFA4)($4)
.align 2
  .L001FED40:
    /* FFCC0 001FED40 30E6070C */  jal        func_001F98C0
    /* FFCC4 001FED44 58021024 */   addiu     $16, $0, 0x258
    /* FFCC8 001FED48 1A005000 */  div        $0, $2, $16
    /* FFCCC 001FED4C 01000052 */  beql       $16, $0, .L001FED54
    /* FFCD0 001FED50 CD010000 */   break     0, 7
.align 2
  .L001FED54:
    /* FFCD4 001FED54 2800638E */  lw         $3, 0x28($19)
    /* FFCD8 001FED58 C0180300 */  sll        $3, $3, 3
    /* FFCDC 001FED5C 21187100 */  addu       $3, $3, $17
    /* FFCE0 001FED60 02006494 */  lhu        $4, 0x2($3)
    /* FFCE4 001FED64 12100000 */  mflo       $2
    /* FFCE8 001FED68 2A208200 */  slt        $4, $4, $2
    /* FFCEC 001FED6C 0D008050 */  beql       $4, $0, .L001FEDA4
    /* FFCF0 001FED70 2800658E */   lw        $5, 0x28($19)
    /* FFCF4 001FED74 30E6070C */  jal        func_001F98C0
    /* FFCF8 001FED78 A482848F */   lw        $4, -0x7D5C($28)
    /* FFCFC 001FED7C 1A005000 */  div        $0, $2, $16
    /* FFD00 001FED80 2800638E */  lw         $3, 0x28($19)
    /* FFD04 001FED84 58020424 */  addiu      $4, $0, 0x258
    /* FFD08 001FED88 C0180300 */  sll        $3, $3, 3
    /* FFD0C 001FED8C 01008050 */  beql       $4, $0, .L001FED94
    /* FFD10 001FED90 CD010000 */   break     0, 7
.align 2
  .L001FED94:
    /* FFD14 001FED94 21187100 */  addu       $3, $3, $17
    /* FFD18 001FED98 12100000 */  mflo       $2
    /* FFD1C 001FED9C 020062A4 */  sh         $2, 0x2($3)
    /* FFD20 001FEDA0 2800658E */  lw         $5, 0x28($19)
.align 2
  .L001FEDA4:
    /* FFD24 001FEDA4 04002226 */  addiu      $2, $17, 0x4
    /* FFD28 001FEDA8 1600033C */  lui        $3, %hi(D_0015EE84)
    /* FFD2C 001FEDAC 84EE638C */  lw         $3, %lo(D_0015EE84)($3)
    /* FFD30 001FEDB0 01000424 */  addiu      $4, $0, 0x1
    /* FFD34 001FEDB4 C0280500 */  sll        $5, $5, 3
    /* FFD38 001FEDB8 0400688E */  lw         $8, 0x4($19)
    /* FFD3C 001FEDBC 2128A200 */  addu       $5, $5, $2
    /* FFD40 001FEDC0 04206400 */  sllv       $4, $4, $3
    /* FFD44 001FEDC4 0000A28C */  lw         $2, 0x0($5)
    /* FFD48 001FEDC8 0080073C */  lui        $7, (0x80000000 >> 16)
    /* FFD4C 001FEDCC 06000624 */  addiu      $6, $0, 0x6
    /* FFD50 001FEDD0 04000324 */  addiu      $3, $0, 0x4
    /* FFD54 001FEDD4 25104400 */  or         $2, $2, $4
    /* FFD58 001FEDD8 D09746AE */  sw         $6, -0x6830($18)
    /* FFD5C 001FEDDC 25104700 */  or         $2, $2, $7
    /* FFD60 001FEDE0 23186800 */  subu       $3, $3, $8
    /* FFD64 001FEDE4 0000A2AC */  sw         $2, 0x0($5)
    /* FFD68 001FEDE8 AF000010 */  b          .L001FF0A8
    /* FFD6C 001FEDEC 040063AE */   sw        $3, 0x4($19)
.align 2
  .L001FEDF0:
    /* FFD70 001FEDF0 D0974326 */  addiu      $3, $18, -0x6830
    /* FFD74 001FEDF4 0400628C */  lw         $2, 0x4($3)
    /* FFD78 001FEDF8 04004228 */  slti       $2, $2, 0x4
    /* FFD7C 001FEDFC AB004014 */  bnez       $2, .L001FF0AC
    /* FFD80 001FEE00 4000BF7B */   lq        $31, 0x40($29)
    /* FFD84 001FEE04 2000628C */  lw         $2, 0x20($3)
    /* FFD88 001FEE08 FFFF0424 */  addiu      $4, $0, -0x1
    /* FFD8C 001FEE0C 1600033C */  lui        $3, %hi(D_0015F780)
    /* FFD90 001FEE10 80F7638C */  lw         $3, %lo(D_0015F780)($3)
    /* FFD94 001FEE14 00110200 */  sll        $2, $2, 4
    /* FFD98 001FEE18 21104300 */  addu       $2, $2, $3
    /* FFD9C 001FEE1C 0800458C */  lw         $5, 0x8($2)
    /* FFDA0 001FEE20 0C00A410 */  beq        $5, $4, .L001FEE54
    /* FFDA4 001FEE24 1500033C */   lui       $3, %hi(D_001517D0)
    /* FFDA8 001FEE28 D0176324 */  addiu      $3, $3, %lo(D_001517D0)
    /* FFDAC 001FEE2C 54006284 */  lh         $2, 0x54($3)
    /* FFDB0 001FEE30 D08A4224 */  addiu      $2, $2, -0x7530
    /* FFDB4 001FEE34 7000A214 */  bne        $5, $2, .L001FEFF8
    /* FFDB8 001FEE38 05000224 */   addiu     $2, $0, 0x5
    /* FFDBC 001FEE3C 5A006384 */  lh         $3, 0x5A($3)
    /* FFDC0 001FEE40 03000224 */  addiu      $2, $0, 0x3
    /* FFDC4 001FEE44 6C006214 */  bne        $3, $2, .L001FEFF8
    /* FFDC8 001FEE48 05000224 */   addiu     $2, $0, 0x5
    /* FFDCC 001FEE4C 585A080C */  jal        func_00216960
    /* FFDD0 001FEE50 00000000 */   nop
.align 2
  .L001FEE54:
    /* FFDD4 001FEE54 68000010 */  b          .L001FEFF8
    /* FFDD8 001FEE58 05000224 */   addiu     $2, $0, 0x5
    /* FFDDC 001FEE5C 05000424 */  addiu      $4, $0, 0x5
    /* FFDE0 001FEE60 0A58080C */  jal        func_00216028
    /* FFDE4 001FEE64 2D280000 */   daddu     $5, $0, $0
    /* FFDE8 001FEE68 D0975026 */  addiu      $16, $18, -0x6830
    /* FFDEC 001FEE6C 30E6070C */  jal        func_001F98C0
    /* FFDF0 001FEE70 A4010424 */   addiu     $4, $0, 0x1A4
    /* FFDF4 001FEE74 0400038E */  lw         $3, 0x4($16)
    /* FFDF8 001FEE78 2A186200 */  slt        $3, $3, $2
    /* FFDFC 001FEE7C 15006014 */  bnez       $3, .L001FEED4
    /* FFE00 001FEE80 1400033C */   lui       $3, %hi(D_0013CBE4)
    /* FFE04 001FEE84 2000028E */  lw         $2, 0x20($16)
    /* FFE08 001FEE88 FFFF0524 */  addiu      $5, $0, -0x1
    /* FFE0C 001FEE8C 1600033C */  lui        $3, %hi(D_0015F780)
    /* FFE10 001FEE90 80F7638C */  lw         $3, %lo(D_0015F780)($3)
    /* FFE14 001FEE94 00110200 */  sll        $2, $2, 4
    /* FFE18 001FEE98 21104300 */  addu       $2, $2, $3
    /* FFE1C 001FEE9C 0800448C */  lw         $4, 0x8($2)
    /* FFE20 001FEEA0 10008510 */  beq        $4, $5, .L001FEEE4
    /* FFE24 001FEEA4 1500033C */   lui       $3, %hi(D_001517D0)
    /* FFE28 001FEEA8 D0176324 */  addiu      $3, $3, %lo(D_001517D0)
    /* FFE2C 001FEEAC 54006284 */  lh         $2, 0x54($3)
    /* FFE30 001FEEB0 D08A4224 */  addiu      $2, $2, -0x7530
    /* FFE34 001FEEB4 0C008214 */  bne        $4, $2, .L001FEEE8
    /* FFE38 001FEEB8 D0975326 */   addiu     $19, $18, -0x6830
    /* FFE3C 001FEEBC 5000628C */  lw         $2, 0x50($3)
    /* FFE40 001FEEC0 04004054 */  bnel       $2, $0, .L001FEED4
    /* FFE44 001FEEC4 1400033C */   lui       $3, %hi(D_0013CBE4)
    /* FFE48 001FEEC8 1C00628C */  lw         $2, 0x1C($3)
    /* FFE4C 001FEECC 06004510 */  beq        $2, $5, .L001FEEE8
    /* FFE50 001FEED0 1400033C */   lui       $3, %hi(D_0013CBE4)
.align 2
  .L001FEED4:
    /* FFE54 001FEED4 E4CB628C */  lw         $2, %lo(D_0013CBE4)($3)
    /* FFE58 001FEED8 10004230 */  andi       $2, $2, 0x10
    /* FFE5C 001FEEDC 73004010 */  beqz       $2, .L001FF0AC
    /* FFE60 001FEEE0 4000BF7B */   lq        $31, 0x40($29)
.align 2
  .L001FEEE4:
    /* FFE64 001FEEE4 D0975326 */  addiu      $19, $18, -0x6830
.align 2
  .L001FEEE8:
    /* FFE68 001FEEE8 1400023C */  lui        $2, %hi(D_00141A68)
    /* FFE6C 001FEEEC 2800638E */  lw         $3, 0x28($19)
    /* FFE70 001FEEF0 681A5124 */  addiu      $17, $2, %lo(D_00141A68)
    /* FFE74 001FEEF4 FEFF0434 */  ori        $4, $0, 0xFFFE
    /* FFE78 001FEEF8 C0180300 */  sll        $3, $3, 3
    /* FFE7C 001FEEFC 21187100 */  addu       $3, $3, $17
    /* FFE80 001FEF00 00006294 */  lhu        $2, 0x0($3)
    /* FFE84 001FEF04 2B208200 */  sltu       $4, $4, $2
    /* FFE88 001FEF08 05008014 */  bnez       $4, .L001FEF20
    /* FFE8C 001FEF0C A482848F */   lw        $4, -0x7D5C($28)
    /* FFE90 001FEF10 01004224 */  addiu      $2, $2, 0x1
    /* FFE94 001FEF14 000062A4 */  sh         $2, 0x0($3)
    /* FFE98 001FEF18 1600043C */  lui        $4, %hi(D_0015EFA4)
    /* FFE9C 001FEF1C A4EF848C */  lw         $4, %lo(D_0015EFA4)($4)
.align 2
  .L001FEF20:
    /* FFEA0 001FEF20 30E6070C */  jal        func_001F98C0
    /* FFEA4 001FEF24 58021024 */   addiu     $16, $0, 0x258
    /* FFEA8 001FEF28 1A005000 */  div        $0, $2, $16
    /* FFEAC 001FEF2C 01000052 */  beql       $16, $0, .L001FEF34
    /* FFEB0 001FEF30 CD010000 */   break     0, 7
.align 2
  .L001FEF34:
    /* FFEB4 001FEF34 2800638E */  lw         $3, 0x28($19)
    /* FFEB8 001FEF38 C0180300 */  sll        $3, $3, 3
    /* FFEBC 001FEF3C 21187100 */  addu       $3, $3, $17
    /* FFEC0 001FEF40 02006494 */  lhu        $4, 0x2($3)
    /* FFEC4 001FEF44 12100000 */  mflo       $2
    /* FFEC8 001FEF48 2A208200 */  slt        $4, $4, $2
    /* FFECC 001FEF4C 0D008050 */  beql       $4, $0, .L001FEF84
    /* FFED0 001FEF50 2800648E */   lw        $4, 0x28($19)
    /* FFED4 001FEF54 30E6070C */  jal        func_001F98C0
    /* FFED8 001FEF58 A482848F */   lw        $4, -0x7D5C($28)
    /* FFEDC 001FEF5C 1A005000 */  div        $0, $2, $16
    /* FFEE0 001FEF60 2800638E */  lw         $3, 0x28($19)
    /* FFEE4 001FEF64 58020424 */  addiu      $4, $0, 0x258
    /* FFEE8 001FEF68 C0180300 */  sll        $3, $3, 3
    /* FFEEC 001FEF6C 01008050 */  beql       $4, $0, .L001FEF74
    /* FFEF0 001FEF70 CD010000 */   break     0, 7
.align 2
  .L001FEF74:
    /* FFEF4 001FEF74 21187100 */  addu       $3, $3, $17
    /* FFEF8 001FEF78 12100000 */  mflo       $2
    /* FFEFC 001FEF7C 020062A4 */  sh         $2, 0x2($3)
    /* FFF00 001FEF80 2800648E */  lw         $4, 0x28($19)
.align 2
  .L001FEF84:
    /* FFF04 001FEF84 04002226 */  addiu      $2, $17, 0x4
    /* FFF08 001FEF88 1600033C */  lui        $3, %hi(D_0015EE84)
    /* FFF0C 001FEF8C 84EE638C */  lw         $3, %lo(D_0015EE84)($3)
    /* FFF10 001FEF90 01000524 */  addiu      $5, $0, 0x1
    /* FFF14 001FEF94 C0200400 */  sll        $4, $4, 3
    /* FFF18 001FEF98 0080063C */  lui        $6, (0x80000000 >> 16)
    /* FFF1C 001FEF9C 21208200 */  addu       $4, $4, $2
    /* FFF20 001FEFA0 04286500 */  sllv       $5, $5, $3
    /* FFF24 001FEFA4 0000828C */  lw         $2, 0x0($4)
    /* FFF28 001FEFA8 06000324 */  addiu      $3, $0, 0x6
.align 2
  .L001FEFAC:
    /* FFF2C 001FEFAC D09743AE */  sw         $3, -0x6830($18)
    /* FFF30 001FEFB0 25104500 */  or         $2, $2, $5
    /* FFF34 001FEFB4 040060AE */  sw         $0, 0x4($19)
    /* FFF38 001FEFB8 25104600 */  or         $2, $2, $6
    /* FFF3C 001FEFBC 3A000010 */  b          .L001FF0A8
    /* FFF40 001FEFC0 000082AC */   sw        $2, 0x0($4)
    /* FFF44 001FEFC4 1600023C */  lui        $2, %hi(D_0015EF1D)
    /* FFF48 001FEFC8 1DEF4290 */  lbu        $2, %lo(D_0015EF1D)($2)
    /* FFF4C 001FEFCC 09004010 */  beqz       $2, .L001FEFF4
    /* FFF50 001FEFD0 D0974326 */   addiu     $3, $18, -0x6830
    /* FFF54 001FEFD4 0400628C */  lw         $2, 0x4($3)
    /* FFF58 001FEFD8 04004228 */  slti       $2, $2, 0x4
    /* FFF5C 001FEFDC 05004010 */  beqz       $2, .L001FEFF4
    /* FFF60 001FEFE0 1400033C */   lui       $3, %hi(D_0013CBE4)
    /* FFF64 001FEFE4 E4CB628C */  lw         $2, %lo(D_0013CBE4)($3)
    /* FFF68 001FEFE8 10004230 */  andi       $2, $2, 0x10
    /* FFF6C 001FEFEC 2F004010 */  beqz       $2, .L001FF0AC
    /* FFF70 001FEFF0 4000BF7B */   lq        $31, 0x40($29)
.align 2
  .L001FEFF4:
    /* FFF74 001FEFF4 07000224 */  addiu      $2, $0, 0x7
.align 2
  .L001FEFF8:
    /* FFF78 001FEFF8 D0974326 */  addiu      $3, $18, -0x6830
    /* FFF7C 001FEFFC D09742AE */  sw         $2, -0x6830($18)
    /* FFF80 001FF000 29000010 */  b          .L001FF0A8
    /* FFF84 001FF004 040060AC */   sw        $0, 0x4($3)
    /* FFF88 001FF008 05000424 */  addiu      $4, $0, 0x5
    /* FFF8C 001FF00C 0A58080C */  jal        func_00216028
    /* FFF90 001FF010 2D280000 */   daddu     $5, $0, $0
    /* FFF94 001FF014 D0974326 */  addiu      $3, $18, -0x6830
    /* FFF98 001FF018 1600043C */  lui        $4, %hi(D_0015F780)
    /* FFF9C 001FF01C 80F7848C */  lw         $4, %lo(D_0015F780)($4)
    /* FFFA0 001FF020 2000628C */  lw         $2, 0x20($3)
    /* FFFA4 001FF024 FFFF0524 */  addiu      $5, $0, -0x1
    /* FFFA8 001FF028 00110200 */  sll        $2, $2, 4
    /* FFFAC 001FF02C 21104400 */  addu       $2, $2, $4
    /* FFFB0 001FF030 0800448C */  lw         $4, 0x8($2)
    /* FFFB4 001FF034 0D008510 */  beq        $4, $5, .L001FF06C
    /* FFFB8 001FF038 1500033C */   lui       $3, %hi(D_001517D0)
    /* FFFBC 001FF03C D0176324 */  addiu      $3, $3, %lo(D_001517D0)
    /* FFFC0 001FF040 54006284 */  lh         $2, 0x54($3)
    /* FFFC4 001FF044 D08A4224 */  addiu      $2, $2, -0x7530
    /* FFFC8 001FF048 09008254 */  bnel       $4, $2, .L001FF070
    /* FFFCC 001FF04C D0974326 */   addiu     $3, $18, -0x6830
    /* FFFD0 001FF050 5A006294 */  lhu        $2, 0x5A($3)
    /* FFFD4 001FF054 FAFF4224 */  addiu      $2, $2, -0x6
    /* FFFD8 001FF058 0200422C */  sltiu      $2, $2, 0x2
    /* FFFDC 001FF05C 04004054 */  bnel       $2, $0, .L001FF070
    /* FFFE0 001FF060 D0974326 */   addiu     $3, $18, -0x6830
    /* FFFE4 001FF064 05000224 */  addiu      $2, $0, 0x5
    /* FFFE8 001FF068 5A0062A4 */  sh         $2, 0x5A($3)
.align 2
  .L001FF06C:
    /* FFFEC 001FF06C D0974326 */  addiu      $3, $18, -0x6830
.align 2
  .L001FF070:
    /* FFFF0 001FF070 0400628C */  lw         $2, 0x4($3)
    /* FFFF4 001FF074 08004228 */  slti       $2, $2, 0x8
    /* FFFF8 001FF078 0C004014 */  bnez       $2, .L001FF0AC
    /* FFFFC 001FF07C 4000BF7B */   lq        $31, 0x40($29)
    /* 100000 001FF080 38006284 */  lh         $2, 0x38($3)
    /* 100004 001FF084 03004010 */  beqz       $2, .L001FF094
    /* 100008 001FF088 08000224 */   addiu     $2, $0, 0x8
    /* 10000C 001FF08C 04000010 */  b          .L001FF0A0
    /* 100010 001FF090 D09742AE */   sw        $2, -0x6830($18)
.align 2
  .L001FF094:
    /* 100014 001FF094 FFFF0224 */  addiu      $2, $0, -0x1
    /* 100018 001FF098 D09740AE */  sw         $0, -0x6830($18)
    /* 10001C 001FF09C 200062AC */  sw         $2, 0x20($3)
.align 2
  .L001FF0A0:
    /* 100020 001FF0A0 D0974226 */  addiu      $2, $18, -0x6830
    /* 100024 001FF0A4 040040AC */  sw         $0, 0x4($2)
.align 2
  .L001FF0A8:
    /* 100028 001FF0A8 4000BF7B */  lq         $31, 0x40($29)
.align 2
  .L001FF0AC:
    /* 10002C 001FF0AC 3000B37B */  lq         $19, 0x30($29)
.align 2
  .L001FF0B0:
    /* 100030 001FF0B0 2000B27B */  lq         $18, 0x20($29)
    /* 100034 001FF0B4 1000B17B */  lq         $17, 0x10($29)
    /* 100038 001FF0B8 0000B07B */  lq         $16, 0x0($29)
    /* 10003C 001FF0BC 0800E003 */  jr         $31
    /* 100040 001FF0C0 5000BD27 */   addiu     $29, $29, 0x50
endlabel func_001FE6C0
    /* 100044 001FF0C4 00000000 */  nop
