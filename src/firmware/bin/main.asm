
bin/main.elf:     file format elf32-avr


Disassembly of section .text:

00000000 <__vectors>:
       0:	0c 94 37 00 	jmp	0x6e	; 0x6e <__dtors_end>
       4:	0c 94 5f 00 	jmp	0xbe	; 0xbe <__bad_interrupt>
       8:	0c 94 5f 00 	jmp	0xbe	; 0xbe <__bad_interrupt>
       c:	0c 94 5f 00 	jmp	0xbe	; 0xbe <__bad_interrupt>
      10:	0c 94 5f 00 	jmp	0xbe	; 0xbe <__bad_interrupt>
      14:	0c 94 5f 00 	jmp	0xbe	; 0xbe <__bad_interrupt>
      18:	0c 94 5f 00 	jmp	0xbe	; 0xbe <__bad_interrupt>
      1c:	0c 94 5f 00 	jmp	0xbe	; 0xbe <__bad_interrupt>
      20:	0c 94 5f 00 	jmp	0xbe	; 0xbe <__bad_interrupt>
      24:	0c 94 5f 00 	jmp	0xbe	; 0xbe <__bad_interrupt>
      28:	0c 94 5f 00 	jmp	0xbe	; 0xbe <__bad_interrupt>
      2c:	0c 94 5f 00 	jmp	0xbe	; 0xbe <__bad_interrupt>
      30:	0c 94 5f 00 	jmp	0xbe	; 0xbe <__bad_interrupt>
      34:	0c 94 5f 00 	jmp	0xbe	; 0xbe <__bad_interrupt>
      38:	0c 94 30 07 	jmp	0xe60	; 0xe60 <__vector_14>
      3c:	0c 94 5f 00 	jmp	0xbe	; 0xbe <__bad_interrupt>
      40:	0c 94 5f 00 	jmp	0xbe	; 0xbe <__bad_interrupt>
      44:	0c 94 5f 00 	jmp	0xbe	; 0xbe <__bad_interrupt>
      48:	0c 94 5f 00 	jmp	0xbe	; 0xbe <__bad_interrupt>
      4c:	0c 94 5f 00 	jmp	0xbe	; 0xbe <__bad_interrupt>
      50:	0c 94 5f 00 	jmp	0xbe	; 0xbe <__bad_interrupt>
      54:	0c 94 5f 00 	jmp	0xbe	; 0xbe <__bad_interrupt>
      58:	0c 94 5f 00 	jmp	0xbe	; 0xbe <__bad_interrupt>
      5c:	0c 94 5f 00 	jmp	0xbe	; 0xbe <__bad_interrupt>
      60:	0c 94 5f 00 	jmp	0xbe	; 0xbe <__bad_interrupt>
      64:	0c 94 5f 00 	jmp	0xbe	; 0xbe <__bad_interrupt>

00000068 <__ctors_start>:
      68:	97 07       	cpc	r25, r23
      6a:	2c 08       	sbc	r2, r12

0000006c <__ctors_end>:
      6c:	30 08       	sbc	r3, r0

0000006e <__dtors_end>:
      6e:	11 24       	eor	r1, r1
      70:	1f be       	out	0x3f, r1	; 63
      72:	cf ef       	ldi	r28, 0xFF	; 255
      74:	d8 e0       	ldi	r29, 0x08	; 8
      76:	de bf       	out	0x3e, r29	; 62
      78:	cd bf       	out	0x3d, r28	; 61

0000007a <__do_copy_data>:
      7a:	11 e0       	ldi	r17, 0x01	; 1
      7c:	a0 e0       	ldi	r26, 0x00	; 0
      7e:	b1 e0       	ldi	r27, 0x01	; 1
      80:	ea e2       	ldi	r30, 0x2A	; 42
      82:	f4 e1       	ldi	r31, 0x14	; 20
      84:	02 c0       	rjmp	.+4      	; 0x8a <__do_copy_data+0x10>
      86:	05 90       	lpm	r0, Z+
      88:	0d 92       	st	X+, r0
      8a:	a2 35       	cpi	r26, 0x52	; 82
      8c:	b1 07       	cpc	r27, r17
      8e:	d9 f7       	brne	.-10     	; 0x86 <__do_copy_data+0xc>

00000090 <__do_clear_bss>:
      90:	21 e0       	ldi	r18, 0x01	; 1
      92:	a2 e5       	ldi	r26, 0x52	; 82
      94:	b1 e0       	ldi	r27, 0x01	; 1
      96:	01 c0       	rjmp	.+2      	; 0x9a <.do_clear_bss_start>

00000098 <.do_clear_bss_loop>:
      98:	1d 92       	st	X+, r1

0000009a <.do_clear_bss_start>:
      9a:	ac 39       	cpi	r26, 0x9C	; 156
      9c:	b2 07       	cpc	r27, r18
      9e:	e1 f7       	brne	.-8      	; 0x98 <.do_clear_bss_loop>

000000a0 <__do_global_ctors>:
      a0:	10 e0       	ldi	r17, 0x00	; 0
      a2:	c6 e3       	ldi	r28, 0x36	; 54
      a4:	d0 e0       	ldi	r29, 0x00	; 0
      a6:	04 c0       	rjmp	.+8      	; 0xb0 <__do_global_ctors+0x10>
      a8:	21 97       	sbiw	r28, 0x01	; 1
      aa:	fe 01       	movw	r30, r28
      ac:	0e 94 d5 08 	call	0x11aa	; 0x11aa <__tablejump2__>
      b0:	c4 33       	cpi	r28, 0x34	; 52
      b2:	d1 07       	cpc	r29, r17
      b4:	c9 f7       	brne	.-14     	; 0xa8 <__do_global_ctors+0x8>
      b6:	0e 94 59 03 	call	0x6b2	; 0x6b2 <main>
      ba:	0c 94 08 0a 	jmp	0x1410	; 0x1410 <__do_global_dtors>

000000be <__bad_interrupt>:
      be:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000000c2 <_ZN4TI2CILh2ELh0ELh5ELh1ELh2EE9write_regEhhh>:
      c2:	0f 93       	push	r16
      c4:	1f 93       	push	r17
      c6:	cf 93       	push	r28
      c8:	df 93       	push	r29
      ca:	00 d0       	rcall	.+0      	; 0xcc <_ZN4TI2CILh2ELh0ELh5ELh1ELh2EE9write_regEhhh+0xa>
      cc:	1f 92       	push	r1
      ce:	cd b7       	in	r28, 0x3d	; 61
      d0:	de b7       	in	r29, 0x3e	; 62
      d2:	8c 01       	movw	r16, r24
      d4:	dc 01       	movw	r26, r24
      d6:	ed 91       	ld	r30, X+
      d8:	fc 91       	ld	r31, X
      da:	01 90       	ld	r0, Z+
      dc:	f0 81       	ld	r31, Z
      de:	e0 2d       	mov	r30, r0
      e0:	2b 83       	std	Y+3, r18	; 0x03
      e2:	4a 83       	std	Y+2, r20	; 0x02
      e4:	69 83       	std	Y+1, r22	; 0x01
      e6:	09 95       	icall
      e8:	d8 01       	movw	r26, r16
      ea:	ed 91       	ld	r30, X+
      ec:	fc 91       	ld	r31, X
      ee:	04 80       	ldd	r0, Z+4	; 0x04
      f0:	f5 81       	ldd	r31, Z+5	; 0x05
      f2:	e0 2d       	mov	r30, r0
      f4:	69 81       	ldd	r22, Y+1	; 0x01
      f6:	c8 01       	movw	r24, r16
      f8:	09 95       	icall
      fa:	d8 01       	movw	r26, r16
      fc:	ed 91       	ld	r30, X+
      fe:	fc 91       	ld	r31, X
     100:	04 80       	ldd	r0, Z+4	; 0x04
     102:	f5 81       	ldd	r31, Z+5	; 0x05
     104:	e0 2d       	mov	r30, r0
     106:	4a 81       	ldd	r20, Y+2	; 0x02
     108:	64 2f       	mov	r22, r20
     10a:	c8 01       	movw	r24, r16
     10c:	09 95       	icall
     10e:	d8 01       	movw	r26, r16
     110:	ed 91       	ld	r30, X+
     112:	fc 91       	ld	r31, X
     114:	04 80       	ldd	r0, Z+4	; 0x04
     116:	f5 81       	ldd	r31, Z+5	; 0x05
     118:	e0 2d       	mov	r30, r0
     11a:	2b 81       	ldd	r18, Y+3	; 0x03
     11c:	62 2f       	mov	r22, r18
     11e:	c8 01       	movw	r24, r16
     120:	09 95       	icall
     122:	d8 01       	movw	r26, r16
     124:	ed 91       	ld	r30, X+
     126:	fc 91       	ld	r31, X
     128:	02 80       	ldd	r0, Z+2	; 0x02
     12a:	f3 81       	ldd	r31, Z+3	; 0x03
     12c:	e0 2d       	mov	r30, r0
     12e:	c8 01       	movw	r24, r16
     130:	0f 90       	pop	r0
     132:	0f 90       	pop	r0
     134:	0f 90       	pop	r0
     136:	df 91       	pop	r29
     138:	cf 91       	pop	r28
     13a:	1f 91       	pop	r17
     13c:	0f 91       	pop	r16
     13e:	09 94       	ijmp

00000140 <_ZN4TI2CILh2ELh0ELh5ELh1ELh2EE15write_reg_16bitEhhj>:
     140:	0f 93       	push	r16
     142:	1f 93       	push	r17
     144:	cf 93       	push	r28
     146:	df 93       	push	r29
     148:	00 d0       	rcall	.+0      	; 0x14a <_ZN4TI2CILh2ELh0ELh5ELh1ELh2EE15write_reg_16bitEhhj+0xa>
     14a:	00 d0       	rcall	.+0      	; 0x14c <_ZN4TI2CILh2ELh0ELh5ELh1ELh2EE15write_reg_16bitEhhj+0xc>
     14c:	cd b7       	in	r28, 0x3d	; 61
     14e:	de b7       	in	r29, 0x3e	; 62
     150:	8c 01       	movw	r16, r24
     152:	dc 01       	movw	r26, r24
     154:	ed 91       	ld	r30, X+
     156:	fc 91       	ld	r31, X
     158:	01 90       	ld	r0, Z+
     15a:	f0 81       	ld	r31, Z
     15c:	e0 2d       	mov	r30, r0
     15e:	2c 83       	std	Y+4, r18	; 0x04
     160:	3b 83       	std	Y+3, r19	; 0x03
     162:	4a 83       	std	Y+2, r20	; 0x02
     164:	69 83       	std	Y+1, r22	; 0x01
     166:	09 95       	icall
     168:	d8 01       	movw	r26, r16
     16a:	ed 91       	ld	r30, X+
     16c:	fc 91       	ld	r31, X
     16e:	04 80       	ldd	r0, Z+4	; 0x04
     170:	f5 81       	ldd	r31, Z+5	; 0x05
     172:	e0 2d       	mov	r30, r0
     174:	69 81       	ldd	r22, Y+1	; 0x01
     176:	c8 01       	movw	r24, r16
     178:	09 95       	icall
     17a:	d8 01       	movw	r26, r16
     17c:	ed 91       	ld	r30, X+
     17e:	fc 91       	ld	r31, X
     180:	04 80       	ldd	r0, Z+4	; 0x04
     182:	f5 81       	ldd	r31, Z+5	; 0x05
     184:	e0 2d       	mov	r30, r0
     186:	4a 81       	ldd	r20, Y+2	; 0x02
     188:	64 2f       	mov	r22, r20
     18a:	c8 01       	movw	r24, r16
     18c:	09 95       	icall
     18e:	d8 01       	movw	r26, r16
     190:	ed 91       	ld	r30, X+
     192:	fc 91       	ld	r31, X
     194:	04 80       	ldd	r0, Z+4	; 0x04
     196:	f5 81       	ldd	r31, Z+5	; 0x05
     198:	e0 2d       	mov	r30, r0
     19a:	3b 81       	ldd	r19, Y+3	; 0x03
     19c:	63 2f       	mov	r22, r19
     19e:	c8 01       	movw	r24, r16
     1a0:	09 95       	icall
     1a2:	d8 01       	movw	r26, r16
     1a4:	ed 91       	ld	r30, X+
     1a6:	fc 91       	ld	r31, X
     1a8:	04 80       	ldd	r0, Z+4	; 0x04
     1aa:	f5 81       	ldd	r31, Z+5	; 0x05
     1ac:	e0 2d       	mov	r30, r0
     1ae:	2c 81       	ldd	r18, Y+4	; 0x04
     1b0:	62 2f       	mov	r22, r18
     1b2:	c8 01       	movw	r24, r16
     1b4:	09 95       	icall
     1b6:	d8 01       	movw	r26, r16
     1b8:	ed 91       	ld	r30, X+
     1ba:	fc 91       	ld	r31, X
     1bc:	02 80       	ldd	r0, Z+2	; 0x02
     1be:	f3 81       	ldd	r31, Z+3	; 0x03
     1c0:	e0 2d       	mov	r30, r0
     1c2:	c8 01       	movw	r24, r16
     1c4:	0f 90       	pop	r0
     1c6:	0f 90       	pop	r0
     1c8:	0f 90       	pop	r0
     1ca:	0f 90       	pop	r0
     1cc:	df 91       	pop	r29
     1ce:	cf 91       	pop	r28
     1d0:	1f 91       	pop	r17
     1d2:	0f 91       	pop	r16
     1d4:	09 94       	ijmp

000001d6 <_ZN4TI2CILh2ELh0ELh5ELh1ELh2EE15write_reg_multiEhhPhj>:
     1d6:	cf 92       	push	r12
     1d8:	df 92       	push	r13
     1da:	ef 92       	push	r14
     1dc:	ff 92       	push	r15
     1de:	0f 93       	push	r16
     1e0:	1f 93       	push	r17
     1e2:	cf 93       	push	r28
     1e4:	df 93       	push	r29
     1e6:	00 d0       	rcall	.+0      	; 0x1e8 <_ZN4TI2CILh2ELh0ELh5ELh1ELh2EE15write_reg_multiEhhPhj+0x12>
     1e8:	00 d0       	rcall	.+0      	; 0x1ea <_ZN4TI2CILh2ELh0ELh5ELh1ELh2EE15write_reg_multiEhhPhj+0x14>
     1ea:	cd b7       	in	r28, 0x3d	; 61
     1ec:	de b7       	in	r29, 0x3e	; 62
     1ee:	6c 01       	movw	r12, r24
     1f0:	dc 01       	movw	r26, r24
     1f2:	ed 91       	ld	r30, X+
     1f4:	fc 91       	ld	r31, X
     1f6:	01 90       	ld	r0, Z+
     1f8:	f0 81       	ld	r31, Z
     1fa:	e0 2d       	mov	r30, r0
     1fc:	2b 83       	std	Y+3, r18	; 0x03
     1fe:	3c 83       	std	Y+4, r19	; 0x04
     200:	4a 83       	std	Y+2, r20	; 0x02
     202:	69 83       	std	Y+1, r22	; 0x01
     204:	09 95       	icall
     206:	d6 01       	movw	r26, r12
     208:	ed 91       	ld	r30, X+
     20a:	fc 91       	ld	r31, X
     20c:	04 80       	ldd	r0, Z+4	; 0x04
     20e:	f5 81       	ldd	r31, Z+5	; 0x05
     210:	e0 2d       	mov	r30, r0
     212:	69 81       	ldd	r22, Y+1	; 0x01
     214:	c6 01       	movw	r24, r12
     216:	09 95       	icall
     218:	d6 01       	movw	r26, r12
     21a:	ed 91       	ld	r30, X+
     21c:	fc 91       	ld	r31, X
     21e:	04 80       	ldd	r0, Z+4	; 0x04
     220:	f5 81       	ldd	r31, Z+5	; 0x05
     222:	e0 2d       	mov	r30, r0
     224:	4a 81       	ldd	r20, Y+2	; 0x02
     226:	64 2f       	mov	r22, r20
     228:	c6 01       	movw	r24, r12
     22a:	09 95       	icall
     22c:	2b 81       	ldd	r18, Y+3	; 0x03
     22e:	e2 2e       	mov	r14, r18
     230:	3c 81       	ldd	r19, Y+4	; 0x04
     232:	f3 2e       	mov	r15, r19
     234:	0e 0d       	add	r16, r14
     236:	1f 1d       	adc	r17, r15
     238:	d6 01       	movw	r26, r12
     23a:	ed 91       	ld	r30, X+
     23c:	fc 91       	ld	r31, X
     23e:	e0 16       	cp	r14, r16
     240:	f1 06       	cpc	r15, r17
     242:	49 f0       	breq	.+18     	; 0x256 <_ZN4TI2CILh2ELh0ELh5ELh1ELh2EE15write_reg_multiEhhPhj+0x80>
     244:	d7 01       	movw	r26, r14
     246:	6d 91       	ld	r22, X+
     248:	7d 01       	movw	r14, r26
     24a:	04 80       	ldd	r0, Z+4	; 0x04
     24c:	f5 81       	ldd	r31, Z+5	; 0x05
     24e:	e0 2d       	mov	r30, r0
     250:	c6 01       	movw	r24, r12
     252:	09 95       	icall
     254:	f1 cf       	rjmp	.-30     	; 0x238 <_ZN4TI2CILh2ELh0ELh5ELh1ELh2EE15write_reg_multiEhhPhj+0x62>
     256:	02 80       	ldd	r0, Z+2	; 0x02
     258:	f3 81       	ldd	r31, Z+3	; 0x03
     25a:	e0 2d       	mov	r30, r0
     25c:	c6 01       	movw	r24, r12
     25e:	0f 90       	pop	r0
     260:	0f 90       	pop	r0
     262:	0f 90       	pop	r0
     264:	0f 90       	pop	r0
     266:	df 91       	pop	r29
     268:	cf 91       	pop	r28
     26a:	1f 91       	pop	r17
     26c:	0f 91       	pop	r16
     26e:	ff 90       	pop	r15
     270:	ef 90       	pop	r14
     272:	df 90       	pop	r13
     274:	cf 90       	pop	r12
     276:	09 94       	ijmp

