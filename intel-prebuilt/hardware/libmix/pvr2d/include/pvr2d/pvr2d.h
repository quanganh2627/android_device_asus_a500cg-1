/******************************************************************************
 * File          : pvr2d.h
 * Title         : PVR2D external header file
 * Description   : PVR2D definitions for PVR2D clients
 *
 * Copyright (c) 2009, Intel Corporation.
 * Portions (c), Imagination Technology, Ltd.
 * All rights reserved.
 *
 * Redistribution and Use.  Redistribution and use in binary form, without
 * modification, of the software code provided with this license ("Software"),
 * are permitted provided that the following conditions are met:
 *
 *  1. Redistributions must reproduce the above copyright notice and this
 *     license in the documentation and/or other materials provided with the
 *     Software.
 *  2. Neither the name of Intel Corporation nor the name of Imagination
 *     Technology, Ltd may be used to endorse or promote products derived from
 *     the Software without specific prior written permission.
 *  3. The Software can only be used in connection with the Intel hardware
 *     designed to use the Software as outlined in the documentation. No other
 *     use is authorized.
 *  4. No reverse engineering, decompilation, or disassembly of the Software
 *     is permitted.
 *  5. The Software may not be distributed under terms different than this
 *     license.
 *
 * Limited Patent License.  Intel Corporation grants a world-wide, royalty-free
 * , non-exclusive license under patents it now or hereafter owns or controls
 * to make, have made, use, import, offer to sell and sell ("Utilize") the
 * Software, but solely to the extent that any such patent is necessary to
 * Utilize the Software alone.  The patent license shall not apply to any
 * combinations which include the Software.  No hardware per se is licensed
 * hereunder.
 *
 * Ownership of Software and Copyrights. Title to all copies of the Software
 * remains with the copyright holders. The Software is copyrighted and
 * protected by the laws of the United States and other countries, and
 * international treaty provisions.
 *
 * DISCLAIMER.  THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND
 * CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING,
 * BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 * FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
 * OWNERS OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
 * SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED
 * TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
 * PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
 * LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
 * NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE,
 * EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
******************************************************************************/

/******************************************************************************
Modifications :-
$Log: pvr2d.h $
******************************************************************************/

#ifndef _PVR2D_H_
#define _PVR2D_H_

