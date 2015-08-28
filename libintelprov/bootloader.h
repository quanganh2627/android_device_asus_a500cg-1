/*
 * Copyright (C) 2008 The Android Open Source Project
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 *  * Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 *  * Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in
 *    the documentation and/or other materials provided with the
 *    distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
 * "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
 * FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
 * COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
 * INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
 * BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS
 * OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED
 * AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
 * OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT
 * OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 */

#ifndef _BOOTLOADER_H_
#define _BOOTLOADER_H_

typedef struct bootloader_hdr bootloader_hdr;

#define BOOTLOADER_MAGIC "BOOTLDR!"
#define BOOTLOADER_MAGIC_SIZE 8
#define COMPONENT_MAGIC_SIZE 8

#define VERSION_REVISION 1

struct bootloader_version {
	unsigned char major;
	unsigned char minor;
};

struct bootloader_hdr {
	char magic[BOOTLOADER_MAGIC_SIZE];
	uint16_t revision;
	struct bootloader_version version;
	unsigned int ext_hdr_offset;          /* extension header offset */
};

#define FLAG_FLASH 1
struct component_hdr
{
	char magic[COMPONENT_MAGIC_SIZE];
	uint32_t size;		/* size of the component */
	uint8_t flags;		/* Flash flag, and more for the future */
	uint8_t reserved[3];	/* reserved for alignement on 16 bytes and future used */
};

#endif /* _BOOTLOADER_H_ */