00000278 <_ZN4TI2CILh2ELh0ELh5ELh1ELh2EE8read_regEhh>:
     278:	ef 92       	push	r14
     27a:	ff 92       	push	r15
     27c:	1f 93       	push	r17
     27e:	cf 93       	push	r28
     280:	df 93       	push	r29
     282:	1f 92       	push	r1
     284:	cd b7       	in	r28, 0x3d	; 61
     286:	de b7       	in	r29, 0x3e	; 62
     288:	7c 01       	movw	r14, r24
     28a:	16 2f       	mov	r17, r22
     28c:	dc 01       	movw	r26, r24
     28e:	ed 91       	ld	r30, X+
     290:	fc 91       	ld	r31, X
     292:	01 90       	ld	r0, Z+
     294:	f0 81       	ld	r31, Z
     296:	e0 2d       	mov	r30, r0
     298:	49 83       	std	Y+1, r20	; 0x01
     29a:	09 95       	icall
     29c:	d7 01       	movw	r26, r14
     29e:	ed 91       	ld	r30, X+
     2a0:	fc 91       	ld	r31, X
     2a2:	04 80       	ldd	r0, Z+4	; 0x04
     2a4:	f5 81       	ldd	r31, Z+5	; 0x05
     2a6:	e0 2d       	mov	r30, r0
     2a8:	61 2f       	mov	r22, r17
     2aa:	c7 01       	movw	r24, r14
     2ac:	09 95       	icall
     2ae:	d7 01       	movw	r26, r14
     2b0:	ed 91       	ld	r30, X+
     2b2:	fc 91       	ld	r31, X
     2b4:	04 80       	ldd	r0, Z+4	; 0x04
     2b6:	f5 81       	ldd	r31, Z+5	; 0x05
     2b8:	e0 2d       	mov	r30, r0
     2ba:	49 81       	ldd	r20, Y+1	; 0x01
     2bc:	64 2f       	mov	r22, r20
     2be:	c7 01       	movw	r24, r14
     2c0:	09 95       	icall
     2c2:	d7 01       	movw	r26, r14
     2c4:	ed 91       	ld	r30, X+
     2c6:	fc 91       	ld	r31, X
     2c8:	01 90       	ld	r0, Z+
     2ca:	f0 81       	ld	r31, Z
     2cc:	e0 2d       	mov	r30, r0
     2ce:	c7 01       	movw	r24, r14
     2d0:	09 95       	icall
     2d2:	d7 01       	movw	r26, r14
     2d4:	ed 91       	ld	r30, X+
     2d6:	fc 91       	ld	r31, X
     2d8:	61 2f       	mov	r22, r17
     2da:	61 60       	ori	r22, 0x01	; 1
     2dc:	04 80       	ldd	r0, Z+4	; 0x04
     2de:	f5 81       	ldd	r31, Z+5	; 0x05
     2e0:	e0 2d       	mov	r30, r0
     2e2:	c7 01       	movw	r24, r14
     2e4:	09 95       	icall
     2e6:	d7 01       	movw	r26, r14
     2e8:	ed 91       	ld	r30, X+
     2ea:	fc 91       	ld	r31, X
     2ec:	06 80       	ldd	r0, Z+6	; 0x06
     2ee:	f7 81       	ldd	r31, Z+7	; 0x07
     2f0:	e0 2d       	mov	r30, r0
     2f2:	60 e0       	ldi	r22, 0x00	; 0
     2f4:	c7 01       	movw	r24, r14
     2f6:	09 95       	icall
     2f8:	18 2f       	mov	r17, r24
     2fa:	d7 01       	movw	r26, r14
     2fc:	ed 91       	ld	r30, X+
     2fe:	fc 91       	ld	r31, X
     300:	02 80       	ldd	r0, Z+2	; 0x02
     302:	f3 81       	ldd	r31, Z+3	; 0x03
     304:	e0 2d       	mov	r30, r0
     306:	c7 01       	movw	r24, r14
     308:	09 95       	icall
     30a:	81 2f       	mov	r24, r17
     30c:	0f 90       	pop	r0
     30e:	df 91       	pop	r29
     310:	cf 91       	pop	r28
     312:	1f 91       	pop	r17
     314:	ff 90       	pop	r15
     316:	ef 90       	pop	r14
     318:	08 95       	ret

0000031a <_ZN4TI2CILh2ELh0ELh5ELh1ELh2EE14read_reg_16bitEhh>:
     31a:	ef 92       	push	r14
     31c:	ff 92       	push	r15
     31e:	0f 93       	push	r16
     320:	1f 93       	push	r17
     322:	cf 93       	push	r28
     324:	df 93       	push	r29
     326:	1f 92       	push	r1
     328:	cd b7       	in	r28, 0x3d	; 61
     32a:	de b7       	in	r29, 0x3e	; 62
     32c:	7c 01       	movw	r14, r24
     32e:	16 2f       	mov	r17, r22
     330:	dc 01       	movw	r26, r24
     332:	ed 91       	ld	r30, X+
     334:	fc 91       	ld	r31, X
     336:	01 90       	ld	r0, Z+
     338:	f0 81       	ld	r31, Z
     33a:	e0 2d       	mov	r30, r0
     33c:	49 83       	std	Y+1, r20	; 0x01
     33e:	09 95       	icall
     340:	d7 01       	movw	r26, r14
     342:	ed 91       	ld	r30, X+
     344:	fc 91       	ld	r31, X
     346:	04 80       	ldd	r0, Z+4	; 0x04
     348:	f5 81       	ldd	r31, Z+5	; 0x05
     34a:	e0 2d       	mov	r30, r0
     34c:	61 2f       	mov	r22, r17
     34e:	c7 01       	movw	r24, r14
     350:	09 95       	icall
     352:	d7 01       	movw	r26, r14
     354:	ed 91       	ld	r30, X+
     356:	fc 91       	ld	r31, X
     358:	04 80       	ldd	r0, Z+4	; 0x04
     35a:	f5 81       	ldd	r31, Z+5	; 0x05
     35c:	e0 2d       	mov	r30, r0
     35e:	49 81       	ldd	r20, Y+1	; 0x01
     360:	64 2f       	mov	r22, r20
     362:	c7 01       	movw	r24, r14
     364:	09 95       	icall
     366:	d7 01       	movw	r26, r14
     368:	ed 91       	ld	r30, X+
     36a:	fc 91       	ld	r31, X
     36c:	01 90       	ld	r0, Z+
     36e:	f0 81       	ld	r31, Z
     370:	e0 2d       	mov	r30, r0
     372:	c7 01       	movw	r24, r14
     374:	09 95       	icall
     376:	d7 01       	movw	r26, r14
     378:	ed 91       	ld	r30, X+
     37a:	fc 91       	ld	r31, X
     37c:	61 2f       	mov	r22, r17
     37e:	61 60       	ori	r22, 0x01	; 1
     380:	04 80       	ldd	r0, Z+4	; 0x04
     382:	f5 81       	ldd	r31, Z+5	; 0x05
     384:	e0 2d       	mov	r30, r0
     386:	c7 01       	movw	r24, r14
     388:	09 95       	icall
     38a:	d7 01       	movw	r26, r14
     38c:	ed 91       	ld	r30, X+
     38e:	fc 91       	ld	r31, X
     390:	06 80       	ldd	r0, Z+6	; 0x06
     392:	f7 81       	ldd	r31, Z+7	; 0x07
     394:	e0 2d       	mov	r30, r0
     396:	61 e0       	ldi	r22, 0x01	; 1
     398:	c7 01       	movw	r24, r14
     39a:	09 95       	icall
     39c:	08 2f       	mov	r16, r24
     39e:	10 e0       	ldi	r17, 0x00	; 0
     3a0:	10 2f       	mov	r17, r16
     3a2:	00 27       	eor	r16, r16
     3a4:	d7 01       	movw	r26, r14
     3a6:	ed 91       	ld	r30, X+
     3a8:	fc 91       	ld	r31, X
     3aa:	06 80       	ldd	r0, Z+6	; 0x06
     3ac:	f7 81       	ldd	r31, Z+7	; 0x07
     3ae:	e0 2d       	mov	r30, r0
     3b0:	60 e0       	ldi	r22, 0x00	; 0
     3b2:	c7 01       	movw	r24, r14
     3b4:	09 95       	icall
     3b6:	08 2b       	or	r16, r24
     3b8:	d7 01       	movw	r26, r14
     3ba:	ed 91       	ld	r30, X+
     3bc:	fc 91       	ld	r31, X
     3be:	02 80       	ldd	r0, Z+2	; 0x02
     3c0:	f3 81       	ldd	r31, Z+3	; 0x03
     3c2:	e0 2d       	mov	r30, r0
     3c4:	c7 01       	movw	r24, r14
     3c6:	09 95       	icall
     3c8:	c8 01       	movw	r24, r16
     3ca:	0f 90       	pop	r0
     3cc:	df 91       	pop	r29
     3ce:	cf 91       	pop	r28
     3d0:	1f 91       	pop	r17
     3d2:	0f 91       	pop	r16
     3d4:	ff 90       	pop	r15
     3d6:	ef 90       	pop	r14
     3d8:	08 95       	ret

000003da <_ZN4TI2CILh2ELh0ELh5ELh1ELh2EE14read_reg_multiEhhPhj>:
     3da:	cf 92       	push	r12
     3dc:	df 92       	push	r13
     3de:	ef 92       	push	r14
     3e0:	ff 92       	push	r15
     3e2:	0f 93       	push	r16
     3e4:	1f 93       	push	r17
     3e6:	cf 93       	push	r28
     3e8:	df 93       	push	r29
     3ea:	00 d0       	rcall	.+0      	; 0x3ec <_ZN4TI2CILh2ELh0ELh5ELh1ELh2EE14read_reg_multiEhhPhj+0x12>
     3ec:	1f 92       	push	r1
     3ee:	cd b7       	in	r28, 0x3d	; 61
     3f0:	de b7       	in	r29, 0x3e	; 62
     3f2:	6c 01       	movw	r12, r24
     3f4:	f6 2e       	mov	r15, r22
     3f6:	dc 01       	movw	r26, r24
     3f8:	ed 91       	ld	r30, X+
     3fa:	fc 91       	ld	r31, X
     3fc:	01 90       	ld	r0, Z+
     3fe:	f0 81       	ld	r31, Z
     400:	e0 2d       	mov	r30, r0
     402:	2a 83       	std	Y+2, r18	; 0x02
     404:	3b 83       	std	Y+3, r19	; 0x03
     406:	49 83       	std	Y+1, r20	; 0x01
     408:	09 95       	icall
     40a:	d6 01       	movw	r26, r12
     40c:	ed 91       	ld	r30, X+
     40e:	fc 91       	ld	r31, X
     410:	04 80       	ldd	r0, Z+4	; 0x04
     412:	f5 81       	ldd	r31, Z+5	; 0x05
     414:	e0 2d       	mov	r30, r0
     416:	6f 2d       	mov	r22, r15
     418:	c6 01       	movw	r24, r12
     41a:	09 95       	icall
     41c:	d6 01       	movw	r26, r12
     41e:	ed 91       	ld	r30, X+
     420:	fc 91       	ld	r31, X
     422:	04 80       	ldd	r0, Z+4	; 0x04
     424:	f5 81       	ldd	r31, Z+5	; 0x05
     426:	e0 2d       	mov	r30, r0
     428:	49 81       	ldd	r20, Y+1	; 0x01
     42a:	64 2f       	mov	r22, r20
     42c:	c6 01       	movw	r24, r12
     42e:	09 95       	icall
     430:	d6 01       	movw	r26, r12
     432:	ed 91       	ld	r30, X+
     434:	fc 91       	ld	r31, X
     436:	01 90       	ld	r0, Z+
     438:	f0 81       	ld	r31, Z
     43a:	e0 2d       	mov	r30, r0
     43c:	c6 01       	movw	r24, r12
     43e:	09 95       	icall
     440:	d6 01       	movw	r26, r12
     442:	ed 91       	ld	r30, X+
     444:	fc 91       	ld	r31, X
     446:	6f 2d       	mov	r22, r15
     448:	61 60       	ori	r22, 0x01	; 1
     44a:	04 80       	ldd	r0, Z+4	; 0x04
     44c:	f5 81       	ldd	r31, Z+5	; 0x05
     44e:	e0 2d       	mov	r30, r0
     450:	c6 01       	movw	r24, r12
     452:	09 95       	icall
     454:	2a 81       	ldd	r18, Y+2	; 0x02
     456:	e2 2e       	mov	r14, r18
     458:	3b 81       	ldd	r19, Y+3	; 0x03
     45a:	f3 2e       	mov	r15, r19
     45c:	0e 0d       	add	r16, r14
     45e:	1f 1d       	adc	r17, r15
     460:	d6 01       	movw	r26, r12
     462:	ed 91       	ld	r30, X+
     464:	fc 91       	ld	r31, X
     466:	e0 16       	cp	r14, r16
     468:	f1 06       	cpc	r15, r17
     46a:	51 f0       	breq	.+20     	; 0x480 <_ZN4TI2CILh2ELh0ELh5ELh1ELh2EE14read_reg_multiEhhPhj+0xa6>
     46c:	06 80       	ldd	r0, Z+6	; 0x06
     46e:	f7 81       	ldd	r31, Z+7	; 0x07
     470:	e0 2d       	mov	r30, r0
     472:	61 e0       	ldi	r22, 0x01	; 1
     474:	c6 01       	movw	r24, r12
     476:	09 95       	icall
     478:	f7 01       	movw	r30, r14
     47a:	81 93       	st	Z+, r24
     47c:	7f 01       	movw	r14, r30
     47e:	f0 cf       	rjmp	.-32     	; 0x460 <_ZN4TI2CILh2ELh0ELh5ELh1ELh2EE14read_reg_multiEhhPhj+0x86>
     480:	02 80       	ldd	r0, Z+2	; 0x02
     482:	f3 81       	ldd	r31, Z+3	; 0x03
     484:	e0 2d       	mov	r30, r0
     486:	c6 01       	movw	r24, r12
     488:	0f 90       	pop	r0
     48a:	0f 90       	pop	r0
     48c:	0f 90       	pop	r0
     48e:	df 91       	pop	r29
     490:	cf 91       	pop	r28
     492:	1f 91       	pop	r17
     494:	0f 91       	pop	r16
     496:	ff 90       	pop	r15
     498:	ef 90       	pop	r14
     49a:	df 90       	pop	r13
     49c:	cf 90       	pop	r12
     49e:	09 94       	ijmp

000004a0 <_ZN13CMeassureTaskD1Ev>:
     4a0:	2b e4       	ldi	r18, 0x4B	; 75
     4a2:	31 e0       	ldi	r19, 0x01	; 1
     4a4:	fc 01       	movw	r30, r24
     4a6:	31 83       	std	Z+1, r19	; 0x01
     4a8:	20 83       	st	Z, r18
     4aa:	06 96       	adiw	r24, 0x06	; 6
     4ac:	0c 94 36 08 	jmp	0x106c	; 0x106c <_ZN16CObjectDetectionD1Ev>

000004b0 <_ZN13CMeassureTaskD0Ev>:
     4b0:	cf 93       	push	r28
     4b2:	df 93       	push	r29
     4b4:	ec 01       	movw	r28, r24
     4b6:	0e 94 50 02 	call	0x4a0	; 0x4a0 <_ZN13CMeassureTaskD1Ev>
     4ba:	ce 01       	movw	r24, r28
     4bc:	df 91       	pop	r29
     4be:	cf 91       	pop	r28
     4c0:	0c 94 c6 06 	jmp	0xd8c	; 0xd8c <_ZdlPv>

000004c4 <_ZN13CMeassureTaskclEv>:
     4c4:	0f 93       	push	r16
     4c6:	1f 93       	push	r17
     4c8:	cf 93       	push	r28
     4ca:	df 93       	push	r29
     4cc:	ec 01       	movw	r28, r24
     4ce:	06 96       	adiw	r24, 0x06	; 6
     4d0:	0e 94 44 08 	call	0x1088	; 0x1088 <_ZN16CObjectDetection7processEv>
     4d4:	8a a1       	ldd	r24, Y+34	; 0x22
     4d6:	9b a1       	ldd	r25, Y+35	; 0x23
     4d8:	6a e0       	ldi	r22, 0x0A	; 10
     4da:	70 e0       	ldi	r23, 0x00	; 0
     4dc:	0e 94 80 08 	call	0x1100	; 0x1100 <__udivmodhi4>
     4e0:	89 2b       	or	r24, r25
     4e2:	b1 f4       	brne	.+44     	; 0x510 <_ZN13CMeassureTaskclEv+0x4c>
     4e4:	0b 8d       	ldd	r16, Y+27	; 0x1b
     4e6:	1c 8d       	ldd	r17, Y+28	; 0x1c
     4e8:	66 e0       	ldi	r22, 0x06	; 6
     4ea:	71 e0       	ldi	r23, 0x01	; 1
     4ec:	87 e9       	ldi	r24, 0x97	; 151
     4ee:	91 e0       	ldi	r25, 0x01	; 1
     4f0:	0e 94 9b 07 	call	0xf36	; 0xf36 <_ZN9CTerminal4putsEPKc>
     4f4:	a8 01       	movw	r20, r16
     4f6:	11 0f       	add	r17, r17
     4f8:	66 0b       	sbc	r22, r22
     4fa:	77 0b       	sbc	r23, r23
     4fc:	87 e9       	ldi	r24, 0x97	; 151
     4fe:	91 e0       	ldi	r25, 0x01	; 1
     500:	0e 94 bf 07 	call	0xf7e	; 0xf7e <_ZN9CTerminal4putiEl>
     504:	6d e2       	ldi	r22, 0x2D	; 45
     506:	71 e0       	ldi	r23, 0x01	; 1
     508:	87 e9       	ldi	r24, 0x97	; 151
     50a:	91 e0       	ldi	r25, 0x01	; 1
     50c:	0e 94 9b 07 	call	0xf36	; 0xf36 <_ZN9CTerminal4putsEPKc>
     510:	8a a1       	ldd	r24, Y+34	; 0x22
     512:	9b a1       	ldd	r25, Y+35	; 0x23
     514:	01 96       	adiw	r24, 0x01	; 1
     516:	9b a3       	std	Y+35, r25	; 0x23
     518:	8a a3       	std	Y+34, r24	; 0x22
     51a:	df 91       	pop	r29
     51c:	cf 91       	pop	r28
     51e:	1f 91       	pop	r17
     520:	0f 91       	pop	r16
     522:	08 95       	ret

00000524 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>:
     524:	88 23       	and	r24, r24
     526:	21 f0       	breq	.+8      	; 0x530 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2+0xc>
     528:	3d 98       	cbi	0x07, 5	; 7
     52a:	82 30       	cpi	r24, 0x02	; 2
     52c:	19 f0       	breq	.+6      	; 0x534 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2+0x10>
     52e:	08 95       	ret
     530:	3d 9a       	sbi	0x07, 5	; 7
     532:	08 95       	ret
     534:	45 9a       	sbi	0x08, 5	; 8
     536:	08 95       	ret

00000538 <_ZN4TI2CILh2ELh0ELh5ELh1ELh2EE5delayEv.isra.6>:
     538:	00 00       	nop
     53a:	08 95       	ret

