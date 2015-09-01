/* INTEL CONFIDENTIAL
* Copyright (c) 2012 Intel Corporation.  All rights reserved.
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
*/


#ifndef IMAGE_DECODER_TRACE_H_
#define IMAGE_DECODER_TRACE_H_


#define ENABLE_IMAGE_DECODER_TRACE
//#define ANDROID


#ifdef ENABLE_IMAGE_DECODER_TRACE

#ifndef ANDROID

#include <stdio.h>
#include <stdarg.h>

extern void TraceImageDecoder(const char* cat, const char* fun, int line, const char* format, ...);
#define IMAGE_DECODER_TRACE(cat, format, ...) \
TraceImageDecoder(cat, __FUNCTION__, __LINE__, format,  ##__VA_ARGS__)

#define ETRACE(format, ...) IMAGE_DECODER_TRACE("ERROR:   ",  format, ##__VA_ARGS__)
#define WTRACE(format, ...) IMAGE_DECODER_TRACE("WARNING: ",  format, ##__VA_ARGS__)
#define ITRACE(format, ...) IMAGE_DECODER_TRACE("INFO:    ",  format, ##__VA_ARGS__)
#define VTRACE(format, ...) IMAGE_DECODER_TRACE("VERBOSE: ",  format, ##__VA_ARGS__)

#else
// for Android OS

#ifdef LOG_TAG
#undef LOG_TAG
#endif
#define LOG_TAG "ImageDecoder"

#ifdef LOG_NDEBUG
#undef LOG_NDEBUG
#endif
#define LOG_NDEBUG 0


#include <utils/Log.h>
#define ETRACE(...) ALOGE(__VA_ARGS__)
#define WTRACE(...) ALOGW(__VA_ARGS__)
#define ITRACE(...) ALOGI(__VA_ARGS__)
#define VTRACE(...) ALOGV(__VA_ARGS__)

#endif


#else

#define ETRACE(format, ...)
#define WTRACE(format, ...)
#define ITRACE(format, ...)
#define VTRACE(format, ...)


#endif /* ENABLE_VIDEO_DECODER_TRACE*/

#endif /*IMAGE_DECODER_TRACE_H_*/


