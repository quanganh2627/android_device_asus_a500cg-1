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

#ifndef PA_PROCESSING_H
#define PA_PROCESSING_H

#include "_common.h"

#ifdef INSTANT_MODE
#define ACT_INTF(n) activity_instant_##n
#else
#define ACT_INTF(n) activity_##n
#endif

typedef int FIX;
typedef long long EFIX;

#define FIXBITS (sizeof(FIX)*8)

#ifdef __cplusplus
extern "C"
{
#endif

typedef enum
{
    ACT_PROP_START = 40,
    ACT_PROP_MODE,
    ACT_PROP_CLSMASK,
    ACT_PROP_N,
    ACT_PROP_END = 60
} act_prop_t;

typedef enum
{
    ACT_MODE_NCYCLE,
    ACT_MODE_ONCHANGE,
    ACT_MODE_END
} act_mode_t;

enum
{
    NONE = 0, BIKING, WALKING, RUNNING,
    INCAR, INTRAIN, RAND, SED, CLASS_MAX
};

typedef int (*ACTIVITY_CB)(void *ctx, short *results, int len);

SH_STATUS ACT_INTF(init) (ACTIVITY_CB cb, void *ctx);
int       ACT_INTF(collect_data) (short ax, short ay, short az);
SH_STATUS ACT_INTF(process) (void);
SH_STATUS ACT_INTF(reset) (void);
FIX *     ACT_INTF(get_feature_buf) (void);
short *   ACT_INTF(get_result) (void);
int       ACT_INTF(set_property) (int prop, int value);
extern volatile int ACT_INTF(in_processing);
#ifdef __cplusplus
}
#endif

#endif