0000053c <_ZN4TI2CILh2ELh0ELh5ELh1ELh2EE4readEh>:
     53c:	1f 93       	push	r17
     53e:	cf 93       	push	r28
     540:	df 93       	push	r29
     542:	16 2f       	mov	r17, r22
     544:	38 98       	cbi	0x07, 0	; 7
     546:	80 e0       	ldi	r24, 0x00	; 0
     548:	0e 94 92 02 	call	0x524	; 0x524 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
     54c:	0e 94 9c 02 	call	0x538	; 0x538 <_ZN4TI2CILh2ELh0ELh5ELh1ELh2EE5delayEv.isra.6>
     550:	d8 e0       	ldi	r29, 0x08	; 8
     552:	c0 e0       	ldi	r28, 0x00	; 0
     554:	cc 0f       	add	r28, r28
     556:	81 e0       	ldi	r24, 0x01	; 1
     558:	0e 94 92 02 	call	0x524	; 0x524 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
     55c:	0e 94 9c 02 	call	0x538	; 0x538 <_ZN4TI2CILh2ELh0ELh5ELh1ELh2EE5delayEv.isra.6>
     560:	30 99       	sbic	0x06, 0	; 6
     562:	c1 60       	ori	r28, 0x01	; 1
     564:	80 e0       	ldi	r24, 0x00	; 0
     566:	0e 94 92 02 	call	0x524	; 0x524 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
     56a:	0e 94 9c 02 	call	0x538	; 0x538 <_ZN4TI2CILh2ELh0ELh5ELh1ELh2EE5delayEv.isra.6>
     56e:	d1 50       	subi	r29, 0x01	; 1
     570:	89 f7       	brne	.-30     	; 0x554 <_ZN4TI2CILh2ELh0ELh5ELh1ELh2EE4readEh+0x18>
     572:	11 23       	and	r17, r17
     574:	11 f0       	breq	.+4      	; 0x57a <_ZN4TI2CILh2ELh0ELh5ELh1ELh2EE4readEh+0x3e>
     576:	38 9a       	sbi	0x07, 0	; 7
     578:	01 c0       	rjmp	.+2      	; 0x57c <_ZN4TI2CILh2ELh0ELh5ELh1ELh2EE4readEh+0x40>
     57a:	38 98       	cbi	0x07, 0	; 7
     57c:	0e 94 9c 02 	call	0x538	; 0x538 <_ZN4TI2CILh2ELh0ELh5ELh1ELh2EE5delayEv.isra.6>
     580:	81 e0       	ldi	r24, 0x01	; 1
     582:	0e 94 92 02 	call	0x524	; 0x524 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
     586:	0e 94 9c 02 	call	0x538	; 0x538 <_ZN4TI2CILh2ELh0ELh5ELh1ELh2EE5delayEv.isra.6>
     58a:	80 e0       	ldi	r24, 0x00	; 0
     58c:	0e 94 92 02 	call	0x524	; 0x524 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
     590:	0e 94 9c 02 	call	0x538	; 0x538 <_ZN4TI2CILh2ELh0ELh5ELh1ELh2EE5delayEv.isra.6>
     594:	38 98       	cbi	0x07, 0	; 7
     596:	0e 94 9c 02 	call	0x538	; 0x538 <_ZN4TI2CILh2ELh0ELh5ELh1ELh2EE5delayEv.isra.6>
     59a:	8c 2f       	mov	r24, r28
     59c:	df 91       	pop	r29
     59e:	cf 91       	pop	r28
     5a0:	1f 91       	pop	r17
     5a2:	08 95       	ret

000005a4 <_ZN4TI2CILh2ELh0ELh5ELh1ELh2EE5writeEh>:
     5a4:	cf 93       	push	r28
     5a6:	df 93       	push	r29
     5a8:	d6 2f       	mov	r29, r22
     5aa:	c8 e0       	ldi	r28, 0x08	; 8
     5ac:	80 e0       	ldi	r24, 0x00	; 0
     5ae:	0e 94 92 02 	call	0x524	; 0x524 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
     5b2:	0e 94 9c 02 	call	0x538	; 0x538 <_ZN4TI2CILh2ELh0ELh5ELh1ELh2EE5delayEv.isra.6>
     5b6:	d7 ff       	sbrs	r29, 7
     5b8:	02 c0       	rjmp	.+4      	; 0x5be <_ZN4TI2CILh2ELh0ELh5ELh1ELh2EE5writeEh+0x1a>
     5ba:	38 98       	cbi	0x07, 0	; 7
     5bc:	01 c0       	rjmp	.+2      	; 0x5c0 <_ZN4TI2CILh2ELh0ELh5ELh1ELh2EE5writeEh+0x1c>
     5be:	38 9a       	sbi	0x07, 0	; 7
     5c0:	0e 94 9c 02 	call	0x538	; 0x538 <_ZN4TI2CILh2ELh0ELh5ELh1ELh2EE5delayEv.isra.6>
     5c4:	81 e0       	ldi	r24, 0x01	; 1
     5c6:	0e 94 92 02 	call	0x524	; 0x524 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
     5ca:	0e 94 9c 02 	call	0x538	; 0x538 <_ZN4TI2CILh2ELh0ELh5ELh1ELh2EE5delayEv.isra.6>
     5ce:	dd 0f       	add	r29, r29
     5d0:	c1 50       	subi	r28, 0x01	; 1
     5d2:	61 f7       	brne	.-40     	; 0x5ac <_ZN4TI2CILh2ELh0ELh5ELh1ELh2EE5writeEh+0x8>
     5d4:	80 e0       	ldi	r24, 0x00	; 0
     5d6:	0e 94 92 02 	call	0x524	; 0x524 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
     5da:	0e 94 9c 02 	call	0x538	; 0x538 <_ZN4TI2CILh2ELh0ELh5ELh1ELh2EE5delayEv.isra.6>
     5de:	38 98       	cbi	0x07, 0	; 7
     5e0:	0e 94 9c 02 	call	0x538	; 0x538 <_ZN4TI2CILh2ELh0ELh5ELh1ELh2EE5delayEv.isra.6>
     5e4:	81 e0       	ldi	r24, 0x01	; 1
     5e6:	0e 94 92 02 	call	0x524	; 0x524 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
     5ea:	0e 94 9c 02 	call	0x538	; 0x538 <_ZN4TI2CILh2ELh0ELh5ELh1ELh2EE5delayEv.isra.6>
     5ee:	c6 b1       	in	r28, 0x06	; 6
     5f0:	c0 95       	com	r28
     5f2:	c1 70       	andi	r28, 0x01	; 1
     5f4:	80 e0       	ldi	r24, 0x00	; 0
     5f6:	0e 94 92 02 	call	0x524	; 0x524 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
     5fa:	0e 94 9c 02 	call	0x538	; 0x538 <_ZN4TI2CILh2ELh0ELh5ELh1ELh2EE5delayEv.isra.6>
     5fe:	8c 2f       	mov	r24, r28
     600:	df 91       	pop	r29
     602:	cf 91       	pop	r28
     604:	08 95       	ret

00000606 <_ZN4TI2CILh2ELh0ELh5ELh1ELh2EE5startEv>:
     606:	81 e0       	ldi	r24, 0x01	; 1
     608:	0e 94 92 02 	call	0x524	; 0x524 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
     60c:	38 98       	cbi	0x07, 0	; 7
     60e:	81 e0       	ldi	r24, 0x01	; 1
     610:	0e 94 92 02 	call	0x524	; 0x524 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
     614:	38 9a       	sbi	0x07, 0	; 7
     616:	80 e0       	ldi	r24, 0x00	; 0
     618:	0e 94 92 02 	call	0x524	; 0x524 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
     61c:	38 98       	cbi	0x07, 0	; 7
     61e:	0c 94 9c 02 	jmp	0x538	; 0x538 <_ZN4TI2CILh2ELh0ELh5ELh1ELh2EE5delayEv.isra.6>

00000622 <_ZN4TI2CILh2ELh0ELh5ELh1ELh2EE4stopEv>:
     622:	80 e0       	ldi	r24, 0x00	; 0
     624:	0e 94 92 02 	call	0x524	; 0x524 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
     628:	38 9a       	sbi	0x07, 0	; 7
     62a:	81 e0       	ldi	r24, 0x01	; 1
     62c:	0e 94 92 02 	call	0x524	; 0x524 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
     630:	38 9a       	sbi	0x07, 0	; 7
     632:	81 e0       	ldi	r24, 0x01	; 1
     634:	0e 94 92 02 	call	0x524	; 0x524 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
     638:	38 98       	cbi	0x07, 0	; 7
     63a:	0c 94 9c 02 	jmp	0x538	; 0x538 <_ZN4TI2CILh2ELh0ELh5ELh1ELh2EE5delayEv.isra.6>

0000063e <_ZN13CMeassureTaskC1Ev>:
     63e:	0f 93       	push	r16
     640:	1f 93       	push	r17
     642:	cf 93       	push	r28
     644:	df 93       	push	r29
     646:	ec 01       	movw	r28, r24
     648:	8b e4       	ldi	r24, 0x4B	; 75
     64a:	91 e0       	ldi	r25, 0x01	; 1
     64c:	99 83       	std	Y+1, r25	; 0x01
     64e:	88 83       	st	Y, r24
     650:	83 e3       	ldi	r24, 0x33	; 51
     652:	91 e0       	ldi	r25, 0x01	; 1
     654:	9b 83       	std	Y+3, r25	; 0x03
     656:	8a 83       	std	Y+2, r24	; 0x02
     658:	38 98       	cbi	0x07, 0	; 7
     65a:	81 e0       	ldi	r24, 0x01	; 1
     65c:	0e 94 92 02 	call	0x524	; 0x524 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.2>
     660:	40 98       	cbi	0x08, 0	; 8
     662:	45 98       	cbi	0x08, 5	; 8
     664:	8e 01       	movw	r16, r28
     666:	0a 5f       	subi	r16, 0xFA	; 250
     668:	1f 4f       	sbci	r17, 0xFF	; 255
     66a:	c8 01       	movw	r24, r16
     66c:	0e 94 34 08 	call	0x1068	; 0x1068 <_ZN16CObjectDetectionC1Ev>
     670:	be 01       	movw	r22, r28
     672:	6e 5f       	subi	r22, 0xFE	; 254
     674:	7f 4f       	sbci	r23, 0xFF	; 255
     676:	c8 01       	movw	r24, r16
     678:	0e 94 38 08 	call	0x1070	; 0x1070 <_ZN16CObjectDetection4initEP14CI2C_Interface>
     67c:	8c 01       	movw	r16, r24
     67e:	1b a2       	std	Y+35, r1	; 0x23
     680:	1a a2       	std	Y+34, r1	; 0x22
     682:	60 e1       	ldi	r22, 0x10	; 16
     684:	71 e0       	ldi	r23, 0x01	; 1
     686:	87 e9       	ldi	r24, 0x97	; 151
     688:	91 e0       	ldi	r25, 0x01	; 1
     68a:	0e 94 9b 07 	call	0xf36	; 0xf36 <_ZN9CTerminal4putsEPKc>
     68e:	a8 01       	movw	r20, r16
     690:	11 0f       	add	r17, r17
     692:	66 0b       	sbc	r22, r22
     694:	77 0b       	sbc	r23, r23
     696:	87 e9       	ldi	r24, 0x97	; 151
     698:	91 e0       	ldi	r25, 0x01	; 1
     69a:	0e 94 bf 07 	call	0xf7e	; 0xf7e <_ZN9CTerminal4putiEl>
     69e:	6d e2       	ldi	r22, 0x2D	; 45
     6a0:	71 e0       	ldi	r23, 0x01	; 1
     6a2:	87 e9       	ldi	r24, 0x97	; 151
     6a4:	91 e0       	ldi	r25, 0x01	; 1
     6a6:	df 91       	pop	r29
     6a8:	cf 91       	pop	r28
     6aa:	1f 91       	pop	r17
     6ac:	0f 91       	pop	r16
     6ae:	0c 94 9b 07 	jmp	0xf36	; 0xf36 <_ZN9CTerminal4putsEPKc>

000006b2 <main>:
     6b2:	cf 93       	push	r28
     6b4:	df 93       	push	r29
     6b6:	cd b7       	in	r28, 0x3d	; 61
     6b8:	de b7       	in	r29, 0x3e	; 62
     6ba:	a4 97       	sbiw	r28, 0x24	; 36
     6bc:	0f b6       	in	r0, 0x3f	; 63
     6be:	f8 94       	cli
     6c0:	de bf       	out	0x3e, r29	; 62
     6c2:	0f be       	out	0x3f, r0	; 63
     6c4:	cd bf       	out	0x3d, r28	; 61
     6c6:	6d e1       	ldi	r22, 0x1D	; 29
     6c8:	71 e0       	ldi	r23, 0x01	; 1
     6ca:	87 e9       	ldi	r24, 0x97	; 151
     6cc:	91 e0       	ldi	r25, 0x01	; 1
     6ce:	0e 94 9b 07 	call	0xf36	; 0xf36 <_ZN9CTerminal4putsEPKc>
     6d2:	ce 01       	movw	r24, r28
     6d4:	01 96       	adiw	r24, 0x01	; 1
     6d6:	0e 94 1f 03 	call	0x63e	; 0x63e <_ZN13CMeassureTaskC1Ev>
     6da:	20 e0       	ldi	r18, 0x00	; 0
     6dc:	4a e0       	ldi	r20, 0x0A	; 10
     6de:	50 e0       	ldi	r21, 0x00	; 0
     6e0:	be 01       	movw	r22, r28
     6e2:	6f 5f       	subi	r22, 0xFF	; 255
     6e4:	7f 4f       	sbci	r23, 0xFF	; 255
     6e6:	82 e5       	ldi	r24, 0x52	; 82
     6e8:	91 e0       	ldi	r25, 0x01	; 1
     6ea:	0e 94 ed 06 	call	0xdda	; 0xdda <_ZN8CRTTimer8add_taskEP14CTaskInterfacejb>
     6ee:	82 e5       	ldi	r24, 0x52	; 82
     6f0:	91 e0       	ldi	r25, 0x01	; 1
     6f2:	0e 94 10 07 	call	0xe20	; 0xe20 <_ZN8CRTTimer4mainEv>
     6f6:	fb cf       	rjmp	.-10     	; 0x6ee <main+0x3c>

000006f8 <_ZN8CVL53L0XC1Ev>:
     6f8:	08 95       	ret

000006fa <_ZN8CVL53L0XD1Ev>:
     6fa:	08 95       	ret

000006fc <_ZN8CVL53L0X4readEv>:
     6fc:	0f 93       	push	r16
     6fe:	1f 93       	push	r17
     700:	cf 93       	push	r28
     702:	df 93       	push	r29
     704:	ec 01       	movw	r28, r24
     706:	89 89       	ldd	r24, Y+17	; 0x11
     708:	9a 89       	ldd	r25, Y+18	; 0x12
     70a:	dc 01       	movw	r26, r24
     70c:	ed 91       	ld	r30, X+
     70e:	fc 91       	ld	r31, X
     710:	00 84       	ldd	r0, Z+8	; 0x08
     712:	f1 85       	ldd	r31, Z+9	; 0x09
     714:	e0 2d       	mov	r30, r0
     716:	21 e0       	ldi	r18, 0x01	; 1
     718:	4b e0       	ldi	r20, 0x0B	; 11
     71a:	62 e5       	ldi	r22, 0x52	; 82
     71c:	09 95       	icall
     71e:	89 89       	ldd	r24, Y+17	; 0x11
     720:	9a 89       	ldd	r25, Y+18	; 0x12
     722:	dc 01       	movw	r26, r24
     724:	ed 91       	ld	r30, X+
     726:	fc 91       	ld	r31, X
     728:	9e 01       	movw	r18, r28
     72a:	2d 5f       	subi	r18, 0xFD	; 253
     72c:	3f 4f       	sbci	r19, 0xFF	; 255
     72e:	02 88       	ldd	r0, Z+18	; 0x12
     730:	f3 89       	ldd	r31, Z+19	; 0x13
     732:	e0 2d       	mov	r30, r0
     734:	0e e0       	ldi	r16, 0x0E	; 14
     736:	10 e0       	ldi	r17, 0x00	; 0
     738:	44 e1       	ldi	r20, 0x14	; 20
     73a:	62 e5       	ldi	r22, 0x52	; 82
     73c:	09 95       	icall
     73e:	8d 85       	ldd	r24, Y+13	; 0x0d
     740:	90 e0       	ldi	r25, 0x00	; 0
     742:	98 2f       	mov	r25, r24
     744:	88 27       	eor	r24, r24
     746:	2e 85       	ldd	r18, Y+14	; 0x0e
     748:	82 2b       	or	r24, r18
     74a:	1a 82       	std	Y+2, r1	; 0x02
     74c:	9c 01       	movw	r18, r24
     74e:	24 51       	subi	r18, 0x14	; 20
     750:	31 09       	sbc	r19, r1
     752:	21 3e       	cpi	r18, 0xE1	; 225
     754:	31 40       	sbci	r19, 0x01	; 1
     756:	20 f4       	brcc	.+8      	; 0x760 <_ZN8CVL53L0X4readEv+0x64>
     758:	99 83       	std	Y+1, r25	; 0x01
     75a:	88 83       	st	Y, r24
     75c:	81 e0       	ldi	r24, 0x01	; 1
     75e:	8a 83       	std	Y+2, r24	; 0x02
     760:	88 81       	ld	r24, Y
     762:	99 81       	ldd	r25, Y+1	; 0x01
     764:	df 91       	pop	r29
     766:	cf 91       	pop	r28
     768:	1f 91       	pop	r17
     76a:	0f 91       	pop	r16
     76c:	08 95       	ret

0000076e <_ZN8CVL53L0X12get_distanceEv>:
     76e:	fc 01       	movw	r30, r24
     770:	80 81       	ld	r24, Z
     772:	91 81       	ldd	r25, Z+1	; 0x01
     774:	08 95       	ret

