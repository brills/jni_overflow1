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
void myfunc(char *in) {
	char buf[8]; 
	//memcpy(buf,in,42);
	strcpy(buf, in);
	return;
}

void f1(int x, char *buf) {
	if (x) f1(x - 1, buf);
	else
		myfunc(buf);
}

jstring
Java_com_example_hellojni_HelloJni_passPayloadToJNI( JNIEnv* env, jobject this, jbyteArray pld)
{
	jbyte *buf = (*env)->GetByteArrayElements(env, pld, 0);
	f1(10, buf);
	(*env)->ReleaseByteArrayElements(env, pld, buf, JNI_ABORT);
	return (*env)->NewStringUTF(env, "I should not appear!");

}


