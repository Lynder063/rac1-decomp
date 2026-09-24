#include "common.h"
#include "structs.h"

/*
 * movie/videodec.cpp in the original source; text 0x23DE98-0x23E560.
 * Name and boundary from the NTSC split in bordplate's RC1 project
 * (codeberg.org/bordplate/RC1), mapped to PAL by matching function
 * sizes -- see docs/DECOMP_PROGRESS.md. Compiled as C for now.
 */

/* Declarations in scope here before the split. */
extern char D_0013E650[];
extern int D_0015F694;
extern void func_001F9A98(void *, void *, int);
extern char D_00189310[];
extern char D_001899D0[];
extern void *D_001871C0 NOT_SDA;
typedef struct {
    char unk_00[8];
    void (*fn_08)(void *);
    char unk_0C[4];
    void (*fn_10)(void *);
} DispatchRec;
extern DispatchRec D_001E8F80[];
extern int D_0018A3B0[];
extern void func_001F99B0();
extern void func_001F2BC8(void);
extern int D_0018C434 NOT_SDA;
extern char D_001940C0[];
extern long D_00151888[3];
extern int D_0015F6FC;
extern short D_0015F534;
extern void func_001FB530(void);
extern void func_001F3D78(void);
extern int D_0015F564;
extern int D_0018DD40[];
extern int D_0018DC40[];
extern short D_0015F59C;
extern int func_001F65B0(unsigned char *arg0, int arg1, void *arg2);
extern unsigned char D_001DF3D0[];
extern unsigned char D_001DF770[];
extern unsigned char D_001DFB10[];
extern void func_001F6668(void *, void *, void *, void *, void *, int,
                          unsigned char *);
