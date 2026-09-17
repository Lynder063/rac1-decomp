#include "common.h"
#include "structs.h"

/*
 * movie/vibuf.cpp in the original source; text 0x23CEC8-0x23DE98.
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

/* Sony's ezmpeg sample (EE library sample "mpeg streaming", vibuf.c
   0.10, umemura 1999); the layout below is its ViBuf. */
typedef struct {
    long pts;
    long dts;
    int pos;
    int len;
} TimeStamp;

typedef struct {
    int d4madr;
    int d4tadr;
    int d4qwc;
    int d4chcr;
    int d3madr;
    int d3qwc;
    int d3chcr;
    int ipubp;
    int ipuctrl;
} sceIpuDmaEnv;

typedef struct {
    long long *data;  /* 0x00 */
    long long *tag;   /* 0x04 */
    int n;            /* 0x08 */
    int dmaStart;     /* 0x0C */
    int dmaN;         /* 0x10 */
    int readBytes;    /* 0x14 */
    int buffSize;     /* 0x18 */
    sceIpuDmaEnv env; /* 0x1C */
    int sema;         /* 0x40 */
    int isActive;     /* 0x44 */
    long totalBytes;  /* 0x48 */
    TimeStamp *ts;    /* 0x50 */
    int n_ts;         /* 0x54 */
    int count_ts;     /* 0x58 */
    int wt_ts;        /* 0x5C */
} ViBuf;

#define VIBUF_ELM_SIZE 2048
#define REST 2
#define FS(f) (((f)->dmaStart + (f)->dmaN) * VIBUF_ELM_SIZE)
#define FN(f) (((f)->n - REST - (f)->dmaN) * VIBUF_ELM_SIZE)

#define TS_NONE (-1)
#define UNCMASK 0x0fffffff
#define DMA_ID_REFE 0
#define DMA_ID_NEXT 2
#define DMA_ID_REF 3
#define D3_CHCR ((volatile unsigned int *)0x1000b000)
#define D3_MADR ((volatile unsigned int *)0x1000b010)
#define D3_QWC ((volatile unsigned int *)0x1000b020)
#define D4_CHCR ((volatile unsigned int *)0x1000b400)
#define D4_MADR ((volatile unsigned int *)0x1000b410)
#define D4_QWC ((volatile unsigned int *)0x1000b420)
#define D4_TADR ((volatile unsigned int *)0x1000b430)
#define IPU_CTRL ((volatile unsigned int *)0x10002010)
#define IPU_BP ((volatile unsigned int *)0x10002020)
#define IPU_CMD ((volatile unsigned int *)0x10002000)
#define DGET_IPU_CTRL() (*IPU_CTRL)
#define DGET_IPU_BP() (*IPU_BP)
#define DPUT_IPU_CMD(x) (*IPU_CMD = (x))
#define sceIpuIsBusy() ((int)DGET_IPU_CTRL() < 0)
#define sceIpuBCLR(bp) DPUT_IPU_CMD(0x00000000 | (bp))

static inline void *DmaAddr(void *val) {
    return (void *)((unsigned int)val & UNCMASK);
}

/* getFIFOindex(ViBuf *, void *) */
int func_0023CEC8(ViBuf *f, void *addr) {
    if (addr == DmaAddr(f->tag + (f->n + 1))) {
        return 0;
    } else {
        return ((unsigned int)addr - (unsigned int)f->data) / VIBUF_ELM_SIZE;
    }
}

extern void func_0011D960(void);
extern void func_0011D9A8(void);

/* D_ENABLER 0x1000F520 / D_ENABLEW 0x1000F590; bit 16 is the DMA
   disable. Sets a channel's CHCR with DMA transfers suspended. */
/* setD3_CHCR(unsigned int) */
void func_0023CF10(int arg0) {
    func_0011D960();
    *(volatile int *)0x1000F590 = *(volatile int *)0x1000F520 | 0x10000;
    *(volatile int *)0x1000B000 = arg0;
    *(volatile int *)0x1000F590 = *(volatile int *)0x1000F520 & ~0x10000;
    func_0011D9A8();
}

