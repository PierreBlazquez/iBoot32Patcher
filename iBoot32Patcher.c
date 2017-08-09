/*
 * Copyright 2013-2016, iH8sn0w. <iH8sn0w@iH8sn0w.com>
 *
 * This file is part of iBoot32Patcher.
 *
 * iBoot32Patcher is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * iBoot32Patcher is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with iBoot32Patcher.  If not, see <http://www.gnu.org/licenses/>.
 */

/* iBoot32Patcher
 *
 * Universal 32-bit iBoot patcher for iPhone OS 2.0 --> iOS 10
 *
 * Build:
 * The cmakes.
 *
 * Usage:
 * ./iBoot32Patcher iBoot.n49.RELEASE.dfu.decrypted iBoot.n49.RELEASE.dfu.patched
 * ./iBoot32Patcher iBoot.n49.RELEASE.dfu.decrypted iBoot.n49.RELEASE.dfu.patched -b "cs_enforcement_disable=1 -v"
 * ./iBoot32Patcher iBoot.n49.RELEASE.dfu.decrypted iBoot.n49.RELEASE.dfu.patched -b "cs_enforcement_disable=1" -c "ticket" 0x80000000
 * ./iBoot32Patcher iBoot.n49.RELEASE.dfu.decrypted iBoot.n49.RELEASE.dfu.patched -c "ticket" 0x80000000
 *
 */

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>

#include "iBoot32Patcher/iBoot32Patcher.h"

#define HAS_ARG(x,y) (!strcmp(argv[i], x) && (i + y) < argc)

int main(int argc, char** argv) {
	int ret = 0;
	FILE* fp = NULL;
	uint32_t cmd_handler_ptr = 0;
	char* cmd_handler_str = NULL;
	char* custom_boot_args = NULL;
	uint8_t *binary;
	ssize_t binary_len;

	if(argc < 3) {
		printf("Usage: %s <iboot_in> <iboot_out> [args]\n", argv[0]);
		printf("\t-b <str>\tApply custom boot args.\n");
		printf("\t-c <cmd> <ptr>\tChange a command handler's pointer (hex).\n");
		return -1;
	}

	printf("%s: Starting...\n", __FUNCTION__);

	for(int i = 0; i < argc; i++) {
		if(HAS_ARG("-b", 1)) {
			custom_boot_args = (char*) argv[i+1];
		} else if(HAS_ARG("-c", 2)) {
			cmd_handler_str = (char*) argv[i+1];
			sscanf((char*) argv[i+2], "0x%08X", &cmd_handler_ptr);
		}
	}

	fp = fopen(argv[1], "rb");
	if(!fp) {
		printf("%s: Error opening %s!\n", __FUNCTION__, argv[1]);
		return -1;
	}

	fseek(fp, 0, SEEK_END);
	binary_len = ftell(fp);
	fseek(fp, 0, SEEK_SET);

	binary = (void*)malloc(binary_len);
	if(!binary) {
		printf("%s: Out of memory!\n", __FUNCTION__);
		fclose(fp);
		return -1;
	}
	
	fread(binary, 1, binary_len, fp);
	fclose(fp);

	ret = patchIBoot32(binary, binary_len, custom_boot_args, cmd_handler_str, cmd_handler_ptr);

	if (ret < 0) {
		printf("%s: Uh-oh, patchIBoot32 had a problem... (%d)\n", __FUNCTION__, ret);
	}

	printf("%s: Writing out patched file to %s...\n", __FUNCTION__, argv[2]);

	/* Write out the patched file... */
	fp = fopen(argv[2], "wb+");
	if(!fp) {
		printf("%s: Unable to open %s!\n", __FUNCTION__, argv[2]);
		free(binary);
		return -1;
	}

	fwrite(binary, 1, binary_len, fp);
	fflush(fp);
	fclose(fp);

	free(binary);

	printf("%s: Quitting...\n", __FUNCTION__);
	return 0;
}