extern int func_001F6600(unsigned char *, int);
extern int func_001F6620(unsigned char *, int);
extern int func_001F4868(int);
extern void func_001F7070(void *, void *, void *, void *, int, unsigned char *);
extern void func_001FB498(void);
extern void func_001F3008(void);
extern void func_001F3140(void);
extern int D_0018E840[];
extern long D_00152178 NOT_SDA;
extern int func_001FE4D0(void);
extern char D_00199A68[];
extern short D_0015F780;
extern int D_001941CC NOT_SDA;
extern int D_0019A4E8 NOT_SDA;
extern int func_001FF668(int);
typedef struct {
    char b[0x13];
} Cfg13;
extern Cfg13 D_0019A540 NOT_SDA;
extern Cfg13 D_001E7DD8 NOT_SDA;
extern int func_00116810(void);
extern void func_001166FC(Cfg13 *, void *);
extern short D_0015F9D0;
extern void func_00201960(int, int, int, int, int);
extern void func_002023E0(int);
extern void func_002027C0(int);
extern void func_00204FC0(void *);
extern int D_0018CC20 NOT_SDA;
extern int D_001941C8 NOT_SDA;
extern int D_0016100C;
extern int D_001A0468[];
extern void func_00205830(int a, int b);
typedef struct {
    int _pad0[0x9E];
    int use[5];   /* +0x278 */
    int flags[5]; /* +0x28C */
    int sel;      /* +0x2A0 -- index of the active slot, -1 for none */
    int size[5];  /* +0x2A4 */
} PadSlots;
extern PadSlots D_001A01F0_slots __asm__("D_001A01F0");
extern int D_001A01F0[];
extern int *D_001602E0;
extern unsigned char D_0013D49C NOT_SDA;
extern unsigned char D_0013D49D NOT_SDA;
extern unsigned char D_0013D4A5 NOT_SDA;
extern short D_0015FE24;
extern unsigned char D_0013D4AC NOT_SDA;
extern unsigned char D_0013D4AD NOT_SDA;
extern unsigned char D_0013D4AE NOT_SDA;
extern unsigned char D_0013D4AF NOT_SDA;
extern unsigned char D_0013D4B5 NOT_SDA;
extern int D_001A04B4 NOT_SDA;
extern unsigned char D_0013D4C5 NOT_SDA;
extern int D_001414DC NOT_SDA;
extern unsigned char D_0013D4C0 NOT_SDA;
extern unsigned char D_0013D4C1 NOT_SDA;
extern unsigned char D_0013D4C2 NOT_SDA;
extern unsigned char D_0013D4D3 NOT_SDA;
extern unsigned char D_0013D4D4 NOT_SDA;
extern unsigned char D_0013D4D5 NOT_SDA;
extern unsigned char D_0013D4E0;
extern unsigned char D_0013D4DC NOT_SDA;
extern unsigned char D_0013D4DD NOT_SDA;
extern unsigned char D_0013D4DE NOT_SDA;
extern unsigned char D_0013D4DF NOT_SDA;
extern unsigned char D_0013D4E1 NOT_SDA;
extern unsigned char D_0013D4E9 NOT_SDA;
extern unsigned char D_0013D502 NOT_SDA;
extern unsigned char D_0013D503 NOT_SDA;
extern unsigned char D_0013D504 NOT_SDA;
extern unsigned char D_0013D505 NOT_SDA;
extern unsigned char D_0013D50F NOT_SDA;
extern int D_0013D668[];
extern void func_00209040(void);
extern int func_001FAA28(void *dst, int size, int a, int b);
extern void func_00208860(void *dst);
extern short D_0015EE84;
extern int D_0015EE84_far __asm__("D_0015EE84") NOT_SDA;
extern int D_001A0218[] NOT_SDA;
extern void func_00208458(void *, unsigned char *, int);
extern void func_00208688(void *, unsigned char *);
extern char D_0013D390[];
extern short D_0015EFB0;
extern int D_0015EFB4;
extern int D_001A05C0[];
extern int D_001A08C0[];
extern int func_0020BAD8(int *p);
extern int func_0020BBC8(void *dst, int i, int *table);
extern int func_001236F0(void);
extern int func_001E9730();
extern char D_001E8690[];
extern int D_0013D844 NOT_SDA;
extern unsigned char D_0013D4A8 NOT_SDA;
extern int D_0013D9B4 NOT_SDA;
extern unsigned char D_0013D490[];
extern unsigned char D_0013D5CA NOT_SDA;
extern int D_0013D6B8 NOT_SDA;
extern int D_0013DAE4 NOT_SDA;
extern unsigned char D_0013D4E5 NOT_SDA;
extern int D_0013DB24 NOT_SDA;
extern unsigned char D_0013D4F1 NOT_SDA;
extern int D_0013DC34 NOT_SDA;
extern unsigned char D_0013D605 NOT_SDA;
extern int D_0013D5C8 NOT_SDA;
extern unsigned char D_0013D4B0 NOT_SDA;
extern unsigned char D_0013DE55 NOT_SDA;
extern unsigned char D_0013D5DD NOT_SDA;
extern unsigned char D_0013D5E7 NOT_SDA;
extern int D_001B2F40[];
extern void func_001FA460_2(void *, void *) __asm__("func_001FA460");
extern void func_001F9C30(void *, void *, float);
extern void func_001F9BD8(void *, void *, void *);
extern void func_002116A0(void *, int, int *, void *);
extern void func_001FA540(void *, void *, void *);
extern void func_00211548(void *, int, void *, void *);
extern void func_001F9EC0(void *, void *, void *);
extern int D_001414D0 NOT_SDA;
extern float D_001CAE00[] NOT_SDA;
extern void func_0020E360(void *, void *);
extern float func_001FA058(float, float);
extern float func_001F9F90(float);
extern float func_001F9FA8(float);
extern void func_00118D80(int);
extern void func_00212578(int, int);
extern char D_00165600[];
extern int D_0015F718;
extern short D_0015F71C;
extern char D_001B3200[];
extern int func_001160D8(void);
extern float func_00214158(void);
extern float func_002140F8(float, float);
extern void func_00215C00(void *, float, float, float);
extern void func_001F9DC0(void *, void *, float);
extern void func_001FA460(void *);
extern void func_002150B0(void *, void *);
extern void func_001FA480(void *, void *);
extern float func_0020D830(void);
extern float func_00215A98(int, float);
extern unsigned char D_0014BFC0[];
extern unsigned char D_0013E620[];
extern unsigned char D_0013D510[];
extern void func_0012F068(void *);
extern void func_002177F0(int);
extern short D_001517D0[];
extern void func_0012EDE0(void *);
extern void func_0012EFE8(void);
extern char D_001E8980[];
extern int func_0012EE98(int, int, int, void *);
extern void func_001F9978(void);
extern int func_00217628_v(void) __asm__("func_00217628");
extern void func_00122598(int);
extern void func_00217130(void);
extern void func_0012EC40(void);
extern void func_0012DDC0(void);
extern void func_0012EC30(void);
extern int func_0012F030(void);
extern void func_002167C0(short, short, short);
extern void func_002169B8(short, short, short);
extern short D_001517F0 NOT_SDA;
extern char D_0013CA40[];
extern int D_001CDAE0 NOT_SDA;
extern void func_00124650(void);
extern void func_00124B88(int);
extern int func_00124BC8(void *, void *);
extern void func_00217F68(void *);
extern int D_0015EF90;
extern char D_001D4B90[];
extern char D_001D4BC0[];
extern char D_001D5F70[] NOT_SDA;
extern char D_001D603B[];
extern int D_001A0414;
extern int D_001CFBF4;
extern int D_001CFAD8;
extern void func_0020C7A0(void *);
extern int func_0020CA50(void *, void *, void *, int);
extern int D_00141FA0[];
extern char D_001D0A50[];
extern char D_001D0A88[];
extern int D_001A0418 NOT_SDA;
extern void func_00226D50(int);
extern float func_001FA748(float, float);
extern char *D_001D5F74 NOT_SDA;
extern void func_0020E180(int, int);
extern char D_00187040[];
extern void func_00220128(void *);
extern void *func_00226720_a(int) __asm__("func_00226720");
extern int func_002267C0(int);
extern void func_00234C98(int, int);
extern void func_00205E70(void);
extern void func_001F4630(int);
extern void func_001F4748(void);
extern void func_001F68E8_c(int, int, long, void *, int)
    __asm__("func_001F68E8");