#ifdef __cplusplus
extern "C" {
#endif 

/* PVR2D Platform-specific definitions */
#define PVR2D_EXPORT
#define PVR2D_IMPORT

/* PVR2D header revision */
#define PVR2D_REV_MAJOR		3
#define PVR2D_REV_MINOR		2

/* Basic types */
typedef enum
{
	PVR2D_FALSE = 0,
	PVR2D_TRUE
} PVR2D_BOOL;

typedef void* PVR2D_HANDLE;

typedef char             PVR2D_CHAR,	*PVR2D_PCHAR;
typedef unsigned char    PVR2D_UCHAR,	*PVR2D_PUCHAR;
typedef int              PVR2D_INT,		*PVR2D_PINT;
typedef unsigned int     PVR2D_UINT,	*PVR2D_PUINT;
typedef long             PVR2D_LONG,	*PVR2D_PLONG;
typedef unsigned long    PVR2D_ULONG,	*PVR2D_PULONG;

typedef void             PVR2D_VOID,	*PVR2D_PVOID;


/* error codes */
typedef enum
{
	PVR2D_OK = 0,
	PVR2DERROR_INVALID_PARAMETER = -1,
	PVR2DERROR_DEVICE_UNAVAILABLE = -2,
	PVR2DERROR_INVALID_CONTEXT = -3,
	PVR2DERROR_MEMORY_UNAVAILABLE = -4,
	PVR2DERROR_DEVICE_NOT_PRESENT = -5,
	PVR2DERROR_IOCTL_ERROR = -6,
	PVR2DERROR_GENERIC_ERROR = -7,
	PVR2DERROR_BLT_NOTCOMPLETE = -8,
	PVR2DERROR_HW_FEATURE_NOT_SUPPORTED = -9,
	PVR2DERROR_NOT_YET_IMPLEMENTED = -10,
	PVR2DERROR_MAPPING_FAILED = -11
}PVR2DERROR;

/* 32 bit PVR2D pixel format specifier */
typedef unsigned long PVR2DFORMAT;

/* Standard PVR2D pixel formats */
#define	PVR2D_1BPP						0x00UL // 1bpp mask surface or palletized 1 bit source with 2x32 bit CLUT
#define	PVR2D_RGB565					0x01UL // Common rgb 565 format
#define	PVR2D_ARGB4444					0x02UL // Common argb 4444 format
#define	PVR2D_RGB888					0x03UL // Common rgb 888 format (not supported)
#define	PVR2D_ARGB8888					0x04UL // Common argb 8888 format
#define	PVR2D_ARGB1555					0x05UL // Common argb 1555 format
#define	PVR2D_ALPHA8					0x06UL // Alpha-only 8 bit per pixel (used with a constant fill colour)
#define	PVR2D_ALPHA4					0x07UL // Alpha-only 4 bits per pixel (used with a constant fill colour)
#define	PVR2D_PAL2						0x08UL // Palletized 2 bit format (requires   4x32 bit CLUT)
#define	PVR2D_PAL4						0x09UL // Palletized 4 bit format (requires  16x32 bit CLUT)
#define	PVR2D_PAL8						0x0AUL // Palletized 8 bit format (requires 256x32 bit CLUT)
#define PVR2D_U8						0x10UL // monochrome unsigned 8 bit
#define PVR2D_U88						0x11UL // monochrome unsigned 16 bit
#define PVR2D_S8						0x12UL // signed 8 bit
#define PVR2D_YUV422_YUYV				0x13UL // YUV 422 low-high byte order Y0UY1V
#define PVR2D_YUV422_UYVY				0x14UL // YUV 422 low-high byte order UY0VY1
#define PVR2D_YUV422_YVYU				0x15UL // YUV 422 low-high byte order Y0VY1U
#define PVR2D_YUV422_VYUY				0x16UL // YUV 422 low-high byte order VY0UY1
#define PVR2D_YUV420_2PLANE				0x17UL // YUV420 2 Plane
#define PVR2D_YUV420_3PLANE				0x18UL // YUV420 3 Plane
#define PVR2D_2101010ARGB				0x19UL // 32 bit 2 10 10 10 
#define PVR2D_888RSGSBS					0x1AUL // 888 signed
#define PVR2D_16BPP_RAW					0x1BUL // 16 bit raw (no format conversion)
#define PVR2D_32BPP_RAW					0x1CUL // 32 bit raw
#define PVR2D_64BPP_RAW					0x1DUL // 64 bit raw
#define PVR2D_128BPP_RAW				0x1EUL // 128 bit raw

#define	PVR2D_NO_OF_FORMATS				0x1FUL

/* Format modifier bit field (DstFormat and SrcFormat bits 16..23) */
#define PVR2D_FORMAT_MASK				0x0000FFFFUL	// Format field
#define PVR2D_FORMAT_LAYOUT_MASK		0x00FF0000UL	// Format layout (strided / twiddled / tiled)
#define PVR2D_FORMAT_LAYOUT_SHIFT		16UL
#define PVR2D_FORMAT_LAYOUT_STRIDED		(0x00UL)
#define PVR2D_FORMAT_LAYOUT_TILED		(0x01UL<<(PVR2D_FORMAT_LAYOUT_SHIFT))
#define PVR2D_FORMAT_LAYOUT_TWIDDLED	(0x02UL<<(PVR2D_FORMAT_LAYOUT_SHIFT))

/*
	Low level 3D format extension - for blts via the 3D core only.
	If the top bit of the format field is set then PVR2D reads it as a PVRSRV_PIXEL_FORMAT.
	The outcome is hardware dependant.
	There is no guarantee that any specific PVRSRV format will be supported.
*/
#define PVR2D_FORMAT_PVRSRV				0x80000000

/* PVR2DMemAlloc flags */
#define PVR2D_MEM_UNCACHED			0x00000000UL	/* Default */
#define PVR2D_MEM_CACHED			0x00000001UL	/* Caller must flush and sync when necessary */
#define PVR2D_MEM_WRITECOMBINE		0x00000002UL
#define PVR2D_MEM_NO_GPU_ADDR		0x00000004UL	/* not map to GPU address space */

/* wrap surface type */
typedef enum
{
	PVR2D_WRAPFLAG_NONCONTIGUOUS = 0,
	PVR2D_WRAPFLAG_CONTIGUOUS = 1,

}PVR2DWRAPFLAGS;

#define	PVR2D_CONTEXT_FLAGS_PRIORITY_MASK			0x00000003

#define	PVR2D_CONTEXT_FLAGS_LOW_PRIORITY_CONTEXT	1
#define	PVR2D_CONTEXT_FLAGS_NORMAL_PRIORITY_CONTEXT	0
#define	PVR2D_CONTEXT_FLAGS_HIGH_PRIORITY_CONTEXT	2

/* flags for control information of additional blits */
typedef enum
{
	PVR2D_BLIT_DISABLE_ALL					= 0x0000,	/* disable all additional controls */
	PVR2D_BLIT_CK_ENABLE					= 0x0001,	/* enable colour key */
	PVR2D_BLIT_GLOBAL_ALPHA_ENABLE			= 0x0002,	/* enable standard global alpha */
	PVR2D_BLIT_PERPIXEL_ALPHABLEND_ENABLE	= 0x0004,	/* enable per-pixel alpha bleding */
	PVR2D_BLIT_PAT_SURFACE_ENABLE			= 0x0008,	/* enable pattern surf (disable fill) */
	PVR2D_BLIT_FULLY_SPECIFIED_ALPHA_ENABLE	= 0x0010,	/* enable fully specified alpha */
	PVR2D_BLIT_ROT_90						= 0x0020,	/* apply 90 degree rotation to the blt */
	PVR2D_BLIT_ROT_180						= 0x0040,	/* apply 180 degree rotation to the blt */
	PVR2D_BLIT_ROT_270						= 0x0080,	/* apply 270 degree rotation to the blt */
	PVR2D_BLIT_COPYORDER_TL2BR				= 0x0100,	/* copy order overrides */
	PVR2D_BLIT_COPYORDER_BR2TL				= 0x0200,
	PVR2D_BLIT_COPYORDER_TR2BL				= 0x0400,
	PVR2D_BLIT_COPYORDER_BL2TR				= 0x0800,
	PVR2D_BLIT_COLKEY_SOURCE				= 0x1000,	/* Key colour is on the source surface */
	PVR2D_BLIT_COLKEY_DEST					= 0x2000,	/* Key colour is on the destination surface */
	PVR2D_BLIT_NO_SRC_SYNC_INFO				= 0x4000	/* Dont send a source sync info*/

} PVR2DBLITFLAGS;

/* standard alpha-blending functions, AlphaBlendingFunc field of PVR2DBLTINFO */
typedef enum
{
	PVR2D_ALPHA_OP_SRC_DSTINV = 1,	/* source alpha : Cdst = Csrc*Asrc + Cdst*(1-Asrc) */
	PVR2D_ALPHA_OP_SRCP_DSTINV = 2	/* premultiplied source alpha : Cdst = Csrc + Cdst*(1-Asrc) */
} PVR2D_ALPHABLENDFUNC;

/* blend ops for fully specified alpha (SGX 2D Core only) */
typedef enum
{
	PVR2D_BLEND_OP_ZERO = 0,
	PVR2D_BLEND_OP_ONE = 1,
	PVR2D_BLEND_OP_SRC = 2,
	PVR2D_BLEND_OP_DST = 3,
	PVR2D_BLEND_OP_GLOBAL = 4,
	PVR2D_BLEND_OP_SRC_PLUS_GLOBAL = 5,
	PVR2D_BLEND_OP_DST_PLUS_GLOBAL = 6
}PVR2D_BLEND_OP;

/* SGX 2D Core Fully specified alpha blend :	pAlpha field of PVR2DBLTINFO structure		*/
/* a fully specified Alpha Blend operation is defined as									*/
/* DST (ALPHA) = (ALPHA_1 * SRC (ALPHA)) + (ALPHA_3 * DST (ALPHA))							*/
/* DST (RGB)   = (ALPHA_2 * SRC (RGB)) + (ALPHA_4 * DST (RGB))								*/
/* if the pre-multiplication stage is enabled then the equations become the following:		*/
/* PRE_MUL     = ((SRC(A)) * (Global Alpha Value))											*/
/* DST (ALPHA) = (ALPHA_1 * SRC (ALPHA)) + (PRE_MUL * DST (ALPHA))							*/
/* DST (RGB)   = (ALPHA_2 * SRC (RGB)) + (PRE_MUL * DST (RGB))								*/
/* if the transparent source alpha stage is enabled then a source alpha of zero forces the	*/
/* source to be transparent for that pixel regardless of the blend equation being used.		*/
typedef struct _PVR2D_ALPHABLT
{
	PVR2D_BLEND_OP	eAlpha1;
	PVR2D_BOOL		bAlpha1Invert;
	PVR2D_BLEND_OP	eAlpha2;
	PVR2D_BOOL		bAlpha2Invert;
	PVR2D_BLEND_OP	eAlpha3;
	PVR2D_BOOL		bAlpha3Invert;
	PVR2D_BLEND_OP	eAlpha4;
	PVR2D_BOOL		bAlpha4Invert;
	PVR2D_BOOL		bPremulAlpha;			/* enable pre-multiplication stage */
	PVR2D_BOOL		bTransAlpha;			/* enable transparent source alpha stage */
	PVR2D_BOOL		bUpdateAlphaLookup;		/* enable and update the 1555-Lookup alpha table */
	PVR2D_UCHAR		uAlphaLookup0;			/* 8 bit alpha when A=0 in a 1555-Lookup surface */
	PVR2D_UCHAR		uAlphaLookup1;			/* 8 bit alpha when A=1 in a 1555-Lookup surface */
	PVR2D_UCHAR		uGlobalRGB;				/* Global Alpha Value for RGB, 0=transparent 255=opaque */
	PVR2D_UCHAR		uGlobalA;				/* Global Alpha Value for Alpha */

} PVR2D_ALPHABLT, *PPVR2D_ALPHABLT;


/* surface memory info structure */
typedef struct _PVR2DMEMINFO
{
	PVR2D_VOID			*pBase;
	PVR2D_ULONG			ui32MemSize;
	PVR2D_ULONG			ui32DevAddr;
	PVR2D_ULONG			ulFlags;
	PVR2D_VOID			*hPrivateData;
	PVR2D_VOID			*hPrivateMapData;

}PVR2DMEMINFO, *PPVR2DMEMINFO;


#define PVR2D_MAX_DEVICE_NAME 20

typedef struct _PVR2DDEVICEINFO
{
	PVR2D_ULONG		ulDevID;
	PVR2D_CHAR		szDeviceName[PVR2D_MAX_DEVICE_NAME];
}PVR2DDEVICEINFO;


typedef struct _PVR2DISPLAYINFO
{
	PVR2D_ULONG	ulMaxFlipChains;
	PVR2D_ULONG	ulMaxBuffersInChain;
	PVR2DFORMAT	eFormat;
	PVR2D_ULONG	ulWidth;
	PVR2D_ULONG	ulHeight;
	PVR2D_LONG	lStride;
	PVR2D_ULONG	ulMinFlipInterval;
	PVR2D_ULONG	ulMaxFlipInterval;

}PVR2DDISPLAYINFO;


typedef struct _PVR2MISCDISPLAYINFO
{
	PVR2D_ULONG ulPhysicalWidthmm;
	PVR2D_ULONG ulPhysicalHeightmm;
	PVR2D_ULONG ulUnused[10];

}PVR2DMISCDISPLAYINFO;


typedef struct _PVR2DBLTINFO
{
	PVR2D_ULONG		CopyCode;			/* rop code  */
	PVR2D_ULONG		Colour;				/* fill colour */
	PVR2D_ULONG		ColourKey;			/* colour key argb8888 (see CKEY_ defs below) */
	PVR2D_UCHAR		GlobalAlphaValue;	/* global alpha blending */
	PVR2D_UCHAR		AlphaBlendingFunc;	/* per-pixel alpha-blending function */

	PVR2DBLITFLAGS	BlitFlags;			/* additional blit control information */

	PVR2DMEMINFO	*pDstMemInfo;		/* destination memory */
	PVR2D_ULONG		DstOffset;			/* byte offset from start of allocation to destination surface pixel 0,0 */
	PVR2D_LONG		DstStride;			/* signed stride, the number of bytes from pixel 0,0 to 0,1 */
	PVR2D_LONG		DstX, DstY;			/* pixel offset from start of dest surface to start of blt rectangle */
	PVR2D_LONG		DSizeX,DSizeY;		/* blt size */
	PVR2DFORMAT		DstFormat;			/* dest format */
	PVR2D_ULONG		DstSurfWidth;		/* size of dest surface in pixels */
	PVR2D_ULONG		DstSurfHeight;		/* size of dest surface in pixels */

	PVR2DMEMINFO	*pSrcMemInfo;		/* source mem, (source fields are also used for patterns) */
	PVR2D_ULONG		SrcOffset;			/* byte offset from start of allocation to src/pat surface pixel 0,0 */
	PVR2D_LONG		SrcStride;			/* signed stride, the number of bytes from pixel 0,0 to 0,1 */
	PVR2D_LONG		SrcX, SrcY;			/* pixel offset from start of surface to start of source rectangle */
										/* for patterns this is the start offset within the pattern */
	PVR2D_LONG		SizeX,SizeY;		/* source rectangle size or pattern size in pixels */
	PVR2DFORMAT		SrcFormat;			/* source/pattern format */
	PVR2DMEMINFO	*pPalMemInfo;		/* source/pattern palette memory containing argb8888 colour table */
	PVR2D_ULONG		PalOffset;			/* byte offset from start of allocation to start of palette */
	PVR2D_ULONG		SrcSurfWidth;		/* size of source surface in pixels */
	PVR2D_ULONG		SrcSurfHeight;		/* size of source surface in pixels */

	PVR2DMEMINFO	*pMaskMemInfo;		/* mask memory, 1bpp format implied */
	PVR2D_ULONG		MaskOffset;			/* byte offset from start of allocation to mask surface pixel 0,0 */
	PVR2D_LONG		MaskStride;			/* signed stride, the number of bytes from pixel 0,0 to 0,1 */
	PVR2D_LONG		MaskX, MaskY;		/* mask rect top left (mask size = blt size) */
	PVR2D_ULONG		MaskSurfWidth;		/* size of mask surface in pixels */
	PVR2D_ULONG		MaskSurfHeight;		/* size of mask surface in pixels */
	
	PPVR2D_ALPHABLT pAlpha;				/* fully specified alpha blend (2DCore only) */
	
	PVR2D_ULONG		uSrcChromaPlane1;	/* mem offset from start of source alloc to chroma plane 1 */
	PVR2D_ULONG		uSrcChromaPlane2;	/* mem offset from start of source alloc to chroma plane 2 */
	PVR2D_ULONG		uDstChromaPlane1;	/* mem offset from start of dest alloc to chroma plane 1 */
	PVR2D_ULONG		uDstChromaPlane2;	/* mem offset from start of dest alloc to chroma plane 2 */

}PVR2DBLTINFO, *PPVR2DBLTINFO;

typedef struct _PVR2DRECT
{
	PVR2D_LONG left, top;
	PVR2D_LONG right, bottom;
} PVR2DRECT;

typedef struct
{
	PVR2DMEMINFO	*pSurfMemInfo;		/* surface memory */
	PVR2D_ULONG		SurfOffset;			/* byte offset from start of allocation to destination surface pixel 0,0 */
	PVR2D_LONG		Stride;				/* signed stride */
	PVR2DFORMAT		Format;				/* format */
	PVR2D_ULONG		SurfWidth;			/* surface width in pixels */
	PVR2D_ULONG		SurfHeight;			/* surface height in pixels */

} PVR2D_SURFACE, *PPVR2D_SURFACE;

typedef struct
{
	PVR2D_ULONG		*pUseCode;					/* USSE code */
	PVR2D_ULONG		UseCodeSize;				/* usse code size in bytes */

} PVR2D_USECODE, *PPVR2D_USECODE;

typedef struct
{
	PVR2D_SURFACE			sDst;				/* destination surface */
	PVR2D_SURFACE			sSrc;				/* source surface */
	PVR2DRECT				rcDest;				/* destination rectangle */
	PVR2DRECT				rcSource;			/* source rectangle */
	PVR2D_HANDLE			hUseCode;			/* custom USE code (NULL implies source copy) */
	PVR2D_ULONG				UseParams[2];		/* per-blt params for use code */

} PVR2D_3DBLT, *PPVR2D_3DBLT;

typedef struct
{
	PVR2D_SURFACE			sDst;						/* destination surface */
	PVR2DRECT				rcDest;						/* destination rectangle; scaling is supported */
	PVR2D_SURFACE			sSrc;						/* source surface */
	PVR2DRECT				rcSource;					/* source rectangle; scaling is supported */
	PPVR2D_SURFACE			pSrc2;						/* optional second source surface (NULL if not required) */
	PVR2DRECT*				prcSource2;					/* optional pSrc2 rectangle */
	PVR2D_HANDLE			hUseCode;					/* custom USSE shader code (NULL implies default source copy) */
	PVR2D_ULONG				UseParams[2];				/* per-blt params for usse code */
	PVR2D_UINT				uiNumTemporaryRegisters;	/* no. of temporary registers used in custom shader code */
	PVR2D_BOOL				bDisableDestInput;			/* set true if the destination is output only */

} PVR2D_3DBLT_EXT, *PPVR2D_3DBLT_EXT;



#define MAKE_COPY_BLIT(src,soff,dest,doff,sx,sy,dx,dy,sz)

typedef void* PVR2DCONTEXTHANDLE;
typedef void* PVR2DFLIPCHAINHANDLE;


// CopyCode field of PVR2DBLTINFO structure:
// the CopyCode field of the PVR2DBLTINFO structure should contain a rop3 or rop4 code.
// a rop3 is an 8 bit code that describes a blt with three inputs : source dest and pattern
// rop4 is a 16 bit code that describes a blt with four inputs : source dest pattern and mask
// common rop3 codes are defined below
// a colour fill blt is processed in the pattern channel as a constant colour with a rop code of 0xF0
// PVR2D_BLIT_PAT_SURFACE_ENABLE defines whether the pattern channel is a surface or a fill colour.
// a rop4 is defined by two rop3 codes, and the 1 bit-per-pixel mask surface defines which is used.
// a common rop4 is 0xAAF0 which is the mask copy blt used for text glyphs.
// CopyCode is taken to be a rop4 when pMaskMemInfo is non zero, otherwise it is assumed to be a rop3
// use the PVR2DMASKROP4 macro below to construct a rop4 from two rop3's
// rop3a is the rop used when mask pixel = 1, and rop3b when mask = 0
#define PVR2DROP4(rop3b, rop3a)			((rop3b<<8)|rop3a)

/* common rop codes */
#define PVR2DROPclear				0x00       /* 0 (whiteness) */
#define PVR2DROPset					0xFF       /* 1 (blackness) */
#define PVR2DROPnoop				0xAA       /* dst (used for masked blts) */

/* source and  dest rop codes */
#define PVR2DROPand					0x88       /* src AND dst */
#define PVR2DROPandReverse			0x44       /* src AND NOT dst */
#define PVR2DROPcopy				0xCC       /* src (used for source copy and alpha blts) */
#define PVR2DROPandInverted			0x22       /* NOT src AND dst */
#define PVR2DROPxor					0x66       /* src XOR dst */
#define PVR2DROPor					0xEE       /* src OR dst */
#define PVR2DROPnor					0x11       /* NOT src AND NOT dst */
#define PVR2DROPequiv				0x99       /* NOT src XOR dst */
#define PVR2DROPinvert				0x55       /* NOT dst */
#define PVR2DROPorReverse			0xDD       /* src OR NOT dst */
#define PVR2DROPcopyInverted		0x33       /* NOT src */
#define PVR2DROPorInverted			0xBB       /* NOT src OR dst */
#define PVR2DROPnand				0x77       /* NOT src OR NOT dst */

/* pattern rop codes */
#define PVR2DPATROPand				0xA0       /* pat AND dst */
#define PVR2DPATROPandReverse		0x50       /* pat AND NOT dst */
#define PVR2DPATROPcopy				0xF0       /* pat (used for solid color fills and pattern blts) */
#define PVR2DPATROPandInverted		0x0A       /* NOT pat AND dst */
#define PVR2DPATROPxor				0x5A       /* pat XOR dst */
#define PVR2DPATROPor				0xFA       /* pat OR dst */
#define PVR2DPATROPnor				0x05       /* NOT pat AND NOT dst */
#define PVR2DPATROPequiv			0xA5       /* NOT pat XOR dst */
#define PVR2DPATROPinvert			0x55       /* NOT dst */
#define PVR2DPATROPorReverse		0xF5       /* pat OR NOT dst */
#define PVR2DPATROPcopyInverted		0x0F       /* NOT pat */
#define PVR2DPATROPorInverted		0xAF       /* NOT pat OR dst */
#define PVR2DPATROPnand				0x5F       /* NOT pat OR NOT dst */

/* common rop4 codes */
#define PVR2DROP4MaskedCopy              PVR2DROP4(PVR2DROPnoop,PVR2DROPcopy)		/* masked source copy blt (used for rounded window corners etc) */
#define PVR2DROP4MaskedFill              PVR2DROP4(PVR2DROPnoop,PVR2DPATROPcopy)	/* masked colour fill blt (used for text) */

/* Legacy support */
#define PVR2DROP3_PATMASK			PVR2DPATROPcopy
#define PVR2DROP3_SRCMASK			PVR2DROPcopy

/* pixmap memory alignment */
#define PVR2D_ALIGNMENT_4			4			/* DWORD alignment */
#define PVR2D_ALIGNMENT_ANY			0			/* no alignment    */
#define PVR2D_ALIGNMENT_PALETTE		16			/* 16 byte alignment is required for palettes */

/* Heap number for PVR2DGetFrameBuffer */
#define PVR2D_FB_PRIMARY_SURFACE 0

#define PVR2D_PRESENT_PROPERTY_SRCSTRIDE	(1UL << 0)
#define PVR2D_PRESENT_PROPERTY_DSTSIZE		(1UL << 1)
#define PVR2D_PRESENT_PROPERTY_DSTPOS		(1UL << 2)
#define PVR2D_PRESENT_PROPERTY_CLIPRECTS	(1UL << 3)
#define PVR2D_PRESENT_PROPERTY_INTERVAL		(1UL << 4)


#define PVR2D_CREATE_FLIPCHAIN_SHARED		(1UL << 0)
#define PVR2D_CREATE_FLIPCHAIN_QUERY		(1UL << 1)
#define PVR2D_CREATE_FLIPCHAIN_OEMOVERLAY   (1UL << 2)
#define PVR2D_CREATE_FLIPCHAIN_AS_BLITCHAIN (1UL << 3)

/* Colour-key colour must be translated into argb8888 format */
#define CKEY_8888(P)		(P)
#define CKEY_4444(P)		(((P&0xF000UL)<<16) | ((P&0x0F00UL)<<12) | ((P&0x00F0UL)<<8) | ((P&0x000FUL)<<4))
#define CKEY_1555(P)		(((P&0x8000UL)<<16) | ((P&0x7C00UL)<<9)  | ((P&0x3E0UL)<<6)  | ((P&0x1FUL)<<3))
#define CKEY_565(P)			(((P&0xF800UL)<<8)  | ((P&0x7E0UL)<<5)   | ((P&0x1FUL)<<3))
#define CKEY_MASK_8888		0x00FFFFFFUL
#define CKEY_MASK_4444		0x00F0F0F0UL
#define CKEY_MASK_1555		0x00F8F8F8UL	/* Alpha is not normally included in the key test */
#define CKEY_MASK_565		0x00F8FCF8UL


/* Functions that the library exports */

PVR2D_IMPORT
PVR2D_INT PVR2DEnumerateDevices(PVR2DDEVICEINFO *pDevInfo);

PVR2D_IMPORT
PVR2DERROR PVR2DCreateDeviceContext(PVR2D_ULONG ulDevID,
									PVR2DCONTEXTHANDLE* phContext,
									PVR2D_ULONG ulFlags);

PVR2D_IMPORT
PVR2DERROR PVR2DDestroyDeviceContext(PVR2DCONTEXTHANDLE hContext);

PVR2D_IMPORT
PVR2DERROR PVR2DGetDeviceInfo(PVR2DCONTEXTHANDLE hContext,
							  PVR2DDISPLAYINFO *pDisplayInfo);

PVR2D_IMPORT
PVR2DERROR PVR2DGetMiscDisplayInfo(PVR2DCONTEXTHANDLE hContext,
							  PVR2DMISCDISPLAYINFO *pMiscDisplayInfo);

PVR2D_IMPORT
PVR2DERROR PVR2DGetScreenMode(PVR2DCONTEXTHANDLE hContext,
							  PVR2DFORMAT *pFormat,
							  PVR2D_LONG *plWidth,
							  PVR2D_LONG *plHeight,
							  PVR2D_LONG *plStride,
							  PVR2D_INT *piRefreshRate);

PVR2D_IMPORT
PVR2DERROR PVR2DGetFrameBuffer(PVR2DCONTEXTHANDLE hContext,
							   PVR2D_INT nHeap,
							   PVR2DMEMINFO **ppsMemInfo);

PVR2D_IMPORT
PVR2DERROR PVR2DMemAlloc(PVR2DCONTEXTHANDLE hContext,
						 PVR2D_ULONG ulBytes,
						 PVR2D_ULONG ulAlign,
						 PVR2D_ULONG ulFlags,
						 PVR2DMEMINFO **ppsMemInfo);

PVR2D_IMPORT
PVR2DERROR PVR2DMemExport(PVR2DCONTEXTHANDLE hContext,
						 PVR2D_ULONG ulFlags,
						 PVR2DMEMINFO *psMemInfo,
						 PVR2D_HANDLE *phMemHandle);

PVR2D_IMPORT
PVR2DERROR PVR2DMemWrap(PVR2DCONTEXTHANDLE hContext,
						PVR2D_VOID *pMem,
						PVR2D_ULONG ulFlags,
						PVR2D_ULONG ulBytes,
						PVR2D_ULONG alPageAddress[],
						PVR2DMEMINFO **ppsMemInfo);

PVR2D_IMPORT
PVR2DERROR PVR2DMemMap(PVR2DCONTEXTHANDLE hContext,
						PVR2D_ULONG ulFlags,
						PVR2D_HANDLE hMemHandle,
						PVR2DMEMINFO **ppsDstMem);

PVR2D_IMPORT
PVR2DERROR PVR2DMemFree(PVR2DCONTEXTHANDLE hContext,
						PVR2DMEMINFO *psMemInfo);

PVR2D_IMPORT
PVR2DERROR PVR2DBlt(PVR2DCONTEXTHANDLE hContext,
					PVR2DBLTINFO *pBltInfo);

PVR2D_IMPORT
PVR2DERROR PVR2DBltClipped(PVR2DCONTEXTHANDLE hContext,
						   PVR2DBLTINFO *pBltInfo,
						   PVR2D_ULONG ulNumClipRects,
						   PVR2DRECT *pClipRects);

PVR2D_EXPORT
PVR2DERROR PVR2DSet1555Alpha (PVR2DCONTEXTHANDLE hContext,
							  PVR2D_UCHAR Alpha0, PVR2D_UCHAR Alpha1);

PVR2D_IMPORT
PVR2DERROR PVR2DQueryBlitsComplete(PVR2DCONTEXTHANDLE hContext,
								   const PVR2DMEMINFO *pMemInfo,
								   PVR2D_UINT uiWaitForComplete);

PVR2D_IMPORT
PVR2DERROR PVR2DSetPresentBltProperties(PVR2DCONTEXTHANDLE hContext,
										PVR2D_ULONG ulPropertyMask,
										PVR2D_LONG lSrcStride,
										PVR2D_ULONG ulDstWidth,
										PVR2D_ULONG ulDstHeight,
										PVR2D_LONG lDstXPos,
										PVR2D_LONG lDstYPos,
										PVR2D_ULONG ulNumClipRects,
										PVR2DRECT *pClipRects,
										PVR2D_ULONG ulSwapInterval);

PVR2D_IMPORT
PVR2DERROR PVR2DPresentBlt(PVR2DCONTEXTHANDLE hContext,
						   PVR2DMEMINFO *pMemInfo,
						   PVR2D_LONG lRenderID);

PVR2D_IMPORT
PVR2DERROR PVR2DCreateFlipChain(PVR2DCONTEXTHANDLE hContext,
								PVR2D_ULONG ulFlags,
								PVR2D_ULONG ulNumBuffers,
								PVR2D_ULONG ulWidth,
								PVR2D_ULONG ulHeight,
								PVR2DFORMAT eFormat,
								PVR2D_LONG *plStride,
								PVR2D_ULONG *pulFlipChainID,
								PVR2DFLIPCHAINHANDLE *phFlipChain);

PVR2D_IMPORT
PVR2DERROR PVR2DDestroyFlipChain(PVR2DCONTEXTHANDLE hContext,
								 PVR2DFLIPCHAINHANDLE hFlipChain);

PVR2D_IMPORT
PVR2DERROR PVR2DGetFlipChainBuffers(PVR2DCONTEXTHANDLE hContext,
									PVR2DFLIPCHAINHANDLE hFlipChain,
									PVR2D_ULONG *pulNumBuffers,
									PVR2DMEMINFO *psMemInfo[]);

PVR2D_IMPORT
PVR2DERROR PVR2DSetPresentFlipProperties(PVR2DCONTEXTHANDLE hContext,
										 PVR2DFLIPCHAINHANDLE hFlipChain,
										 PVR2D_ULONG ulPropertyMask,
										 PVR2D_LONG lDstXPos,
										 PVR2D_LONG lDstYPos,
										 PVR2D_ULONG ulNumClipRects, 
										 PVR2DRECT *pClipRects,
										 PVR2D_ULONG ulSwapInterval);

PVR2D_IMPORT
PVR2DERROR PVR2DPresentFlip(PVR2DCONTEXTHANDLE hContext,
							PVR2DFLIPCHAINHANDLE hFlipChain,
							PVR2DMEMINFO *psMemInfo,
							PVR2D_LONG lRenderID);

PVR2D_IMPORT
PVR2DERROR PVR2DGetAPIRev(PVR2D_LONG *lRevMajor, PVR2D_LONG *lRevMinor);

PVR2D_IMPORT
PVR2DERROR PVR2DLoadUseCode (const PVR2DCONTEXTHANDLE hContext, const PVR2D_UCHAR	*pUseCode,
									const PVR2D_ULONG UseCodeSize, PVR2D_HANDLE *pUseCodeHandle);
PVR2D_IMPORT
PVR2DERROR PVR2DFreeUseCode (const PVR2DCONTEXTHANDLE hContext, const PVR2D_HANDLE hUseCodeHandle);

PVR2D_IMPORT
PVR2DERROR PVR2DBlt3D (const PVR2DCONTEXTHANDLE hContext, const PPVR2D_3DBLT pBlt3D);

PVR2D_IMPORT
PVR2DERROR PVR2DBlt3DExt (const PVR2DCONTEXTHANDLE hContext, const PPVR2D_3DBLT_EXT pBlt3D);

#ifdef __cplusplus
}
#endif 

#endif /* _PVR2D_H_ */

/******************************************************************************
 End of file (pvr2d.h)
******************************************************************************/
