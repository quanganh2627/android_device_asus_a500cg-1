/*
 * Copyright (c) 2010 Wind River Systems, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
#include <display/MultiDisplayType.h>

#ifndef __ANDROID_PVR_ANDROID_H__
#define __ANDROID_PVR_ANDROID_H__

#ifdef __cplusplus
extern "C" {
#endif

extern PVR2DCONTEXTHANDLE pvr_android_ctx;

extern int pvr_android_context_create(PVR2DCONTEXTHANDLE *);

#define CMD_VIDEO_MODE           1
#define CMD_CLONE_MODE           2
#define CMD_ROTATION_MODE        3
#define CMD_NON_ROTATION_MODE    4
#define CMD_HDMI_DISCONNECTED    5
#define PSB_HDMI_FLIP_MAX_SIZE   5
#define CMD_SET_MODE             6
#define CMD_SET_SCALE_STEP       7
#define CMD_SET_SCALE_TYPE       8
#define CMD_SET_MODE_INDEX       9

typedef int (*notify_func_t) (int cmd, void* data);
typedef struct _IMG_graphic_hdmi_ex_
{
    notify_func_t (*register_notify_func)(notify_func_t notify_rm);
    notify_func_t notify_gralloc;
    notify_func_t notify_rm;
}
IMG_graphic_hdmi_ex;

typedef struct _HDMI_MEM_INFO_
{
	PVR2DCONTEXTHANDLE h2DCtx;
	PVR2DMEMINFO*  pHDMIMemInfo[PSB_HDMI_FLIP_MAX_SIZE];
	unsigned int fb_id[PSB_HDMI_FLIP_MAX_SIZE];
	unsigned int size;
	unsigned int changed;
	unsigned int Orientation;
	MDSHDMITiming*	TimingInfo;
}
HDMI_mem_info_t;


#ifdef __cplusplus
}
#endif

#endif /* __ANDROID_PVR_ANDROID_H__ */