/* D_ENABLER 0x1000F520 / D_ENABLEW 0x1000F590; bit 16 is the DMA
   disable. Sets a channel's CHCR with DMA transfers suspended. */
/* setD4_CHCR(unsigned int) */
void func_0023CF80(int arg0) {
    func_0011D960();
    *(volatile int *)0x1000F590 = *(volatile int *)0x1000F520 | 0x10000;
    *(volatile int *)0x1000B400 = arg0;
    *(volatile int *)0x1000F590 = *(volatile int *)0x1000F520 & ~0x10000;
    func_0011D9A8();
}

/* scTag2 */
void func_0023CFF0(long *arg0, int arg1, int arg2, int arg3) {
    *arg0 = ((long)arg1 << 32) | ((unsigned long)(unsigned int)arg2 << 28) |
            (unsigned int)arg3;
}

struct SemaParam {
    int currentCount;
    int maxCount;
    int initCount;
    int numWaitThreads;
    unsigned int attr;
    unsigned int option;
};

extern int func_00118C70(struct SemaParam *); /* CreateSema */
extern int func_0023D090(ViBuf *);

static inline void *UncAddr(void *val) {
    return (void *)(((unsigned int)val & 0x0fffffff) | 0x20000000);
}

/* viBufCreate(ViBuf *, u_long128 *, u_long128 *, int, TimeStamp *, int) */
int func_0023D018(ViBuf *f, long long *data, long long *tag, int size,
                  TimeStamp *ts, int n_ts) {
    struct SemaParam param;

    f->data = data;
    f->tag = (long long *)UncAddr(tag);
    f->n = size;
    f->buffSize = size * VIBUF_ELM_SIZE;

    f->ts = ts;
    f->n_ts = n_ts;

    param.initCount = 1;
    param.maxCount = 1;
    f->sema = func_00118C70(&param);

    func_0023D090(f);

    f->totalBytes = 0;

    return 1;
}

/* viBufReset(ViBuf *) */
int func_0023D090(ViBuf *f) {
    int i;

    f->dmaStart = 0;
    f->dmaN = 0;
    f->readBytes = 0;
    f->isActive = 1;

    f->count_ts = 0;
    f->wt_ts = 0;
    for (i = 0; i < f->n_ts; i++) {
        f->ts[i].pts = TS_NONE;
        f->ts[i].dts = TS_NONE;
        f->ts[i].pos = 0;
        f->ts[i].len = 0;
    }

    for (i = 0; i < f->n; i++) {
        func_0023CFF0((long *)(f->tag + i),
                      (int)DmaAddr((char *)f->data + VIBUF_ELM_SIZE * i),
                      DMA_ID_REF, VIBUF_ELM_SIZE / 16);
    }
    func_0023CFF0((long *)(f->tag + i), (int)DmaAddr(f->tag), DMA_ID_NEXT, 0);

    *D4_QWC = 0;
    *D4_MADR = (unsigned int)DmaAddr(f->data);
    *D4_TADR = (unsigned int)DmaAddr(f->tag);
    func_0023CF80((0 << 8) | (1 << 2) | 1);

    return 1;
}

extern int func_00118CB0(int); /* WaitSema */
extern int func_00118C90(int); /* SignalSema */

/* viBufBeginPut(ViBuf *, unsigned char **, int *, unsigned char **, int *) */
void func_0023D1F0(ViBuf *f, unsigned char **ptr0, int *len0,
                   unsigned char **ptr1, int *len1) {
    int es;
    int en;
    int fs;
    int fn;

    func_00118CB0(f->sema);

    fs = FS(f);
    fn = FN(f);

    es = (fs + f->readBytes) % f->buffSize;
    en = fn - f->readBytes;

    if (f->buffSize - es >= en) {
        *ptr0 = (unsigned char *)f->data + es;
        *len0 = en;
        *ptr1 = 0;
        *len1 = 0;
    } else {
        *ptr0 = (unsigned char *)f->data + es;
        *len0 = f->buffSize - es;
        *ptr1 = (unsigned char *)f->data;
        *len1 = en - (f->buffSize - es);
    }

    func_00118C90(f->sema);
}

