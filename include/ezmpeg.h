#ifndef EZMPEG_H
#define EZMPEG_H

/*
 * Sony's EE library sample "mpeg streaming" (ezmpeg): movie/*.cpp in
 * retail is this sample, adapted. The source is public in several PS2
 * source releases (e.g. Kelly Slater's Pro Surfer, THUG), so these types
 * and macros follow it rather than being reconstructed from the asm.
 *
 * Included mid-file by src/game/movie/*.c, after each file's inherited
 * declarations. Everything here is types and macros: no code, no data.
 */

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

/* vibuf.h */
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

/* libmpeg.h */
typedef struct {
    int width;
    int height;
    int frameCount;
    long pts;
    long dts;
    unsigned long flags;
    long pts2nd;
    long dts2nd;
    unsigned long flags2nd;
    void *sys;
} sceMpeg; /* 0x48 */

typedef struct {
    int type;
} sceMpegCbData;

typedef struct {
    int type;
    char *errMessage;
} sceMpegCbDataError;

typedef struct {
    int type;
    long pts;
    long dts;
} sceMpegCbDataTimeStamp;

typedef int (*sceMpegCallback)(sceMpeg *, sceMpegCbData *, void *);

/* videodec.h */
#define VD_STATE_NORMAL 0
#define VD_STATE_ABORT 1
#define VD_STATE_FLUSH 2
#define VD_STATE_END 3

typedef struct {
    sceMpeg mpeg;     /* 0x00 */
    ViBuf vibuf;      /* 0x48 */
    unsigned int state; /* 0xA8 */
    int sema;
    int hid_endimage;
    int hid_vblank;
} VideoDec;

#define VIBUF_ELM_SIZE 2048
#define REST 2
#define FS(f) (((f)->dmaStart + (f)->dmaN) * VIBUF_ELM_SIZE)
#define FN(f) (((f)->n - REST - (f)->dmaN) * VIBUF_ELM_SIZE)

/* defs.h */
#define TS_NONE (-1)
#define UNCMASK 0x0fffffff
#define UNCBASE 0x20000000
#define bound(val, x) ((((val) + (x) - 1) / (x)) * (x))
/* Not the obvious spelling: retail's compare is `b < a`. */
#define min(a, b) ((a) > (b) ? (b) : (a))
#define max(a, b) ((a) > (b) ? (a) : (b))

static inline void *DmaAddr(void *val) {
    return (void *)((unsigned int)val & UNCMASK);
}

static inline void *UncAddr(void *val) {
    return (void *)(((unsigned int)val & UNCMASK) | UNCBASE);
}

#define DMA_ID_REFE 0
#define DMA_ID_NEXT 2
#define DMA_ID_REF 3

/* eeregs.h. `volatile` gives retail's lui/ori-into-register store form
   rather than the $at macro form. */
#define D3_CHCR ((volatile unsigned int *)0x1000b000)
#define D3_MADR ((volatile unsigned int *)0x1000b010)
#define D3_QWC ((volatile unsigned int *)0x1000b020)
#define D4_CHCR ((volatile unsigned int *)0x1000b400)
#define D4_MADR ((volatile unsigned int *)0x1000b410)
#define D4_QWC ((volatile unsigned int *)0x1000b420)
#define D4_TADR ((volatile unsigned int *)0x1000b430)
#define IPU_CMD ((volatile unsigned int *)0x10002000)
#define IPU_CTRL ((volatile unsigned int *)0x10002010)
#define IPU_BP ((volatile unsigned int *)0x10002020)
#define DGET_IPU_CTRL() (*IPU_CTRL)
#define DGET_IPU_BP() (*IPU_BP)
#define DPUT_IPU_CMD(x) (*IPU_CMD = (x))

/* libipu.h */
#define sceIpuIsBusy() ((int)DGET_IPU_CTRL() < 0)
#define sceIpuBCLR(bp) DPUT_IPU_CMD(0x00000000 | (bp))

#endif
