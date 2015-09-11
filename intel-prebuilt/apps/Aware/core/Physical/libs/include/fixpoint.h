/*-------------------------------------------------------------------------
 * INTEL CONFIDENTIAL
 *
 * Copyright 2012 Intel Corporation All Rights Reserved.
 *
 * This source code and all documentation related to the source code
 * ("Material") contains trade secrets and proprietary and confidential
 * information of Intel and its suppliers and licensors. The Material is
 * deemed highly confidential, and is protected by worldwide copyright and
 * trade secret laws and treaty provisions. No part of the Material may be
 * used, copied, reproduced, modified, published, uploaded, posted,
 * transmitted, distributed, or disclosed in any way without Intel's prior
 * express written permission.
 *
 * No license under any patent, copyright, trade secret or other
 * intellectual property right is granted to or conferred upon you by
 * disclosure or delivery of the Materials, either expressly, by
 * implication, inducement, estoppel or otherwise. Any license under such
 * intellectual property rights must be express and approved by Intel in
 * writing.
 *-------------------------------------------------------------------------*/
/*
 * Author: Sun, Taiyi
 * Creation Time: 04/12/2012
 * Modification Reason:
 */

#ifndef PA_FIX_POINT_H
#define PA_FIX_POINT_H


typedef int FIX;
typedef long long EFIX;

#define FIXBITS (sizeof(FIX)*8)

FIX FDIV(FIX A, FIX B, int R);
FIX ISQRT(FIX a);
FIX FMUL(FIX A, FIX B, int AR, int BR, int CR);

#endif
