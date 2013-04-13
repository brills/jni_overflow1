
libhello-jni.so:     file format elf32-littlearm


Disassembly of section .plt:

00000bc8 <__cxa_atexit@plt-0x14>:
 bc8:	e52de004 	push	{lr}		; (str lr, [sp, #-4]!)
 bcc:	e59fe004 	ldr	lr, [pc, #4]	; bd8 <__cxa_atexit@plt-0x4>
 bd0:	e08fe00e 	add	lr, pc, lr
 bd4:	e5bef008 	ldr	pc, [lr, #8]!
 bd8:	000033fc 	strdeq	r3, [r0], -ip

00000bdc <__cxa_atexit@plt>:
 bdc:	e28fc600 	add	ip, pc, #0
 be0:	e28cca03 	add	ip, ip, #12288	; 0x3000
 be4:	e5bcf3fc 	ldr	pc, [ip, #1020]!	; 0x3fc

00000be8 <__cxa_finalize@plt>:
 be8:	e28fc600 	add	ip, pc, #0
 bec:	e28cca03 	add	ip, ip, #12288	; 0x3000
 bf0:	e5bcf3f4 	ldr	pc, [ip, #1012]!	; 0x3f4

00000bf4 <memcpy@plt>:
 bf4:	e28fc600 	add	ip, pc, #0
 bf8:	e28cca03 	add	ip, ip, #12288	; 0x3000
 bfc:	e5bcf3ec 	ldr	pc, [ip, #1004]!	; 0x3ec

00000c00 <__stack_chk_fail@plt>:
 c00:	e28fc600 	add	ip, pc, #0
 c04:	e28cca03 	add	ip, ip, #12288	; 0x3000
 c08:	e5bcf3e4 	ldr	pc, [ip, #996]!	; 0x3e4

00000c0c <__gnu_Unwind_Find_exidx@plt>:
 c0c:	e28fc600 	add	ip, pc, #0
 c10:	e28cca03 	add	ip, ip, #12288	; 0x3000
 c14:	e5bcf3dc 	ldr	pc, [ip, #988]!	; 0x3dc

00000c18 <abort@plt>:
 c18:	e28fc600 	add	ip, pc, #0
 c1c:	e28cca03 	add	ip, ip, #12288	; 0x3000
 c20:	e5bcf3d4 	ldr	pc, [ip, #980]!	; 0x3d4

00000c24 <__cxa_begin_cleanup@plt>:
 c24:	e28fc600 	add	ip, pc, #0
 c28:	e28cca03 	add	ip, ip, #12288	; 0x3000
 c2c:	e5bcf3cc 	ldr	pc, [ip, #972]!	; 0x3cc

00000c30 <__cxa_type_match@plt>:
 c30:	e28fc600 	add	ip, pc, #0
 c34:	e28cca03 	add	ip, ip, #12288	; 0x3000
 c38:	e5bcf3c4 	ldr	pc, [ip, #964]!	; 0x3c4

Disassembly of section .text:

00000c3c <myfunc-0x24>:
     c3c:	e59f2008 	ldr	r2, [pc, #8]	; c4c <__cxa_type_match@plt+0x1c>
     c40:	e3a01000 	mov	r1, #0
     c44:	e08f2002 	add	r2, pc, r2
     c48:	eaffffe3 	b	bdc <__cxa_atexit@plt>
     c4c:	000033b4 			; <UNDEFINED> instruction: 0x000033b4
     c50:	e59f0004 	ldr	r0, [pc, #4]	; c5c <__cxa_type_match@plt+0x2c>
     c54:	e08f0000 	add	r0, pc, r0
     c58:	eaffffe2 	b	be8 <__cxa_finalize@plt>
     c5c:	000033a4 	andeq	r3, r0, r4, lsr #7

00000c60 <myfunc>:
     c60:	e92d4810 	push	{r4, fp, lr}
     c64:	e28db008 	add	fp, sp, #8
     c68:	e24dd01c 	sub	sp, sp, #28
     c6c:	e50b0020 	str	r0, [fp, #-32]
     c70:	e59f405c 	ldr	r4, [pc, #92]	; cd4 <myfunc+0x74>
     c74:	e08f4004 	add	r4, pc, r4
     c78:	e59f3058 	ldr	r3, [pc, #88]	; cd8 <myfunc+0x78>
     c7c:	e7943003 	ldr	r3, [r4, r3]
     c80:	e5933000 	ldr	r3, [r3]
     c84:	e50b3010 	str	r3, [fp, #-16]
     c88:	e24b2018 	sub	r2, fp, #24
     c8c:	e51b3020 	ldr	r3, [fp, #-32]
     c90:	e1a01002 	mov	r1, r2
     c94:	e1a02003 	mov	r2, r3
     c98:	e3a0302a 	mov	r3, #42	; 0x2a
     c9c:	e1a00001 	mov	r0, r1
     ca0:	e1a01002 	mov	r1, r2
     ca4:	e1a02003 	mov	r2, r3
     ca8:	ebffffd1 	bl	bf4 <memcpy@plt>
     cac:	e1a00000 	nop			; (mov r0, r0)
     cb0:	e59f3020 	ldr	r3, [pc, #32]	; cd8 <myfunc+0x78>
     cb4:	e7943003 	ldr	r3, [r4, r3]
     cb8:	e51b2010 	ldr	r2, [fp, #-16]
     cbc:	e5933000 	ldr	r3, [r3]
     cc0:	e1520003 	cmp	r2, r3
     cc4:	0a000000 	beq	ccc <myfunc+0x6c>
     cc8:	ebffffcc 	bl	c00 <__stack_chk_fail@plt>
     ccc:	e24bd008 	sub	sp, fp, #8
     cd0:	e8bd8810 	pop	{r4, fp, pc}
     cd4:	00003358 	andeq	r3, r0, r8, asr r3
     cd8:	ffffffe0 			; <UNDEFINED> instruction: 0xffffffe0

00000cdc <f1>:
     cdc:	e92d4800 	push	{fp, lr}
     ce0:	e28db004 	add	fp, sp, #4
     ce4:	e24dd008 	sub	sp, sp, #8
     ce8:	e50b0008 	str	r0, [fp, #-8]
     cec:	e50b100c 	str	r1, [fp, #-12]
     cf0:	e51b3008 	ldr	r3, [fp, #-8]
     cf4:	e3530000 	cmp	r3, #0
     cf8:	0a000005 	beq	d14 <f1+0x38>
     cfc:	e51b3008 	ldr	r3, [fp, #-8]
     d00:	e2433001 	sub	r3, r3, #1
     d04:	e1a00003 	mov	r0, r3
     d08:	e51b100c 	ldr	r1, [fp, #-12]
     d0c:	ebfffff2 	bl	cdc <f1>
     d10:	ea000001 	b	d1c <f1+0x40>
     d14:	e51b000c 	ldr	r0, [fp, #-12]
     d18:	ebffffd0 	bl	c60 <myfunc>
     d1c:	e24bd004 	sub	sp, fp, #4
     d20:	e8bd8800 	pop	{fp, pc}

00000d24 <Java_com_example_hellojni_HelloJni_passPayloadToJNI>:
     d24:	e92d4800 	push	{fp, lr}
     d28:	e28db004 	add	fp, sp, #4
     d2c:	e24dd018 	sub	sp, sp, #24
     d30:	e50b0010 	str	r0, [fp, #-16]
     d34:	e50b1014 	str	r1, [fp, #-20]
     d38:	e50b2018 	str	r2, [fp, #-24]
     d3c:	e51b3010 	ldr	r3, [fp, #-16]
     d40:	e5933000 	ldr	r3, [r3]
     d44:	e59332e0 	ldr	r3, [r3, #736]	; 0x2e0
     d48:	e51b0010 	ldr	r0, [fp, #-16]
     d4c:	e51b1018 	ldr	r1, [fp, #-24]
     d50:	e3a02000 	mov	r2, #0
     d54:	e12fff33 	blx	r3
     d58:	e50b0008 	str	r0, [fp, #-8]
     d5c:	e3a0000a 	mov	r0, #10
     d60:	e51b1008 	ldr	r1, [fp, #-8]
     d64:	ebffffdc 	bl	cdc <f1>
     d68:	e51b3010 	ldr	r3, [fp, #-16]
     d6c:	e5933000 	ldr	r3, [r3]
     d70:	e593c300 	ldr	ip, [r3, #768]	; 0x300
     d74:	e51b0010 	ldr	r0, [fp, #-16]
     d78:	e51b1018 	ldr	r1, [fp, #-24]
     d7c:	e51b2008 	ldr	r2, [fp, #-8]
     d80:	e3a03002 	mov	r3, #2
     d84:	e12fff3c 	blx	ip
     d88:	e51b3010 	ldr	r3, [fp, #-16]
     d8c:	e5933000 	ldr	r3, [r3]
     d90:	e593229c 	ldr	r2, [r3, #668]	; 0x29c
     d94:	e51b0010 	ldr	r0, [fp, #-16]
     d98:	e59f3018 	ldr	r3, [pc, #24]	; db8 <Java_com_example_hellojni_HelloJni_passPayloadToJNI+0x94>
     d9c:	e08f3003 	add	r3, pc, r3
     da0:	e1a01003 	mov	r1, r3
     da4:	e12fff32 	blx	r2
     da8:	e1a03000 	mov	r3, r0
     dac:	e1a00003 	mov	r0, r3
     db0:	e24bd004 	sub	sp, fp, #4
     db4:	e8bd8800 	pop	{fp, pc}
     db8:	00001554 	andeq	r1, r0, r4, asr r5
     dbc:	e5903000 	ldr	r3, [r0]
     dc0:	e3130101 	tst	r3, #1073741824	; 0x40000000
     dc4:	13833102 	orrne	r3, r3, #-2147483648	; 0x80000000
     dc8:	03c33102 	biceq	r3, r3, #-2147483648	; 0x80000000
     dcc:	e0800003 	add	r0, r0, r3
     dd0:	e12fff1e 	bx	lr
     dd4:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
     dd8:	e59f51ac 	ldr	r5, [pc, #428]	; f8c <Java_com_example_hellojni_HelloJni_passPayloadToJNI+0x268>
     ddc:	e59f31ac 	ldr	r3, [pc, #428]	; f90 <Java_com_example_hellojni_HelloJni_passPayloadToJNI+0x26c>
     de0:	e08f5005 	add	r5, pc, r5
     de4:	e7953003 	ldr	r3, [r5, r3]
     de8:	e24dd014 	sub	sp, sp, #20
     dec:	e3530000 	cmp	r3, #0
     df0:	e1a04000 	mov	r4, r0
     df4:	e2416002 	sub	r6, r1, #2
     df8:	0a000005 	beq	e14 <Java_com_example_hellojni_HelloJni_passPayloadToJNI+0xf0>
     dfc:	e1a00006 	mov	r0, r6
     e00:	e28d100c 	add	r1, sp, #12
     e04:	ebffff80 	bl	c0c <__gnu_Unwind_Find_exidx@plt>
     e08:	e2509000 	subs	r9, r0, #0
     e0c:	1a000007 	bne	e30 <Java_com_example_hellojni_HelloJni_passPayloadToJNI+0x10c>
     e10:	ea000056 	b	f70 <Java_com_example_hellojni_HelloJni_passPayloadToJNI+0x24c>
     e14:	e59f3178 	ldr	r3, [pc, #376]	; f94 <Java_com_example_hellojni_HelloJni_passPayloadToJNI+0x270>
     e18:	e59f2178 	ldr	r2, [pc, #376]	; f98 <Java_com_example_hellojni_HelloJni_passPayloadToJNI+0x274>
     e1c:	e7953003 	ldr	r3, [r5, r3]
     e20:	e7959002 	ldr	r9, [r5, r2]
     e24:	e0693003 	rsb	r3, r9, r3
     e28:	e1a031c3 	asr	r3, r3, #3
     e2c:	e58d300c 	str	r3, [sp, #12]
     e30:	e59d300c 	ldr	r3, [sp, #12]
     e34:	e3530000 	cmp	r3, #0
     e38:	0a000021 	beq	ec4 <Java_com_example_hellojni_HelloJni_passPayloadToJNI+0x1a0>
     e3c:	e2433001 	sub	r3, r3, #1
     e40:	e1a0b003 	mov	fp, r3
     e44:	e3a0a000 	mov	sl, #0
     e48:	e58d3004 	str	r3, [sp, #4]
     e4c:	e08a700b 	add	r7, sl, fp
     e50:	e0877fa7 	add	r7, r7, r7, lsr #31
     e54:	e1a070c7 	asr	r7, r7, #1
     e58:	e0898187 	add	r8, r9, r7, lsl #3
     e5c:	e1a00008 	mov	r0, r8
     e60:	ebffffd5 	bl	dbc <Java_com_example_hellojni_HelloJni_passPayloadToJNI+0x98>
     e64:	e59d2004 	ldr	r2, [sp, #4]
     e68:	e1570002 	cmp	r7, r2
     e6c:	e1a03000 	mov	r3, r0
     e70:	03e00000 	mvneq	r0, #0
     e74:	0a000005 	beq	e90 <Java_com_example_hellojni_HelloJni_passPayloadToJNI+0x16c>
     e78:	e2870001 	add	r0, r7, #1
     e7c:	e0890180 	add	r0, r9, r0, lsl #3
     e80:	e58d3000 	str	r3, [sp]
     e84:	ebffffcc 	bl	dbc <Java_com_example_hellojni_HelloJni_passPayloadToJNI+0x98>
     e88:	e59d3000 	ldr	r3, [sp]
     e8c:	e2400001 	sub	r0, r0, #1
     e90:	e1560003 	cmp	r6, r3
     e94:	2a000003 	bcs	ea8 <Java_com_example_hellojni_HelloJni_passPayloadToJNI+0x184>
     e98:	e157000a 	cmp	r7, sl
     e9c:	0a000008 	beq	ec4 <Java_com_example_hellojni_HelloJni_passPayloadToJNI+0x1a0>
     ea0:	e247b001 	sub	fp, r7, #1
     ea4:	eaffffe8 	b	e4c <Java_com_example_hellojni_HelloJni_passPayloadToJNI+0x128>
     ea8:	e1560000 	cmp	r6, r0
     eac:	8a000002 	bhi	ebc <Java_com_example_hellojni_HelloJni_passPayloadToJNI+0x198>
     eb0:	e3580000 	cmp	r8, #0
     eb4:	1a000006 	bne	ed4 <Java_com_example_hellojni_HelloJni_passPayloadToJNI+0x1b0>
     eb8:	ea000001 	b	ec4 <Java_com_example_hellojni_HelloJni_passPayloadToJNI+0x1a0>
     ebc:	e287a001 	add	sl, r7, #1
     ec0:	eaffffe1 	b	e4c <Java_com_example_hellojni_HelloJni_passPayloadToJNI+0x128>
     ec4:	e3a03000 	mov	r3, #0
     ec8:	e5843010 	str	r3, [r4, #16]
     ecc:	e3a00009 	mov	r0, #9
     ed0:	ea00002b 	b	f84 <Java_com_example_hellojni_HelloJni_passPayloadToJNI+0x260>
     ed4:	e1a00008 	mov	r0, r8
     ed8:	ebffffb7 	bl	dbc <Java_com_example_hellojni_HelloJni_passPayloadToJNI+0x98>
     edc:	e5983004 	ldr	r3, [r8, #4]
     ee0:	e3530001 	cmp	r3, #1
     ee4:	03a03000 	moveq	r3, #0
     ee8:	05843010 	streq	r3, [r4, #16]
     eec:	e5840048 	str	r0, [r4, #72]	; 0x48
     ef0:	03a00005 	moveq	r0, #5
     ef4:	0a000022 	beq	f84 <Java_com_example_hellojni_HelloJni_passPayloadToJNI+0x260>
     ef8:	e3530000 	cmp	r3, #0
     efc:	e2880004 	add	r0, r8, #4
     f00:	b584004c 	strlt	r0, [r4, #76]	; 0x4c
     f04:	b3a03001 	movlt	r3, #1
     f08:	ba000002 	blt	f18 <Java_com_example_hellojni_HelloJni_passPayloadToJNI+0x1f4>
     f0c:	ebffffaa 	bl	dbc <Java_com_example_hellojni_HelloJni_passPayloadToJNI+0x98>
     f10:	e3a03000 	mov	r3, #0
     f14:	e584004c 	str	r0, [r4, #76]	; 0x4c
     f18:	e594004c 	ldr	r0, [r4, #76]	; 0x4c
     f1c:	e5843050 	str	r3, [r4, #80]	; 0x50
     f20:	e5903000 	ldr	r3, [r0]
     f24:	e3530000 	cmp	r3, #0
     f28:	aa000012 	bge	f78 <Java_com_example_hellojni_HelloJni_passPayloadToJNI+0x254>
     f2c:	e1a03c23 	lsr	r3, r3, #24
     f30:	e213300f 	ands	r3, r3, #15
     f34:	059f2060 	ldreq	r2, [pc, #96]	; f9c <Java_com_example_hellojni_HelloJni_passPayloadToJNI+0x278>
     f38:	01a00003 	moveq	r0, r3
     f3c:	07952002 	ldreq	r2, [r5, r2]
     f40:	05842010 	streq	r2, [r4, #16]
     f44:	0a00000e 	beq	f84 <Java_com_example_hellojni_HelloJni_passPayloadToJNI+0x260>
     f48:	e3530001 	cmp	r3, #1
     f4c:	e3a00000 	mov	r0, #0
     f50:	059f3048 	ldreq	r3, [pc, #72]	; fa0 <Java_com_example_hellojni_HelloJni_passPayloadToJNI+0x27c>
     f54:	0a000002 	beq	f64 <Java_com_example_hellojni_HelloJni_passPayloadToJNI+0x240>
     f58:	e3530002 	cmp	r3, #2
     f5c:	1a000003 	bne	f70 <Java_com_example_hellojni_HelloJni_passPayloadToJNI+0x24c>
     f60:	e59f303c 	ldr	r3, [pc, #60]	; fa4 <Java_com_example_hellojni_HelloJni_passPayloadToJNI+0x280>
     f64:	e7953003 	ldr	r3, [r5, r3]
     f68:	e5843010 	str	r3, [r4, #16]
     f6c:	ea000004 	b	f84 <Java_com_example_hellojni_HelloJni_passPayloadToJNI+0x260>
     f70:	e5840010 	str	r0, [r4, #16]
     f74:	eaffffd4 	b	ecc <Java_com_example_hellojni_HelloJni_passPayloadToJNI+0x1a8>
     f78:	ebffff8f 	bl	dbc <Java_com_example_hellojni_HelloJni_passPayloadToJNI+0x98>
     f7c:	e5840010 	str	r0, [r4, #16]
     f80:	e3a00000 	mov	r0, #0
     f84:	e28dd014 	add	sp, sp, #20
     f88:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
     f8c:	000031ec 	andeq	r3, r0, ip, ror #3
     f90:	ffffffe4 			; <UNDEFINED> instruction: 0xffffffe4
     f94:	ffffffe8 			; <UNDEFINED> instruction: 0xffffffe8
     f98:	ffffffec 			; <UNDEFINED> instruction: 0xffffffec
     f9c:	fffffff0 			; <UNDEFINED> instruction: 0xfffffff0
     fa0:	fffffff4 			; <UNDEFINED> instruction: 0xfffffff4
     fa4:	fffffff8 			; <UNDEFINED> instruction: 0xfffffff8
     fa8:	e5903000 	ldr	r3, [r0]
     fac:	e92d4010 	push	{r4, lr}
     fb0:	e3130001 	tst	r3, #1
     fb4:	e1a04000 	mov	r4, r0
     fb8:	1a000005 	bne	fd4 <Java_com_example_hellojni_HelloJni_passPayloadToJNI+0x2b0>
     fbc:	e3130002 	tst	r3, #2
     fc0:	e2800048 	add	r0, r0, #72	; 0x48
     fc4:	0a000001 	beq	fd0 <Java_com_example_hellojni_HelloJni_passPayloadToJNI+0x2ac>
     fc8:	eb0002fb 	bl	1bbc <__gnu_Unwind_Restore_VFP_D>
     fcc:	ea000000 	b	fd4 <Java_com_example_hellojni_HelloJni_passPayloadToJNI+0x2b0>
     fd0:	eb0002f5 	bl	1bac <__gnu_Unwind_Restore_VFP>
     fd4:	e5943000 	ldr	r3, [r4]
     fd8:	e3130004 	tst	r3, #4
     fdc:	1a000001 	bne	fe8 <Java_com_example_hellojni_HelloJni_passPayloadToJNI+0x2c4>
     fe0:	e28400d0 	add	r0, r4, #208	; 0xd0
     fe4:	eb0002f8 	bl	1bcc <__gnu_Unwind_Restore_VFP_D_16_to_31>
     fe8:	e5943000 	ldr	r3, [r4]
     fec:	e3130008 	tst	r3, #8
     ff0:	1a000001 	bne	ffc <Java_com_example_hellojni_HelloJni_passPayloadToJNI+0x2d8>
     ff4:	e2840e1b 	add	r0, r4, #432	; 0x1b0
     ff8:	eb0002f7 	bl	1bdc <__gnu_Unwind_Restore_WMMXD>
     ffc:	e5943000 	ldr	r3, [r4]
    1000:	e3130010 	tst	r3, #16
    1004:	18bd8010 	popne	{r4, pc}
    1008:	e2840e23 	add	r0, r4, #560	; 0x230
    100c:	e8bd4010 	pop	{r4, lr}
    1010:	ea000313 	b	1c64 <__gnu_Unwind_Restore_WMMXC>
    1014:	e92d47f0 	push	{r4, r5, r6, r7, r8, r9, sl, lr}
    1018:	e281e004 	add	lr, r1, #4
    101c:	e590800c 	ldr	r8, [r0, #12]
    1020:	e5909018 	ldr	r9, [r0, #24]
    1024:	e24ddd12 	sub	sp, sp, #1152	; 0x480
    1028:	e1a04000 	mov	r4, r0
    102c:	e1a05002 	mov	r5, r2
    1030:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
    1034:	e24dd008 	sub	sp, sp, #8
    1038:	e28dc00c 	add	ip, sp, #12
    103c:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
    1040:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
    1044:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
    1048:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
    104c:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
    1050:	e89e000f 	ldm	lr, {r0, r1, r2, r3}
    1054:	e3a07000 	mov	r7, #0
    1058:	e28d6008 	add	r6, sp, #8
    105c:	e88c000f 	stm	ip, {r0, r1, r2, r3}
    1060:	e58d7008 	str	r7, [sp, #8]
    1064:	e1a00004 	mov	r0, r4
    1068:	e59d1048 	ldr	r1, [sp, #72]	; 0x48
    106c:	ebffff58 	bl	dd4 <Java_com_example_hellojni_HelloJni_passPayloadToJNI+0xb0>
    1070:	e3550000 	cmp	r5, #0
    1074:	13a0a00a 	movne	sl, #10
    1078:	03a0a009 	moveq	sl, #9
    107c:	e2505000 	subs	r5, r0, #0
    1080:	138aa010 	orrne	sl, sl, #16
    1084:	159d3040 	ldrne	r3, [sp, #64]	; 0x40
    1088:	1a00000c 	bne	10c0 <Java_com_example_hellojni_HelloJni_passPayloadToJNI+0x39c>
    108c:	e59d3048 	ldr	r3, [sp, #72]	; 0x48
    1090:	e5843014 	str	r3, [r4, #20]
    1094:	e1a01006 	mov	r1, r6
    1098:	e3a02d09 	mov	r2, #576	; 0x240
    109c:	e28d0f92 	add	r0, sp, #584	; 0x248
    10a0:	ebfffed3 	bl	bf4 <memcpy@plt>
    10a4:	e5943010 	ldr	r3, [r4, #16]
    10a8:	e1a0000a 	mov	r0, sl
    10ac:	e1a01004 	mov	r1, r4
    10b0:	e28d2f92 	add	r2, sp, #584	; 0x248
    10b4:	e12fff33 	blx	r3
    10b8:	e59d3280 	ldr	r3, [sp, #640]	; 0x280
    10bc:	e1a07000 	mov	r7, r0
    10c0:	e58d304c 	str	r3, [sp, #76]	; 0x4c
    10c4:	e88d0240 	stm	sp, {r6, r9}
    10c8:	e3a00001 	mov	r0, #1
    10cc:	e1a0100a 	mov	r1, sl
    10d0:	e1a02004 	mov	r2, r4
    10d4:	e1a03004 	mov	r3, r4
    10d8:	e12fff38 	blx	r8
    10dc:	e3500000 	cmp	r0, #0
    10e0:	1a00000b 	bne	1114 <Java_com_example_hellojni_HelloJni_passPayloadToJNI+0x3f0>
    10e4:	e3550000 	cmp	r5, #0
    10e8:	1a00000a 	bne	1118 <Java_com_example_hellojni_HelloJni_passPayloadToJNI+0x3f4>
    10ec:	e1a00006 	mov	r0, r6
    10f0:	e28d1f92 	add	r1, sp, #584	; 0x248
    10f4:	e3a02d09 	mov	r2, #576	; 0x240
    10f8:	ebfffebd 	bl	bf4 <memcpy@plt>
    10fc:	e3570008 	cmp	r7, #8
    1100:	0affffd7 	beq	1064 <Java_com_example_hellojni_HelloJni_passPayloadToJNI+0x340>
    1104:	e3570007 	cmp	r7, #7
    1108:	1a000001 	bne	1114 <Java_com_example_hellojni_HelloJni_passPayloadToJNI+0x3f0>
    110c:	e2860004 	add	r0, r6, #4
    1110:	eb0002a0 	bl	1b98 <__restore_core_regs>
    1114:	e3a05009 	mov	r5, #9
    1118:	e1a00005 	mov	r0, r5
    111c:	e28dd088 	add	sp, sp, #136	; 0x88
    1120:	e28ddb01 	add	sp, sp, #1024	; 0x400
    1124:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}
    1128:	e92d4038 	push	{r3, r4, r5, lr}
    112c:	e1a05000 	mov	r5, r0
    1130:	e1a04001 	mov	r4, r1
    1134:	e1a00005 	mov	r0, r5
    1138:	e5941040 	ldr	r1, [r4, #64]	; 0x40
    113c:	ebffff24 	bl	dd4 <Java_com_example_hellojni_HelloJni_passPayloadToJNI+0xb0>
    1140:	e3500000 	cmp	r0, #0
    1144:	1a00000a 	bne	1174 <Java_com_example_hellojni_HelloJni_passPayloadToJNI+0x450>
    1148:	e5943040 	ldr	r3, [r4, #64]	; 0x40
    114c:	e5853014 	str	r3, [r5, #20]
    1150:	e3a00001 	mov	r0, #1
    1154:	e5953010 	ldr	r3, [r5, #16]
    1158:	e1a01005 	mov	r1, r5
    115c:	e1a02004 	mov	r2, r4
    1160:	e12fff33 	blx	r3
    1164:	e3500008 	cmp	r0, #8
    1168:	0afffff1 	beq	1134 <Java_com_example_hellojni_HelloJni_passPayloadToJNI+0x410>
    116c:	e3500007 	cmp	r0, #7
    1170:	0a000000 	beq	1178 <Java_com_example_hellojni_HelloJni_passPayloadToJNI+0x454>
    1174:	ebfffea7 	bl	c18 <abort@plt>
    1178:	e2840004 	add	r0, r4, #4
    117c:	eb000285 	bl	1b98 <__restore_core_regs>

00001180 <_Unwind_VRS_Get>:
    1180:	e3510000 	cmp	r1, #0
    1184:	0a000003 	beq	1198 <_Unwind_VRS_Get+0x18>
    1188:	e3510004 	cmp	r1, #4
    118c:	83a00002 	movhi	r0, #2
    1190:	93a00001 	movls	r0, #1
    1194:	e12fff1e 	bx	lr
    1198:	e352000f 	cmp	r2, #15
    119c:	93530000 	cmpls	r3, #0
    11a0:	00800102 	addeq	r0, r0, r2, lsl #2
    11a4:	059d2000 	ldreq	r2, [sp]
    11a8:	05901004 	ldreq	r1, [r0, #4]
    11ac:	03a03000 	moveq	r3, #0
    11b0:	13a03001 	movne	r3, #1
    11b4:	05821000 	streq	r1, [r2]
    11b8:	01a00003 	moveq	r0, r3
    11bc:	13a00002 	movne	r0, #2
    11c0:	e12fff1e 	bx	lr
    11c4:	e92d401f 	push	{r0, r1, r2, r3, r4, lr}
    11c8:	e1a02001 	mov	r2, r1
    11cc:	e28d300c 	add	r3, sp, #12
    11d0:	e3a01000 	mov	r1, #0
    11d4:	e58d3000 	str	r3, [sp]
    11d8:	e1a03001 	mov	r3, r1
    11dc:	ebffffe7 	bl	1180 <_Unwind_VRS_Get>
    11e0:	e59d000c 	ldr	r0, [sp, #12]
    11e4:	e28dd014 	add	sp, sp, #20
    11e8:	e8bd8000 	pop	{pc}

000011ec <_Unwind_VRS_Set>:
    11ec:	e3510000 	cmp	r1, #0
    11f0:	0a000003 	beq	1204 <_Unwind_VRS_Set+0x18>
    11f4:	e3510004 	cmp	r1, #4
    11f8:	83a00002 	movhi	r0, #2
    11fc:	93a00001 	movls	r0, #1
    1200:	e12fff1e 	bx	lr
    1204:	e352000f 	cmp	r2, #15
    1208:	93530000 	cmpls	r3, #0
    120c:	059d1000 	ldreq	r1, [sp]
    1210:	00800102 	addeq	r0, r0, r2, lsl #2
    1214:	03a03000 	moveq	r3, #0
    1218:	13a03001 	movne	r3, #1
    121c:	05911000 	ldreq	r1, [r1]
    1220:	05801004 	streq	r1, [r0, #4]
    1224:	13a00002 	movne	r0, #2
    1228:	01a00003 	moveq	r0, r3
    122c:	e12fff1e 	bx	lr
    1230:	e92d401f 	push	{r0, r1, r2, r3, r4, lr}
    1234:	e1a03001 	mov	r3, r1
    1238:	e28d1010 	add	r1, sp, #16
    123c:	e5212004 	str	r2, [r1, #-4]!
    1240:	e58d1000 	str	r1, [sp]
    1244:	e3a01000 	mov	r1, #0
    1248:	e1a02003 	mov	r2, r3
    124c:	e1a03001 	mov	r3, r1
    1250:	ebffffe5 	bl	11ec <_Unwind_VRS_Set>
    1254:	e28dd014 	add	sp, sp, #20
    1258:	e8bd8000 	pop	{pc}
    125c:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
    1260:	e1a04001 	mov	r4, r1
    1264:	e594704c 	ldr	r7, [r4, #76]	; 0x4c
    1268:	e24dd024 	sub	sp, sp, #36	; 0x24
    126c:	e1a06002 	mov	r6, r2
    1270:	e2001008 	and	r1, r0, #8
    1274:	e4972004 	ldr	r2, [r7], #4
    1278:	e3530000 	cmp	r3, #0
    127c:	e58d100c 	str	r1, [sp, #12]
    1280:	e2008003 	and	r8, r0, #3
    1284:	e58d7018 	str	r7, [sp, #24]
    1288:	e58d3004 	str	r3, [sp, #4]
    128c:	1a000005 	bne	12a8 <_Unwind_VRS_Set+0xbc>
    1290:	e1a02402 	lsl	r2, r2, #8
    1294:	e5cd301d 	strb	r3, [sp, #29]
    1298:	e3a03003 	mov	r3, #3
    129c:	e58d2014 	str	r2, [sp, #20]
    12a0:	e5cd301c 	strb	r3, [sp, #28]
    12a4:	ea000007 	b	12c8 <_Unwind_VRS_Set+0xdc>
    12a8:	e1a03822 	lsr	r3, r2, #16
    12ac:	e20330ff 	and	r3, r3, #255	; 0xff
    12b0:	e1a02802 	lsl	r2, r2, #16
    12b4:	e58d2014 	str	r2, [sp, #20]
    12b8:	e0877103 	add	r7, r7, r3, lsl #2
    12bc:	e3a02002 	mov	r2, #2
    12c0:	e5cd301d 	strb	r3, [sp, #29]
    12c4:	e5cd201c 	strb	r2, [sp, #28]
    12c8:	e5949050 	ldr	r9, [r4, #80]	; 0x50
    12cc:	e3580002 	cmp	r8, #2
    12d0:	05947038 	ldreq	r7, [r4, #56]	; 0x38
    12d4:	e2199001 	ands	r9, r9, #1
    12d8:	13a09000 	movne	r9, #0
    12dc:	0a0000a4 	beq	1574 <_Unwind_VRS_Set+0x388>
    12e0:	ea0000a8 	b	1588 <_Unwind_VRS_Set+0x39c>
    12e4:	e59d2004 	ldr	r2, [sp, #4]
    12e8:	e5943048 	ldr	r3, [r4, #72]	; 0x48
    12ec:	e3520002 	cmp	r2, #2
    12f0:	0597b004 	ldreq	fp, [r7, #4]
    12f4:	11d7b0b2 	ldrhne	fp, [r7, #2]
    12f8:	02875008 	addeq	r5, r7, #8
    12fc:	11d7a0b0 	ldrhne	sl, [r7]
    1300:	12875004 	addne	r5, r7, #4
    1304:	e1a00006 	mov	r0, r6
    1308:	e3cb7001 	bic	r7, fp, #1
    130c:	e3a0100f 	mov	r1, #15
    1310:	e0877003 	add	r7, r7, r3
    1314:	ebffffaa 	bl	11c4 <_Unwind_VRS_Get+0x44>
    1318:	e1570000 	cmp	r7, r0
    131c:	83a00000 	movhi	r0, #0
    1320:	8a000004 	bhi	1338 <_Unwind_VRS_Set+0x14c>
    1324:	e3ca3001 	bic	r3, sl, #1
    1328:	e0877003 	add	r7, r7, r3
    132c:	e1500007 	cmp	r0, r7
    1330:	23a00000 	movcs	r0, #0
    1334:	33a00001 	movcc	r0, #1
    1338:	e20bb001 	and	fp, fp, #1
    133c:	e20aa001 	and	sl, sl, #1
    1340:	e18aa08b 	orr	sl, sl, fp, lsl #1
    1344:	e35a0001 	cmp	sl, #1
    1348:	0a000015 	beq	13a4 <_Unwind_VRS_Set+0x1b8>
    134c:	3a000002 	bcc	135c <_Unwind_VRS_Set+0x170>
    1350:	e35a0002 	cmp	sl, #2
    1354:	1a0000a1 	bne	15e0 <_Unwind_VRS_Set+0x3f4>
    1358:	ea000036 	b	1438 <_Unwind_VRS_Set+0x24c>
    135c:	e3580000 	cmp	r8, #0
    1360:	03a00000 	moveq	r0, #0
    1364:	12000001 	andne	r0, r0, #1
    1368:	e3500000 	cmp	r0, #0
    136c:	e2857004 	add	r7, r5, #4
    1370:	0a000081 	beq	157c <_Unwind_VRS_Set+0x390>
    1374:	e1a00005 	mov	r0, r5
    1378:	ebfffe8f 	bl	dbc <Java_com_example_hellojni_HelloJni_passPayloadToJNI+0x98>
    137c:	e5847038 	str	r7, [r4, #56]	; 0x38
    1380:	e1a05000 	mov	r5, r0
    1384:	e1a00004 	mov	r0, r4
    1388:	ebfffe25 	bl	c24 <__cxa_begin_cleanup@plt>
    138c:	e3500000 	cmp	r0, #0
    1390:	11a00006 	movne	r0, r6
    1394:	13a0100f 	movne	r1, #15
    1398:	11a02005 	movne	r2, r5
    139c:	0a00008f 	beq	15e0 <_Unwind_VRS_Set+0x3f4>
    13a0:	ea00008b 	b	15d4 <_Unwind_VRS_Set+0x3e8>
    13a4:	e3580000 	cmp	r8, #0
    13a8:	1a000016 	bne	1408 <_Unwind_VRS_Set+0x21c>
    13ac:	e3500000 	cmp	r0, #0
    13b0:	0a00001e 	beq	1430 <_Unwind_VRS_Set+0x244>
    13b4:	e895000c 	ldm	r5, {r2, r3}
    13b8:	e3730002 	cmn	r3, #2
    13bc:	0a000087 	beq	15e0 <_Unwind_VRS_Set+0x3f4>
    13c0:	e59d1008 	ldr	r1, [sp, #8]
    13c4:	e3730001 	cmn	r3, #1
    13c8:	e58d1010 	str	r1, [sp, #16]
    13cc:	0a000009 	beq	13f8 <_Unwind_VRS_Set+0x20c>
    13d0:	e3530000 	cmp	r3, #0
    13d4:	10853003 	addne	r3, r5, r3
    13d8:	15931004 	ldrne	r1, [r3, #4]
    13dc:	01a01008 	moveq	r1, r8
    13e0:	e1a00004 	mov	r0, r4
    13e4:	e1a02fa2 	lsr	r2, r2, #31
    13e8:	e28d3010 	add	r3, sp, #16
    13ec:	ebfffe0f 	bl	c30 <__cxa_type_match@plt>
    13f0:	e3500000 	cmp	r0, #0
    13f4:	058d0010 	streq	r0, [sp, #16]
    13f8:	e59d3010 	ldr	r3, [sp, #16]
    13fc:	e3530000 	cmp	r3, #0
    1400:	0a00000a 	beq	1430 <_Unwind_VRS_Set+0x244>
    1404:	ea00002c 	b	14bc <_Unwind_VRS_Set+0x2d0>
    1408:	e1a00006 	mov	r0, r6
    140c:	e3a0100d 	mov	r1, #13
    1410:	e5947020 	ldr	r7, [r4, #32]
    1414:	ebffff6a 	bl	11c4 <_Unwind_VRS_Get+0x44>
    1418:	e1570000 	cmp	r7, r0
    141c:	1a000003 	bne	1430 <_Unwind_VRS_Set+0x244>
    1420:	e5943028 	ldr	r3, [r4, #40]	; 0x28
    1424:	e1550003 	cmp	r5, r3
    1428:	01a00005 	moveq	r0, r5
    142c:	0a000040 	beq	1534 <_Unwind_VRS_Set+0x348>
    1430:	e2857008 	add	r7, r5, #8
    1434:	ea000050 	b	157c <_Unwind_VRS_Set+0x390>
    1438:	e5957000 	ldr	r7, [r5]
    143c:	e3580000 	cmp	r8, #0
    1440:	e3c77102 	bic	r7, r7, #-2147483648	; 0x80000000
    1444:	1a000025 	bne	14e0 <_Unwind_VRS_Set+0x2f4>
    1448:	e3500000 	cmp	r0, #0
    144c:	0a000042 	beq	155c <_Unwind_VRS_Set+0x370>
    1450:	e59d200c 	ldr	r2, [sp, #12]
    1454:	e3520000 	cmp	r2, #0
    1458:	13570000 	cmpne	r7, #0
    145c:	01a0b005 	moveq	fp, r5
    1460:	01a0a008 	moveq	sl, r8
    1464:	0a000012 	beq	14b4 <_Unwind_VRS_Set+0x2c8>
    1468:	ea00003b 	b	155c <_Unwind_VRS_Set+0x370>
    146c:	e5bb1004 	ldr	r1, [fp, #4]!
    1470:	e59d3008 	ldr	r3, [sp, #8]
    1474:	e3510000 	cmp	r1, #0
    1478:	e28ac001 	add	ip, sl, #1
    147c:	1791100b 	ldrne	r1, [r1, fp]
    1480:	e58d3010 	str	r3, [sp, #16]
    1484:	e1a00004 	mov	r0, r4
    1488:	e3a02000 	mov	r2, #0
    148c:	e28d3010 	add	r3, sp, #16
    1490:	e58dc000 	str	ip, [sp]
    1494:	ebfffde5 	bl	c30 <__cxa_type_match@plt>
    1498:	e59dc000 	ldr	ip, [sp]
    149c:	e3500000 	cmp	r0, #0
    14a0:	0a000002 	beq	14b0 <_Unwind_VRS_Set+0x2c4>
    14a4:	e15a0007 	cmp	sl, r7
    14a8:	1a00002b 	bne	155c <_Unwind_VRS_Set+0x370>
    14ac:	ea000002 	b	14bc <_Unwind_VRS_Set+0x2d0>
    14b0:	e1a0a00c 	mov	sl, ip
    14b4:	e15a0007 	cmp	sl, r7
    14b8:	1affffeb 	bne	146c <_Unwind_VRS_Set+0x280>
    14bc:	e1a00006 	mov	r0, r6
    14c0:	e3a0100d 	mov	r1, #13
    14c4:	ebffff3e 	bl	11c4 <_Unwind_VRS_Get+0x44>
    14c8:	e59d3010 	ldr	r3, [sp, #16]
    14cc:	e5843024 	str	r3, [r4, #36]	; 0x24
    14d0:	e5845028 	str	r5, [r4, #40]	; 0x28
    14d4:	e5840020 	str	r0, [r4, #32]
    14d8:	e3a00006 	mov	r0, #6
    14dc:	ea000040 	b	15e4 <_Unwind_VRS_Set+0x3f8>
    14e0:	e1a00006 	mov	r0, r6
    14e4:	e3a0100d 	mov	r1, #13
    14e8:	e594a020 	ldr	sl, [r4, #32]
    14ec:	ebffff34 	bl	11c4 <_Unwind_VRS_Get+0x44>
    14f0:	e15a0000 	cmp	sl, r0
    14f4:	1a000018 	bne	155c <_Unwind_VRS_Set+0x370>
    14f8:	e5943028 	ldr	r3, [r4, #40]	; 0x28
    14fc:	e1550003 	cmp	r5, r3
    1500:	1a000015 	bne	155c <_Unwind_VRS_Set+0x370>
    1504:	e3a03004 	mov	r3, #4
    1508:	e3a01000 	mov	r1, #0
    150c:	e5843030 	str	r3, [r4, #48]	; 0x30
    1510:	e0853003 	add	r3, r5, r3
    1514:	e5847028 	str	r7, [r4, #40]	; 0x28
    1518:	e584102c 	str	r1, [r4, #44]	; 0x2c
    151c:	e5843034 	str	r3, [r4, #52]	; 0x34
    1520:	e5953000 	ldr	r3, [r5]
    1524:	e1530001 	cmp	r3, r1
    1528:	ba00000a 	blt	1558 <_Unwind_VRS_Set+0x36c>
    152c:	e2870001 	add	r0, r7, #1
    1530:	e0850100 	add	r0, r5, r0, lsl #2
    1534:	ebfffe20 	bl	dbc <Java_com_example_hellojni_HelloJni_passPayloadToJNI+0x98>
    1538:	e3a0100f 	mov	r1, #15
    153c:	e1a02000 	mov	r2, r0
    1540:	e1a00006 	mov	r0, r6
    1544:	ebffff39 	bl	1230 <_Unwind_VRS_Set+0x44>
    1548:	e1a00006 	mov	r0, r6
    154c:	e3a01000 	mov	r1, #0
    1550:	e1a02004 	mov	r2, r4
    1554:	ea00001e 	b	15d4 <_Unwind_VRS_Set+0x3e8>
    1558:	e3a09001 	mov	r9, #1
    155c:	e5953000 	ldr	r3, [r5]
    1560:	e2877001 	add	r7, r7, #1
    1564:	e3530000 	cmp	r3, #0
    1568:	b2855004 	addlt	r5, r5, #4
    156c:	e0857107 	add	r7, r5, r7, lsl #2
    1570:	ea000001 	b	157c <_Unwind_VRS_Set+0x390>
    1574:	e2842058 	add	r2, r4, #88	; 0x58
    1578:	e58d2008 	str	r2, [sp, #8]
    157c:	e597a000 	ldr	sl, [r7]
    1580:	e35a0000 	cmp	sl, #0
    1584:	1affff56 	bne	12e4 <_Unwind_VRS_Set+0xf8>
    1588:	e1a00006 	mov	r0, r6
    158c:	e28d1014 	add	r1, sp, #20
    1590:	eb000200 	bl	1d98 <__gnu_unwind_execute>
    1594:	e3500000 	cmp	r0, #0
    1598:	1a000010 	bne	15e0 <_Unwind_VRS_Set+0x3f4>
    159c:	e3590000 	cmp	r9, #0
    15a0:	03a00008 	moveq	r0, #8
    15a4:	0a00000e 	beq	15e4 <_Unwind_VRS_Set+0x3f8>
    15a8:	e3a0100f 	mov	r1, #15
    15ac:	e1a00006 	mov	r0, r6
    15b0:	ebffff03 	bl	11c4 <_Unwind_VRS_Get+0x44>
    15b4:	e3a0100e 	mov	r1, #14
    15b8:	e1a02000 	mov	r2, r0
    15bc:	e1a00006 	mov	r0, r6
    15c0:	ebffff1a 	bl	1230 <_Unwind_VRS_Set+0x44>
    15c4:	e59f2020 	ldr	r2, [pc, #32]	; 15ec <_Unwind_VRS_Set+0x400>
    15c8:	e1a00006 	mov	r0, r6
    15cc:	e3a0100f 	mov	r1, #15
    15d0:	e79f2002 	ldr	r2, [pc, r2]
    15d4:	ebffff15 	bl	1230 <_Unwind_VRS_Set+0x44>
    15d8:	e3a00007 	mov	r0, #7
    15dc:	ea000000 	b	15e4 <_Unwind_VRS_Set+0x3f8>
    15e0:	e3a00009 	mov	r0, #9
    15e4:	e28dd024 	add	sp, sp, #36	; 0x24
    15e8:	e8bd8ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, pc}
    15ec:	000029f8 	strdeq	r2, [r0], -r8

000015f0 <__aeabi_unwind_cpp_pr2>:
    15f0:	e3a03002 	mov	r3, #2
    15f4:	eaffff18 	b	125c <_Unwind_VRS_Set+0x70>

000015f8 <__aeabi_unwind_cpp_pr1>:
    15f8:	e3a03001 	mov	r3, #1
    15fc:	eaffff16 	b	125c <_Unwind_VRS_Set+0x70>

00001600 <__aeabi_unwind_cpp_pr0>:
    1600:	e3a03000 	mov	r3, #0
    1604:	eaffff14 	b	125c <_Unwind_VRS_Set+0x70>

00001608 <_Unwind_VRS_Pop>:
    1608:	e92d45f0 	push	{r4, r5, r6, r7, r8, sl, lr}
    160c:	e1a04000 	mov	r4, r0
    1610:	e24ddf67 	sub	sp, sp, #412	; 0x19c
    1614:	e1a05002 	mov	r5, r2
    1618:	e3510004 	cmp	r1, #4
    161c:	908ff101 	addls	pc, pc, r1, lsl #2
    1620:	ea0000ca 	b	1950 <_Unwind_VRS_Pop+0x348>
    1624:	ea000005 	b	1640 <_Unwind_VRS_Pop+0x38>
    1628:	ea000015 	b	1684 <_Unwind_VRS_Pop+0x7c>
    162c:	ea000001 	b	1638 <_Unwind_VRS_Pop+0x30>
    1630:	ea00008c 	b	1868 <_Unwind_VRS_Pop+0x260>
    1634:	ea0000ac 	b	18ec <_Unwind_VRS_Pop+0x2e4>
    1638:	e3a07001 	mov	r7, #1
    163c:	ea0000c4 	b	1954 <_Unwind_VRS_Pop+0x34c>
    1640:	e3530000 	cmp	r3, #0
    1644:	1a0000c1 	bne	1950 <_Unwind_VRS_Pop+0x348>
    1648:	e1a07802 	lsl	r7, r2, #16
    164c:	e5902038 	ldr	r2, [r0, #56]	; 0x38
    1650:	e1a07827 	lsr	r7, r7, #16
    1654:	e3a01001 	mov	r1, #1
    1658:	e0170311 	ands	r0, r7, r1, lsl r3
    165c:	10840103 	addne	r0, r4, r3, lsl #2
    1660:	1492c004 	ldrne	ip, [r2], #4
    1664:	e2833001 	add	r3, r3, #1
    1668:	1580c004 	strne	ip, [r0, #4]
    166c:	e3530010 	cmp	r3, #16
    1670:	1afffff8 	bne	1658 <_Unwind_VRS_Pop+0x50>
    1674:	e2177a02 	ands	r7, r7, #8192	; 0x2000
    1678:	05842038 	streq	r2, [r4, #56]	; 0x38
    167c:	0a0000b4 	beq	1954 <_Unwind_VRS_Pop+0x34c>
    1680:	ea0000b0 	b	1948 <_Unwind_VRS_Pop+0x340>
    1684:	e2531005 	subs	r1, r3, #5
    1688:	13a01001 	movne	r1, #1
    168c:	e3530001 	cmp	r3, #1
    1690:	13530005 	cmpne	r3, #5
    1694:	1a0000ad 	bne	1950 <_Unwind_VRS_Pop+0x348>
    1698:	e1a05802 	lsl	r5, r2, #16
    169c:	e3530001 	cmp	r3, #1
    16a0:	e1a06822 	lsr	r6, r2, #16
    16a4:	e1a05825 	lsr	r5, r5, #16
    16a8:	e0852006 	add	r2, r5, r6
    16ac:	13a00020 	movne	r0, #32
    16b0:	03a00010 	moveq	r0, #16
    16b4:	e1520000 	cmp	r2, r0
    16b8:	8a0000a4 	bhi	1950 <_Unwind_VRS_Pop+0x348>
    16bc:	e2430001 	sub	r0, r3, #1
    16c0:	e2708000 	rsbs	r8, r0, #0
    16c4:	e0a88000 	adc	r8, r8, r0
    16c8:	e356000f 	cmp	r6, #15
    16cc:	93a0a000 	movls	sl, #0
    16d0:	83a0a001 	movhi	sl, #1
    16d4:	e11a0008 	tst	sl, r8
    16d8:	1a00009c 	bne	1950 <_Unwind_VRS_Pop+0x348>
    16dc:	e35a0000 	cmp	sl, #0
    16e0:	11a0a005 	movne	sl, r5
    16e4:	1a000001 	bne	16f0 <_Unwind_VRS_Pop+0xe8>
    16e8:	e3520010 	cmp	r2, #16
    16ec:	8242a010 	subhi	sl, r2, #16
    16f0:	e29a7000 	adds	r7, sl, #0
    16f4:	13a07001 	movne	r7, #1
    16f8:	e1170001 	tst	r7, r1
    16fc:	1a000093 	bne	1950 <_Unwind_VRS_Pop+0x348>
    1700:	e356000f 	cmp	r6, #15
    1704:	8a00000e 	bhi	1744 <_Unwind_VRS_Pop+0x13c>
    1708:	e5942000 	ldr	r2, [r4]
    170c:	e3120001 	tst	r2, #1
    1710:	0a00000b 	beq	1744 <_Unwind_VRS_Pop+0x13c>
    1714:	e3c21001 	bic	r1, r2, #1
    1718:	e1a00004 	mov	r0, r4
    171c:	e3530005 	cmp	r3, #5
    1720:	e4801048 	str	r1, [r0], #72	; 0x48
    1724:	1a000003 	bne	1738 <_Unwind_VRS_Pop+0x130>
    1728:	e3811002 	orr	r1, r1, #2
    172c:	e5841000 	str	r1, [r4]
    1730:	eb000123 	bl	1bc4 <__gnu_Unwind_Save_VFP_D>
    1734:	ea000002 	b	1744 <_Unwind_VRS_Pop+0x13c>
    1738:	e3c22003 	bic	r2, r2, #3
    173c:	e5842000 	str	r2, [r4]
    1740:	eb00011b 	bl	1bb4 <__gnu_Unwind_Save_VFP>
    1744:	e3570000 	cmp	r7, #0
    1748:	0a000006 	beq	1768 <_Unwind_VRS_Pop+0x160>
    174c:	e5943000 	ldr	r3, [r4]
    1750:	e3130004 	tst	r3, #4
    1754:	0a000003 	beq	1768 <_Unwind_VRS_Pop+0x160>
    1758:	e3c33004 	bic	r3, r3, #4
    175c:	e1a00004 	mov	r0, r4
    1760:	e48030d0 	str	r3, [r0], #208	; 0xd0
    1764:	eb00011a 	bl	1bd4 <__gnu_Unwind_Save_VFP_D_16_to_31>
    1768:	e3580000 	cmp	r8, #0
    176c:	0a000004 	beq	1784 <_Unwind_VRS_Pop+0x17c>
    1770:	e28d0e11 	add	r0, sp, #272	; 0x110
    1774:	eb00010e 	bl	1bb4 <__gnu_Unwind_Save_VFP>
    1778:	e3570000 	cmp	r7, #0
    177c:	1a000008 	bne	17a4 <_Unwind_VRS_Pop+0x19c>
    1780:	ea000008 	b	17a8 <_Unwind_VRS_Pop+0x1a0>
    1784:	e356000f 	cmp	r6, #15
    1788:	8a000001 	bhi	1794 <_Unwind_VRS_Pop+0x18c>
    178c:	e28d0e11 	add	r0, sp, #272	; 0x110
    1790:	eb00010b 	bl	1bc4 <__gnu_Unwind_Save_VFP_D>
    1794:	e3570000 	cmp	r7, #0
    1798:	0a000002 	beq	17a8 <_Unwind_VRS_Pop+0x1a0>
    179c:	e28d0010 	add	r0, sp, #16
    17a0:	eb00010b 	bl	1bd4 <__gnu_Unwind_Save_VFP_D_16_to_31>
    17a4:	e2665010 	rsb	r5, r6, #16
    17a8:	e5941038 	ldr	r1, [r4, #56]	; 0x38
    17ac:	e3550000 	cmp	r5, #0
    17b0:	e1a03001 	mov	r3, r1
    17b4:	da000009 	ble	17e0 <_Unwind_VRS_Pop+0x1d8>
    17b8:	e28d2e11 	add	r2, sp, #272	; 0x110
    17bc:	e1a05085 	lsl	r5, r5, #1
    17c0:	e0820186 	add	r0, r2, r6, lsl #3
    17c4:	e1a02005 	mov	r2, r5
    17c8:	ea000001 	b	17d4 <_Unwind_VRS_Pop+0x1cc>
    17cc:	e491c004 	ldr	ip, [r1], #4
    17d0:	e480c004 	str	ip, [r0], #4
    17d4:	e2522001 	subs	r2, r2, #1
    17d8:	2afffffb 	bcs	17cc <_Unwind_VRS_Pop+0x1c4>
    17dc:	e0833105 	add	r3, r3, r5, lsl #2
    17e0:	e3570000 	cmp	r7, #0
    17e4:	0a00000e 	beq	1824 <_Unwind_VRS_Pop+0x21c>
    17e8:	e28d1f66 	add	r1, sp, #408	; 0x198
    17ec:	e3560010 	cmp	r6, #16
    17f0:	21a00006 	movcs	r0, r6
    17f4:	33a00010 	movcc	r0, #16
    17f8:	e0810180 	add	r0, r1, r0, lsl #3
    17fc:	e1a0a08a 	lsl	sl, sl, #1
    1800:	e2400f82 	sub	r0, r0, #520	; 0x208
    1804:	e1a01003 	mov	r1, r3
    1808:	e1a0200a 	mov	r2, sl
    180c:	ea000001 	b	1818 <_Unwind_VRS_Pop+0x210>
    1810:	e491c004 	ldr	ip, [r1], #4
    1814:	e480c004 	str	ip, [r0], #4
    1818:	e2522001 	subs	r2, r2, #1
    181c:	2afffffb 	bcs	1810 <_Unwind_VRS_Pop+0x208>
    1820:	e083310a 	add	r3, r3, sl, lsl #2
    1824:	e3580000 	cmp	r8, #0
    1828:	12833004 	addne	r3, r3, #4
    182c:	e3580000 	cmp	r8, #0
    1830:	e5843038 	str	r3, [r4, #56]	; 0x38
    1834:	0a000002 	beq	1844 <_Unwind_VRS_Pop+0x23c>
    1838:	e28d0e11 	add	r0, sp, #272	; 0x110
    183c:	eb0000da 	bl	1bac <__gnu_Unwind_Restore_VFP>
    1840:	ea000040 	b	1948 <_Unwind_VRS_Pop+0x340>
    1844:	e356000f 	cmp	r6, #15
    1848:	8a000001 	bhi	1854 <_Unwind_VRS_Pop+0x24c>
    184c:	e28d0e11 	add	r0, sp, #272	; 0x110
    1850:	eb0000d9 	bl	1bbc <__gnu_Unwind_Restore_VFP_D>
    1854:	e3570000 	cmp	r7, #0
    1858:	0a00003d 	beq	1954 <_Unwind_VRS_Pop+0x34c>
    185c:	e28d0010 	add	r0, sp, #16
    1860:	eb0000d9 	bl	1bcc <__gnu_Unwind_Restore_VFP_D_16_to_31>
    1864:	ea000037 	b	1948 <_Unwind_VRS_Pop+0x340>
    1868:	e3530003 	cmp	r3, #3
    186c:	1a000037 	bne	1950 <_Unwind_VRS_Pop+0x348>
    1870:	e1a05802 	lsl	r5, r2, #16
    1874:	e1a06822 	lsr	r6, r2, #16
    1878:	e1a05825 	lsr	r5, r5, #16
    187c:	e0853006 	add	r3, r5, r6
    1880:	e3530010 	cmp	r3, #16
    1884:	8a000031 	bhi	1950 <_Unwind_VRS_Pop+0x348>
    1888:	e5903000 	ldr	r3, [r0]
    188c:	e3130008 	tst	r3, #8
    1890:	0a000002 	beq	18a0 <_Unwind_VRS_Pop+0x298>
    1894:	e3c33008 	bic	r3, r3, #8
    1898:	e48031b0 	str	r3, [r0], #432	; 0x1b0
    189c:	eb0000df 	bl	1c20 <__gnu_Unwind_Save_WMMXD>
    18a0:	e28d0090 	add	r0, sp, #144	; 0x90
    18a4:	eb0000dd 	bl	1c20 <__gnu_Unwind_Save_WMMXD>
    18a8:	e5943038 	ldr	r3, [r4, #56]	; 0x38
    18ac:	e28d0090 	add	r0, sp, #144	; 0x90
    18b0:	e1a05085 	lsl	r5, r5, #1
    18b4:	e1a02003 	mov	r2, r3
    18b8:	e0806186 	add	r6, r0, r6, lsl #3
    18bc:	e1a07005 	mov	r7, r5
    18c0:	ea000002 	b	18d0 <_Unwind_VRS_Pop+0x2c8>
    18c4:	e4931004 	ldr	r1, [r3], #4
    18c8:	e2477001 	sub	r7, r7, #1
    18cc:	e4861004 	str	r1, [r6], #4
    18d0:	e3570000 	cmp	r7, #0
    18d4:	1afffffa 	bne	18c4 <_Unwind_VRS_Pop+0x2bc>
    18d8:	e0825105 	add	r5, r2, r5, lsl #2
    18dc:	e5845038 	str	r5, [r4, #56]	; 0x38
    18e0:	e28d0090 	add	r0, sp, #144	; 0x90
    18e4:	eb0000bc 	bl	1bdc <__gnu_Unwind_Restore_WMMXD>
    18e8:	ea000019 	b	1954 <_Unwind_VRS_Pop+0x34c>
    18ec:	e3520010 	cmp	r2, #16
    18f0:	93530000 	cmpls	r3, #0
    18f4:	1a000015 	bne	1950 <_Unwind_VRS_Pop+0x348>
    18f8:	e5903000 	ldr	r3, [r0]
    18fc:	e3130010 	tst	r3, #16
    1900:	0a000002 	beq	1910 <_Unwind_VRS_Pop+0x308>
    1904:	e3c33010 	bic	r3, r3, #16
    1908:	e4803230 	str	r3, [r0], #560	; 0x230
    190c:	eb0000d9 	bl	1c78 <__gnu_Unwind_Save_WMMXC>
    1910:	e1a0000d 	mov	r0, sp
    1914:	eb0000d7 	bl	1c78 <__gnu_Unwind_Save_WMMXC>
    1918:	e5942038 	ldr	r2, [r4, #56]	; 0x38
    191c:	e3a03000 	mov	r3, #0
    1920:	e3a01001 	mov	r1, #1
    1924:	e0150311 	ands	r0, r5, r1, lsl r3
    1928:	14920004 	ldrne	r0, [r2], #4
    192c:	178d0103 	strne	r0, [sp, r3, lsl #2]
    1930:	e2833001 	add	r3, r3, #1
    1934:	e3530004 	cmp	r3, #4
    1938:	1afffff9 	bne	1924 <_Unwind_VRS_Pop+0x31c>
    193c:	e5842038 	str	r2, [r4, #56]	; 0x38
    1940:	e1a0000d 	mov	r0, sp
    1944:	eb0000c6 	bl	1c64 <__gnu_Unwind_Restore_WMMXC>
    1948:	e3a07000 	mov	r7, #0
    194c:	ea000000 	b	1954 <_Unwind_VRS_Pop+0x34c>
    1950:	e3a07002 	mov	r7, #2
    1954:	e1a00007 	mov	r0, r7
    1958:	e28ddf67 	add	sp, sp, #412	; 0x19c
    195c:	e8bd85f0 	pop	{r4, r5, r6, r7, r8, sl, pc}

00001960 <_Unwind_GetCFA>:
    1960:	e5900044 	ldr	r0, [r0, #68]	; 0x44
    1964:	e12fff1e 	bx	lr

00001968 <__gnu_Unwind_RaiseException>:
    1968:	e92d40f0 	push	{r4, r5, r6, r7, lr}
    196c:	e591303c 	ldr	r3, [r1, #60]	; 0x3c
    1970:	e281e004 	add	lr, r1, #4
    1974:	e5813040 	str	r3, [r1, #64]	; 0x40
    1978:	e1a05000 	mov	r5, r0
    197c:	e1a04001 	mov	r4, r1
    1980:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
    1984:	e24ddf91 	sub	sp, sp, #580	; 0x244
    1988:	e28dc004 	add	ip, sp, #4
    198c:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
    1990:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
    1994:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
    1998:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
    199c:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
    19a0:	e89e000f 	ldm	lr, {r0, r1, r2, r3}
    19a4:	e28d6d09 	add	r6, sp, #576	; 0x240
    19a8:	e88c000f 	stm	ip, {r0, r1, r2, r3}
    19ac:	e3e03000 	mvn	r3, #0
    19b0:	e5263240 	str	r3, [r6, #-576]!	; 0x240
    19b4:	e1a00005 	mov	r0, r5
    19b8:	e59d1040 	ldr	r1, [sp, #64]	; 0x40
    19bc:	ebfffd04 	bl	dd4 <Java_com_example_hellojni_HelloJni_passPayloadToJNI+0xb0>
    19c0:	e3500000 	cmp	r0, #0
    19c4:	1a00000d 	bne	1a00 <__gnu_Unwind_RaiseException+0x98>
    19c8:	e5953010 	ldr	r3, [r5, #16]
    19cc:	e1a01005 	mov	r1, r5
    19d0:	e1a0200d 	mov	r2, sp
    19d4:	e12fff33 	blx	r3
    19d8:	e3500008 	cmp	r0, #8
    19dc:	e1a07000 	mov	r7, r0
    19e0:	0afffff3 	beq	19b4 <__gnu_Unwind_RaiseException+0x4c>
    19e4:	e1a0000d 	mov	r0, sp
    19e8:	ebfffd6e 	bl	fa8 <Java_com_example_hellojni_HelloJni_passPayloadToJNI+0x284>
    19ec:	e3570006 	cmp	r7, #6
    19f0:	1a000002 	bne	1a00 <__gnu_Unwind_RaiseException+0x98>
    19f4:	e1a00005 	mov	r0, r5
    19f8:	e1a01004 	mov	r1, r4
    19fc:	ebfffdc9 	bl	1128 <Java_com_example_hellojni_HelloJni_passPayloadToJNI+0x404>
    1a00:	e3a00009 	mov	r0, #9
    1a04:	e28ddf91 	add	sp, sp, #580	; 0x244
    1a08:	e8bd80f0 	pop	{r4, r5, r6, r7, pc}

00001a0c <__gnu_Unwind_ForcedUnwind>:
    1a0c:	e5802018 	str	r2, [r0, #24]
    1a10:	e593203c 	ldr	r2, [r3, #60]	; 0x3c
    1a14:	e580100c 	str	r1, [r0, #12]
    1a18:	e5832040 	str	r2, [r3, #64]	; 0x40
    1a1c:	e1a01003 	mov	r1, r3
    1a20:	e3a02000 	mov	r2, #0
    1a24:	eafffd7a 	b	1014 <Java_com_example_hellojni_HelloJni_passPayloadToJNI+0x2f0>

00001a28 <__gnu_Unwind_Resume>:
    1a28:	e92d4038 	push	{r3, r4, r5, lr}
    1a2c:	e5903014 	ldr	r3, [r0, #20]
    1a30:	e5813040 	str	r3, [r1, #64]	; 0x40
    1a34:	e590300c 	ldr	r3, [r0, #12]
    1a38:	e1a04000 	mov	r4, r0
    1a3c:	e3530000 	cmp	r3, #0
    1a40:	e1a05001 	mov	r5, r1
    1a44:	0a000002 	beq	1a54 <__gnu_Unwind_Resume+0x2c>
    1a48:	e3a02001 	mov	r2, #1
    1a4c:	ebfffd70 	bl	1014 <Java_com_example_hellojni_HelloJni_passPayloadToJNI+0x2f0>
    1a50:	ea00000e 	b	1a90 <__gnu_Unwind_Resume+0x68>
    1a54:	e5903010 	ldr	r3, [r0, #16]
    1a58:	e1a01004 	mov	r1, r4
    1a5c:	e3a00002 	mov	r0, #2
    1a60:	e1a02005 	mov	r2, r5
    1a64:	e12fff33 	blx	r3
    1a68:	e3500007 	cmp	r0, #7
    1a6c:	0a000002 	beq	1a7c <__gnu_Unwind_Resume+0x54>
    1a70:	e3500008 	cmp	r0, #8
    1a74:	1a000005 	bne	1a90 <__gnu_Unwind_Resume+0x68>
    1a78:	ea000001 	b	1a84 <__gnu_Unwind_Resume+0x5c>
    1a7c:	e2850004 	add	r0, r5, #4
    1a80:	eb000044 	bl	1b98 <__restore_core_regs>
    1a84:	e1a00004 	mov	r0, r4
    1a88:	e1a01005 	mov	r1, r5
    1a8c:	ebfffda5 	bl	1128 <Java_com_example_hellojni_HelloJni_passPayloadToJNI+0x404>
    1a90:	ebfffc60 	bl	c18 <abort@plt>

00001a94 <__gnu_Unwind_Resume_or_Rethrow>:
    1a94:	e590200c 	ldr	r2, [r0, #12]
    1a98:	e3520000 	cmp	r2, #0
    1a9c:	1a000000 	bne	1aa4 <__gnu_Unwind_Resume_or_Rethrow+0x10>
    1aa0:	eaffffb0 	b	1968 <__gnu_Unwind_RaiseException>
    1aa4:	e591203c 	ldr	r2, [r1, #60]	; 0x3c
    1aa8:	e5812040 	str	r2, [r1, #64]	; 0x40
    1aac:	e3a02000 	mov	r2, #0
    1ab0:	eafffd57 	b	1014 <Java_com_example_hellojni_HelloJni_passPayloadToJNI+0x2f0>

00001ab4 <_Unwind_Complete>:
    1ab4:	e12fff1e 	bx	lr

00001ab8 <_Unwind_DeleteException>:
    1ab8:	e92d4008 	push	{r3, lr}
    1abc:	e5903008 	ldr	r3, [r0, #8]
    1ac0:	e1a01000 	mov	r1, r0
    1ac4:	e3530000 	cmp	r3, #0
    1ac8:	08bd8008 	popeq	{r3, pc}
    1acc:	e3a00001 	mov	r0, #1
    1ad0:	e12fff33 	blx	r3
    1ad4:	e8bd8008 	pop	{r3, pc}

00001ad8 <__gnu_Unwind_Backtrace>:
    1ad8:	e92d4070 	push	{r4, r5, r6, lr}
    1adc:	e592303c 	ldr	r3, [r2, #60]	; 0x3c
    1ae0:	e282e004 	add	lr, r2, #4
    1ae4:	e5823040 	str	r3, [r2, #64]	; 0x40
    1ae8:	e1a05000 	mov	r5, r0
    1aec:	e1a04001 	mov	r4, r1
    1af0:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
    1af4:	e24ddfa6 	sub	sp, sp, #664	; 0x298
    1af8:	e28dc05c 	add	ip, sp, #92	; 0x5c
    1afc:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
    1b00:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
    1b04:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
    1b08:	e8be000f 	ldm	lr!, {r0, r1, r2, r3}
    1b0c:	e8ac000f 	stmia	ip!, {r0, r1, r2, r3}
    1b10:	e89e000f 	ldm	lr, {r0, r1, r2, r3}
    1b14:	e88c000f 	stm	ip, {r0, r1, r2, r3}
    1b18:	e3e03000 	mvn	r3, #0
    1b1c:	e58d3058 	str	r3, [sp, #88]	; 0x58
    1b20:	e1a0000d 	mov	r0, sp
    1b24:	e59d1098 	ldr	r1, [sp, #152]	; 0x98
    1b28:	ebfffca9 	bl	dd4 <Java_com_example_hellojni_HelloJni_passPayloadToJNI+0xb0>
    1b2c:	e3500000 	cmp	r0, #0
    1b30:	1a000012 	bne	1b80 <__gnu_Unwind_Backtrace+0xa8>
    1b34:	e28d0058 	add	r0, sp, #88	; 0x58
    1b38:	e3a0100c 	mov	r1, #12
    1b3c:	e1a0200d 	mov	r2, sp
    1b40:	ebfffdba 	bl	1230 <_Unwind_VRS_Set+0x44>
    1b44:	e28d0058 	add	r0, sp, #88	; 0x58
    1b48:	e1a01004 	mov	r1, r4
    1b4c:	e12fff35 	blx	r5
    1b50:	e3500000 	cmp	r0, #0
    1b54:	1a000009 	bne	1b80 <__gnu_Unwind_Backtrace+0xa8>
    1b58:	e3a00008 	mov	r0, #8
    1b5c:	e1a0100d 	mov	r1, sp
    1b60:	e28d2058 	add	r2, sp, #88	; 0x58
    1b64:	e59d3010 	ldr	r3, [sp, #16]
    1b68:	e12fff33 	blx	r3
    1b6c:	e3500009 	cmp	r0, #9
    1b70:	13500005 	cmpne	r0, #5
    1b74:	e1a06000 	mov	r6, r0
    1b78:	1affffe8 	bne	1b20 <__gnu_Unwind_Backtrace+0x48>
    1b7c:	ea000000 	b	1b84 <__gnu_Unwind_Backtrace+0xac>
    1b80:	e3a06009 	mov	r6, #9
    1b84:	e28d0058 	add	r0, sp, #88	; 0x58
    1b88:	ebfffd06 	bl	fa8 <Java_com_example_hellojni_HelloJni_passPayloadToJNI+0x284>
    1b8c:	e1a00006 	mov	r0, r6
    1b90:	e28ddfa6 	add	sp, sp, #664	; 0x298
    1b94:	e8bd8070 	pop	{r4, r5, r6, pc}

00001b98 <__restore_core_regs>:
    1b98:	e2801034 	add	r1, r0, #52	; 0x34
    1b9c:	e8910038 	ldm	r1, {r3, r4, r5}
    1ba0:	e92d0038 	push	{r3, r4, r5}
    1ba4:	e8900fff 	ldm	r0, {r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp}
    1ba8:	e89de000 	ldm	sp, {sp, lr, pc}

00001bac <__gnu_Unwind_Restore_VFP>:
    1bac:	ec900b21 	fldmiax	r0, {d0-d15}	;@ Deprecated
    1bb0:	e12fff1e 	bx	lr

00001bb4 <__gnu_Unwind_Save_VFP>:
    1bb4:	ec800b21 	fstmiax	r0, {d0-d15}	;@ Deprecated
    1bb8:	e12fff1e 	bx	lr

00001bbc <__gnu_Unwind_Restore_VFP_D>:
    1bbc:	ec900b20 	vldmia	r0, {d0-d15}
    1bc0:	e12fff1e 	bx	lr

00001bc4 <__gnu_Unwind_Save_VFP_D>:
    1bc4:	ec800b20 	vstmia	r0, {d0-d15}
    1bc8:	e12fff1e 	bx	lr

00001bcc <__gnu_Unwind_Restore_VFP_D_16_to_31>:
    1bcc:	ecd00b20 	vldmia	r0, {d16-d31}
    1bd0:	e12fff1e 	bx	lr

00001bd4 <__gnu_Unwind_Save_VFP_D_16_to_31>:
    1bd4:	ecc00b20 	vstmia	r0, {d16-d31}
    1bd8:	e12fff1e 	bx	lr

00001bdc <__gnu_Unwind_Restore_WMMXD>:
    1bdc:	ecf00102 	ldfe	f0, [r0], #8
    1be0:	ecf01102 	ldfe	f1, [r0], #8
    1be4:	ecf02102 	ldfe	f2, [r0], #8
    1be8:	ecf03102 	ldfe	f3, [r0], #8
    1bec:	ecf04102 	ldfe	f4, [r0], #8
    1bf0:	ecf05102 	ldfe	f5, [r0], #8
    1bf4:	ecf06102 	ldfe	f6, [r0], #8
    1bf8:	ecf07102 	ldfe	f7, [r0], #8
    1bfc:	ecf08102 	ldfp	f0, [r0], #8
    1c00:	ecf09102 	ldfp	f1, [r0], #8
    1c04:	ecf0a102 	ldfp	f2, [r0], #8
    1c08:	ecf0b102 	ldfp	f3, [r0], #8
    1c0c:	ecf0c102 	ldfp	f4, [r0], #8
    1c10:	ecf0d102 	ldfp	f5, [r0], #8
    1c14:	ecf0e102 	ldfp	f6, [r0], #8
    1c18:	ecf0f102 	ldfp	f7, [r0], #8
    1c1c:	e12fff1e 	bx	lr

00001c20 <__gnu_Unwind_Save_WMMXD>:
    1c20:	ece00102 	stfe	f0, [r0], #8
    1c24:	ece01102 	stfe	f1, [r0], #8
    1c28:	ece02102 	stfe	f2, [r0], #8
    1c2c:	ece03102 	stfe	f3, [r0], #8
    1c30:	ece04102 	stfe	f4, [r0], #8
    1c34:	ece05102 	stfe	f5, [r0], #8
    1c38:	ece06102 	stfe	f6, [r0], #8
    1c3c:	ece07102 	stfe	f7, [r0], #8
    1c40:	ece08102 	stfp	f0, [r0], #8
    1c44:	ece09102 	stfp	f1, [r0], #8
    1c48:	ece0a102 	stfp	f2, [r0], #8
    1c4c:	ece0b102 	stfp	f3, [r0], #8
    1c50:	ece0c102 	stfp	f4, [r0], #8
    1c54:	ece0d102 	stfp	f5, [r0], #8
    1c58:	ece0e102 	stfp	f6, [r0], #8
    1c5c:	ece0f102 	stfp	f7, [r0], #8
    1c60:	e12fff1e 	bx	lr

00001c64 <__gnu_Unwind_Restore_WMMXC>:
    1c64:	fcb08101 	ldc2	1, cr8, [r0], #4
    1c68:	fcb09101 	ldc2	1, cr9, [r0], #4
    1c6c:	fcb0a101 	ldc2	1, cr10, [r0], #4
    1c70:	fcb0b101 	ldc2	1, cr11, [r0], #4
    1c74:	e12fff1e 	bx	lr

00001c78 <__gnu_Unwind_Save_WMMXC>:
    1c78:	fca08101 	stc2	1, cr8, [r0], #4
    1c7c:	fca09101 	stc2	1, cr9, [r0], #4
    1c80:	fca0a101 	stc2	1, cr10, [r0], #4
    1c84:	fca0b101 	stc2	1, cr11, [r0], #4
    1c88:	e12fff1e 	bx	lr

00001c8c <_Unwind_RaiseException>:
    1c8c:	e92de000 	push	{sp, lr, pc}
    1c90:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
    1c94:	e3a03000 	mov	r3, #0
    1c98:	e92d000c 	push	{r2, r3}
    1c9c:	e28d1004 	add	r1, sp, #4
    1ca0:	ebffff30 	bl	1968 <__gnu_Unwind_RaiseException>
    1ca4:	e59de040 	ldr	lr, [sp, #64]	; 0x40
    1ca8:	e28dd048 	add	sp, sp, #72	; 0x48
    1cac:	e12fff1e 	bx	lr

00001cb0 <_Unwind_Resume>:
    1cb0:	e92de000 	push	{sp, lr, pc}
    1cb4:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
    1cb8:	e3a03000 	mov	r3, #0
    1cbc:	e92d000c 	push	{r2, r3}
    1cc0:	e28d1004 	add	r1, sp, #4
    1cc4:	ebffff57 	bl	1a28 <__gnu_Unwind_Resume>
    1cc8:	e59de040 	ldr	lr, [sp, #64]	; 0x40
    1ccc:	e28dd048 	add	sp, sp, #72	; 0x48
    1cd0:	e12fff1e 	bx	lr

00001cd4 <_Unwind_Resume_or_Rethrow>:
    1cd4:	e92de000 	push	{sp, lr, pc}
    1cd8:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
    1cdc:	e3a03000 	mov	r3, #0
    1ce0:	e92d000c 	push	{r2, r3}
    1ce4:	e28d1004 	add	r1, sp, #4
    1ce8:	ebffff69 	bl	1a94 <__gnu_Unwind_Resume_or_Rethrow>
    1cec:	e59de040 	ldr	lr, [sp, #64]	; 0x40
    1cf0:	e28dd048 	add	sp, sp, #72	; 0x48
    1cf4:	e12fff1e 	bx	lr

00001cf8 <_Unwind_ForcedUnwind>:
    1cf8:	e92de000 	push	{sp, lr, pc}
    1cfc:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
    1d00:	e3a03000 	mov	r3, #0
    1d04:	e92d000c 	push	{r2, r3}
    1d08:	e28d3004 	add	r3, sp, #4
    1d0c:	ebffff3e 	bl	1a0c <__gnu_Unwind_ForcedUnwind>
    1d10:	e59de040 	ldr	lr, [sp, #64]	; 0x40
    1d14:	e28dd048 	add	sp, sp, #72	; 0x48
    1d18:	e12fff1e 	bx	lr

00001d1c <_Unwind_Backtrace>:
    1d1c:	e92de000 	push	{sp, lr, pc}
    1d20:	e92d1fff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, fp, ip}
    1d24:	e3a03000 	mov	r3, #0
    1d28:	e92d000c 	push	{r2, r3}
    1d2c:	e28d2004 	add	r2, sp, #4
    1d30:	ebffff68 	bl	1ad8 <__gnu_Unwind_Backtrace>
    1d34:	e59de040 	ldr	lr, [sp, #64]	; 0x40
    1d38:	e28dd048 	add	sp, sp, #72	; 0x48
    1d3c:	e12fff1e 	bx	lr
    1d40:	e5d02008 	ldrb	r2, [r0, #8]
    1d44:	e1a03000 	mov	r3, r0
    1d48:	e3520000 	cmp	r2, #0
    1d4c:	12422001 	subne	r2, r2, #1
    1d50:	1a000008 	bne	1d78 <_Unwind_Backtrace+0x5c>
    1d54:	e5d02009 	ldrb	r2, [r0, #9]
    1d58:	e3520000 	cmp	r2, #0
    1d5c:	0a00000b 	beq	1d90 <_Unwind_Backtrace+0x74>
    1d60:	e2422001 	sub	r2, r2, #1
    1d64:	e5c02009 	strb	r2, [r0, #9]
    1d68:	e5902004 	ldr	r2, [r0, #4]
    1d6c:	e4921004 	ldr	r1, [r2], #4
    1d70:	e8800006 	stm	r0, {r1, r2}
    1d74:	e3a02003 	mov	r2, #3
    1d78:	e5c32008 	strb	r2, [r3, #8]
    1d7c:	e5932000 	ldr	r2, [r3]
    1d80:	e1a00c22 	lsr	r0, r2, #24
    1d84:	e1a02402 	lsl	r2, r2, #8
    1d88:	e5832000 	str	r2, [r3]
    1d8c:	e12fff1e 	bx	lr
    1d90:	e3a000b0 	mov	r0, #176	; 0xb0
    1d94:	e12fff1e 	bx	lr

00001d98 <__gnu_unwind_execute>:
    1d98:	e92d47ff 	push	{r0, r1, r2, r3, r4, r5, r6, r7, r8, r9, sl, lr}
    1d9c:	e1a05000 	mov	r5, r0
    1da0:	e1a06001 	mov	r6, r1
    1da4:	e3a07000 	mov	r7, #0
    1da8:	e28da00c 	add	sl, sp, #12
    1dac:	e3a09eff 	mov	r9, #4080	; 0xff0
    1db0:	e1a00006 	mov	r0, r6
    1db4:	ebffffe1 	bl	1d40 <_Unwind_Backtrace+0x24>
    1db8:	e35000b0 	cmp	r0, #176	; 0xb0
    1dbc:	e1a04000 	mov	r4, r0
    1dc0:	1a000011 	bne	1e0c <__gnu_unwind_execute+0x74>
    1dc4:	e3570000 	cmp	r7, #0
    1dc8:	13a00000 	movne	r0, #0
    1dcc:	1a0000d4 	bne	2124 <__gnu_unwind_execute+0x38c>
    1dd0:	e28d400c 	add	r4, sp, #12
    1dd4:	e1a01007 	mov	r1, r7
    1dd8:	e3a0200e 	mov	r2, #14
    1ddc:	e1a03007 	mov	r3, r7
    1de0:	e1a00005 	mov	r0, r5
    1de4:	e58d4000 	str	r4, [sp]
    1de8:	ebfffce4 	bl	1180 <_Unwind_VRS_Get>
    1dec:	e1a00005 	mov	r0, r5
    1df0:	e1a01007 	mov	r1, r7
    1df4:	e3a0200f 	mov	r2, #15
    1df8:	e1a03007 	mov	r3, r7
    1dfc:	e58d4000 	str	r4, [sp]
    1e00:	ebfffcf9 	bl	11ec <_Unwind_VRS_Set>
    1e04:	e1a00007 	mov	r0, r7
    1e08:	ea0000c5 	b	2124 <__gnu_unwind_execute+0x38c>
    1e0c:	e2101080 	ands	r1, r0, #128	; 0x80
    1e10:	1a000010 	bne	1e58 <__gnu_unwind_execute+0xc0>
    1e14:	e1a03001 	mov	r3, r1
    1e18:	e1a08100 	lsl	r8, r0, #2
    1e1c:	e3a0200d 	mov	r2, #13
    1e20:	e1a00005 	mov	r0, r5
    1e24:	e20880ff 	and	r8, r8, #255	; 0xff
    1e28:	e58da000 	str	sl, [sp]
    1e2c:	ebfffcd3 	bl	1180 <_Unwind_VRS_Get>
    1e30:	e59d300c 	ldr	r3, [sp, #12]
    1e34:	e2888004 	add	r8, r8, #4
    1e38:	e3140040 	tst	r4, #64	; 0x40
    1e3c:	10688003 	rsbne	r8, r8, r3
    1e40:	00838008 	addeq	r8, r3, r8
    1e44:	e58d800c 	str	r8, [sp, #12]
    1e48:	e58da000 	str	sl, [sp]
    1e4c:	e1a00005 	mov	r0, r5
    1e50:	e3a01000 	mov	r1, #0
    1e54:	ea000024 	b	1eec <__gnu_unwind_execute+0x154>
    1e58:	e20030f0 	and	r3, r0, #240	; 0xf0
    1e5c:	e3530080 	cmp	r3, #128	; 0x80
    1e60:	1a000011 	bne	1eac <__gnu_unwind_execute+0x114>
    1e64:	e1a04400 	lsl	r4, r0, #8
    1e68:	e1a00006 	mov	r0, r6
    1e6c:	ebffffb3 	bl	1d40 <_Unwind_Backtrace+0x24>
    1e70:	e1804004 	orr	r4, r0, r4
    1e74:	e3540902 	cmp	r4, #32768	; 0x8000
    1e78:	0a0000a8 	beq	2120 <__gnu_unwind_execute+0x388>
    1e7c:	e3a01000 	mov	r1, #0
    1e80:	e1a02a04 	lsl	r2, r4, #20
    1e84:	e1a00005 	mov	r0, r5
    1e88:	e1a02822 	lsr	r2, r2, #16
    1e8c:	e1a03001 	mov	r3, r1
    1e90:	ebfffddc 	bl	1608 <_Unwind_VRS_Pop>
    1e94:	e1a08204 	lsl	r8, r4, #4
    1e98:	e3500000 	cmp	r0, #0
    1e9c:	1a00009f 	bne	2120 <__gnu_unwind_execute+0x388>
    1ea0:	e3180902 	tst	r8, #32768	; 0x8000
    1ea4:	13a07001 	movne	r7, #1
    1ea8:	eaffffc0 	b	1db0 <__gnu_unwind_execute+0x18>
    1eac:	e3530090 	cmp	r3, #144	; 0x90
    1eb0:	1a000011 	bne	1efc <__gnu_unwind_execute+0x164>
    1eb4:	e200200f 	and	r2, r0, #15
    1eb8:	e352000d 	cmp	r2, #13
    1ebc:	1352000f 	cmpne	r2, #15
    1ec0:	13a08000 	movne	r8, #0
    1ec4:	03a08001 	moveq	r8, #1
    1ec8:	0a000094 	beq	2120 <__gnu_unwind_execute+0x388>
    1ecc:	e1a01008 	mov	r1, r8
    1ed0:	e1a00005 	mov	r0, r5
    1ed4:	e1a03008 	mov	r3, r8
    1ed8:	e58da000 	str	sl, [sp]
    1edc:	ebfffca7 	bl	1180 <_Unwind_VRS_Get>
    1ee0:	e1a00005 	mov	r0, r5
    1ee4:	e1a01008 	mov	r1, r8
    1ee8:	e58da000 	str	sl, [sp]
    1eec:	e3a0200d 	mov	r2, #13
    1ef0:	e1a03001 	mov	r3, r1
    1ef4:	ebfffcbc 	bl	11ec <_Unwind_VRS_Set>
    1ef8:	eaffffac 	b	1db0 <__gnu_unwind_execute+0x18>
    1efc:	e35300a0 	cmp	r3, #160	; 0xa0
    1f00:	1a000008 	bne	1f28 <__gnu_unwind_execute+0x190>
    1f04:	e1e02000 	mvn	r2, r0
    1f08:	e2022007 	and	r2, r2, #7
    1f0c:	e1a02259 	asr	r2, r9, r2
    1f10:	e3100008 	tst	r0, #8
    1f14:	e2022eff 	and	r2, r2, #4080	; 0xff0
    1f18:	13822901 	orrne	r2, r2, #16384	; 0x4000
    1f1c:	e1a00005 	mov	r0, r5
    1f20:	e3a01000 	mov	r1, #0
    1f24:	ea00005d 	b	20a0 <__gnu_unwind_execute+0x308>
    1f28:	e35300b0 	cmp	r3, #176	; 0xb0
    1f2c:	1a00003b 	bne	2020 <__gnu_unwind_execute+0x288>
    1f30:	e35000b1 	cmp	r0, #177	; 0xb1
    1f34:	1a000007 	bne	1f58 <__gnu_unwind_execute+0x1c0>
    1f38:	e1a00006 	mov	r0, r6
    1f3c:	ebffff7f 	bl	1d40 <_Unwind_Backtrace+0x24>
    1f40:	e2502000 	subs	r2, r0, #0
    1f44:	0a000075 	beq	2120 <__gnu_unwind_execute+0x388>
    1f48:	e21210f0 	ands	r1, r2, #240	; 0xf0
    1f4c:	1a000073 	bne	2120 <__gnu_unwind_execute+0x388>
    1f50:	e1a00005 	mov	r0, r5
    1f54:	ea000051 	b	20a0 <__gnu_unwind_execute+0x308>
    1f58:	e35000b2 	cmp	r0, #178	; 0xb2
    1f5c:	1a000018 	bne	1fc4 <__gnu_unwind_execute+0x22c>
    1f60:	e3a01000 	mov	r1, #0
    1f64:	e3a0200d 	mov	r2, #13
    1f68:	e1a03001 	mov	r3, r1
    1f6c:	e1a00005 	mov	r0, r5
    1f70:	e58da000 	str	sl, [sp]
    1f74:	ebfffc81 	bl	1180 <_Unwind_VRS_Get>
    1f78:	e1a00006 	mov	r0, r6
    1f7c:	ebffff6f 	bl	1d40 <_Unwind_Backtrace+0x24>
    1f80:	e3a04002 	mov	r4, #2
    1f84:	ea000004 	b	1f9c <__gnu_unwind_execute+0x204>
    1f88:	e0830410 	add	r0, r3, r0, lsl r4
    1f8c:	e58d000c 	str	r0, [sp, #12]
    1f90:	e1a00006 	mov	r0, r6
    1f94:	e2844007 	add	r4, r4, #7
    1f98:	ebffff68 	bl	1d40 <_Unwind_Backtrace+0x24>
    1f9c:	e2101080 	ands	r1, r0, #128	; 0x80
    1fa0:	e59d300c 	ldr	r3, [sp, #12]
    1fa4:	e200007f 	and	r0, r0, #127	; 0x7f
    1fa8:	1afffff6 	bne	1f88 <__gnu_unwind_execute+0x1f0>
    1fac:	e2833f81 	add	r3, r3, #516	; 0x204
    1fb0:	e0830410 	add	r0, r3, r0, lsl r4
    1fb4:	e58da000 	str	sl, [sp]
    1fb8:	e58d000c 	str	r0, [sp, #12]
    1fbc:	e1a00005 	mov	r0, r5
    1fc0:	eaffffc9 	b	1eec <__gnu_unwind_execute+0x154>
    1fc4:	e35000b3 	cmp	r0, #179	; 0xb3
    1fc8:	1a000007 	bne	1fec <__gnu_unwind_execute+0x254>
    1fcc:	e1a00006 	mov	r0, r6
    1fd0:	ebffff5a 	bl	1d40 <_Unwind_Backtrace+0x24>
    1fd4:	e3a01001 	mov	r1, #1
    1fd8:	e200300f 	and	r3, r0, #15
    1fdc:	e20020f0 	and	r2, r0, #240	; 0xf0
    1fe0:	e2833001 	add	r3, r3, #1
    1fe4:	e1a00005 	mov	r0, r5
    1fe8:	ea000017 	b	204c <__gnu_unwind_execute+0x2b4>
    1fec:	e20030fc 	and	r3, r0, #252	; 0xfc
    1ff0:	e35300b4 	cmp	r3, #180	; 0xb4
    1ff4:	02004003 	andeq	r4, r0, #3
    1ff8:	12044007 	andne	r4, r4, #7
    1ffc:	02842001 	addeq	r2, r4, #1
    2000:	12842001 	addne	r2, r4, #1
    2004:	01a00005 	moveq	r0, r5
    2008:	03a01002 	moveq	r1, #2
    200c:	03822701 	orreq	r2, r2, #262144	; 0x40000
    2010:	11a00005 	movne	r0, r5
    2014:	13a01001 	movne	r1, #1
    2018:	13822702 	orrne	r2, r2, #524288	; 0x80000
    201c:	ea00001f 	b	20a0 <__gnu_unwind_execute+0x308>
    2020:	e35300c0 	cmp	r3, #192	; 0xc0
    2024:	1a000031 	bne	20f0 <__gnu_unwind_execute+0x358>
    2028:	e35000c6 	cmp	r0, #198	; 0xc6
    202c:	1a000008 	bne	2054 <__gnu_unwind_execute+0x2bc>
    2030:	e1a00006 	mov	r0, r6
    2034:	ebffff41 	bl	1d40 <_Unwind_Backtrace+0x24>
    2038:	e3a01003 	mov	r1, #3
    203c:	e200300f 	and	r3, r0, #15
    2040:	e20020f0 	and	r2, r0, #240	; 0xf0
    2044:	e2833001 	add	r3, r3, #1
    2048:	e1a00005 	mov	r0, r5
    204c:	e1832602 	orr	r2, r3, r2, lsl #12
    2050:	ea000012 	b	20a0 <__gnu_unwind_execute+0x308>
    2054:	e35000c7 	cmp	r0, #199	; 0xc7
    2058:	1a000008 	bne	2080 <__gnu_unwind_execute+0x2e8>
    205c:	e1a00006 	mov	r0, r6
    2060:	ebffff36 	bl	1d40 <_Unwind_Backtrace+0x24>
    2064:	e2502000 	subs	r2, r0, #0
    2068:	0a00002c 	beq	2120 <__gnu_unwind_execute+0x388>
    206c:	e21230f0 	ands	r3, r2, #240	; 0xf0
    2070:	1a00002a 	bne	2120 <__gnu_unwind_execute+0x388>
    2074:	e1a00005 	mov	r0, r5
    2078:	e3a01004 	mov	r1, #4
    207c:	ea000024 	b	2114 <__gnu_unwind_execute+0x37c>
    2080:	e20030f8 	and	r3, r0, #248	; 0xf8
    2084:	e35300c0 	cmp	r3, #192	; 0xc0
    2088:	1a000006 	bne	20a8 <__gnu_unwind_execute+0x310>
    208c:	e200400f 	and	r4, r0, #15
    2090:	e2842001 	add	r2, r4, #1
    2094:	e1a00005 	mov	r0, r5
    2098:	e3a01003 	mov	r1, #3
    209c:	e382280a 	orr	r2, r2, #655360	; 0xa0000
    20a0:	e1a03001 	mov	r3, r1
    20a4:	ea00001a 	b	2114 <__gnu_unwind_execute+0x37c>
    20a8:	e35000c8 	cmp	r0, #200	; 0xc8
    20ac:	1a000004 	bne	20c4 <__gnu_unwind_execute+0x32c>
    20b0:	e1a00006 	mov	r0, r6
    20b4:	ebffff21 	bl	1d40 <_Unwind_Backtrace+0x24>
    20b8:	e20020f0 	and	r2, r0, #240	; 0xf0
    20bc:	e2822010 	add	r2, r2, #16
    20c0:	ea000004 	b	20d8 <__gnu_unwind_execute+0x340>
    20c4:	e35000c9 	cmp	r0, #201	; 0xc9
    20c8:	1a000014 	bne	2120 <__gnu_unwind_execute+0x388>
    20cc:	e1a00006 	mov	r0, r6
    20d0:	ebffff1a 	bl	1d40 <_Unwind_Backtrace+0x24>
    20d4:	e20020f0 	and	r2, r0, #240	; 0xf0
    20d8:	e200300f 	and	r3, r0, #15
    20dc:	e2833001 	add	r3, r3, #1
    20e0:	e1a00005 	mov	r0, r5
    20e4:	e3a01001 	mov	r1, #1
    20e8:	e1832602 	orr	r2, r3, r2, lsl #12
    20ec:	ea000007 	b	2110 <__gnu_unwind_execute+0x378>
    20f0:	e20030f8 	and	r3, r0, #248	; 0xf8
    20f4:	e35300d0 	cmp	r3, #208	; 0xd0
    20f8:	1a000008 	bne	2120 <__gnu_unwind_execute+0x388>
    20fc:	e2004007 	and	r4, r0, #7
    2100:	e2842001 	add	r2, r4, #1
    2104:	e1a00005 	mov	r0, r5
    2108:	e3a01001 	mov	r1, #1
    210c:	e3822702 	orr	r2, r2, #524288	; 0x80000
    2110:	e3a03005 	mov	r3, #5
    2114:	ebfffd3b 	bl	1608 <_Unwind_VRS_Pop>
    2118:	e3500000 	cmp	r0, #0
    211c:	0affff23 	beq	1db0 <__gnu_unwind_execute+0x18>
    2120:	e3a00009 	mov	r0, #9
    2124:	e28dd010 	add	sp, sp, #16
    2128:	e8bd87f0 	pop	{r4, r5, r6, r7, r8, r9, sl, pc}

0000212c <__gnu_unwind_frame>:
    212c:	e92d401f 	push	{r0, r1, r2, r3, r4, lr}
    2130:	e590304c 	ldr	r3, [r0, #76]	; 0x4c
    2134:	e1a00001 	mov	r0, r1
    2138:	e5932004 	ldr	r2, [r3, #4]
    213c:	e28d1004 	add	r1, sp, #4
    2140:	e1a02402 	lsl	r2, r2, #8
    2144:	e58d2004 	str	r2, [sp, #4]
    2148:	e2832008 	add	r2, r3, #8
    214c:	e58d2008 	str	r2, [sp, #8]
    2150:	e3a02003 	mov	r2, #3
    2154:	e5cd200c 	strb	r2, [sp, #12]
    2158:	e5d33007 	ldrb	r3, [r3, #7]
    215c:	e5cd300d 	strb	r3, [sp, #13]
    2160:	ebffff0c 	bl	1d98 <__gnu_unwind_execute>
    2164:	e28dd014 	add	sp, sp, #20
    2168:	e8bd8000 	pop	{pc}

0000216c <_Unwind_GetRegionStart>:
    216c:	e92d401f 	push	{r0, r1, r2, r3, r4, lr}
    2170:	e3a01000 	mov	r1, #0
    2174:	e28d300c 	add	r3, sp, #12
    2178:	e58d3000 	str	r3, [sp]
    217c:	e3a0200c 	mov	r2, #12
    2180:	e1a03001 	mov	r3, r1
    2184:	ebfffbfd 	bl	1180 <_Unwind_VRS_Get>
    2188:	e59d300c 	ldr	r3, [sp, #12]
    218c:	e5930048 	ldr	r0, [r3, #72]	; 0x48
    2190:	e28dd014 	add	sp, sp, #20
    2194:	e8bd8000 	pop	{pc}

00002198 <_Unwind_GetLanguageSpecificData>:
    2198:	e92d401f 	push	{r0, r1, r2, r3, r4, lr}
    219c:	e3a01000 	mov	r1, #0
    21a0:	e28d300c 	add	r3, sp, #12
    21a4:	e58d3000 	str	r3, [sp]
    21a8:	e3a0200c 	mov	r2, #12
    21ac:	e1a03001 	mov	r3, r1
    21b0:	ebfffbf2 	bl	1180 <_Unwind_VRS_Get>
    21b4:	e59d300c 	ldr	r3, [sp, #12]
    21b8:	e593304c 	ldr	r3, [r3, #76]	; 0x4c
    21bc:	e5d32007 	ldrb	r2, [r3, #7]
    21c0:	e0833102 	add	r3, r3, r2, lsl #2
    21c4:	e2830008 	add	r0, r3, #8
    21c8:	e28dd014 	add	sp, sp, #20
    21cc:	e8bd8000 	pop	{pc}

000021d0 <_Unwind_GetDataRelBase>:
    21d0:	e92d4008 	push	{r3, lr}
    21d4:	ebfffa8f 	bl	c18 <abort@plt>

000021d8 <_Unwind_GetTextRelBase>:
    21d8:	e92d4008 	push	{r3, lr}
    21dc:	ebfffa8d 	bl	c18 <abort@plt>
