/* Telephony Config Selector (TCS) - config data
**
** Copyright (C) Intel 2013
**
** Licensed under the Apache License, Version 2.0 (the "License");
** you may not use this file except in compliance with the License.
** You may obtain a copy of the License at
**
**     http://www.apache.org/licenses/LICENSE-2.0
**
** Unless required by applicable law or agreed to in writing, software
** distributed under the License is distributed on an "AS IS" BASIS,
** WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
** See the License for the specific language governing permissions and
** limitations under the License.
**
*/

#ifndef __TCS_CONFIG_HEADER__
#define __TCS_CONFIG_HEADER__

#include "stdbool.h"
#include <limits.h>
#include <cutils/properties.h>

#define NAME 64

#define LINKS \
    X(UNKNOWN), \
    X(UART), \
    X(HSI), \
    X(USB), \
    X(SHM), \

typedef enum e_link {
#undef X
#define X(a) E_LINK_ ## a
    LINKS
} e_link_t;

typedef struct mdm_info {
    char name[NAME];
    bool flashless;
    bool secured;
    e_link_t ipc_mdm;
    e_link_t ipc_bp_log;
    e_link_t ipc_cd;
    char hw_revision[NAME];
    char sw_revision[NAME];
    char mmgr_xml[NAME];
} mdm_info_t;

typedef struct cfg_info {
    char name[PROPERTY_VALUE_MAX];
} cfg_info_t;

typedef struct channel {
    /* @TODO: Currently, we only have DLC channels. But if another type is
     * used, an union should be used here */
    char device[PATH_MAX];
} channel_t;

typedef struct channels {
    /* Used by MMGR: */
    channel_t shutdown;
    channel_t sanity_check;
    channel_t secured;
    channel_t mdm_custo;
    /* used by NVM server: */
    channel_t nvm_sync;
    /* used by RIL: */
    channel_t control;
    channel_t registration;
    channel_t settings;
    channel_t sim_toolkit;
    channel_t monitoring;
    channel_t field_test;
    channel_t packet_data_1;
    channel_t packet_data_2;
    channel_t packet_data_3;
    channel_t packet_data_4;
    channel_t packet_data_5;
} channels_t;

typedef struct tlv_info {
    char folder[PATH_MAX];
    char filename[NAME];
} tlv_info_t;

#endif