/* viBufEndPut(ViBuf *, int) */
void func_0023D2E8(ViBuf *f, int size) {
    func_00118CB0(f->sema);

    f->readBytes += size;
    f->totalBytes = size + f->totalBytes;

    func_00118C90(f->sema);
}

extern void func_0023BF48(char *); /* ErrMessage */
extern char D_001E8E50[];          /* "DMA ADD not active\n" */

/* viBufAddDMA(ViBuf *) */
int func_0023D340(ViBuf *f) {
    int i;
    int index;
    int id;
    int last;
    unsigned int d4chcr;
    int isNewData = 0;
    int consume;
    int read_start, read_n;

    func_00118CB0(f->sema);

    if (!f->isActive) {
        func_0023BF48(D_001E8E50);
        return 0;
    }

    func_0023CF80((DMA_ID_REFE << 28) | (0 << 8) | (1 << 2) | 1);
    d4chcr = *D4_CHCR;

    index = func_0023CEC8(f, (void *)*D4_MADR);
    consume = (index + f->n - f->dmaStart) % f->n;
    f->dmaStart = (f->dmaStart + consume) % f->n;
    f->dmaN -= consume;

    read_start = (f->dmaStart + f->dmaN) % f->n;
    read_n = f->readBytes / VIBUF_ELM_SIZE;
    f->readBytes %= VIBUF_ELM_SIZE;

    if (read_n > 0) {
        last = (f->dmaStart + f->dmaN - 1 + f->n) % f->n;
        func_0023CFF0((long *)(f->tag + last),
                      (int)((char *)f->data + VIBUF_ELM_SIZE * last),
                      DMA_ID_REF, VIBUF_ELM_SIZE / 16);
        isNewData = 1;
    }

    index = read_start;
    for (i = 0; i < read_n; i++) {
        id = (i == read_n - 1) ? DMA_ID_REFE : DMA_ID_REF;
        func_0023CFF0((long *)(f->tag + index),
                      (int)((char *)f->data + VIBUF_ELM_SIZE * index), id,
                      VIBUF_ELM_SIZE / 16);
        index = (index + 1) % f->n;
    }

    f->dmaN += read_n;

    if (f->dmaN) {
        if (isNewData) {
            d4chcr = (d4chcr & 0x0fffffff) | (DMA_ID_REF << 28);
        }
        func_0023CF80(d4chcr | 0x100);
    }

    func_00118C90(f->sema);

    return 1;
}

/* viBufStopDMA and viBufRestartDMA are Sony's vibuf.c too, but stay asm:
   their IPU busy-wait loops (`while (DGET_IPU_CTRL() & 0xf0);`,
   `while (sceIpuIsBusy());`) carry retail's short-loop-erratum nop
   padding, which this toolchain cannot emit. Measured with the verbatim
   source: StopDMA 61 words vs 68, RestartDMA 190 vs 206 (size mismatch,
   so reverted). */
INCLUDE_ASM("asm/nonmatchings/text", func_0023D540); /* viBufStopDMA(ViBuf *) */

INCLUDE_ASM("asm/nonmatchings/text", func_0023D650); /* viBufRestartDMA(ViBuf *) */

extern void func_0023CF80(int);
extern int func_00118C80(int); /* DeleteSema */

/* viBufDelete(ViBuf *) */
int func_0023D988(ViBuf *f) {
    func_0023CF80((0 << 8) | (1 << 2) | 1);
    *D4_QWC = 0;
    *D4_MADR = 0;
    *D4_TADR = 0;

    func_00118C80(f->sema);
    return 1;
}

/* viBufCount(ViBuf *) */
int func_0023D9E0(ViBuf *f) {
    int ret;

    func_00118CB0(f->sema);

    ret = f->dmaN * VIBUF_ELM_SIZE + f->readBytes;

    func_00118C90(f->sema);

    return ret;
}

/* viBufFlush(ViBuf *). Was a 13/84 near-miss while WaitSema/SignalSema
   were declared `void`: the callee's `int` return type alone moves the
   scratch-register choice. Now Sony's source, verbatim. */