extern void *func_001FE540_id(int) __asm__("func_001FE540");
extern short D_001602B0;
extern void func_00201640(int, int, int, int, long, long);
extern int func_00200198(int, int);
extern void func_00200468(int, int, int, int, int, int);
extern void func_001F5800(int, int, int, int, int, int, int, int, long,
                          long);
extern short D_00151880[];
extern long D_001A0448;
extern int func_00226EA8(int);
extern int func_00226F68(int);
extern int D_0013CC04 NOT_SDA;
extern char D_001D2678[];
extern char *D_001D5F78 NOT_SDA;
extern void func_001FDF78(int, int, int, int);
extern unsigned char D_001B3E40[] NOT_SDA;
extern void *func_0020D348(void);
extern void func_0020ED48(void *);
extern void func_0020E340(void *, int, int, int, int);
typedef struct {
    int key;
    int flags;
} PadBind;
extern PadBind D_001D6448_t[] __asm__("D_001D6448");
extern int func_00227018(int handle);
extern int D_001D6448[];
extern char D_001D5D58[] NOT_SDA;
extern char *D_001B3580[] NOT_SDA;
extern int D_001D6860[];
extern int D_001D74C0[];
extern int D_001D6760[];
extern char D_00187180_a[] __asm__("D_00187180");
extern char D_00194220[];
extern int D_0013E6BC;
extern void func_002141A8(void *, float, float);
extern void func_001F9BD8_a(void *, void *, void *) __asm__("func_001F9BD8");
extern void func_001F9C30_a(void *, void *, float) __asm__("func_001F9C30");
extern void func_001F9BF0_a(void *, void *, void *) __asm__("func_001F9BF0");
extern int func_001EFE10_a(void *, void *, int, int, int) __asm__("func_001EFE10");
extern char D_00187180[];
extern void func_001F9BF0(void *, void *, void *);
extern void func_001F9E58(void *, void *, float);
extern void func_001EFE10(void *, void *, int, int, int);
extern float func_001F9D10(int, void *);
extern void func_0022DA10(void *, float, float, float);
extern void func_001F9EE8(void *, void *, void *);
extern float func_001F9CE8(void *);
extern float func_001F9BB0(float, float, float);
extern float func_001FA058_a(float, float) __asm__("func_001FA058");
extern void func_001FA898(float);
extern void func_00120F30(int);
extern int func_0012E060(void *, int);
extern void func_0012EE70(int);
extern void func_0012EF48(int);
extern void func_0012E2E8(void);
extern void func_0011AE20(int arg0);
typedef struct {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
} Rec10;
extern Rec10 D_001DD568[];
typedef struct {
    short a;
    short b;
} TexRemap;
typedef struct {
    char *items;
    int count;
} TexChunk;
extern TexChunk D_001E1200[];
extern TexRemap D_001E0F00[];
extern short D_00160FE0;
extern char D_001E8D10[];
extern void func_001F9988(int);
extern void func_001F2568(void);
extern void func_00236A98(void);
extern char D_001E3300[];
extern char D_001E4500[];
extern char D_001E2D00[];
extern char D_001E4100[];
extern void func_00238688(void *);
extern char D_001E3500[];
extern char D_001E4700[];
extern char D_001E66C0[];
extern char D_001E8DA0[];
extern char D_00161178[];
extern char D_00161180[];
extern void func_00116248();
typedef struct {
    char b[0x10];
} Cfg16;
extern Cfg16 D_00160FD0 NOT_SDA;
extern float func_001F9CB8(void *);
extern void func_001F9BF0_b(void *, void *, void *) __asm__("func_001F9BF0");
extern int func_00118BC0(int);
extern char D_001612F8[];
extern void func_0012F220(void);
extern void func_0012F248(int, int, int, int, int);
extern void func_0012F1E8(void *);
extern void func_0023C390(void *);
extern void func_00121750(int, int, int, void *);
extern void func_0011D960(void);
extern void func_0011D9A8(void);
extern int func_00118C70(void *);
extern void func_0023D090(char *);
extern void func_0023CF80(int);
extern void func_00118C80(int);
extern void func_00118CB0(int);
extern void func_00118C90(int);

