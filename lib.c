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

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>

#include "iBoot32Patcher/arm32_defs.h"
#include "iBoot32Patcher/finders.h"
#include "iBoot32Patcher/functions.h"
#include "iBoot32Patcher/iBoot32Patcher.h"
#include "iBoot32Patcher/patchers.h"

int patchIBoot32(uint8_t *binary,
                 ssize_t binary_len,
                const char *custom_boot_args,
                 const char *cmd_handler_str,
                 uint32_t cmd_handler_ptr,
                 /* PBLA: New lite patching argument - BEGIN ADD */
                 bool lite_patching
                 /* PBLA: New lite patching argument - END ADD */) {

	int ret = 0;
	struct iboot_img iboot_in;

	memset(&iboot_in, 0, sizeof(iboot_in));

	printf("%s: Starting...\n", __FUNCTION__);

	iboot_in.buf = binary;
	if(!iboot_in.buf) {
		printf("%s: binary is NULL!\n", __FUNCTION__);
		return -1;
	}

	iboot_in.len = binary_len;
	if(!iboot_in.len) {
		printf("%s: binary is has 0 length!\n", __FUNCTION__);
		return -1;
	}

	uint32_t image_magic = *(uint32_t*)iboot_in.buf;
	
	if(image_magic == IMAGE3_MAGIC) {
		printf("%s: The supplied image appears to be in an img3 container. Please ensure that the image is decrypted and that the img3 header is stripped.\n", __FUNCTION__);
		return -1;
	}

	if(image_magic != IBOOT32_RESET_VECTOR_BYTES) {
		printf("%s: The supplied image is not a valid 32-bit iBoot.\n", __FUNCTION__);
		return -1;
	}

	const char* iboot_vers_str = (iboot_in.buf + IBOOT_VERS_STR_OFFSET);

	iboot_in.VERS = atoi(iboot_vers_str);
	if(!iboot_in.VERS) {
		printf("%s: No iBoot version found!\n", __FUNCTION__);
		return -1;
	}

	printf("%s: iBoot-%d inputted.\n", __FUNCTION__, iboot_in.VERS);
    
    /* PBLA: New lite patching argument - BEGIN MODIFY */
    if (!lite_patching) {
        printf("%s: /!\\ Full patching will be applied to iBoot-%d.\n", __FUNCTION__, iboot_in.VERS);
        
        /* Check to see if the loader has a kernel load routine before trying to apply custom boot args + debug-enabled override. */
        if(has_kernel_load(&iboot_in)) {
            if(custom_boot_args) {
                ret = patch_boot_args(&iboot_in, custom_boot_args);
                if(!ret) {
                    printf("%s: Error doing patch_boot_args()!\n", __FUNCTION__);
                    return -1;
                }
            }
            
            /* Only bootloaders with the kernel load routines pass the DeviceTree. */
            ret = patch_debug_enabled(&iboot_in);
            if(!ret) {
                printf("%s: Error doing patch_debug_enabled()!\n", __FUNCTION__);
                return -1;
            }
        }
        
        /* Ensure that the loader has a shell. */
        if(has_recovery_console(&iboot_in) && cmd_handler_str) {
            ret = patch_cmd_handler(&iboot_in, cmd_handler_str, cmd_handler_ptr);
            if(!ret) {
                printf("%s: Error doing patch_cmd_handler()!\n", __FUNCTION__);
                return -1;
            }
        }
    } else {
        printf("%s: /!\\ Lite-patching iBoot-%d. Some patches will be ommited.\n", __FUNCTION__, iboot_in.VERS);
    }
    /* PBLA: New lite patching argument - END MODIFY */

	/* All loaders have the RSA check. */
	ret = patch_rsa_check(&iboot_in);
	if(!ret) {
		printf("%s: Error doing patch_rsa_check()!\n", __FUNCTION__);
		return -1;
	}

	printf("%s: Done...\n", __FUNCTION__);

	return 0;
}