00000776 <_ZN8CVL53L0X11getSPADinfoEPhPb>:
     776:	af 92       	push	r10
     778:	bf 92       	push	r11
     77a:	cf 92       	push	r12
     77c:	df 92       	push	r13
     77e:	ef 92       	push	r14
     780:	ff 92       	push	r15
     782:	0f 93       	push	r16
     784:	1f 93       	push	r17
     786:	cf 93       	push	r28
     788:	df 93       	push	r29
     78a:	ec 01       	movw	r28, r24
     78c:	8b 01       	movw	r16, r22
     78e:	5a 01       	movw	r10, r20
     790:	db 01       	movw	r26, r22
     792:	1c 92       	st	X, r1
     794:	89 89       	ldd	r24, Y+17	; 0x11
     796:	9a 89       	ldd	r25, Y+18	; 0x12
     798:	dc 01       	movw	r26, r24
     79a:	ed 91       	ld	r30, X+
     79c:	fc 91       	ld	r31, X
     79e:	00 84       	ldd	r0, Z+8	; 0x08
     7a0:	f1 85       	ldd	r31, Z+9	; 0x09
     7a2:	e0 2d       	mov	r30, r0
     7a4:	21 e0       	ldi	r18, 0x01	; 1
     7a6:	40 e8       	ldi	r20, 0x80	; 128
     7a8:	62 e5       	ldi	r22, 0x52	; 82
     7aa:	09 95       	icall
     7ac:	89 89       	ldd	r24, Y+17	; 0x11
     7ae:	9a 89       	ldd	r25, Y+18	; 0x12
     7b0:	dc 01       	movw	r26, r24
     7b2:	ed 91       	ld	r30, X+
     7b4:	fc 91       	ld	r31, X
     7b6:	00 84       	ldd	r0, Z+8	; 0x08
     7b8:	f1 85       	ldd	r31, Z+9	; 0x09
     7ba:	e0 2d       	mov	r30, r0
     7bc:	21 e0       	ldi	r18, 0x01	; 1
     7be:	4f ef       	ldi	r20, 0xFF	; 255
     7c0:	62 e5       	ldi	r22, 0x52	; 82
     7c2:	09 95       	icall
     7c4:	89 89       	ldd	r24, Y+17	; 0x11
     7c6:	9a 89       	ldd	r25, Y+18	; 0x12
     7c8:	dc 01       	movw	r26, r24
     7ca:	ed 91       	ld	r30, X+
     7cc:	fc 91       	ld	r31, X
     7ce:	00 84       	ldd	r0, Z+8	; 0x08
     7d0:	f1 85       	ldd	r31, Z+9	; 0x09
     7d2:	e0 2d       	mov	r30, r0
     7d4:	20 e0       	ldi	r18, 0x00	; 0
     7d6:	40 e0       	ldi	r20, 0x00	; 0
     7d8:	62 e5       	ldi	r22, 0x52	; 82
     7da:	09 95       	icall
     7dc:	89 89       	ldd	r24, Y+17	; 0x11
     7de:	9a 89       	ldd	r25, Y+18	; 0x12
     7e0:	dc 01       	movw	r26, r24
     7e2:	ed 91       	ld	r30, X+
     7e4:	fc 91       	ld	r31, X
     7e6:	00 84       	ldd	r0, Z+8	; 0x08
     7e8:	f1 85       	ldd	r31, Z+9	; 0x09
     7ea:	e0 2d       	mov	r30, r0
     7ec:	26 e0       	ldi	r18, 0x06	; 6
     7ee:	4f ef       	ldi	r20, 0xFF	; 255
     7f0:	62 e5       	ldi	r22, 0x52	; 82
     7f2:	09 95       	icall
     7f4:	89 89       	ldd	r24, Y+17	; 0x11
     7f6:	9a 89       	ldd	r25, Y+18	; 0x12
     7f8:	fc 01       	movw	r30, r24
     7fa:	a0 81       	ld	r26, Z
     7fc:	b1 81       	ldd	r27, Z+1	; 0x01
     7fe:	18 96       	adiw	r26, 0x08	; 8
     800:	ed 90       	ld	r14, X+
     802:	fc 90       	ld	r15, X
     804:	19 97       	sbiw	r26, 0x09	; 9
     806:	1e 96       	adiw	r26, 0x0e	; 14
     808:	ed 91       	ld	r30, X+
     80a:	fc 91       	ld	r31, X
     80c:	1f 97       	sbiw	r26, 0x0f	; 15
     80e:	43 e8       	ldi	r20, 0x83	; 131
     810:	62 e5       	ldi	r22, 0x52	; 82
     812:	09 95       	icall
     814:	28 2f       	mov	r18, r24
     816:	24 60       	ori	r18, 0x04	; 4
     818:	43 e8       	ldi	r20, 0x83	; 131
     81a:	62 e5       	ldi	r22, 0x52	; 82
     81c:	89 89       	ldd	r24, Y+17	; 0x11
     81e:	9a 89       	ldd	r25, Y+18	; 0x12
     820:	f7 01       	movw	r30, r14
     822:	09 95       	icall
     824:	89 89       	ldd	r24, Y+17	; 0x11
     826:	9a 89       	ldd	r25, Y+18	; 0x12
     828:	dc 01       	movw	r26, r24
     82a:	ed 91       	ld	r30, X+
     82c:	fc 91       	ld	r31, X
     82e:	00 84       	ldd	r0, Z+8	; 0x08
     830:	f1 85       	ldd	r31, Z+9	; 0x09
     832:	e0 2d       	mov	r30, r0
     834:	27 e0       	ldi	r18, 0x07	; 7
     836:	4f ef       	ldi	r20, 0xFF	; 255
     838:	62 e5       	ldi	r22, 0x52	; 82
     83a:	09 95       	icall
     83c:	89 89       	ldd	r24, Y+17	; 0x11
     83e:	9a 89       	ldd	r25, Y+18	; 0x12
     840:	dc 01       	movw	r26, r24
     842:	ed 91       	ld	r30, X+
     844:	fc 91       	ld	r31, X
     846:	00 84       	ldd	r0, Z+8	; 0x08
     848:	f1 85       	ldd	r31, Z+9	; 0x09
     84a:	e0 2d       	mov	r30, r0
     84c:	21 e0       	ldi	r18, 0x01	; 1
     84e:	41 e8       	ldi	r20, 0x81	; 129
     850:	62 e5       	ldi	r22, 0x52	; 82
     852:	09 95       	icall
     854:	89 89       	ldd	r24, Y+17	; 0x11
     856:	9a 89       	ldd	r25, Y+18	; 0x12
     858:	dc 01       	movw	r26, r24
     85a:	ed 91       	ld	r30, X+
     85c:	fc 91       	ld	r31, X
     85e:	00 84       	ldd	r0, Z+8	; 0x08
     860:	f1 85       	ldd	r31, Z+9	; 0x09
     862:	e0 2d       	mov	r30, r0
     864:	21 e0       	ldi	r18, 0x01	; 1
     866:	40 e8       	ldi	r20, 0x80	; 128
     868:	62 e5       	ldi	r22, 0x52	; 82
     86a:	09 95       	icall
     86c:	89 89       	ldd	r24, Y+17	; 0x11
     86e:	9a 89       	ldd	r25, Y+18	; 0x12
     870:	dc 01       	movw	r26, r24
     872:	ed 91       	ld	r30, X+
     874:	fc 91       	ld	r31, X
     876:	00 84       	ldd	r0, Z+8	; 0x08
     878:	f1 85       	ldd	r31, Z+9	; 0x09
     87a:	e0 2d       	mov	r30, r0
     87c:	2b e6       	ldi	r18, 0x6B	; 107
     87e:	44 e9       	ldi	r20, 0x94	; 148
     880:	62 e5       	ldi	r22, 0x52	; 82
     882:	09 95       	icall
     884:	89 89       	ldd	r24, Y+17	; 0x11
     886:	9a 89       	ldd	r25, Y+18	; 0x12
     888:	dc 01       	movw	r26, r24
     88a:	ed 91       	ld	r30, X+
     88c:	fc 91       	ld	r31, X
     88e:	00 84       	ldd	r0, Z+8	; 0x08
     890:	f1 85       	ldd	r31, Z+9	; 0x09
     892:	e0 2d       	mov	r30, r0
     894:	20 e0       	ldi	r18, 0x00	; 0
     896:	43 e8       	ldi	r20, 0x83	; 131
     898:	62 e5       	ldi	r22, 0x52	; 82
     89a:	09 95       	icall
     89c:	81 e4       	ldi	r24, 0x41	; 65
     89e:	c8 2e       	mov	r12, r24
     8a0:	82 e4       	ldi	r24, 0x42	; 66
     8a2:	d8 2e       	mov	r13, r24
     8a4:	8f e0       	ldi	r24, 0x0F	; 15
     8a6:	e8 2e       	mov	r14, r24
     8a8:	f1 2c       	mov	r15, r1
     8aa:	89 89       	ldd	r24, Y+17	; 0x11
     8ac:	9a 89       	ldd	r25, Y+18	; 0x12
     8ae:	dc 01       	movw	r26, r24
     8b0:	ed 91       	ld	r30, X+
     8b2:	fc 91       	ld	r31, X
     8b4:	06 84       	ldd	r0, Z+14	; 0x0e
     8b6:	f7 85       	ldd	r31, Z+15	; 0x0f
     8b8:	e0 2d       	mov	r30, r0
     8ba:	43 e8       	ldi	r20, 0x83	; 131
     8bc:	62 e5       	ldi	r22, 0x52	; 82
     8be:	09 95       	icall
     8c0:	81 11       	cpse	r24, r1
     8c2:	08 c0       	rjmp	.+16     	; 0x8d4 <_ZN8CVL53L0X11getSPADinfoEPhPb+0x15e>
     8c4:	b1 e0       	ldi	r27, 0x01	; 1
     8c6:	cb 1a       	sub	r12, r27
     8c8:	d1 08       	sbc	r13, r1
     8ca:	e1 08       	sbc	r14, r1
     8cc:	f1 08       	sbc	r15, r1
     8ce:	69 f7       	brne	.-38     	; 0x8aa <_ZN8CVL53L0X11getSPADinfoEPhPb+0x134>
     8d0:	80 e0       	ldi	r24, 0x00	; 0
     8d2:	81 c0       	rjmp	.+258    	; 0x9d6 <__stack+0xd7>
     8d4:	89 89       	ldd	r24, Y+17	; 0x11
     8d6:	9a 89       	ldd	r25, Y+18	; 0x12
     8d8:	dc 01       	movw	r26, r24
     8da:	ed 91       	ld	r30, X+
     8dc:	fc 91       	ld	r31, X
     8de:	00 84       	ldd	r0, Z+8	; 0x08
     8e0:	f1 85       	ldd	r31, Z+9	; 0x09
     8e2:	e0 2d       	mov	r30, r0
     8e4:	21 e0       	ldi	r18, 0x01	; 1
     8e6:	43 e8       	ldi	r20, 0x83	; 131
     8e8:	62 e5       	ldi	r22, 0x52	; 82
     8ea:	09 95       	icall
     8ec:	89 89       	ldd	r24, Y+17	; 0x11
     8ee:	9a 89       	ldd	r25, Y+18	; 0x12
     8f0:	dc 01       	movw	r26, r24
     8f2:	ed 91       	ld	r30, X+
     8f4:	fc 91       	ld	r31, X
     8f6:	06 84       	ldd	r0, Z+14	; 0x0e
     8f8:	f7 85       	ldd	r31, Z+15	; 0x0f
     8fa:	e0 2d       	mov	r30, r0
     8fc:	42 e9       	ldi	r20, 0x92	; 146
     8fe:	62 e5       	ldi	r22, 0x52	; 82
     900:	09 95       	icall
     902:	98 2f       	mov	r25, r24
     904:	9f 77       	andi	r25, 0x7F	; 127
     906:	f8 01       	movw	r30, r16
     908:	90 83       	st	Z, r25
     90a:	98 2f       	mov	r25, r24
     90c:	99 1f       	adc	r25, r25
     90e:	99 27       	eor	r25, r25
     910:	99 1f       	adc	r25, r25
     912:	d5 01       	movw	r26, r10
     914:	9c 93       	st	X, r25
     916:	89 89       	ldd	r24, Y+17	; 0x11
     918:	9a 89       	ldd	r25, Y+18	; 0x12
     91a:	dc 01       	movw	r26, r24
     91c:	ed 91       	ld	r30, X+
     91e:	fc 91       	ld	r31, X
     920:	00 84       	ldd	r0, Z+8	; 0x08
     922:	f1 85       	ldd	r31, Z+9	; 0x09
     924:	e0 2d       	mov	r30, r0
     926:	20 e0       	ldi	r18, 0x00	; 0
     928:	41 e8       	ldi	r20, 0x81	; 129
     92a:	62 e5       	ldi	r22, 0x52	; 82
     92c:	09 95       	icall
     92e:	89 89       	ldd	r24, Y+17	; 0x11
     930:	9a 89       	ldd	r25, Y+18	; 0x12
     932:	dc 01       	movw	r26, r24
     934:	ed 91       	ld	r30, X+
     936:	fc 91       	ld	r31, X
     938:	00 84       	ldd	r0, Z+8	; 0x08
     93a:	f1 85       	ldd	r31, Z+9	; 0x09
     93c:	e0 2d       	mov	r30, r0
     93e:	26 e0       	ldi	r18, 0x06	; 6
     940:	4f ef       	ldi	r20, 0xFF	; 255
     942:	62 e5       	ldi	r22, 0x52	; 82
     944:	09 95       	icall
     946:	89 89       	ldd	r24, Y+17	; 0x11
     948:	9a 89       	ldd	r25, Y+18	; 0x12
     94a:	fc 01       	movw	r30, r24
     94c:	a0 81       	ld	r26, Z
     94e:	b1 81       	ldd	r27, Z+1	; 0x01
     950:	18 96       	adiw	r26, 0x08	; 8
     952:	0d 91       	ld	r16, X+
     954:	1c 91       	ld	r17, X
     956:	19 97       	sbiw	r26, 0x09	; 9
     958:	1e 96       	adiw	r26, 0x0e	; 14
     95a:	ed 91       	ld	r30, X+
     95c:	fc 91       	ld	r31, X
     95e:	1f 97       	sbiw	r26, 0x0f	; 15
     960:	43 e8       	ldi	r20, 0x83	; 131
     962:	62 e5       	ldi	r22, 0x52	; 82
     964:	09 95       	icall
     966:	28 2f       	mov	r18, r24
     968:	43 e8       	ldi	r20, 0x83	; 131
     96a:	62 e5       	ldi	r22, 0x52	; 82
     96c:	89 89       	ldd	r24, Y+17	; 0x11
     96e:	9a 89       	ldd	r25, Y+18	; 0x12
     970:	f8 01       	movw	r30, r16
     972:	09 95       	icall
     974:	89 89       	ldd	r24, Y+17	; 0x11
     976:	9a 89       	ldd	r25, Y+18	; 0x12
     978:	dc 01       	movw	r26, r24
     97a:	ed 91       	ld	r30, X+
     97c:	fc 91       	ld	r31, X
     97e:	00 84       	ldd	r0, Z+8	; 0x08
     980:	f1 85       	ldd	r31, Z+9	; 0x09
     982:	e0 2d       	mov	r30, r0
     984:	21 e0       	ldi	r18, 0x01	; 1
     986:	4f ef       	ldi	r20, 0xFF	; 255
     988:	62 e5       	ldi	r22, 0x52	; 82
     98a:	09 95       	icall
     98c:	89 89       	ldd	r24, Y+17	; 0x11
     98e:	9a 89       	ldd	r25, Y+18	; 0x12
     990:	dc 01       	movw	r26, r24
     992:	ed 91       	ld	r30, X+
     994:	fc 91       	ld	r31, X
     996:	00 84       	ldd	r0, Z+8	; 0x08
     998:	f1 85       	ldd	r31, Z+9	; 0x09
     99a:	e0 2d       	mov	r30, r0
     99c:	21 e0       	ldi	r18, 0x01	; 1
     99e:	40 e0       	ldi	r20, 0x00	; 0
     9a0:	62 e5       	ldi	r22, 0x52	; 82
     9a2:	09 95       	icall
     9a4:	89 89       	ldd	r24, Y+17	; 0x11
     9a6:	9a 89       	ldd	r25, Y+18	; 0x12
     9a8:	dc 01       	movw	r26, r24
     9aa:	ed 91       	ld	r30, X+
     9ac:	fc 91       	ld	r31, X
     9ae:	00 84       	ldd	r0, Z+8	; 0x08
     9b0:	f1 85       	ldd	r31, Z+9	; 0x09
     9b2:	e0 2d       	mov	r30, r0
     9b4:	20 e0       	ldi	r18, 0x00	; 0
     9b6:	4f ef       	ldi	r20, 0xFF	; 255
     9b8:	62 e5       	ldi	r22, 0x52	; 82
     9ba:	09 95       	icall
     9bc:	89 89       	ldd	r24, Y+17	; 0x11
     9be:	9a 89       	ldd	r25, Y+18	; 0x12
     9c0:	dc 01       	movw	r26, r24
     9c2:	ed 91       	ld	r30, X+
     9c4:	fc 91       	ld	r31, X
     9c6:	00 84       	ldd	r0, Z+8	; 0x08
     9c8:	f1 85       	ldd	r31, Z+9	; 0x09
     9ca:	e0 2d       	mov	r30, r0
     9cc:	20 e0       	ldi	r18, 0x00	; 0
     9ce:	40 e8       	ldi	r20, 0x80	; 128
     9d0:	62 e5       	ldi	r22, 0x52	; 82
     9d2:	09 95       	icall
     9d4:	81 e0       	ldi	r24, 0x01	; 1
     9d6:	df 91       	pop	r29
     9d8:	cf 91       	pop	r28
     9da:	1f 91       	pop	r17
     9dc:	0f 91       	pop	r16
     9de:	ff 90       	pop	r15
     9e0:	ef 90       	pop	r14
     9e2:	df 90       	pop	r13
     9e4:	cf 90       	pop	r12
     9e6:	bf 90       	pop	r11
     9e8:	af 90       	pop	r10
     9ea:	08 95       	ret

