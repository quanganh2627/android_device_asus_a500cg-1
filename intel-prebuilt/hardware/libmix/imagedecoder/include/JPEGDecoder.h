/* INTEL CONFIDENTIAL
* Copyright (c) 2012, 2013 Intel Corporation.  All rights reserved.
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
*    Nana Guo <nana.n.guo@intel.com>
*    Yao Cheng <yao.cheng@intel.com>
*
*/


#ifndef JPEGDEC_H
#define JPEGDEC_H

#include <VideoVPPBase.h>
#include <utils/KeyedVector.h>
#include <utils/threads.h>
#include "JPEGCommon.h"
using namespace android;

struct CJPEGParse;
class JpegBlitter;

// Non thread-safe
class JpegDecoder
{
friend class JpegBlitter;
public:
    struct MapHandle
    {
    friend class JpegDecoder;
    public:
        bool valid;
    private:
        VAImage *img;
    };
    JpegDecoder();
    virtual ~JpegDecoder();
    virtual JpegDecodeStatus init(int width, int height, RenderTarget **targets, int num);
    virtual void deinit();
    virtual JpegDecodeStatus parse(JpegInfo &jpginfo);
    virtual JpegDecodeStatus decode(JpegInfo &jpginfo, RenderTarget &target);
    virtual JpegDecodeStatus sync(RenderTarget &target);
    virtual bool busy(RenderTarget &target) const;
    virtual JpegDecodeStatus blit(RenderTarget &src, RenderTarget &dst);
    virtual MapHandle mapData(RenderTarget &target, void ** data, uint32_t * offsets, uint32_t * pitches);
    virtual void unmapData(RenderTarget &target, MapHandle maphandle);
private:
    bool mInitialized;
    mutable Mutex mLock;
    VADisplay mDisplay;
    VAConfigID mConfigId;
    VAContextID mContextId;
    CJPEGParse *mParser;
    JpegBlitter *mBlitter;
    bool mHaveHuff;
    static const VAHuffmanTableBufferJPEGBaseline default_huff;
    KeyedVector<buffer_handle_t, VASurfaceID> mGrallocSurfaceMap;
    KeyedVector<unsigned long, VASurfaceID> mDrmSurfaceMap;
    KeyedVector<int, VASurfaceID> mNormalSurfaceMap;
    virtual VASurfaceID getSurfaceID(RenderTarget &target) const;
    virtual JpegDecodeStatus parseTableData(JpegInfo &jpginfo);
    virtual bool jpegColorFormatSupported(JpegInfo &jpginfo) const;
    virtual JpegDecodeStatus createSurfaceFromRenderTarget(RenderTarget &target, VASurfaceID *surf_id);
    virtual JpegDecodeStatus createSurfaceInternal(int width, int height, int pixel_format, int handle, VASurfaceID *surf_id);
    virtual JpegDecodeStatus createSurfaceDrm(int width, int height, int pixel_format, unsigned long boname, int stride, VASurfaceID *surf_id);
    virtual JpegDecodeStatus createSurfaceGralloc(int width, int height, int pixel_format, buffer_handle_t handle, int stride, VASurfaceID *surf_id);
};


#endif