#include "ezmpeg.h"

/* The sample's globals (videoDec, audioDec, ...) live in one heap block
   here, reached through this pointer. */
typedef struct {
    char _pad0[0xD9048];
    VideoDec videoDec; /* 0xD9048 */
} MovieGlobals;
extern MovieGlobals *D_0016130C MACRO_ADDR;
#define videoDec (D_0016130C->videoDec)

extern int func_0012B918(sceMpeg *, unsigned char *, int); /* sceMpegCreate */
extern int func_0012BC50(sceMpeg *, int, sceMpegCallback, void *); /* sceMpegAddCallback */
void func_0023E000(VideoDec *vd);
int func_0023E450(sceMpeg *mp, sceMpegCbDataError *cberror, void *anyData);
int func_0023E478(sceMpeg *mp, sceMpegCbData *cbdata, void *anyData);
int func_0023E4B0(sceMpeg *mp, sceMpegCbData *cbdata, void *anyData);
int func_0023E4E0(sceMpeg *mp, sceMpegCbData *cbdata, void *anyData);
int func_0023E510(sceMpeg *mp, sceMpegCbDataTimeStamp *cbts, void *anyData);
extern int func_0023D018(ViBuf *, long long *, long long *, int, TimeStamp *, int); /* viBufCreate */

/* videoDecCreate(VideoDec *, unsigned char *, int, unsigned long long *, unsigned long long *, int, TimeStamp *, int) */
int func_0023DE98(VideoDec *vd, unsigned char *mpegWork, int mpegWorkSize,
                  long long *data, long long *tag, int tagSize,
                  TimeStamp *pts, int n_pts) {
    func_0012B918(&vd->mpeg, mpegWork, mpegWorkSize);

    func_0012BC50(&vd->mpeg, 0, (sceMpegCallback)func_0023E450, 0);
    func_0012BC50(&vd->mpeg, 1, func_0023E478, 0);
    func_0012BC50(&vd->mpeg, 2, func_0023E4B0, 0);
    func_0012BC50(&vd->mpeg, 3, func_0023E4E0, 0);
    func_0012BC50(&vd->mpeg, 5, (sceMpegCallback)func_0023E510, 0);

    func_0023E000(vd);

    func_0023D018(&vd->vibuf, data, tag, tagSize, pts, n_pts);

    return 1;
}