000009ec <_ZN8CVL53L0X4initEP14CI2C_Interface>:
     9ec:	ef 92       	push	r14
     9ee:	ff 92       	push	r15
     9f0:	0f 93       	push	r16
     9f2:	1f 93       	push	r17
     9f4:	cf 93       	push	r28
     9f6:	df 93       	push	r29
     9f8:	cd b7       	in	r28, 0x3d	; 61
     9fa:	de b7       	in	r29, 0x3e	; 62
     9fc:	28 97       	sbiw	r28, 0x08	; 8
     9fe:	0f b6       	in	r0, 0x3f	; 63
     a00:	f8 94       	cli
     a02:	de bf       	out	0x3e, r29	; 62
     a04:	0f be       	out	0x3f, r0	; 63
     a06:	cd bf       	out	0x3d, r28	; 61
     a08:	7c 01       	movw	r14, r24
     a0a:	cb 01       	movw	r24, r22
     a0c:	d7 01       	movw	r26, r14
     a0e:	52 96       	adiw	r26, 0x12	; 18
     a10:	7c 93       	st	X, r23
     a12:	6e 93       	st	-X, r22
     a14:	51 97       	sbiw	r26, 0x11	; 17
     a16:	20 e0       	ldi	r18, 0x00	; 0
     a18:	30 e2       	ldi	r19, 0x20	; 32
     a1a:	11 96       	adiw	r26, 0x01	; 1
     a1c:	3c 93       	st	X, r19
     a1e:	2e 93       	st	-X, r18
     a20:	12 96       	adiw	r26, 0x02	; 2
     a22:	1c 92       	st	X, r1
     a24:	fb 01       	movw	r30, r22
     a26:	a0 81       	ld	r26, Z
     a28:	b1 81       	ldd	r27, Z+1	; 0x01
     a2a:	18 96       	adiw	r26, 0x08	; 8
     a2c:	0d 91       	ld	r16, X+
     a2e:	1c 91       	ld	r17, X
     a30:	19 97       	sbiw	r26, 0x09	; 9
     a32:	1e 96       	adiw	r26, 0x0e	; 14
     a34:	ed 91       	ld	r30, X+
     a36:	fc 91       	ld	r31, X
     a38:	1f 97       	sbiw	r26, 0x0f	; 15
     a3a:	49 e8       	ldi	r20, 0x89	; 137
     a3c:	62 e5       	ldi	r22, 0x52	; 82
     a3e:	09 95       	icall
     a40:	28 2f       	mov	r18, r24
     a42:	21 60       	ori	r18, 0x01	; 1
     a44:	49 e8       	ldi	r20, 0x89	; 137
     a46:	62 e5       	ldi	r22, 0x52	; 82
     a48:	d7 01       	movw	r26, r14
     a4a:	51 96       	adiw	r26, 0x11	; 17
     a4c:	8d 91       	ld	r24, X+
     a4e:	9c 91       	ld	r25, X
     a50:	52 97       	sbiw	r26, 0x12	; 18
     a52:	f8 01       	movw	r30, r16
     a54:	09 95       	icall
     a56:	d7 01       	movw	r26, r14
     a58:	51 96       	adiw	r26, 0x11	; 17
     a5a:	8d 91       	ld	r24, X+
     a5c:	9c 91       	ld	r25, X
     a5e:	52 97       	sbiw	r26, 0x12	; 18
     a60:	dc 01       	movw	r26, r24
     a62:	ed 91       	ld	r30, X+
     a64:	fc 91       	ld	r31, X
     a66:	06 84       	ldd	r0, Z+14	; 0x0e
     a68:	f7 85       	ldd	r31, Z+15	; 0x0f
     a6a:	e0 2d       	mov	r30, r0
     a6c:	40 ec       	ldi	r20, 0xC0	; 192
     a6e:	62 e5       	ldi	r22, 0x52	; 82
     a70:	09 95       	icall
     a72:	8e 3e       	cpi	r24, 0xEE	; 238
     a74:	09 f0       	breq	.+2      	; 0xa78 <_ZN8CVL53L0X4initEP14CI2C_Interface+0x8c>
     a76:	61 c1       	rjmp	.+706    	; 0xd3a <_ZN8CVL53L0X4initEP14CI2C_Interface+0x34e>
     a78:	f7 01       	movw	r30, r14
     a7a:	81 89       	ldd	r24, Z+17	; 0x11
     a7c:	92 89       	ldd	r25, Z+18	; 0x12
     a7e:	dc 01       	movw	r26, r24
     a80:	ed 91       	ld	r30, X+
     a82:	fc 91       	ld	r31, X
     a84:	00 84       	ldd	r0, Z+8	; 0x08
     a86:	f1 85       	ldd	r31, Z+9	; 0x09
     a88:	e0 2d       	mov	r30, r0
     a8a:	21 e0       	ldi	r18, 0x01	; 1
     a8c:	4f eb       	ldi	r20, 0xBF	; 191
     a8e:	62 e5       	ldi	r22, 0x52	; 82
     a90:	09 95       	icall
     a92:	81 ea       	ldi	r24, 0xA1	; 161
     a94:	96 e8       	ldi	r25, 0x86	; 134
     a96:	a1 e0       	ldi	r26, 0x01	; 1
     a98:	b0 e0       	ldi	r27, 0x00	; 0
     a9a:	01 97       	sbiw	r24, 0x01	; 1
     a9c:	a1 09       	sbc	r26, r1
     a9e:	b1 09       	sbc	r27, r1
     aa0:	11 f0       	breq	.+4      	; 0xaa6 <_ZN8CVL53L0X4initEP14CI2C_Interface+0xba>
     aa2:	00 00       	nop
     aa4:	fa cf       	rjmp	.-12     	; 0xa9a <_ZN8CVL53L0X4initEP14CI2C_Interface+0xae>
     aa6:	f7 01       	movw	r30, r14
     aa8:	81 89       	ldd	r24, Z+17	; 0x11
     aaa:	92 89       	ldd	r25, Z+18	; 0x12
     aac:	dc 01       	movw	r26, r24
     aae:	ed 91       	ld	r30, X+
     ab0:	fc 91       	ld	r31, X
     ab2:	00 84       	ldd	r0, Z+8	; 0x08
     ab4:	f1 85       	ldd	r31, Z+9	; 0x09
     ab6:	e0 2d       	mov	r30, r0
     ab8:	20 e0       	ldi	r18, 0x00	; 0
     aba:	48 e8       	ldi	r20, 0x88	; 136
     abc:	62 e5       	ldi	r22, 0x52	; 82
     abe:	09 95       	icall
     ac0:	f7 01       	movw	r30, r14
     ac2:	81 89       	ldd	r24, Z+17	; 0x11
     ac4:	92 89       	ldd	r25, Z+18	; 0x12
     ac6:	dc 01       	movw	r26, r24
     ac8:	ed 91       	ld	r30, X+
     aca:	fc 91       	ld	r31, X
     acc:	00 84       	ldd	r0, Z+8	; 0x08
     ace:	f1 85       	ldd	r31, Z+9	; 0x09
     ad0:	e0 2d       	mov	r30, r0
     ad2:	21 e0       	ldi	r18, 0x01	; 1
     ad4:	40 e8       	ldi	r20, 0x80	; 128
     ad6:	62 e5       	ldi	r22, 0x52	; 82
     ad8:	09 95       	icall
     ada:	f7 01       	movw	r30, r14
     adc:	81 89       	ldd	r24, Z+17	; 0x11
     ade:	92 89       	ldd	r25, Z+18	; 0x12
     ae0:	dc 01       	movw	r26, r24
     ae2:	ed 91       	ld	r30, X+
     ae4:	fc 91       	ld	r31, X
     ae6:	00 84       	ldd	r0, Z+8	; 0x08
     ae8:	f1 85       	ldd	r31, Z+9	; 0x09
     aea:	e0 2d       	mov	r30, r0
     aec:	21 e0       	ldi	r18, 0x01	; 1
     aee:	4f ef       	ldi	r20, 0xFF	; 255
     af0:	62 e5       	ldi	r22, 0x52	; 82
     af2:	09 95       	icall
     af4:	f7 01       	movw	r30, r14
     af6:	81 89       	ldd	r24, Z+17	; 0x11
     af8:	92 89       	ldd	r25, Z+18	; 0x12
     afa:	dc 01       	movw	r26, r24
     afc:	ed 91       	ld	r30, X+
     afe:	fc 91       	ld	r31, X
     b00:	00 84       	ldd	r0, Z+8	; 0x08
     b02:	f1 85       	ldd	r31, Z+9	; 0x09
     b04:	e0 2d       	mov	r30, r0
     b06:	20 e0       	ldi	r18, 0x00	; 0
     b08:	40 e0       	ldi	r20, 0x00	; 0
     b0a:	62 e5       	ldi	r22, 0x52	; 82
     b0c:	09 95       	icall
     b0e:	f7 01       	movw	r30, r14
     b10:	81 89       	ldd	r24, Z+17	; 0x11
     b12:	92 89       	ldd	r25, Z+18	; 0x12
     b14:	dc 01       	movw	r26, r24
     b16:	ed 91       	ld	r30, X+
     b18:	fc 91       	ld	r31, X
     b1a:	06 84       	ldd	r0, Z+14	; 0x0e
     b1c:	f7 85       	ldd	r31, Z+15	; 0x0f
     b1e:	e0 2d       	mov	r30, r0
     b20:	41 e9       	ldi	r20, 0x91	; 145
     b22:	62 e5       	ldi	r22, 0x52	; 82
     b24:	09 95       	icall
     b26:	f7 01       	movw	r30, r14
     b28:	81 89       	ldd	r24, Z+17	; 0x11
     b2a:	92 89       	ldd	r25, Z+18	; 0x12
     b2c:	dc 01       	movw	r26, r24
     b2e:	ed 91       	ld	r30, X+
     b30:	fc 91       	ld	r31, X
     b32:	00 84       	ldd	r0, Z+8	; 0x08
     b34:	f1 85       	ldd	r31, Z+9	; 0x09
     b36:	e0 2d       	mov	r30, r0
     b38:	21 e0       	ldi	r18, 0x01	; 1
     b3a:	40 e0       	ldi	r20, 0x00	; 0
     b3c:	62 e5       	ldi	r22, 0x52	; 82
     b3e:	09 95       	icall
     b40:	f7 01       	movw	r30, r14
     b42:	81 89       	ldd	r24, Z+17	; 0x11
     b44:	92 89       	ldd	r25, Z+18	; 0x12
     b46:	dc 01       	movw	r26, r24
     b48:	ed 91       	ld	r30, X+
     b4a:	fc 91       	ld	r31, X
     b4c:	00 84       	ldd	r0, Z+8	; 0x08
     b4e:	f1 85       	ldd	r31, Z+9	; 0x09
     b50:	e0 2d       	mov	r30, r0
     b52:	20 e0       	ldi	r18, 0x00	; 0
     b54:	4f ef       	ldi	r20, 0xFF	; 255
     b56:	62 e5       	ldi	r22, 0x52	; 82
     b58:	09 95       	icall
     b5a:	f7 01       	movw	r30, r14
     b5c:	81 89       	ldd	r24, Z+17	; 0x11
     b5e:	92 89       	ldd	r25, Z+18	; 0x12
     b60:	dc 01       	movw	r26, r24
     b62:	ed 91       	ld	r30, X+
     b64:	fc 91       	ld	r31, X
     b66:	00 84       	ldd	r0, Z+8	; 0x08
     b68:	f1 85       	ldd	r31, Z+9	; 0x09
     b6a:	e0 2d       	mov	r30, r0
     b6c:	20 e0       	ldi	r18, 0x00	; 0
     b6e:	40 e8       	ldi	r20, 0x80	; 128
     b70:	62 e5       	ldi	r22, 0x52	; 82
     b72:	09 95       	icall
     b74:	18 86       	std	Y+8, r1	; 0x08
     b76:	ae 01       	movw	r20, r28
     b78:	49 5f       	subi	r20, 0xF9	; 249
     b7a:	5f 4f       	sbci	r21, 0xFF	; 255
     b7c:	be 01       	movw	r22, r28
     b7e:	68 5f       	subi	r22, 0xF8	; 248
     b80:	7f 4f       	sbci	r23, 0xFF	; 255
     b82:	c7 01       	movw	r24, r14
     b84:	0e 94 bb 03 	call	0x776	; 0x776 <_ZN8CVL53L0X11getSPADinfoEPhPb>
     b88:	f7 01       	movw	r30, r14
     b8a:	81 89       	ldd	r24, Z+17	; 0x11
     b8c:	92 89       	ldd	r25, Z+18	; 0x12
     b8e:	dc 01       	movw	r26, r24
     b90:	ed 91       	ld	r30, X+
     b92:	fc 91       	ld	r31, X
     b94:	02 88       	ldd	r0, Z+18	; 0x12
     b96:	f3 89       	ldd	r31, Z+19	; 0x13
     b98:	e0 2d       	mov	r30, r0
     b9a:	06 e0       	ldi	r16, 0x06	; 6
     b9c:	10 e0       	ldi	r17, 0x00	; 0
     b9e:	9e 01       	movw	r18, r28
     ba0:	2f 5f       	subi	r18, 0xFF	; 255
     ba2:	3f 4f       	sbci	r19, 0xFF	; 255
     ba4:	40 eb       	ldi	r20, 0xB0	; 176
     ba6:	62 e5       	ldi	r22, 0x52	; 82
     ba8:	09 95       	icall
     baa:	f7 01       	movw	r30, r14
     bac:	81 89       	ldd	r24, Z+17	; 0x11
     bae:	92 89       	ldd	r25, Z+18	; 0x12
     bb0:	dc 01       	movw	r26, r24
     bb2:	ed 91       	ld	r30, X+
     bb4:	fc 91       	ld	r31, X
     bb6:	00 84       	ldd	r0, Z+8	; 0x08
     bb8:	f1 85       	ldd	r31, Z+9	; 0x09
     bba:	e0 2d       	mov	r30, r0
     bbc:	21 e0       	ldi	r18, 0x01	; 1
     bbe:	4f ef       	ldi	r20, 0xFF	; 255
     bc0:	62 e5       	ldi	r22, 0x52	; 82
     bc2:	09 95       	icall
     bc4:	f7 01       	movw	r30, r14
     bc6:	81 89       	ldd	r24, Z+17	; 0x11
     bc8:	92 89       	ldd	r25, Z+18	; 0x12
     bca:	dc 01       	movw	r26, r24
     bcc:	ed 91       	ld	r30, X+
     bce:	fc 91       	ld	r31, X
     bd0:	00 84       	ldd	r0, Z+8	; 0x08
     bd2:	f1 85       	ldd	r31, Z+9	; 0x09
     bd4:	e0 2d       	mov	r30, r0
     bd6:	20 e0       	ldi	r18, 0x00	; 0
     bd8:	4f e4       	ldi	r20, 0x4F	; 79
     bda:	62 e5       	ldi	r22, 0x52	; 82
     bdc:	09 95       	icall
     bde:	f7 01       	movw	r30, r14
     be0:	81 89       	ldd	r24, Z+17	; 0x11
     be2:	92 89       	ldd	r25, Z+18	; 0x12
     be4:	dc 01       	movw	r26, r24
     be6:	ed 91       	ld	r30, X+
     be8:	fc 91       	ld	r31, X
     bea:	00 84       	ldd	r0, Z+8	; 0x08
     bec:	f1 85       	ldd	r31, Z+9	; 0x09
     bee:	e0 2d       	mov	r30, r0
     bf0:	2c e2       	ldi	r18, 0x2C	; 44
     bf2:	4e e4       	ldi	r20, 0x4E	; 78
     bf4:	62 e5       	ldi	r22, 0x52	; 82
     bf6:	09 95       	icall
     bf8:	f7 01       	movw	r30, r14
     bfa:	81 89       	ldd	r24, Z+17	; 0x11
     bfc:	92 89       	ldd	r25, Z+18	; 0x12
     bfe:	dc 01       	movw	r26, r24
     c00:	ed 91       	ld	r30, X+
     c02:	fc 91       	ld	r31, X
     c04:	00 84       	ldd	r0, Z+8	; 0x08
     c06:	f1 85       	ldd	r31, Z+9	; 0x09
     c08:	e0 2d       	mov	r30, r0
     c0a:	20 e0       	ldi	r18, 0x00	; 0
     c0c:	4f ef       	ldi	r20, 0xFF	; 255
     c0e:	62 e5       	ldi	r22, 0x52	; 82
     c10:	09 95       	icall
     c12:	f7 01       	movw	r30, r14
     c14:	81 89       	ldd	r24, Z+17	; 0x11
     c16:	92 89       	ldd	r25, Z+18	; 0x12
     c18:	dc 01       	movw	r26, r24
     c1a:	ed 91       	ld	r30, X+
     c1c:	fc 91       	ld	r31, X
     c1e:	00 84       	ldd	r0, Z+8	; 0x08
     c20:	f1 85       	ldd	r31, Z+9	; 0x09
     c22:	e0 2d       	mov	r30, r0
     c24:	24 eb       	ldi	r18, 0xB4	; 180
     c26:	46 eb       	ldi	r20, 0xB6	; 182
     c28:	62 e5       	ldi	r22, 0x52	; 82
     c2a:	09 95       	icall
     c2c:	8f 81       	ldd	r24, Y+7	; 0x07
     c2e:	81 11       	cpse	r24, r1
     c30:	02 c0       	rjmp	.+4      	; 0xc36 <_ZN8CVL53L0X4initEP14CI2C_Interface+0x24a>
     c32:	40 e0       	ldi	r20, 0x00	; 0
     c34:	01 c0       	rjmp	.+2      	; 0xc38 <_ZN8CVL53L0X4initEP14CI2C_Interface+0x24c>
     c36:	4c e0       	ldi	r20, 0x0C	; 12
     c38:	a8 85       	ldd	r26, Y+8	; 0x08
     c3a:	80 e0       	ldi	r24, 0x00	; 0
     c3c:	90 e0       	ldi	r25, 0x00	; 0
     c3e:	61 e0       	ldi	r22, 0x01	; 1
     c40:	70 e0       	ldi	r23, 0x00	; 0
     c42:	28 2f       	mov	r18, r24
     c44:	26 95       	lsr	r18
     c46:	26 95       	lsr	r18
     c48:	26 95       	lsr	r18
     c4a:	58 2f       	mov	r21, r24
     c4c:	57 70       	andi	r21, 0x07	; 7
     c4e:	e1 e0       	ldi	r30, 0x01	; 1
     c50:	f0 e0       	ldi	r31, 0x00	; 0
     c52:	ec 0f       	add	r30, r28
     c54:	fd 1f       	adc	r31, r29
     c56:	e2 0f       	add	r30, r18
     c58:	f1 1d       	adc	r31, r1
     c5a:	84 17       	cp	r24, r20
     c5c:	10 f0       	brcs	.+4      	; 0xc62 <_ZN8CVL53L0X4initEP14CI2C_Interface+0x276>
     c5e:	9a 13       	cpse	r25, r26
     c60:	0a c0       	rjmp	.+20     	; 0xc76 <_ZN8CVL53L0X4initEP14CI2C_Interface+0x28a>
     c62:	9b 01       	movw	r18, r22
     c64:	01 c0       	rjmp	.+2      	; 0xc68 <_ZN8CVL53L0X4initEP14CI2C_Interface+0x27c>
     c66:	22 0f       	add	r18, r18
     c68:	5a 95       	dec	r21
     c6a:	ea f7       	brpl	.-6      	; 0xc66 <_ZN8CVL53L0X4initEP14CI2C_Interface+0x27a>
     c6c:	20 95       	com	r18
     c6e:	30 81       	ld	r19, Z
     c70:	23 23       	and	r18, r19
     c72:	20 83       	st	Z, r18
     c74:	09 c0       	rjmp	.+18     	; 0xc88 <_ZN8CVL53L0X4initEP14CI2C_Interface+0x29c>
     c76:	20 81       	ld	r18, Z
     c78:	30 e0       	ldi	r19, 0x00	; 0
     c7a:	02 c0       	rjmp	.+4      	; 0xc80 <_ZN8CVL53L0X4initEP14CI2C_Interface+0x294>
     c7c:	35 95       	asr	r19
     c7e:	27 95       	ror	r18
     c80:	5a 95       	dec	r21
     c82:	e2 f7       	brpl	.-8      	; 0xc7c <_ZN8CVL53L0X4initEP14CI2C_Interface+0x290>
     c84:	20 fd       	sbrc	r18, 0
     c86:	9f 5f       	subi	r25, 0xFF	; 255
     c88:	8f 5f       	subi	r24, 0xFF	; 255
     c8a:	80 33       	cpi	r24, 0x30	; 48
     c8c:	d1 f6       	brne	.-76     	; 0xc42 <_ZN8CVL53L0X4initEP14CI2C_Interface+0x256>
     c8e:	f7 01       	movw	r30, r14
     c90:	81 89       	ldd	r24, Z+17	; 0x11
     c92:	92 89       	ldd	r25, Z+18	; 0x12
     c94:	dc 01       	movw	r26, r24
     c96:	ed 91       	ld	r30, X+
     c98:	fc 91       	ld	r31, X
     c9a:	04 84       	ldd	r0, Z+12	; 0x0c
     c9c:	f5 85       	ldd	r31, Z+13	; 0x0d
     c9e:	e0 2d       	mov	r30, r0
     ca0:	06 e0       	ldi	r16, 0x06	; 6
     ca2:	10 e0       	ldi	r17, 0x00	; 0
     ca4:	9e 01       	movw	r18, r28
     ca6:	2f 5f       	subi	r18, 0xFF	; 255
     ca8:	3f 4f       	sbci	r19, 0xFF	; 255
     caa:	40 eb       	ldi	r20, 0xB0	; 176
     cac:	62 e5       	ldi	r22, 0x52	; 82
     cae:	09 95       	icall
     cb0:	f7 01       	movw	r30, r14
     cb2:	81 89       	ldd	r24, Z+17	; 0x11
     cb4:	92 89       	ldd	r25, Z+18	; 0x12
     cb6:	dc 01       	movw	r26, r24
     cb8:	ed 91       	ld	r30, X+
     cba:	fc 91       	ld	r31, X
     cbc:	06 84       	ldd	r0, Z+14	; 0x0e
     cbe:	f7 85       	ldd	r31, Z+15	; 0x0f
     cc0:	e0 2d       	mov	r30, r0
     cc2:	44 e8       	ldi	r20, 0x84	; 132
     cc4:	62 e5       	ldi	r22, 0x52	; 82
     cc6:	09 95       	icall
     cc8:	18 2f       	mov	r17, r24
     cca:	f7 01       	movw	r30, r14
     ccc:	81 89       	ldd	r24, Z+17	; 0x11
     cce:	92 89       	ldd	r25, Z+18	; 0x12
     cd0:	dc 01       	movw	r26, r24
     cd2:	ed 91       	ld	r30, X+
     cd4:	fc 91       	ld	r31, X
     cd6:	00 84       	ldd	r0, Z+8	; 0x08
     cd8:	f1 85       	ldd	r31, Z+9	; 0x09
     cda:	e0 2d       	mov	r30, r0
     cdc:	24 e0       	ldi	r18, 0x04	; 4
     cde:	4a e0       	ldi	r20, 0x0A	; 10
     ce0:	62 e5       	ldi	r22, 0x52	; 82
     ce2:	09 95       	icall
     ce4:	f7 01       	movw	r30, r14
     ce6:	81 89       	ldd	r24, Z+17	; 0x11
     ce8:	92 89       	ldd	r25, Z+18	; 0x12
     cea:	dc 01       	movw	r26, r24
     cec:	ed 91       	ld	r30, X+
     cee:	fc 91       	ld	r31, X
     cf0:	21 2f       	mov	r18, r17
     cf2:	2f 7e       	andi	r18, 0xEF	; 239
     cf4:	00 84       	ldd	r0, Z+8	; 0x08
     cf6:	f1 85       	ldd	r31, Z+9	; 0x09
     cf8:	e0 2d       	mov	r30, r0
     cfa:	44 e8       	ldi	r20, 0x84	; 132
     cfc:	62 e5       	ldi	r22, 0x52	; 82
     cfe:	09 95       	icall
     d00:	f7 01       	movw	r30, r14
     d02:	81 89       	ldd	r24, Z+17	; 0x11
     d04:	92 89       	ldd	r25, Z+18	; 0x12
     d06:	dc 01       	movw	r26, r24
     d08:	ed 91       	ld	r30, X+
     d0a:	fc 91       	ld	r31, X
     d0c:	00 84       	ldd	r0, Z+8	; 0x08
     d0e:	f1 85       	ldd	r31, Z+9	; 0x09
     d10:	e0 2d       	mov	r30, r0
     d12:	21 e0       	ldi	r18, 0x01	; 1
     d14:	4b e0       	ldi	r20, 0x0B	; 11
     d16:	62 e5       	ldi	r22, 0x52	; 82
     d18:	09 95       	icall
     d1a:	f7 01       	movw	r30, r14
     d1c:	81 89       	ldd	r24, Z+17	; 0x11
     d1e:	92 89       	ldd	r25, Z+18	; 0x12
     d20:	dc 01       	movw	r26, r24
     d22:	ed 91       	ld	r30, X+
     d24:	fc 91       	ld	r31, X
     d26:	00 84       	ldd	r0, Z+8	; 0x08
     d28:	f1 85       	ldd	r31, Z+9	; 0x09
     d2a:	e0 2d       	mov	r30, r0
     d2c:	22 e0       	ldi	r18, 0x02	; 2
     d2e:	40 e0       	ldi	r20, 0x00	; 0
     d30:	62 e5       	ldi	r22, 0x52	; 82
     d32:	09 95       	icall
     d34:	80 e0       	ldi	r24, 0x00	; 0
     d36:	90 e0       	ldi	r25, 0x00	; 0
     d38:	02 c0       	rjmp	.+4      	; 0xd3e <_ZN8CVL53L0X4initEP14CI2C_Interface+0x352>
     d3a:	8e ef       	ldi	r24, 0xFE	; 254
     d3c:	9f ef       	ldi	r25, 0xFF	; 255
     d3e:	28 96       	adiw	r28, 0x08	; 8
     d40:	0f b6       	in	r0, 0x3f	; 63
     d42:	f8 94       	cli
     d44:	de bf       	out	0x3e, r29	; 62
     d46:	0f be       	out	0x3f, r0	; 63
     d48:	cd bf       	out	0x3d, r28	; 61
     d4a:	df 91       	pop	r29
     d4c:	cf 91       	pop	r28
     d4e:	1f 91       	pop	r17
     d50:	0f 91       	pop	r16
     d52:	ff 90       	pop	r15
     d54:	ef 90       	pop	r14
     d56:	08 95       	ret

