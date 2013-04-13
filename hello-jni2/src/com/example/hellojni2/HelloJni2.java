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
 */
package com.example.hellojni2;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import android.os.Bundle;


public class HelloJni2 extends Activity
{
	byte[] payload;

    /** Called when the activity is first created. */
    @Override
    public void onCreate(Bundle savedInstanceState)
    {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.main);
        /* Create a TextView and set its content.
         * the text is retrieved by calling a native
         * function.
         */
        
        TextView  tv = (TextView) findViewById(R.id.InfoView);
        TextView pld_dump = (TextView) findViewById(R.id.PayloadDump);
        Button btn_vld = (Button) findViewById(R.id.ValidPayload);
        btn_vld.setOnClickListener(new View.OnClickListener() {
			
			@Override
			public void onClick(View v) {
				// TODO Auto-generated method stub
				Intent i = new Intent();
				ComponentName cn = new ComponentName("com.example.hellojni","com.example.hellojni.HelloJni");
				i.putExtra("payload", payload);
				i.setComponent(cn);
				startActivity(i);
			}
		});
        
        payload = new byte[128];
        for (int i = 0; i < 128; i++)
        	payload[i] = 0;
        
        String s = genPayload(payload);
        tv.setText(s);
        pld_dump.setText(dumpPayload());
        
    }
    private String dumpPayload(){
    	StringBuffer result = new StringBuffer();
    	for (int i = 0; i < 128; i++) {
    		if (i % 8 == 0)
    			result.append("\n");
       		result.append(String.format("%02x ", payload[i]&0xff));
    	}
    	return result.toString();
    }

    /* A native method that is implemented by the
     * 'hello-jni' native library, which is packaged
     * with this application.
     */
    public native String  genPayload(byte [] pld);

     /* this is used to load the 'hello-jni' library on application
     * startup. The library has already been unpacked into
     * /data/data/com.example.hellojni/lib/libhello-jni.so at
     * installation time by the package manager.
     */
    static {
        System.loadLibrary("hello-jni2");
    }
}