INCLUDE_ASM("asm/nonmatchings/text", func_0023DF98);

extern void func_0012B008(void);

/* videoDecSetStream(VideoDec *, int, int, int (*)(sceMpeg *, sceMpegCbData *, void *), void *) */
int func_0023DFA0(void) {
    func_0012B008();
    return 1;
}

extern void func_0023D1F0(ViBuf *, unsigned char **, int *, unsigned char **,
                          int *); /* viBufBeginPut */

/* videoDecBeginPut(VideoDec *, unsigned char **, int *, unsigned char **, int *) */
void func_0023DFC0(VideoDec *vd, unsigned char **ptr0, int *len0,
                   unsigned char **ptr1, int *len1) {
    func_0023D1F0(&vd->vibuf, ptr0, len0, ptr1, len1);
}

extern void func_0023D2E8(ViBuf *, int); /* viBufEndPut */

/* videoDecEndPut(VideoDec *, int) */
void func_0023DFE0(VideoDec *vd, int size) {
    func_0023D2E8(&vd->vibuf, size);
}

/* videoDecReset(VideoDec *) */
void func_0023E000(VideoDec *vd) {
    vd->state = VD_STATE_NORMAL;
}

extern int func_0023D988(void *);
extern void func_0012BB20(void *);

/* videoDecDelete(VideoDec *) */
int func_0023E008(void *arg0) {
    func_0023D988((char *)arg0 + 0x48);
    func_0012BB20(arg0);
    return 1;
}

/*
 * Close but not exact: `arg0[42] = 1; return 1;`. Retail materializes
 * the constant 1 once (`li $v0,1`) and reuses it for both the store and
 * the return value; this compiler materializes it twice into separate
 * registers ($v1 for the store, $v0 for the return) regardless of
 * whether the source uses a shared local, an assignment-expression
 * (`return arg0[42] = 1;`), or a bare duplicate literal -- all three
 * tried, none changed it. New instance of the scratch-register-
 * allocation-choice open question, this time as "fails to CSE an
 * identical constant" rather than picking a different register for two
 * genuinely different values. See docs/DECOMP_PROGRESS.md.
 */
/* videoDecAbort(VideoDec *). The earlier `int` attempt could not share
   the constant with the return value; the sample's `void` is exact. */
void func_0023E040(VideoDec *vd) {
    vd->state = VD_STATE_ABORT;
}

/* videoDecGetState */
int func_0023E050(int *arg0) {
    return *(arg0 + (0xA8 / 4));
}

/* videoDecSetState(VideoDec *, unsigned int) */
int func_0023E058(int *arg0, int arg1) {
    int old = *(arg0 + (0xA8 / 4));
    *(arg0 + (0xA8 / 4)) = arg1;
    return old;
}

extern int func_0023DBE0(ViBuf *, TimeStamp *); /* viBufPutTs */

/* videoDecPutTs(VideoDec *, long, long, unsigned char *, int) */
int func_0023E068(VideoDec *vd, long pts_val, long dts_val,
                  unsigned char *start, int len) {
    TimeStamp ts;

    ts.pts = pts_val;
    ts.dts = dts_val;
    ts.pos = start - (unsigned char *)vd->vibuf.data;
    ts.len = len;
    return func_0023DBE0(&videoDec.vibuf, &ts);
}

extern int func_0023D9E0(void *);

/* videoDecInputCount(VideoDec *) */
int func_0023E0B0(void *arg0) {
    return func_0023D9E0((char *)arg0 + 0x48);
}

INCLUDE_ASM("asm/nonmatchings/text", func_0023E0D0);

extern int func_0023CBE0(unsigned char *, int, unsigned char *, int,
                         unsigned char *, int, unsigned char *, int); /* cpy2area */
extern void func_0023DA30(ViBuf *); /* viBufFlush */
/* Retail keeps the sample's `u_char seq_end_code[4] = {0x00, 0x00, 0x01,
   0xb7}` initializer in .lit at D_00161320. Our build takes .lit from
   retail as data, so the initializer is copied from there explicitly;
   the 4-byte struct copy compiles to the same lwl/lwr pair. */