00000d58 <_ZN6CUSARTC1Ev>:
     d58:	10 92 c5 00 	sts	0x00C5, r1
     d5c:	87 e6       	ldi	r24, 0x67	; 103
     d5e:	80 93 c4 00 	sts	0x00C4, r24
     d62:	e2 ec       	ldi	r30, 0xC2	; 194
     d64:	f0 e0       	ldi	r31, 0x00	; 0
     d66:	80 81       	ld	r24, Z
     d68:	86 60       	ori	r24, 0x06	; 6
     d6a:	80 83       	st	Z, r24
     d6c:	e1 ec       	ldi	r30, 0xC1	; 193
     d6e:	f0 e0       	ldi	r31, 0x00	; 0
     d70:	80 81       	ld	r24, Z
     d72:	88 61       	ori	r24, 0x18	; 24
     d74:	80 83       	st	Z, r24
     d76:	08 95       	ret

00000d78 <_ZN6CUSARTD1Ev>:
     d78:	08 95       	ret

00000d7a <_ZN6CUSART8put_charEc>:
     d7a:	60 93 c6 00 	sts	0x00C6, r22
     d7e:	80 91 c0 00 	lds	r24, 0x00C0
     d82:	85 fd       	sbrc	r24, 5
     d84:	02 c0       	rjmp	.+4      	; 0xd8a <_ZN6CUSART8put_charEc+0x10>
     d86:	00 00       	nop
     d88:	fa cf       	rjmp	.-12     	; 0xd7e <_ZN6CUSART8put_charEc+0x4>
     d8a:	08 95       	ret

00000d8c <_ZdlPv>:
     d8c:	0c 94 70 09 	jmp	0x12e0	; 0x12e0 <free>

00000d90 <_ZN8CRTTimerC1Ev>:
     d90:	e3 e5       	ldi	r30, 0x53	; 83
     d92:	f1 e0       	ldi	r31, 0x01	; 1
     d94:	80 e0       	ldi	r24, 0x00	; 0
     d96:	90 e0       	ldi	r25, 0x00	; 0
     d98:	11 82       	std	Z+1, r1	; 0x01
     d9a:	10 82       	st	Z, r1
     d9c:	13 82       	std	Z+3, r1	; 0x03
     d9e:	12 82       	std	Z+2, r1	; 0x02
     da0:	15 82       	std	Z+5, r1	; 0x05
     da2:	14 82       	std	Z+4, r1	; 0x04
     da4:	dc 01       	movw	r26, r24
     da6:	ad 5a       	subi	r26, 0xAD	; 173
     da8:	be 4f       	sbci	r27, 0xFE	; 254
     daa:	16 96       	adiw	r26, 0x06	; 6
     dac:	1c 92       	st	X, r1
     dae:	16 97       	sbiw	r26, 0x06	; 6
     db0:	17 96       	adiw	r26, 0x07	; 7
     db2:	1c 92       	st	X, r1
     db4:	38 96       	adiw	r30, 0x08	; 8
     db6:	08 96       	adiw	r24, 0x08	; 8
     db8:	80 34       	cpi	r24, 0x40	; 64
     dba:	91 05       	cpc	r25, r1
     dbc:	69 f7       	brne	.-38     	; 0xd98 <_ZN8CRTTimerC1Ev+0x8>
     dbe:	84 b5       	in	r24, 0x24	; 36
     dc0:	82 60       	ori	r24, 0x02	; 2
     dc2:	84 bd       	out	0x24, r24	; 36
     dc4:	89 ef       	ldi	r24, 0xF9	; 249
     dc6:	87 bd       	out	0x27, r24	; 39
     dc8:	83 e0       	ldi	r24, 0x03	; 3
     dca:	85 bd       	out	0x25, r24	; 37
     dcc:	80 91 6e 00 	lds	r24, 0x006E
     dd0:	82 60       	ori	r24, 0x02	; 2
     dd2:	80 93 6e 00 	sts	0x006E, r24
     dd6:	78 94       	sei
     dd8:	08 95       	ret

00000dda <_ZN8CRTTimer8add_taskEP14CTaskInterfacejb>:
     dda:	f8 94       	cli
     ddc:	e3 e5       	ldi	r30, 0x53	; 83
     dde:	f1 e0       	ldi	r31, 0x01	; 1
     de0:	80 e0       	ldi	r24, 0x00	; 0
     de2:	90 e0       	ldi	r25, 0x00	; 0
     de4:	a0 81       	ld	r26, Z
     de6:	b1 81       	ldd	r27, Z+1	; 0x01
     de8:	ab 2b       	or	r26, r27
     dea:	89 f4       	brne	.+34     	; 0xe0e <_ZN8CRTTimer8add_taskEP14CTaskInterfacejb+0x34>
     dec:	fc 01       	movw	r30, r24
     dee:	33 e0       	ldi	r19, 0x03	; 3
     df0:	ee 0f       	add	r30, r30
     df2:	ff 1f       	adc	r31, r31
     df4:	3a 95       	dec	r19
     df6:	e1 f7       	brne	.-8      	; 0xdf0 <_ZN8CRTTimer8add_taskEP14CTaskInterfacejb+0x16>
     df8:	ed 5a       	subi	r30, 0xAD	; 173
     dfa:	fe 4f       	sbci	r31, 0xFE	; 254
     dfc:	71 83       	std	Z+1, r23	; 0x01
     dfe:	60 83       	st	Z, r22
     e00:	53 83       	std	Z+3, r21	; 0x03
     e02:	42 83       	std	Z+2, r20	; 0x02
     e04:	55 83       	std	Z+5, r21	; 0x05
     e06:	44 83       	std	Z+4, r20	; 0x04
     e08:	16 82       	std	Z+6, r1	; 0x06
     e0a:	27 83       	std	Z+7, r18	; 0x07
     e0c:	07 c0       	rjmp	.+14     	; 0xe1c <_ZN8CRTTimer8add_taskEP14CTaskInterfacejb+0x42>
     e0e:	01 96       	adiw	r24, 0x01	; 1
     e10:	38 96       	adiw	r30, 0x08	; 8
     e12:	88 30       	cpi	r24, 0x08	; 8
     e14:	91 05       	cpc	r25, r1
     e16:	31 f7       	brne	.-52     	; 0xde4 <_ZN8CRTTimer8add_taskEP14CTaskInterfacejb+0xa>
     e18:	8f ef       	ldi	r24, 0xFF	; 255
     e1a:	9f ef       	ldi	r25, 0xFF	; 255
     e1c:	78 94       	sei
     e1e:	08 95       	ret

00000e20 <_ZN8CRTTimer4mainEv>:
     e20:	cf 93       	push	r28
     e22:	df 93       	push	r29
     e24:	c0 e0       	ldi	r28, 0x00	; 0
     e26:	d0 e0       	ldi	r29, 0x00	; 0
     e28:	fe 01       	movw	r30, r28
     e2a:	ed 5a       	subi	r30, 0xAD	; 173
     e2c:	fe 4f       	sbci	r31, 0xFE	; 254
     e2e:	80 81       	ld	r24, Z
     e30:	91 81       	ldd	r25, Z+1	; 0x01
     e32:	00 97       	sbiw	r24, 0x00	; 0
     e34:	71 f0       	breq	.+28     	; 0xe52 <_ZN8CRTTimer4mainEv+0x32>
     e36:	26 81       	ldd	r18, Z+6	; 0x06
     e38:	22 23       	and	r18, r18
     e3a:	59 f0       	breq	.+22     	; 0xe52 <_ZN8CRTTimer4mainEv+0x32>
     e3c:	16 82       	std	Z+6, r1	; 0x06
     e3e:	27 81       	ldd	r18, Z+7	; 0x07
     e40:	21 11       	cpse	r18, r1
     e42:	07 c0       	rjmp	.+14     	; 0xe52 <_ZN8CRTTimer4mainEv+0x32>
     e44:	dc 01       	movw	r26, r24
     e46:	ed 91       	ld	r30, X+
     e48:	fc 91       	ld	r31, X
     e4a:	04 80       	ldd	r0, Z+4	; 0x04
     e4c:	f5 81       	ldd	r31, Z+5	; 0x05
     e4e:	e0 2d       	mov	r30, r0
     e50:	09 95       	icall
     e52:	28 96       	adiw	r28, 0x08	; 8
     e54:	c0 34       	cpi	r28, 0x40	; 64
     e56:	d1 05       	cpc	r29, r1
     e58:	39 f7       	brne	.-50     	; 0xe28 <_ZN8CRTTimer4mainEv+0x8>
     e5a:	df 91       	pop	r29
     e5c:	cf 91       	pop	r28
     e5e:	08 95       	ret

00000e60 <__vector_14>:
     e60:	1f 92       	push	r1
     e62:	0f 92       	push	r0
     e64:	0f b6       	in	r0, 0x3f	; 63
     e66:	0f 92       	push	r0
     e68:	11 24       	eor	r1, r1
     e6a:	0f 93       	push	r16
     e6c:	1f 93       	push	r17
     e6e:	2f 93       	push	r18
     e70:	3f 93       	push	r19
     e72:	4f 93       	push	r20
     e74:	5f 93       	push	r21
     e76:	6f 93       	push	r22
     e78:	7f 93       	push	r23
     e7a:	8f 93       	push	r24
     e7c:	9f 93       	push	r25
     e7e:	af 93       	push	r26
     e80:	bf 93       	push	r27
     e82:	cf 93       	push	r28
     e84:	df 93       	push	r29
     e86:	ef 93       	push	r30
     e88:	ff 93       	push	r31
     e8a:	c3 e5       	ldi	r28, 0x53	; 83
     e8c:	d1 e0       	ldi	r29, 0x01	; 1
     e8e:	00 e0       	ldi	r16, 0x00	; 0
     e90:	10 e0       	ldi	r17, 0x00	; 0
     e92:	8c 81       	ldd	r24, Y+4	; 0x04
     e94:	9d 81       	ldd	r25, Y+5	; 0x05
     e96:	00 97       	sbiw	r24, 0x00	; 0
     e98:	21 f0       	breq	.+8      	; 0xea2 <__vector_14+0x42>
     e9a:	01 97       	sbiw	r24, 0x01	; 1
     e9c:	9d 83       	std	Y+5, r25	; 0x05
     e9e:	8c 83       	std	Y+4, r24	; 0x04
     ea0:	18 c0       	rjmp	.+48     	; 0xed2 <__vector_14+0x72>
     ea2:	8a 81       	ldd	r24, Y+2	; 0x02
     ea4:	9b 81       	ldd	r25, Y+3	; 0x03
     ea6:	9d 83       	std	Y+5, r25	; 0x05
     ea8:	8c 83       	std	Y+4, r24	; 0x04
     eaa:	f8 01       	movw	r30, r16
     eac:	ed 5a       	subi	r30, 0xAD	; 173
     eae:	fe 4f       	sbci	r31, 0xFE	; 254
     eb0:	86 81       	ldd	r24, Z+6	; 0x06
     eb2:	8f 3f       	cpi	r24, 0xFF	; 255
     eb4:	11 f0       	breq	.+4      	; 0xeba <__vector_14+0x5a>
     eb6:	8f 5f       	subi	r24, 0xFF	; 255
     eb8:	86 83       	std	Z+6, r24	; 0x06
     eba:	87 81       	ldd	r24, Z+7	; 0x07
     ebc:	88 23       	and	r24, r24
     ebe:	49 f0       	breq	.+18     	; 0xed2 <__vector_14+0x72>
     ec0:	88 81       	ld	r24, Y
     ec2:	99 81       	ldd	r25, Y+1	; 0x01
     ec4:	dc 01       	movw	r26, r24
     ec6:	ed 91       	ld	r30, X+
     ec8:	fc 91       	ld	r31, X
     eca:	04 80       	ldd	r0, Z+4	; 0x04
     ecc:	f5 81       	ldd	r31, Z+5	; 0x05
     ece:	e0 2d       	mov	r30, r0
     ed0:	09 95       	icall
     ed2:	08 5f       	subi	r16, 0xF8	; 248
     ed4:	1f 4f       	sbci	r17, 0xFF	; 255
     ed6:	28 96       	adiw	r28, 0x08	; 8
     ed8:	00 34       	cpi	r16, 0x40	; 64
     eda:	11 05       	cpc	r17, r1
     edc:	d1 f6       	brne	.-76     	; 0xe92 <__vector_14+0x32>
     ede:	80 91 93 01 	lds	r24, 0x0193
     ee2:	90 91 94 01 	lds	r25, 0x0194
     ee6:	a0 91 95 01 	lds	r26, 0x0195
     eea:	b0 91 96 01 	lds	r27, 0x0196
     eee:	01 96       	adiw	r24, 0x01	; 1
     ef0:	a1 1d       	adc	r26, r1
     ef2:	b1 1d       	adc	r27, r1
     ef4:	80 93 93 01 	sts	0x0193, r24
     ef8:	90 93 94 01 	sts	0x0194, r25
     efc:	a0 93 95 01 	sts	0x0195, r26
     f00:	b0 93 96 01 	sts	0x0196, r27
     f04:	ff 91       	pop	r31
     f06:	ef 91       	pop	r30
     f08:	df 91       	pop	r29
     f0a:	cf 91       	pop	r28
     f0c:	bf 91       	pop	r27
     f0e:	af 91       	pop	r26
     f10:	9f 91       	pop	r25
     f12:	8f 91       	pop	r24
     f14:	7f 91       	pop	r23
     f16:	6f 91       	pop	r22
     f18:	5f 91       	pop	r21
     f1a:	4f 91       	pop	r20
     f1c:	3f 91       	pop	r19
     f1e:	2f 91       	pop	r18
     f20:	1f 91       	pop	r17
     f22:	0f 91       	pop	r16
     f24:	0f 90       	pop	r0
     f26:	0f be       	out	0x3f, r0	; 63
     f28:	0f 90       	pop	r0
     f2a:	1f 90       	pop	r1
     f2c:	18 95       	reti

