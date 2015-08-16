/*
 * Copyright 2014 Intel Corporation
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include <bootimg.h>
#include <stdio.h>
#include <stdbool.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>
#include <fcntl.h>
#include "util.h"
#include "flash.h"
#include "fastboot.h"
#include "droidboot_plugin.h"
#include "bootloader.h"


#define IFWI_MAGIC          "IFWI!!!!"
#define DROIDBOOT_MAGIC     "DROIDBT!"
#define SPLASHSCREEN_MAGIC  "SPLASHS!"
#define CAPSULE_MAGIC       "CAPSULE!"
#define ESP_MAGIC           "ESP!!!!!"

static bool next_component(struct bootloader_hdr *bootl_hdr,
			   struct component_hdr **c_hdr, unsigned sz)
{
	if (*c_hdr == NULL) {
		*c_hdr = (struct component_hdr *) (bootl_hdr + 1);
		return true;
	}

	*c_hdr = (struct component_hdr *)((long)(*c_hdr + 1) + (*c_hdr)->size);
	return (unsigned long)*c_hdr - (unsigned long)bootl_hdr < sz;
}

static bool next_component_filter(struct bootloader_hdr *bootl_hdr,
				  struct component_hdr **c_hdr, unsigned sz,
				  const char* filter)
{
	printf("Looking for %s\n", filter);
	while (next_component(bootl_hdr, c_hdr, sz))
		if (!strncmp((*c_hdr)->magic, filter, strlen(filter)) &&
		    (*c_hdr)->flags & FLAG_FLASH)
			return true;
	return false;
}

int flash_bootloader(void *data, unsigned sz)
{
	struct bootloader_hdr *bootl_hdr = data;
	struct component_hdr *c_hdr = NULL;
	int ret = -1;

	if (sz < sizeof(*bootl_hdr)) {
		fastboot_fail("dowloaded file size is incorrect !");
		return ret;
	}

	if (strncmp((char *) bootl_hdr->magic, BOOTLOADER_MAGIC, sizeof(BOOTLOADER_MAGIC) - 1)) {
		fastboot_fail("invalid bootloader header !");
		return ret;
	}

	unsigned i;

	printf("Found bootloader rev %d version %02d.%02d\n", bootl_hdr->revision,
		bootl_hdr->version.major, bootl_hdr->version.minor);

	const char *magics[] = { DROIDBOOT_MAGIC, IFWI_MAGIC, SPLASHSCREEN_MAGIC, CAPSULE_MAGIC, ESP_MAGIC};
	const char *names[] = { FASTBOOT_OS_NAME, IFWI_NAME, SPLASHSCREEN_NAME, CAPSULE_NAME, ESP_UPDATE_NAME};
	bool something_flashed = false;
	for (i = 0; i < ARRAY_SIZE(magics); i++) {
		bool present = false;
		bool flashed = false;
		c_hdr = NULL;
		while (next_component_filter(bootl_hdr, &c_hdr, sz, magics[i])) {
			present = true;
			printf("flashing %s\n", names[i]);
			ret =  aboot_flash(names[i], c_hdr + 1, c_hdr->size);
			if (ret != 0 && ret != -EPERM)
				return ret;
			if (ret == 0)
				flashed = true;
		}
		if (present && !flashed) {
			if (!strcmp(names[i], FASTBOOT_OS_NAME)) {
				error("Bootloader version not supported\n");
				return ret;
			}
			else
				print("No valid %s image found\n", names[i]);
		}
		something_flashed = something_flashed || flashed;
	}
	if (!something_flashed)
		error("Nothing to be flashed\n");

	return 0;
}