typedef struct {
    unsigned char c[4];
} SeqEndCode;
extern SeqEndCode D_00161320;

/* videoDecFlush(VideoDec *) */
int func_0023E0D8(VideoDec *vd) {
    unsigned char *pd0;
    unsigned char *pd1;
    unsigned char *pd0Unc;
    unsigned char *pd1Unc;
    SeqEndCode seq_end_code = D_00161320;
    int d0, d1;
    int len;

    func_0023DFC0(vd, &pd0, &d0, &pd1, &d1);

    if (d0 + d1 < 4) {
        return 0;
    }

    pd0Unc = (unsigned char *)UncAddr(pd0);
    pd1Unc = (unsigned char *)UncAddr(pd1);

    len = func_0023CBE0(pd0Unc, d0, pd1Unc, d1, seq_end_code.c, 4, 0, 0);

    func_0023DFE0(&videoDec, len);

    func_0023DA30(&vd->vibuf);

    if (vd->state == VD_STATE_NORMAL) {
        vd->state = VD_STATE_FLUSH;
    }

    return 1;
}

extern int func_0023E0B0(void *);
extern int func_0012BB98(void *);

/* videoDecIsFlushed(VideoDec *) */
int func_0023E1B0(void *arg0) {
    int r = 0;
    if (func_0023E0B0(arg0) == 0) {
        r = func_0012BB98(arg0) != 0;
    }
    return r;
}

/* vobuf.h */
typedef struct {
    void *data;
    void *tag;
    volatile int write;
    volatile int count;
    int size;
} VoBuf;
#define voBuf (*(VoBuf *)((char *)D_0016130C + 0xD9168))
extern void func_0023E5B8(VoBuf *);    /* voBufReset */
extern void func_0023E298(VideoDec *); /* decBs0 */

/* videoDecMain(VideoDec *) */
/* videoDecMain(void *) */
void func_0023E1F8(VideoDec *vd) {
    func_0023D090((char *)&vd->vibuf);
    func_0023E5B8(&voBuf);

    func_0023E298(vd);

    while (voBuf.count) {
        if (func_0023E050((int *)vd) == VD_STATE_ABORT) {
            break;
        }
    }
    func_0023E058((int *)vd, VD_STATE_END);
}

INCLUDE_ASM("asm/nonmatchings/text", func_0023E298); /* decBs0(VideoDec *) */

extern char D_00161328[];

/* mpegError(sceMpeg *, sceMpegCbDataError *, void *) */
int func_0023E450(sceMpeg *mp, sceMpegCbDataError *cberror, void *anyData) {
    func_001E9730(D_00161328, cberror->errMessage);
    return 1;
}

extern void func_0023BB40(void);  /* switchThread */
extern int func_0023D340(ViBuf *); /* viBufAddDMA */
extern int func_0023D540(ViBuf *); /* viBufStopDMA */
extern int func_0023D650(ViBuf *); /* viBufRestartDMA */
extern int func_0023DCF0(ViBuf *, TimeStamp *); /* viBufGetTs */

/* mpegNodata(sceMpeg *, sceMpegCbData *, void *) */
int func_0023E478(sceMpeg *mp, sceMpegCbData *cbdata, void *anyData) {
    func_0023BB40();
    func_0023D340(&videoDec.vibuf);
    return 1;
}

/* mpegStopDMA */
int func_0023E4B0(sceMpeg *mp, sceMpegCbData *cbdata, void *anyData) {
    func_0023D540(&videoDec.vibuf);
    return 1;
}

/* mpegRestartDMA */
int func_0023E4E0(sceMpeg *mp, sceMpegCbData *cbdata, void *anyData) {
    func_0023D650(&videoDec.vibuf);
    return 1;
}

/* mpegTS */
int func_0023E510(sceMpeg *mp, sceMpegCbDataTimeStamp *cbts, void *anyData) {
    TimeStamp ts;

    func_0023DCF0(&videoDec.vibuf, &ts);
    cbts->pts = ts.pts;
    cbts->dts = ts.dts;
    return 1;
}