00000f2e <_GLOBAL__sub_I_g_rt_time>:
     f2e:	82 e5       	ldi	r24, 0x52	; 82
     f30:	91 e0       	ldi	r25, 0x01	; 1
     f32:	0c 94 c8 06 	jmp	0xd90	; 0xd90 <_ZN8CRTTimerC1Ev>

00000f36 <_ZN9CTerminal4putsEPKc>:
     f36:	0f 93       	push	r16
     f38:	1f 93       	push	r17
     f3a:	cf 93       	push	r28
     f3c:	df 93       	push	r29
     f3e:	8c 01       	movw	r16, r24
     f40:	eb 01       	movw	r28, r22
     f42:	69 91       	ld	r22, Y+
     f44:	66 23       	and	r22, r22
     f46:	21 f0       	breq	.+8      	; 0xf50 <_ZN9CTerminal4putsEPKc+0x1a>
     f48:	c8 01       	movw	r24, r16
     f4a:	0e 94 bd 06 	call	0xd7a	; 0xd7a <_ZN6CUSART8put_charEc>
     f4e:	f9 cf       	rjmp	.-14     	; 0xf42 <_ZN9CTerminal4putsEPKc+0xc>
     f50:	df 91       	pop	r29
     f52:	cf 91       	pop	r28
     f54:	1f 91       	pop	r17
     f56:	0f 91       	pop	r16
     f58:	08 95       	ret

00000f5a <_ZN9CTerminal4putsEPc>:
     f5a:	0f 93       	push	r16
     f5c:	1f 93       	push	r17
     f5e:	cf 93       	push	r28
     f60:	df 93       	push	r29
     f62:	8c 01       	movw	r16, r24
     f64:	eb 01       	movw	r28, r22
     f66:	69 91       	ld	r22, Y+
     f68:	66 23       	and	r22, r22
     f6a:	21 f0       	breq	.+8      	; 0xf74 <_ZN9CTerminal4putsEPc+0x1a>
     f6c:	c8 01       	movw	r24, r16
     f6e:	0e 94 bd 06 	call	0xd7a	; 0xd7a <_ZN6CUSART8put_charEc>
     f72:	f9 cf       	rjmp	.-14     	; 0xf66 <_ZN9CTerminal4putsEPc+0xc>
     f74:	df 91       	pop	r29
     f76:	cf 91       	pop	r28
     f78:	1f 91       	pop	r17
     f7a:	0f 91       	pop	r16
     f7c:	08 95       	ret

00000f7e <_ZN9CTerminal4putiEl>:
     f7e:	8f 92       	push	r8
     f80:	9f 92       	push	r9
     f82:	af 92       	push	r10
     f84:	bf 92       	push	r11
     f86:	cf 92       	push	r12
     f88:	df 92       	push	r13
     f8a:	ef 92       	push	r14
     f8c:	ff 92       	push	r15
     f8e:	0f 93       	push	r16
     f90:	1f 93       	push	r17
     f92:	cf 93       	push	r28
     f94:	df 93       	push	r29
     f96:	cd b7       	in	r28, 0x3d	; 61
     f98:	de b7       	in	r29, 0x3e	; 62
     f9a:	2c 97       	sbiw	r28, 0x0c	; 12
     f9c:	0f b6       	in	r0, 0x3f	; 63
     f9e:	f8 94       	cli
     fa0:	de bf       	out	0x3e, r29	; 62
     fa2:	0f be       	out	0x3f, r0	; 63
     fa4:	cd bf       	out	0x3d, r28	; 61
     fa6:	7c 01       	movw	r14, r24
     fa8:	77 ff       	sbrs	r23, 7
     faa:	09 c0       	rjmp	.+18     	; 0xfbe <_ZN9CTerminal4putiEl+0x40>
     fac:	70 95       	com	r23
     fae:	60 95       	com	r22
     fb0:	50 95       	com	r21
     fb2:	41 95       	neg	r20
     fb4:	5f 4f       	sbci	r21, 0xFF	; 255
     fb6:	6f 4f       	sbci	r22, 0xFF	; 255
     fb8:	7f 4f       	sbci	r23, 0xFF	; 255
     fba:	01 e0       	ldi	r16, 0x01	; 1
     fbc:	01 c0       	rjmp	.+2      	; 0xfc0 <_ZN9CTerminal4putiEl+0x42>
     fbe:	00 e0       	ldi	r16, 0x00	; 0
     fc0:	1c 86       	std	Y+12, r1	; 0x0c
     fc2:	1a e0       	ldi	r17, 0x0A	; 10
     fc4:	9a e0       	ldi	r25, 0x0A	; 10
     fc6:	89 2e       	mov	r8, r25
     fc8:	91 2c       	mov	r9, r1
     fca:	a1 2c       	mov	r10, r1
     fcc:	b1 2c       	mov	r11, r1
     fce:	cc 24       	eor	r12, r12
     fd0:	c3 94       	inc	r12
     fd2:	d1 2c       	mov	r13, r1
     fd4:	cc 0e       	add	r12, r28
     fd6:	dd 1e       	adc	r13, r29
     fd8:	c1 0e       	add	r12, r17
     fda:	d1 1c       	adc	r13, r1
     fdc:	cb 01       	movw	r24, r22
     fde:	ba 01       	movw	r22, r20
     fe0:	a5 01       	movw	r20, r10
     fe2:	94 01       	movw	r18, r8
     fe4:	0e 94 b6 08 	call	0x116c	; 0x116c <__divmodsi4>
     fe8:	94 2f       	mov	r25, r20
     fea:	85 2f       	mov	r24, r21
     fec:	60 5d       	subi	r22, 0xD0	; 208
     fee:	f6 01       	movw	r30, r12
     ff0:	60 83       	st	Z, r22
     ff2:	a9 01       	movw	r20, r18
     ff4:	69 2f       	mov	r22, r25
     ff6:	78 2f       	mov	r23, r24
     ff8:	8f ef       	ldi	r24, 0xFF	; 255
     ffa:	81 0f       	add	r24, r17
     ffc:	41 15       	cp	r20, r1
     ffe:	51 05       	cpc	r21, r1
    1000:	61 05       	cpc	r22, r1
    1002:	71 05       	cpc	r23, r1
    1004:	11 f0       	breq	.+4      	; 0x100a <_ZN9CTerminal4putiEl+0x8c>
    1006:	18 2f       	mov	r17, r24
    1008:	e2 cf       	rjmp	.-60     	; 0xfce <_ZN9CTerminal4putiEl+0x50>
    100a:	00 23       	and	r16, r16
    100c:	49 f0       	breq	.+18     	; 0x1020 <_ZN9CTerminal4putiEl+0xa2>
    100e:	e1 e0       	ldi	r30, 0x01	; 1
    1010:	f0 e0       	ldi	r31, 0x00	; 0
    1012:	ec 0f       	add	r30, r28
    1014:	fd 1f       	adc	r31, r29
    1016:	e8 0f       	add	r30, r24
    1018:	f1 1d       	adc	r31, r1
    101a:	9d e2       	ldi	r25, 0x2D	; 45
    101c:	90 83       	st	Z, r25
    101e:	18 2f       	mov	r17, r24
    1020:	61 e0       	ldi	r22, 0x01	; 1
    1022:	70 e0       	ldi	r23, 0x00	; 0
    1024:	6c 0f       	add	r22, r28
    1026:	7d 1f       	adc	r23, r29
    1028:	61 0f       	add	r22, r17
    102a:	71 1d       	adc	r23, r1
    102c:	c7 01       	movw	r24, r14
    102e:	0e 94 ad 07 	call	0xf5a	; 0xf5a <_ZN9CTerminal4putsEPc>
    1032:	2c 96       	adiw	r28, 0x0c	; 12
    1034:	0f b6       	in	r0, 0x3f	; 63
    1036:	f8 94       	cli
    1038:	de bf       	out	0x3e, r29	; 62
    103a:	0f be       	out	0x3f, r0	; 63
    103c:	cd bf       	out	0x3d, r28	; 61
    103e:	df 91       	pop	r29
    1040:	cf 91       	pop	r28
    1042:	1f 91       	pop	r17
    1044:	0f 91       	pop	r16
    1046:	ff 90       	pop	r15
    1048:	ef 90       	pop	r14
    104a:	df 90       	pop	r13
    104c:	cf 90       	pop	r12
    104e:	bf 90       	pop	r11
    1050:	af 90       	pop	r10
    1052:	9f 90       	pop	r9
    1054:	8f 90       	pop	r8
    1056:	08 95       	ret

00001058 <_GLOBAL__sub_I_terminal>:
    1058:	87 e9       	ldi	r24, 0x97	; 151
    105a:	91 e0       	ldi	r25, 0x01	; 1
    105c:	0c 94 ac 06 	jmp	0xd58	; 0xd58 <_ZN6CUSARTC1Ev>

00001060 <_GLOBAL__sub_D_terminal>:
    1060:	87 e9       	ldi	r24, 0x97	; 151
    1062:	91 e0       	ldi	r25, 0x01	; 1
    1064:	0c 94 bc 06 	jmp	0xd78	; 0xd78 <_ZN6CUSARTD1Ev>

00001068 <_ZN16CObjectDetectionC1Ev>:
    1068:	0c 94 7c 03 	jmp	0x6f8	; 0x6f8 <_ZN8CVL53L0XC1Ev>

0000106c <_ZN16CObjectDetectionD1Ev>:
    106c:	0c 94 7d 03 	jmp	0x6fa	; 0x6fa <_ZN8CVL53L0XD1Ev>

00001070 <_ZN16CObjectDetection4initEP14CI2C_Interface>:
    1070:	fc 01       	movw	r30, r24
    1072:	16 8a       	std	Z+22, r1	; 0x16
    1074:	15 8a       	std	Z+21, r1	; 0x15
    1076:	10 8e       	std	Z+24, r1	; 0x18
    1078:	17 8a       	std	Z+23, r1	; 0x17
    107a:	12 8e       	std	Z+26, r1	; 0x1a
    107c:	11 8e       	std	Z+25, r1	; 0x19
    107e:	13 8e       	std	Z+27, r1	; 0x1b
    1080:	14 8a       	std	Z+20, r1	; 0x14
    1082:	13 8a       	std	Z+19, r1	; 0x13
    1084:	0c 94 f6 04 	jmp	0x9ec	; 0x9ec <_ZN8CVL53L0X4initEP14CI2C_Interface>

00001088 <_ZN16CObjectDetection7processEv>:
    1088:	cf 93       	push	r28
    108a:	df 93       	push	r29
    108c:	ec 01       	movw	r28, r24
    108e:	0e 94 7e 03 	call	0x6fc	; 0x6fc <_ZN8CVL53L0X4readEv>
    1092:	ce 01       	movw	r24, r28
    1094:	0e 94 b7 03 	call	0x76e	; 0x76e <_ZN8CVL53L0X12get_distanceEv>
    1098:	9e 8b       	std	Y+22, r25	; 0x16
    109a:	8d 8b       	std	Y+21, r24	; 0x15
    109c:	4f 89       	ldd	r20, Y+23	; 0x17
    109e:	58 8d       	ldd	r21, Y+24	; 0x18
    10a0:	6f e1       	ldi	r22, 0x1F	; 31
    10a2:	64 9f       	mul	r22, r20
    10a4:	90 01       	movw	r18, r0
    10a6:	65 9f       	mul	r22, r21
    10a8:	30 0d       	add	r19, r0
    10aa:	11 24       	eor	r1, r1
    10ac:	28 0f       	add	r18, r24
    10ae:	39 1f       	adc	r19, r25
    10b0:	37 ff       	sbrs	r19, 7
    10b2:	02 c0       	rjmp	.+4      	; 0x10b8 <_ZN16CObjectDetection7processEv+0x30>
    10b4:	21 5e       	subi	r18, 0xE1	; 225
    10b6:	3f 4f       	sbci	r19, 0xFF	; 255
    10b8:	45 e0       	ldi	r20, 0x05	; 5
    10ba:	35 95       	asr	r19
    10bc:	27 95       	ror	r18
    10be:	4a 95       	dec	r20
    10c0:	e1 f7       	brne	.-8      	; 0x10ba <_ZN16CObjectDetection7processEv+0x32>
    10c2:	38 8f       	std	Y+24, r19	; 0x18
    10c4:	2f 8b       	std	Y+23, r18	; 0x17
    10c6:	82 1b       	sub	r24, r18
    10c8:	93 0b       	sbc	r25, r19
    10ca:	9a 8f       	std	Y+26, r25	; 0x1a
    10cc:	89 8f       	std	Y+25, r24	; 0x19
    10ce:	86 3f       	cpi	r24, 0xF6	; 246
    10d0:	9f 4f       	sbci	r25, 0xFF	; 255
    10d2:	5c f4       	brge	.+22     	; 0x10ea <_ZN16CObjectDetection7processEv+0x62>
    10d4:	8b 89       	ldd	r24, Y+19	; 0x13
    10d6:	9c 89       	ldd	r25, Y+20	; 0x14
    10d8:	89 2b       	or	r24, r25
    10da:	39 f4       	brne	.+14     	; 0x10ea <_ZN16CObjectDetection7processEv+0x62>
    10dc:	81 e0       	ldi	r24, 0x01	; 1
    10de:	8b 8f       	std	Y+27, r24	; 0x1b
    10e0:	84 e1       	ldi	r24, 0x14	; 20
    10e2:	90 e0       	ldi	r25, 0x00	; 0
    10e4:	9c 8b       	std	Y+20, r25	; 0x14
    10e6:	8b 8b       	std	Y+19, r24	; 0x13
    10e8:	01 c0       	rjmp	.+2      	; 0x10ec <_ZN16CObjectDetection7processEv+0x64>
    10ea:	1b 8e       	std	Y+27, r1	; 0x1b
    10ec:	8b 89       	ldd	r24, Y+19	; 0x13
    10ee:	9c 89       	ldd	r25, Y+20	; 0x14
    10f0:	00 97       	sbiw	r24, 0x00	; 0
    10f2:	19 f0       	breq	.+6      	; 0x10fa <_ZN16CObjectDetection7processEv+0x72>
    10f4:	01 97       	sbiw	r24, 0x01	; 1
    10f6:	9c 8b       	std	Y+20, r25	; 0x14
    10f8:	8b 8b       	std	Y+19, r24	; 0x13
    10fa:	df 91       	pop	r29
    10fc:	cf 91       	pop	r28
    10fe:	08 95       	ret

00001100 <__udivmodhi4>:
    1100:	aa 1b       	sub	r26, r26
    1102:	bb 1b       	sub	r27, r27
    1104:	51 e1       	ldi	r21, 0x11	; 17
    1106:	07 c0       	rjmp	.+14     	; 0x1116 <__udivmodhi4_ep>

00001108 <__udivmodhi4_loop>:
    1108:	aa 1f       	adc	r26, r26
    110a:	bb 1f       	adc	r27, r27
    110c:	a6 17       	cp	r26, r22
    110e:	b7 07       	cpc	r27, r23
    1110:	10 f0       	brcs	.+4      	; 0x1116 <__udivmodhi4_ep>
    1112:	a6 1b       	sub	r26, r22
    1114:	b7 0b       	sbc	r27, r23

00001116 <__udivmodhi4_ep>:
    1116:	88 1f       	adc	r24, r24
    1118:	99 1f       	adc	r25, r25
    111a:	5a 95       	dec	r21
    111c:	a9 f7       	brne	.-22     	; 0x1108 <__udivmodhi4_loop>
    111e:	80 95       	com	r24
    1120:	90 95       	com	r25
    1122:	bc 01       	movw	r22, r24
    1124:	cd 01       	movw	r24, r26
    1126:	08 95       	ret

00001128 <__udivmodsi4>:
    1128:	a1 e2       	ldi	r26, 0x21	; 33
    112a:	1a 2e       	mov	r1, r26
    112c:	aa 1b       	sub	r26, r26
    112e:	bb 1b       	sub	r27, r27
    1130:	fd 01       	movw	r30, r26
    1132:	0d c0       	rjmp	.+26     	; 0x114e <__udivmodsi4_ep>

00001134 <__udivmodsi4_loop>:
    1134:	aa 1f       	adc	r26, r26
    1136:	bb 1f       	adc	r27, r27
    1138:	ee 1f       	adc	r30, r30
    113a:	ff 1f       	adc	r31, r31
    113c:	a2 17       	cp	r26, r18
    113e:	b3 07       	cpc	r27, r19
    1140:	e4 07       	cpc	r30, r20
    1142:	f5 07       	cpc	r31, r21
    1144:	20 f0       	brcs	.+8      	; 0x114e <__udivmodsi4_ep>
    1146:	a2 1b       	sub	r26, r18
    1148:	b3 0b       	sbc	r27, r19
    114a:	e4 0b       	sbc	r30, r20
    114c:	f5 0b       	sbc	r31, r21

0000114e <__udivmodsi4_ep>:
    114e:	66 1f       	adc	r22, r22
    1150:	77 1f       	adc	r23, r23
    1152:	88 1f       	adc	r24, r24
    1154:	99 1f       	adc	r25, r25
    1156:	1a 94       	dec	r1
    1158:	69 f7       	brne	.-38     	; 0x1134 <__udivmodsi4_loop>
    115a:	60 95       	com	r22
    115c:	70 95       	com	r23
    115e:	80 95       	com	r24
    1160:	90 95       	com	r25
    1162:	9b 01       	movw	r18, r22
    1164:	ac 01       	movw	r20, r24
    1166:	bd 01       	movw	r22, r26
    1168:	cf 01       	movw	r24, r30
    116a:	08 95       	ret

0000116c <__divmodsi4>:
    116c:	05 2e       	mov	r0, r21
    116e:	97 fb       	bst	r25, 7
    1170:	1e f4       	brtc	.+6      	; 0x1178 <__divmodsi4+0xc>
    1172:	00 94       	com	r0
    1174:	0e 94 cd 08 	call	0x119a	; 0x119a <__negsi2>
    1178:	57 fd       	sbrc	r21, 7
    117a:	07 d0       	rcall	.+14     	; 0x118a <__divmodsi4_neg2>
    117c:	0e 94 94 08 	call	0x1128	; 0x1128 <__udivmodsi4>
    1180:	07 fc       	sbrc	r0, 7
    1182:	03 d0       	rcall	.+6      	; 0x118a <__divmodsi4_neg2>
    1184:	4e f4       	brtc	.+18     	; 0x1198 <__divmodsi4_exit>
    1186:	0c 94 cd 08 	jmp	0x119a	; 0x119a <__negsi2>

