/* INTEL CONFIDENTIAL
* Copyright (c) 2013 Intel Corporation.  All rights reserved.
* Copyright (c) Imagination Technologies Limited, UK
*
* The source code contained or described herein and all documents
* related to the source code ("Material") are owned by Intel
* Corporation or its suppliers or licensors.  Title to the
* Material remains with Intel Corporation or its suppliers and
* licensors.  The Material contains trade secrets and proprietary
* and confidential information of Intel or its suppliers and
* licensors. The Material is protected by worldwide copyright and
* trade secret laws and treaty provisions.  No part of the Material
* may be used, copied, reproduced, modified, published, uploaded,
* posted, transmitted, distributed, or disclosed in any way without
* Intel's prior express written permission.
*
* No license under any patent, copyright, trade secret or other
* intellectual property right is granted to or conferred upon you
* by disclosure or delivery of the Materials, either expressly, by
* implication, inducement, estoppel or otherwise. Any license
* under such intellectual property rights must be express and
* approved by Intel in writing.
*
* Authors:
*    Yao Cheng <yao.cheng@intel.com>
*
*/

#ifndef JPEGCOMMON_H
#define JPEGCOMMON_H

#include <va/va.h>
#include <va/va_dec_jpeg.h>
#include <sys/types.h>
#include <string.h>

#define JPEG_MAX_COMPONENTS 4
#define JPEG_MAX_QUANT_TABLES 4


#define RENDERTARGET_INTERNAL_BUFFER (RenderTarget::ANDROID_GRALLOC + 1)

struct JpegInfo
{
    // in
    uint8_t *buf;
    size_t bufsize;
    // out
    uint32_t image_width;
    uint32_t image_height;
    uint32_t image_color_fourcc;
    int      image_pixel_format;
    VAPictureParameterBufferJPEGBaseline picture_param_buf;
    VASliceParameterBufferJPEGBaseline slice_param_buf[JPEG_MAX_COMPONENTS];
    VAIQMatrixBufferJPEGBaseline qmatrix_buf;
    VAHuffmanTableBufferJPEGBaseline hufman_table_buf;
    uint32_t dht_byte_offset[4];
    uint32_t dqt_byte_offset[4];
    uint32_t huffman_tables_num;
    uint32_t quant_tables_num;
    uint32_t soi_offset;
    uint32_t eoi_offset;
    uint32_t scan_ctrl_count;
};

enum JpegDecodeStatus
{
    JD_SUCCESS,
    JD_UNINITIALIZED,
    JD_ALREADY_INITIALIZED,
    JD_RENDER_TARGET_TYPE_UNSUPPORTED,
    JD_INPUT_FORMAT_UNSUPPORTED,
    JD_OUTPUT_FORMAT_UNSUPPORTED,
    JD_INVALID_RENDER_TARGET,
    JD_RENDER_TARGET_NOT_INITIALIZED,
    JD_CODEC_UNSUPPORTED,
    JD_INITIALIZATION_ERROR,
    JD_RESOURCE_FAILURE,
    JD_DECODE_FAILURE,
    JD_BLIT_FAILURE,
    JD_ERROR_BITSTREAM,
    JD_RENDER_TARGET_BUSY,
};


inline char * fourcc2str(char * str, uint32_t fourcc)
{
    static char tmp[5];
    if (str == NULL) {
        str = tmp;
        memset(str, 0, sizeof str);
    }
    str[0] = fourcc & 0xff;
    str[1] = (fourcc >> 8 )& 0xff;
    str[2] = (fourcc >> 16) & 0xff;
    str[3] = (fourcc >> 24)& 0xff;
    str[4] = '\0';
    return str;
}

inline int fourcc2VaFormat(uint32_t fourcc)
{
    switch(fourcc) {
    case VA_FOURCC_422H:
    case VA_FOURCC_422V:
    case VA_FOURCC_YUY2:
        return VA_RT_FORMAT_YUV422;
    case VA_FOURCC_IMC3:
    case VA_FOURCC_YV12:
    case VA_FOURCC_NV12:
        return VA_RT_FORMAT_YUV420;
    case VA_FOURCC_444P:
        return VA_RT_FORMAT_YUV444;
    case VA_FOURCC_411P:
        return VA_RT_FORMAT_YUV411;
    case VA_FOURCC_BGRA:
    case VA_FOURCC_ARGB:
    case VA_FOURCC_RGBA:
        return VA_RT_FORMAT_RGB32;
    default:
        return -1;
    }
}

inline uint32_t sampFactor2Fourcc(int h1, int h2, int h3, int v1, int v2, int v3)
{
    if (h1 == 2 && h2 == 1 && h3 == 1 &&
            v1 == 2 && v2 == 1 && v3 == 1) {
        return VA_FOURCC_IMC3;
    }
    else if (h1 == 2 && h2 == 1 && h3 == 1 &&
            v1 == 1 && v2 == 1 && v3 == 1) {
        return VA_FOURCC_422H;
    }
    else if (h1 == 1 && h2 == 1 && h3 == 1 &&
            v1 == 1 && v2 == 1 && v3 == 1) {
        return VA_FOURCC_444P;
    }
    else if (h1 == 4 && h2 == 1 && h3 == 1 &&
            v1 == 1 && v2 == 1 && v3 == 1) {
        return VA_FOURCC_411P;
    }
    else if (h1 == 1 && h2 == 1 && h3 == 1 &&
            v1 == 2 && v2 == 1 && v3 == 1) {
        return VA_FOURCC_422V;
    }
    else if (h1 == 2 && h2 == 1 && h3 == 1 &&
            v1 == 2 && v2 == 2 && v3 == 2) {
        return VA_FOURCC_422H;
    }
    else if (h2 == 2 && h2 == 2 && h3 == 2 &&
            v1 == 2 && v2 == 1 && v3 == 1) {
        return VA_FOURCC_422V;
    }
    else
    {
        return VA_FOURCC('4','0','0','P');
    }
}

inline int fourcc2LumaBitsPerPixel(uint32_t fourcc)
{
    switch(fourcc) {
    case VA_FOURCC_422H:
    case VA_FOURCC_422V:
    case VA_FOURCC_IMC3:
    case VA_FOURCC_YV12:
    case VA_FOURCC_NV12:
    case VA_FOURCC_444P:
    case VA_FOURCC_411P:
        return 1;
    case VA_FOURCC_YUY2:
        return 2;
    case VA_FOURCC_BGRA:
    case VA_FOURCC_ARGB:
    case VA_FOURCC_RGBA:
        return 4;
    default:
        return 1;
    }
}

extern int fourcc2PixelFormat(uint32_t fourcc);
extern uint32_t pixelFormat2Fourcc(int pixel_format);

#endif