#define bound(val, x) ((((val) + (x) - 1) / (x)) * (x))

void func_0023DA30(ViBuf *f) {
    func_00118CB0(f->sema);

    f->readBytes = bound(f->readBytes, VIBUF_ELM_SIZE);

    func_00118C90(f->sema);
}

#define min(a, b) ((a) > (b) ? (b) : (a))
#define max(a, b) ((a) > (b) ? (a) : (b))

static inline int IsPtsInRegion(int tgt, int pos, int len, int size) {
    int tgt1 = (tgt + size - pos) % size;
    return tgt1 < len;
}

/* viBufModifyPts(ViBuf *, TimeStamp *) */
int func_0023DA88(ViBuf *f, TimeStamp *new_ts) {
    TimeStamp *ts;
    int rd = (f->wt_ts - f->count_ts + f->n_ts) % f->n_ts;
    int datasize = VIBUF_ELM_SIZE * f->n;
    int loop = 1;

    if (f->count_ts > 0) {
        while (loop) {
            ts = f->ts + rd;

            if (ts->len == 0 || new_ts->len == 0) {
                break;
            }

            if (IsPtsInRegion(ts->pos, new_ts->pos, new_ts->len, datasize)) {
                int len = min(new_ts->pos + new_ts->len - ts->pos, ts->len);

                ts->pos = (ts->pos + len) % datasize;
                ts->len -= len;

                if (ts->len == 0) {
                    if (ts->pts >= 0) {
                        ts->pts = TS_NONE;
                        ts->dts = TS_NONE;
                        ts->pos = 0;
                        ts->len = 0;
                    }
                    f->count_ts = max(f->count_ts - 1, 0);
                }
            } else {
                loop = 0;
            }

            rd = (rd + 1) % f->n_ts;
        }
    }

    return 0;
}

/* viBufPutTs(ViBuf *, TimeStamp *) */
int func_0023DBE0(ViBuf *f, TimeStamp *ts) {
    int ret = 0;

    func_00118CB0(f->sema);

    if (f->count_ts < f->n_ts) {

        func_0023DA88(f, ts);

        if (ts->pts >= 0 || ts->dts >= 0) {

            f->ts[f->wt_ts].pts = ts->pts;
            f->ts[f->wt_ts].dts = ts->dts;
            f->ts[f->wt_ts].pos = ts->pos;
            f->ts[f->wt_ts].len = ts->len;

            f->count_ts++;
            f->wt_ts = (f->wt_ts + 1) % f->n_ts;
        }
        ret = 1;
    }

    func_00118C90(f->sema);

    return ret;
}

/* viBufGetTs(ViBuf *, TimeStamp *) */
int func_0023DCF0(ViBuf *f, TimeStamp *ts) {
    unsigned int d4madr = *D4_MADR;
    unsigned int ipubp = DGET_IPU_BP();
    int bp = f->env.ipubp & 0x7f;
    int fp = (ipubp >> 16) & 0x3;
    int ifc = (ipubp >> 8) & 0xf;
    unsigned int d4madr_next = d4madr - ((fp + ifc) << 4);
    unsigned int stop;
    int datasize = VIBUF_ELM_SIZE * f->n;
    int isEnd = 0;
    int tscount;
    int wt;
    int i;

    func_00118CB0(f->sema);

    ts->pts = TS_NONE;
    ts->dts = TS_NONE;

    stop = (d4madr_next + (bp >> 3) + datasize - (unsigned int)f->data) %
           datasize;

    tscount = f->count_ts;
    wt = f->wt_ts;

    for (i = 0; i < tscount && !isEnd; i++) {

        int rd = (wt - tscount + f->n_ts + i) % f->n_ts;

        if (IsPtsInRegion(stop, f->ts[rd].pos, f->ts[rd].len, datasize)) {

            ts->pts = f->ts[rd].pts;
            ts->dts = f->ts[rd].dts;
            f->ts[rd].pts = TS_NONE;
            f->ts[rd].dts = TS_NONE;

            isEnd = 1;
            f->count_ts -= min(1, f->count_ts);
        }
    }

    func_00118C90(f->sema);

    return 1;
}