0000118a <__divmodsi4_neg2>:
    118a:	50 95       	com	r21
    118c:	40 95       	com	r20
    118e:	30 95       	com	r19
    1190:	21 95       	neg	r18
    1192:	3f 4f       	sbci	r19, 0xFF	; 255
    1194:	4f 4f       	sbci	r20, 0xFF	; 255
    1196:	5f 4f       	sbci	r21, 0xFF	; 255

00001198 <__divmodsi4_exit>:
    1198:	08 95       	ret

0000119a <__negsi2>:
    119a:	90 95       	com	r25
    119c:	80 95       	com	r24
    119e:	70 95       	com	r23
    11a0:	61 95       	neg	r22
    11a2:	7f 4f       	sbci	r23, 0xFF	; 255
    11a4:	8f 4f       	sbci	r24, 0xFF	; 255
    11a6:	9f 4f       	sbci	r25, 0xFF	; 255
    11a8:	08 95       	ret

000011aa <__tablejump2__>:
    11aa:	ee 0f       	add	r30, r30
    11ac:	ff 1f       	adc	r31, r31
    11ae:	05 90       	lpm	r0, Z+
    11b0:	f4 91       	lpm	r31, Z
    11b2:	e0 2d       	mov	r30, r0
    11b4:	09 94       	ijmp

000011b6 <malloc>:
    11b6:	cf 93       	push	r28
    11b8:	df 93       	push	r29
    11ba:	82 30       	cpi	r24, 0x02	; 2
    11bc:	91 05       	cpc	r25, r1
    11be:	10 f4       	brcc	.+4      	; 0x11c4 <malloc+0xe>
    11c0:	82 e0       	ldi	r24, 0x02	; 2
    11c2:	90 e0       	ldi	r25, 0x00	; 0
    11c4:	e0 91 9a 01 	lds	r30, 0x019A
    11c8:	f0 91 9b 01 	lds	r31, 0x019B
    11cc:	20 e0       	ldi	r18, 0x00	; 0
    11ce:	30 e0       	ldi	r19, 0x00	; 0
    11d0:	c0 e0       	ldi	r28, 0x00	; 0
    11d2:	d0 e0       	ldi	r29, 0x00	; 0
    11d4:	30 97       	sbiw	r30, 0x00	; 0
    11d6:	11 f1       	breq	.+68     	; 0x121c <malloc+0x66>
    11d8:	40 81       	ld	r20, Z
    11da:	51 81       	ldd	r21, Z+1	; 0x01
    11dc:	48 17       	cp	r20, r24
    11de:	59 07       	cpc	r21, r25
    11e0:	c0 f0       	brcs	.+48     	; 0x1212 <malloc+0x5c>
    11e2:	48 17       	cp	r20, r24
    11e4:	59 07       	cpc	r21, r25
    11e6:	61 f4       	brne	.+24     	; 0x1200 <malloc+0x4a>
    11e8:	82 81       	ldd	r24, Z+2	; 0x02
    11ea:	93 81       	ldd	r25, Z+3	; 0x03
    11ec:	20 97       	sbiw	r28, 0x00	; 0
    11ee:	19 f0       	breq	.+6      	; 0x11f6 <malloc+0x40>
    11f0:	9b 83       	std	Y+3, r25	; 0x03
    11f2:	8a 83       	std	Y+2, r24	; 0x02
    11f4:	2b c0       	rjmp	.+86     	; 0x124c <malloc+0x96>
    11f6:	90 93 9b 01 	sts	0x019B, r25
    11fa:	80 93 9a 01 	sts	0x019A, r24
    11fe:	26 c0       	rjmp	.+76     	; 0x124c <malloc+0x96>
    1200:	21 15       	cp	r18, r1
    1202:	31 05       	cpc	r19, r1
    1204:	19 f0       	breq	.+6      	; 0x120c <malloc+0x56>
    1206:	42 17       	cp	r20, r18
    1208:	53 07       	cpc	r21, r19
    120a:	18 f4       	brcc	.+6      	; 0x1212 <malloc+0x5c>
    120c:	9a 01       	movw	r18, r20
    120e:	be 01       	movw	r22, r28
    1210:	df 01       	movw	r26, r30
    1212:	ef 01       	movw	r28, r30
    1214:	02 80       	ldd	r0, Z+2	; 0x02
    1216:	f3 81       	ldd	r31, Z+3	; 0x03
    1218:	e0 2d       	mov	r30, r0
    121a:	dc cf       	rjmp	.-72     	; 0x11d4 <malloc+0x1e>
    121c:	21 15       	cp	r18, r1
    121e:	31 05       	cpc	r19, r1
    1220:	09 f1       	breq	.+66     	; 0x1264 <malloc+0xae>
    1222:	28 1b       	sub	r18, r24
    1224:	39 0b       	sbc	r19, r25
    1226:	24 30       	cpi	r18, 0x04	; 4
    1228:	31 05       	cpc	r19, r1
    122a:	90 f4       	brcc	.+36     	; 0x1250 <malloc+0x9a>
    122c:	12 96       	adiw	r26, 0x02	; 2
    122e:	8d 91       	ld	r24, X+
    1230:	9c 91       	ld	r25, X
    1232:	13 97       	sbiw	r26, 0x03	; 3
    1234:	61 15       	cp	r22, r1
    1236:	71 05       	cpc	r23, r1
    1238:	21 f0       	breq	.+8      	; 0x1242 <malloc+0x8c>
    123a:	fb 01       	movw	r30, r22
    123c:	93 83       	std	Z+3, r25	; 0x03
    123e:	82 83       	std	Z+2, r24	; 0x02
    1240:	04 c0       	rjmp	.+8      	; 0x124a <malloc+0x94>
    1242:	90 93 9b 01 	sts	0x019B, r25
    1246:	80 93 9a 01 	sts	0x019A, r24
    124a:	fd 01       	movw	r30, r26
    124c:	32 96       	adiw	r30, 0x02	; 2
    124e:	44 c0       	rjmp	.+136    	; 0x12d8 <malloc+0x122>
    1250:	fd 01       	movw	r30, r26
    1252:	e2 0f       	add	r30, r18
    1254:	f3 1f       	adc	r31, r19
    1256:	81 93       	st	Z+, r24
    1258:	91 93       	st	Z+, r25
    125a:	22 50       	subi	r18, 0x02	; 2
    125c:	31 09       	sbc	r19, r1
    125e:	2d 93       	st	X+, r18
    1260:	3c 93       	st	X, r19
    1262:	3a c0       	rjmp	.+116    	; 0x12d8 <malloc+0x122>
    1264:	20 91 98 01 	lds	r18, 0x0198
    1268:	30 91 99 01 	lds	r19, 0x0199
    126c:	23 2b       	or	r18, r19
    126e:	41 f4       	brne	.+16     	; 0x1280 <malloc+0xca>
    1270:	20 91 02 01 	lds	r18, 0x0102
    1274:	30 91 03 01 	lds	r19, 0x0103
    1278:	30 93 99 01 	sts	0x0199, r19
    127c:	20 93 98 01 	sts	0x0198, r18
    1280:	20 91 00 01 	lds	r18, 0x0100
    1284:	30 91 01 01 	lds	r19, 0x0101
    1288:	21 15       	cp	r18, r1
    128a:	31 05       	cpc	r19, r1
    128c:	41 f4       	brne	.+16     	; 0x129e <malloc+0xe8>
    128e:	2d b7       	in	r18, 0x3d	; 61
    1290:	3e b7       	in	r19, 0x3e	; 62
    1292:	40 91 04 01 	lds	r20, 0x0104
    1296:	50 91 05 01 	lds	r21, 0x0105
    129a:	24 1b       	sub	r18, r20
    129c:	35 0b       	sbc	r19, r21
    129e:	e0 91 98 01 	lds	r30, 0x0198
    12a2:	f0 91 99 01 	lds	r31, 0x0199
    12a6:	e2 17       	cp	r30, r18
    12a8:	f3 07       	cpc	r31, r19
    12aa:	a0 f4       	brcc	.+40     	; 0x12d4 <malloc+0x11e>
    12ac:	2e 1b       	sub	r18, r30
    12ae:	3f 0b       	sbc	r19, r31
    12b0:	28 17       	cp	r18, r24
    12b2:	39 07       	cpc	r19, r25
    12b4:	78 f0       	brcs	.+30     	; 0x12d4 <malloc+0x11e>
    12b6:	ac 01       	movw	r20, r24
    12b8:	4e 5f       	subi	r20, 0xFE	; 254
    12ba:	5f 4f       	sbci	r21, 0xFF	; 255
    12bc:	24 17       	cp	r18, r20
    12be:	35 07       	cpc	r19, r21
    12c0:	48 f0       	brcs	.+18     	; 0x12d4 <malloc+0x11e>
    12c2:	4e 0f       	add	r20, r30
    12c4:	5f 1f       	adc	r21, r31
    12c6:	50 93 99 01 	sts	0x0199, r21
    12ca:	40 93 98 01 	sts	0x0198, r20
    12ce:	81 93       	st	Z+, r24
    12d0:	91 93       	st	Z+, r25
    12d2:	02 c0       	rjmp	.+4      	; 0x12d8 <malloc+0x122>
    12d4:	e0 e0       	ldi	r30, 0x00	; 0
    12d6:	f0 e0       	ldi	r31, 0x00	; 0
    12d8:	cf 01       	movw	r24, r30
    12da:	df 91       	pop	r29
    12dc:	cf 91       	pop	r28
    12de:	08 95       	ret

000012e0 <free>:
    12e0:	0f 93       	push	r16
    12e2:	1f 93       	push	r17
    12e4:	cf 93       	push	r28
    12e6:	df 93       	push	r29
    12e8:	00 97       	sbiw	r24, 0x00	; 0
    12ea:	09 f4       	brne	.+2      	; 0x12ee <free+0xe>
    12ec:	8c c0       	rjmp	.+280    	; 0x1406 <free+0x126>
    12ee:	fc 01       	movw	r30, r24
    12f0:	32 97       	sbiw	r30, 0x02	; 2
    12f2:	13 82       	std	Z+3, r1	; 0x03
    12f4:	12 82       	std	Z+2, r1	; 0x02
    12f6:	00 91 9a 01 	lds	r16, 0x019A
    12fa:	10 91 9b 01 	lds	r17, 0x019B
    12fe:	01 15       	cp	r16, r1
    1300:	11 05       	cpc	r17, r1
    1302:	81 f4       	brne	.+32     	; 0x1324 <free+0x44>
    1304:	20 81       	ld	r18, Z
    1306:	31 81       	ldd	r19, Z+1	; 0x01
    1308:	82 0f       	add	r24, r18
    130a:	93 1f       	adc	r25, r19
    130c:	20 91 98 01 	lds	r18, 0x0198
    1310:	30 91 99 01 	lds	r19, 0x0199
    1314:	28 17       	cp	r18, r24
    1316:	39 07       	cpc	r19, r25
    1318:	79 f5       	brne	.+94     	; 0x1378 <free+0x98>
    131a:	f0 93 99 01 	sts	0x0199, r31
    131e:	e0 93 98 01 	sts	0x0198, r30
    1322:	71 c0       	rjmp	.+226    	; 0x1406 <free+0x126>
    1324:	d8 01       	movw	r26, r16
    1326:	40 e0       	ldi	r20, 0x00	; 0
    1328:	50 e0       	ldi	r21, 0x00	; 0
    132a:	ae 17       	cp	r26, r30
    132c:	bf 07       	cpc	r27, r31
    132e:	50 f4       	brcc	.+20     	; 0x1344 <free+0x64>
    1330:	12 96       	adiw	r26, 0x02	; 2
    1332:	2d 91       	ld	r18, X+
    1334:	3c 91       	ld	r19, X
    1336:	13 97       	sbiw	r26, 0x03	; 3
    1338:	ad 01       	movw	r20, r26
    133a:	21 15       	cp	r18, r1
    133c:	31 05       	cpc	r19, r1
    133e:	09 f1       	breq	.+66     	; 0x1382 <free+0xa2>
    1340:	d9 01       	movw	r26, r18
    1342:	f3 cf       	rjmp	.-26     	; 0x132a <free+0x4a>
    1344:	9d 01       	movw	r18, r26
    1346:	da 01       	movw	r26, r20
    1348:	33 83       	std	Z+3, r19	; 0x03
    134a:	22 83       	std	Z+2, r18	; 0x02
    134c:	60 81       	ld	r22, Z
    134e:	71 81       	ldd	r23, Z+1	; 0x01
    1350:	86 0f       	add	r24, r22
    1352:	97 1f       	adc	r25, r23
    1354:	82 17       	cp	r24, r18
    1356:	93 07       	cpc	r25, r19
    1358:	69 f4       	brne	.+26     	; 0x1374 <free+0x94>
    135a:	ec 01       	movw	r28, r24
    135c:	28 81       	ld	r18, Y
    135e:	39 81       	ldd	r19, Y+1	; 0x01
    1360:	26 0f       	add	r18, r22
    1362:	37 1f       	adc	r19, r23
    1364:	2e 5f       	subi	r18, 0xFE	; 254
    1366:	3f 4f       	sbci	r19, 0xFF	; 255
    1368:	31 83       	std	Z+1, r19	; 0x01
    136a:	20 83       	st	Z, r18
    136c:	8a 81       	ldd	r24, Y+2	; 0x02
    136e:	9b 81       	ldd	r25, Y+3	; 0x03
    1370:	93 83       	std	Z+3, r25	; 0x03
    1372:	82 83       	std	Z+2, r24	; 0x02
    1374:	45 2b       	or	r20, r21
    1376:	29 f4       	brne	.+10     	; 0x1382 <free+0xa2>
    1378:	f0 93 9b 01 	sts	0x019B, r31
    137c:	e0 93 9a 01 	sts	0x019A, r30
    1380:	42 c0       	rjmp	.+132    	; 0x1406 <free+0x126>
    1382:	13 96       	adiw	r26, 0x03	; 3
    1384:	fc 93       	st	X, r31
    1386:	ee 93       	st	-X, r30
    1388:	12 97       	sbiw	r26, 0x02	; 2
    138a:	ed 01       	movw	r28, r26
    138c:	49 91       	ld	r20, Y+
    138e:	59 91       	ld	r21, Y+
    1390:	9e 01       	movw	r18, r28
    1392:	24 0f       	add	r18, r20
    1394:	35 1f       	adc	r19, r21
    1396:	e2 17       	cp	r30, r18
    1398:	f3 07       	cpc	r31, r19
    139a:	71 f4       	brne	.+28     	; 0x13b8 <free+0xd8>
    139c:	80 81       	ld	r24, Z
    139e:	91 81       	ldd	r25, Z+1	; 0x01
    13a0:	84 0f       	add	r24, r20
    13a2:	95 1f       	adc	r25, r21
    13a4:	02 96       	adiw	r24, 0x02	; 2
    13a6:	11 96       	adiw	r26, 0x01	; 1
    13a8:	9c 93       	st	X, r25
    13aa:	8e 93       	st	-X, r24
    13ac:	82 81       	ldd	r24, Z+2	; 0x02
    13ae:	93 81       	ldd	r25, Z+3	; 0x03
    13b0:	13 96       	adiw	r26, 0x03	; 3
    13b2:	9c 93       	st	X, r25
    13b4:	8e 93       	st	-X, r24
    13b6:	12 97       	sbiw	r26, 0x02	; 2
    13b8:	e0 e0       	ldi	r30, 0x00	; 0
    13ba:	f0 e0       	ldi	r31, 0x00	; 0
    13bc:	d8 01       	movw	r26, r16
    13be:	12 96       	adiw	r26, 0x02	; 2
    13c0:	8d 91       	ld	r24, X+
    13c2:	9c 91       	ld	r25, X
    13c4:	13 97       	sbiw	r26, 0x03	; 3
    13c6:	00 97       	sbiw	r24, 0x00	; 0
    13c8:	19 f0       	breq	.+6      	; 0x13d0 <free+0xf0>
    13ca:	f8 01       	movw	r30, r16
    13cc:	8c 01       	movw	r16, r24
    13ce:	f6 cf       	rjmp	.-20     	; 0x13bc <free+0xdc>
    13d0:	8d 91       	ld	r24, X+
    13d2:	9c 91       	ld	r25, X
    13d4:	98 01       	movw	r18, r16
    13d6:	2e 5f       	subi	r18, 0xFE	; 254
    13d8:	3f 4f       	sbci	r19, 0xFF	; 255
    13da:	82 0f       	add	r24, r18
    13dc:	93 1f       	adc	r25, r19
    13de:	20 91 98 01 	lds	r18, 0x0198
    13e2:	30 91 99 01 	lds	r19, 0x0199
    13e6:	28 17       	cp	r18, r24
    13e8:	39 07       	cpc	r19, r25
    13ea:	69 f4       	brne	.+26     	; 0x1406 <free+0x126>
    13ec:	30 97       	sbiw	r30, 0x00	; 0
    13ee:	29 f4       	brne	.+10     	; 0x13fa <free+0x11a>
    13f0:	10 92 9b 01 	sts	0x019B, r1
    13f4:	10 92 9a 01 	sts	0x019A, r1
    13f8:	02 c0       	rjmp	.+4      	; 0x13fe <free+0x11e>
    13fa:	13 82       	std	Z+3, r1	; 0x03
    13fc:	12 82       	std	Z+2, r1	; 0x02
    13fe:	10 93 99 01 	sts	0x0199, r17
    1402:	00 93 98 01 	sts	0x0198, r16
    1406:	df 91       	pop	r29
    1408:	cf 91       	pop	r28
    140a:	1f 91       	pop	r17
    140c:	0f 91       	pop	r16
    140e:	08 95       	ret

00001410 <__do_global_dtors>:
    1410:	10 e0       	ldi	r17, 0x00	; 0
    1412:	c6 e3       	ldi	r28, 0x36	; 54
    1414:	d0 e0       	ldi	r29, 0x00	; 0
    1416:	04 c0       	rjmp	.+8      	; 0x1420 <__do_global_dtors+0x10>
    1418:	fe 01       	movw	r30, r28
    141a:	0e 94 d5 08 	call	0x11aa	; 0x11aa <__tablejump2__>
    141e:	21 96       	adiw	r28, 0x01	; 1
    1420:	c7 33       	cpi	r28, 0x37	; 55
    1422:	d1 07       	cpc	r29, r17
    1424:	c9 f7       	brne	.-14     	; 0x1418 <__do_global_dtors+0x8>
    1426:	f8 94       	cli

00001428 <__stop_program>:
    1428:	ff cf       	rjmp	.-2      	; 0x1428 <__stop_program>
