
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
      38:	0c 94 79 07 	jmp	0xef2	; 0xef2 <__vector_14>
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
      68:	e0 07       	cpc	r30, r16
      6a:	c1 08       	sbc	r12, r1

0000006c <__ctors_end>:
      6c:	c5 08       	sbc	r12, r5

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
      80:	ec e2       	ldi	r30, 0x2C	; 44
      82:	f5 e1       	ldi	r31, 0x15	; 21
      84:	02 c0       	rjmp	.+4      	; 0x8a <__do_copy_data+0x10>
      86:	05 90       	lpm	r0, Z+
      88:	0d 92       	st	X+, r0
      8a:	ac 35       	cpi	r26, 0x5C	; 92
      8c:	b1 07       	cpc	r27, r17
      8e:	d9 f7       	brne	.-10     	; 0x86 <__do_copy_data+0xc>

00000090 <__do_clear_bss>:
      90:	21 e0       	ldi	r18, 0x01	; 1
      92:	ac e5       	ldi	r26, 0x5C	; 92
      94:	b1 e0       	ldi	r27, 0x01	; 1
      96:	01 c0       	rjmp	.+2      	; 0x9a <.do_clear_bss_start>

00000098 <.do_clear_bss_loop>:
      98:	1d 92       	st	X+, r1

0000009a <.do_clear_bss_start>:
      9a:	a6 3a       	cpi	r26, 0xA6	; 166
      9c:	b2 07       	cpc	r27, r18
      9e:	e1 f7       	brne	.-8      	; 0x98 <.do_clear_bss_loop>

000000a0 <__do_global_ctors>:
      a0:	10 e0       	ldi	r17, 0x00	; 0
      a2:	c6 e3       	ldi	r28, 0x36	; 54
      a4:	d0 e0       	ldi	r29, 0x00	; 0
      a6:	04 c0       	rjmp	.+8      	; 0xb0 <__do_global_ctors+0x10>
      a8:	21 97       	sbiw	r28, 0x01	; 1
      aa:	fe 01       	movw	r30, r28
      ac:	0e 94 56 09 	call	0x12ac	; 0x12ac <__tablejump2__>
      b0:	c4 33       	cpi	r28, 0x34	; 52
      b2:	d1 07       	cpc	r29, r17
      b4:	c9 f7       	brne	.-14     	; 0xa8 <__do_global_ctors+0x8>
      b6:	0e 94 83 03 	call	0x706	; 0x706 <main>
      ba:	0c 94 89 0a 	jmp	0x1512	; 0x1512 <__do_global_dtors>

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
     4a0:	25 e5       	ldi	r18, 0x55	; 85
     4a2:	31 e0       	ldi	r19, 0x01	; 1
     4a4:	fc 01       	movw	r30, r24
     4a6:	31 83       	std	Z+1, r19	; 0x01
     4a8:	20 83       	st	Z, r18
     4aa:	06 96       	adiw	r24, 0x06	; 6
     4ac:	0c 94 cb 08 	jmp	0x1196	; 0x1196 <_ZN16CObjectDetectionD1Ev>

000004b0 <_ZN13CMeassureTaskD0Ev>:
     4b0:	cf 93       	push	r28
     4b2:	df 93       	push	r29
     4b4:	ec 01       	movw	r28, r24
     4b6:	0e 94 50 02 	call	0x4a0	; 0x4a0 <_ZN13CMeassureTaskD1Ev>
     4ba:	ce 01       	movw	r24, r28
     4bc:	df 91       	pop	r29
     4be:	cf 91       	pop	r28
     4c0:	0c 94 f0 06 	jmp	0xde0	; 0xde0 <_ZdlPv>

000004c4 <_ZN13CMeassureTaskclEv>:
     4c4:	cf 92       	push	r12
     4c6:	df 92       	push	r13
     4c8:	ef 92       	push	r14
     4ca:	ff 92       	push	r15
     4cc:	0f 93       	push	r16
     4ce:	1f 93       	push	r17
     4d0:	cf 93       	push	r28
     4d2:	df 93       	push	r29
     4d4:	ec 01       	movw	r28, r24
     4d6:	06 96       	adiw	r24, 0x06	; 6
     4d8:	0e 94 d9 08 	call	0x11b2	; 0x11b2 <_ZN16CObjectDetection7processEv>
     4dc:	89 a1       	ldd	r24, Y+33	; 0x21
     4de:	88 23       	and	r24, r24
     4e0:	09 f4       	brne	.+2      	; 0x4e4 <_ZN13CMeassureTaskclEv+0x20>
     4e2:	41 c0       	rjmp	.+130    	; 0x566 <_ZN13CMeassureTaskclEv+0xa2>
     4e4:	0f 8d       	ldd	r16, Y+31	; 0x1f
     4e6:	18 a1       	ldd	r17, Y+32	; 0x20
     4e8:	0d 8c       	ldd	r0, Y+29	; 0x1d
     4ea:	de 8d       	ldd	r29, Y+30	; 0x1e
     4ec:	c0 2d       	mov	r28, r0
     4ee:	8c e5       	ldi	r24, 0x5C	; 92
     4f0:	91 e0       	ldi	r25, 0x01	; 1
     4f2:	0e 94 5a 07 	call	0xeb4	; 0xeb4 <_ZN8CRTTimer8get_timeEv>
     4f6:	6b 01       	movw	r12, r22
     4f8:	7c 01       	movw	r14, r24
     4fa:	66 e0       	ldi	r22, 0x06	; 6
     4fc:	71 e0       	ldi	r23, 0x01	; 1
     4fe:	81 ea       	ldi	r24, 0xA1	; 161
     500:	91 e0       	ldi	r25, 0x01	; 1
     502:	0e 94 e4 07 	call	0xfc8	; 0xfc8 <_ZN9CTerminal4putsEPKc>
     506:	b7 01       	movw	r22, r14
     508:	a6 01       	movw	r20, r12
     50a:	81 ea       	ldi	r24, 0xA1	; 161
     50c:	91 e0       	ldi	r25, 0x01	; 1
     50e:	0e 94 75 08 	call	0x10ea	; 0x10ea <_ZN9CTerminal5putuiEm>
     512:	68 e1       	ldi	r22, 0x18	; 24
     514:	71 e0       	ldi	r23, 0x01	; 1
     516:	81 ea       	ldi	r24, 0xA1	; 161
     518:	91 e0       	ldi	r25, 0x01	; 1
     51a:	0e 94 e4 07 	call	0xfc8	; 0xfc8 <_ZN9CTerminal4putsEPKc>
     51e:	ae 01       	movw	r20, r28
     520:	dd 0f       	add	r29, r29
     522:	66 0b       	sbc	r22, r22
     524:	77 0b       	sbc	r23, r23
     526:	81 ea       	ldi	r24, 0xA1	; 161
     528:	91 e0       	ldi	r25, 0x01	; 1
     52a:	0e 94 08 08 	call	0x1010	; 0x1010 <_ZN9CTerminal4putiEl>
     52e:	68 e1       	ldi	r22, 0x18	; 24
     530:	71 e0       	ldi	r23, 0x01	; 1
     532:	81 ea       	ldi	r24, 0xA1	; 161
     534:	91 e0       	ldi	r25, 0x01	; 1
     536:	0e 94 e4 07 	call	0xfc8	; 0xfc8 <_ZN9CTerminal4putsEPKc>
     53a:	a8 01       	movw	r20, r16
     53c:	11 0f       	add	r17, r17
     53e:	66 0b       	sbc	r22, r22
     540:	77 0b       	sbc	r23, r23
     542:	81 ea       	ldi	r24, 0xA1	; 161
     544:	91 e0       	ldi	r25, 0x01	; 1
     546:	0e 94 08 08 	call	0x1010	; 0x1010 <_ZN9CTerminal4putiEl>
     54a:	67 e3       	ldi	r22, 0x37	; 55
     54c:	71 e0       	ldi	r23, 0x01	; 1
     54e:	81 ea       	ldi	r24, 0xA1	; 161
     550:	91 e0       	ldi	r25, 0x01	; 1
     552:	df 91       	pop	r29
     554:	cf 91       	pop	r28
     556:	1f 91       	pop	r17
     558:	0f 91       	pop	r16
     55a:	ff 90       	pop	r15
     55c:	ef 90       	pop	r14
     55e:	df 90       	pop	r13
     560:	cf 90       	pop	r12
     562:	0c 94 e4 07 	jmp	0xfc8	; 0xfc8 <_ZN9CTerminal4putsEPKc>
     566:	df 91       	pop	r29
     568:	cf 91       	pop	r28
     56a:	1f 91       	pop	r17
     56c:	0f 91       	pop	r16
     56e:	ff 90       	pop	r15
     570:	ef 90       	pop	r14
     572:	df 90       	pop	r13
     574:	cf 90       	pop	r12
     576:	08 95       	ret

00000578 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>:
     578:	88 23       	and	r24, r24
     57a:	21 f0       	breq	.+8      	; 0x584 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3+0xc>
     57c:	3d 98       	cbi	0x07, 5	; 7
     57e:	82 30       	cpi	r24, 0x02	; 2
     580:	19 f0       	breq	.+6      	; 0x588 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3+0x10>
     582:	08 95       	ret
     584:	3d 9a       	sbi	0x07, 5	; 7
     586:	08 95       	ret
     588:	45 9a       	sbi	0x08, 5	; 8
     58a:	08 95       	ret

0000058c <_ZN4TI2CILh2ELh0ELh5ELh1ELh2EE5delayEv.isra.7>:
     58c:	00 00       	nop
     58e:	08 95       	ret

00000590 <_ZN4TI2CILh2ELh0ELh5ELh1ELh2EE4readEh>:
     590:	1f 93       	push	r17
     592:	cf 93       	push	r28
     594:	df 93       	push	r29
     596:	16 2f       	mov	r17, r22
     598:	38 98       	cbi	0x07, 0	; 7
     59a:	80 e0       	ldi	r24, 0x00	; 0
     59c:	0e 94 bc 02 	call	0x578	; 0x578 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
     5a0:	0e 94 c6 02 	call	0x58c	; 0x58c <_ZN4TI2CILh2ELh0ELh5ELh1ELh2EE5delayEv.isra.7>
     5a4:	d8 e0       	ldi	r29, 0x08	; 8
     5a6:	c0 e0       	ldi	r28, 0x00	; 0
     5a8:	cc 0f       	add	r28, r28
     5aa:	81 e0       	ldi	r24, 0x01	; 1
     5ac:	0e 94 bc 02 	call	0x578	; 0x578 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
     5b0:	0e 94 c6 02 	call	0x58c	; 0x58c <_ZN4TI2CILh2ELh0ELh5ELh1ELh2EE5delayEv.isra.7>
     5b4:	30 99       	sbic	0x06, 0	; 6
     5b6:	c1 60       	ori	r28, 0x01	; 1
     5b8:	80 e0       	ldi	r24, 0x00	; 0
     5ba:	0e 94 bc 02 	call	0x578	; 0x578 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
     5be:	0e 94 c6 02 	call	0x58c	; 0x58c <_ZN4TI2CILh2ELh0ELh5ELh1ELh2EE5delayEv.isra.7>
     5c2:	d1 50       	subi	r29, 0x01	; 1
     5c4:	89 f7       	brne	.-30     	; 0x5a8 <_ZN4TI2CILh2ELh0ELh5ELh1ELh2EE4readEh+0x18>
     5c6:	11 23       	and	r17, r17
     5c8:	11 f0       	breq	.+4      	; 0x5ce <_ZN4TI2CILh2ELh0ELh5ELh1ELh2EE4readEh+0x3e>
     5ca:	38 9a       	sbi	0x07, 0	; 7
     5cc:	01 c0       	rjmp	.+2      	; 0x5d0 <_ZN4TI2CILh2ELh0ELh5ELh1ELh2EE4readEh+0x40>
     5ce:	38 98       	cbi	0x07, 0	; 7
     5d0:	0e 94 c6 02 	call	0x58c	; 0x58c <_ZN4TI2CILh2ELh0ELh5ELh1ELh2EE5delayEv.isra.7>
     5d4:	81 e0       	ldi	r24, 0x01	; 1
     5d6:	0e 94 bc 02 	call	0x578	; 0x578 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
     5da:	0e 94 c6 02 	call	0x58c	; 0x58c <_ZN4TI2CILh2ELh0ELh5ELh1ELh2EE5delayEv.isra.7>
     5de:	80 e0       	ldi	r24, 0x00	; 0
     5e0:	0e 94 bc 02 	call	0x578	; 0x578 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
     5e4:	0e 94 c6 02 	call	0x58c	; 0x58c <_ZN4TI2CILh2ELh0ELh5ELh1ELh2EE5delayEv.isra.7>
     5e8:	38 98       	cbi	0x07, 0	; 7
     5ea:	0e 94 c6 02 	call	0x58c	; 0x58c <_ZN4TI2CILh2ELh0ELh5ELh1ELh2EE5delayEv.isra.7>
     5ee:	8c 2f       	mov	r24, r28
     5f0:	df 91       	pop	r29
     5f2:	cf 91       	pop	r28
     5f4:	1f 91       	pop	r17
     5f6:	08 95       	ret

000005f8 <_ZN4TI2CILh2ELh0ELh5ELh1ELh2EE5writeEh>:
     5f8:	cf 93       	push	r28
     5fa:	df 93       	push	r29
     5fc:	d6 2f       	mov	r29, r22
     5fe:	c8 e0       	ldi	r28, 0x08	; 8
     600:	80 e0       	ldi	r24, 0x00	; 0
     602:	0e 94 bc 02 	call	0x578	; 0x578 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
     606:	0e 94 c6 02 	call	0x58c	; 0x58c <_ZN4TI2CILh2ELh0ELh5ELh1ELh2EE5delayEv.isra.7>
     60a:	d7 ff       	sbrs	r29, 7
     60c:	02 c0       	rjmp	.+4      	; 0x612 <_ZN4TI2CILh2ELh0ELh5ELh1ELh2EE5writeEh+0x1a>
     60e:	38 98       	cbi	0x07, 0	; 7
     610:	01 c0       	rjmp	.+2      	; 0x614 <_ZN4TI2CILh2ELh0ELh5ELh1ELh2EE5writeEh+0x1c>
     612:	38 9a       	sbi	0x07, 0	; 7
     614:	0e 94 c6 02 	call	0x58c	; 0x58c <_ZN4TI2CILh2ELh0ELh5ELh1ELh2EE5delayEv.isra.7>
     618:	81 e0       	ldi	r24, 0x01	; 1
     61a:	0e 94 bc 02 	call	0x578	; 0x578 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
     61e:	0e 94 c6 02 	call	0x58c	; 0x58c <_ZN4TI2CILh2ELh0ELh5ELh1ELh2EE5delayEv.isra.7>
     622:	dd 0f       	add	r29, r29
     624:	c1 50       	subi	r28, 0x01	; 1
     626:	61 f7       	brne	.-40     	; 0x600 <_ZN4TI2CILh2ELh0ELh5ELh1ELh2EE5writeEh+0x8>
     628:	80 e0       	ldi	r24, 0x00	; 0
     62a:	0e 94 bc 02 	call	0x578	; 0x578 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
     62e:	0e 94 c6 02 	call	0x58c	; 0x58c <_ZN4TI2CILh2ELh0ELh5ELh1ELh2EE5delayEv.isra.7>
     632:	38 98       	cbi	0x07, 0	; 7
     634:	0e 94 c6 02 	call	0x58c	; 0x58c <_ZN4TI2CILh2ELh0ELh5ELh1ELh2EE5delayEv.isra.7>
     638:	81 e0       	ldi	r24, 0x01	; 1
     63a:	0e 94 bc 02 	call	0x578	; 0x578 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
     63e:	0e 94 c6 02 	call	0x58c	; 0x58c <_ZN4TI2CILh2ELh0ELh5ELh1ELh2EE5delayEv.isra.7>
     642:	c6 b1       	in	r28, 0x06	; 6
     644:	c0 95       	com	r28
     646:	c1 70       	andi	r28, 0x01	; 1
     648:	80 e0       	ldi	r24, 0x00	; 0
     64a:	0e 94 bc 02 	call	0x578	; 0x578 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
     64e:	0e 94 c6 02 	call	0x58c	; 0x58c <_ZN4TI2CILh2ELh0ELh5ELh1ELh2EE5delayEv.isra.7>
     652:	8c 2f       	mov	r24, r28
     654:	df 91       	pop	r29
     656:	cf 91       	pop	r28
     658:	08 95       	ret

0000065a <_ZN4TI2CILh2ELh0ELh5ELh1ELh2EE5startEv>:
     65a:	81 e0       	ldi	r24, 0x01	; 1
     65c:	0e 94 bc 02 	call	0x578	; 0x578 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
     660:	38 98       	cbi	0x07, 0	; 7
     662:	81 e0       	ldi	r24, 0x01	; 1
     664:	0e 94 bc 02 	call	0x578	; 0x578 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
     668:	38 9a       	sbi	0x07, 0	; 7
     66a:	80 e0       	ldi	r24, 0x00	; 0
     66c:	0e 94 bc 02 	call	0x578	; 0x578 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
     670:	38 98       	cbi	0x07, 0	; 7
     672:	0c 94 c6 02 	jmp	0x58c	; 0x58c <_ZN4TI2CILh2ELh0ELh5ELh1ELh2EE5delayEv.isra.7>

00000676 <_ZN4TI2CILh2ELh0ELh5ELh1ELh2EE4stopEv>:
     676:	80 e0       	ldi	r24, 0x00	; 0
     678:	0e 94 bc 02 	call	0x578	; 0x578 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
     67c:	38 9a       	sbi	0x07, 0	; 7
     67e:	81 e0       	ldi	r24, 0x01	; 1
     680:	0e 94 bc 02 	call	0x578	; 0x578 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
     684:	38 9a       	sbi	0x07, 0	; 7
     686:	81 e0       	ldi	r24, 0x01	; 1
     688:	0e 94 bc 02 	call	0x578	; 0x578 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
     68c:	38 98       	cbi	0x07, 0	; 7
     68e:	0c 94 c6 02 	jmp	0x58c	; 0x58c <_ZN4TI2CILh2ELh0ELh5ELh1ELh2EE5delayEv.isra.7>

00000692 <_ZN13CMeassureTaskC1Ev>:
     692:	0f 93       	push	r16
     694:	1f 93       	push	r17
     696:	cf 93       	push	r28
     698:	df 93       	push	r29
     69a:	ec 01       	movw	r28, r24
     69c:	85 e5       	ldi	r24, 0x55	; 85
     69e:	91 e0       	ldi	r25, 0x01	; 1
     6a0:	99 83       	std	Y+1, r25	; 0x01
     6a2:	88 83       	st	Y, r24
     6a4:	8d e3       	ldi	r24, 0x3D	; 61
     6a6:	91 e0       	ldi	r25, 0x01	; 1
     6a8:	9b 83       	std	Y+3, r25	; 0x03
     6aa:	8a 83       	std	Y+2, r24	; 0x02
     6ac:	38 98       	cbi	0x07, 0	; 7
     6ae:	81 e0       	ldi	r24, 0x01	; 1
     6b0:	0e 94 bc 02 	call	0x578	; 0x578 <_ZN5TGpioILh2ELh5ELh1EE8set_modeEh.isra.3>
     6b4:	40 98       	cbi	0x08, 0	; 8
     6b6:	45 98       	cbi	0x08, 5	; 8
     6b8:	8e 01       	movw	r16, r28
     6ba:	0a 5f       	subi	r16, 0xFA	; 250
     6bc:	1f 4f       	sbci	r17, 0xFF	; 255
     6be:	c8 01       	movw	r24, r16
     6c0:	0e 94 c9 08 	call	0x1192	; 0x1192 <_ZN16CObjectDetectionC1Ev>
     6c4:	be 01       	movw	r22, r28
     6c6:	6e 5f       	subi	r22, 0xFE	; 254
     6c8:	7f 4f       	sbci	r23, 0xFF	; 255
     6ca:	c8 01       	movw	r24, r16
     6cc:	0e 94 cd 08 	call	0x119a	; 0x119a <_ZN16CObjectDetection4initEP14CI2C_Interface>
     6d0:	8c 01       	movw	r16, r24
     6d2:	1b a2       	std	Y+35, r1	; 0x23
     6d4:	1a a2       	std	Y+34, r1	; 0x22
     6d6:	6a e1       	ldi	r22, 0x1A	; 26
     6d8:	71 e0       	ldi	r23, 0x01	; 1
     6da:	81 ea       	ldi	r24, 0xA1	; 161
     6dc:	91 e0       	ldi	r25, 0x01	; 1
     6de:	0e 94 e4 07 	call	0xfc8	; 0xfc8 <_ZN9CTerminal4putsEPKc>
     6e2:	a8 01       	movw	r20, r16
     6e4:	11 0f       	add	r17, r17
     6e6:	66 0b       	sbc	r22, r22
     6e8:	77 0b       	sbc	r23, r23
     6ea:	81 ea       	ldi	r24, 0xA1	; 161
     6ec:	91 e0       	ldi	r25, 0x01	; 1
     6ee:	0e 94 08 08 	call	0x1010	; 0x1010 <_ZN9CTerminal4putiEl>
     6f2:	67 e3       	ldi	r22, 0x37	; 55
     6f4:	71 e0       	ldi	r23, 0x01	; 1
     6f6:	81 ea       	ldi	r24, 0xA1	; 161
     6f8:	91 e0       	ldi	r25, 0x01	; 1
     6fa:	df 91       	pop	r29
     6fc:	cf 91       	pop	r28
     6fe:	1f 91       	pop	r17
     700:	0f 91       	pop	r16
     702:	0c 94 e4 07 	jmp	0xfc8	; 0xfc8 <_ZN9CTerminal4putsEPKc>

00000706 <main>:
     706:	cf 93       	push	r28
     708:	df 93       	push	r29
     70a:	cd b7       	in	r28, 0x3d	; 61
     70c:	de b7       	in	r29, 0x3e	; 62
     70e:	a4 97       	sbiw	r28, 0x24	; 36
     710:	0f b6       	in	r0, 0x3f	; 63
     712:	f8 94       	cli
     714:	de bf       	out	0x3e, r29	; 62
     716:	0f be       	out	0x3f, r0	; 63
     718:	cd bf       	out	0x3d, r28	; 61
     71a:	67 e2       	ldi	r22, 0x27	; 39
     71c:	71 e0       	ldi	r23, 0x01	; 1
     71e:	81 ea       	ldi	r24, 0xA1	; 161
     720:	91 e0       	ldi	r25, 0x01	; 1
     722:	0e 94 e4 07 	call	0xfc8	; 0xfc8 <_ZN9CTerminal4putsEPKc>
     726:	ce 01       	movw	r24, r28
     728:	01 96       	adiw	r24, 0x01	; 1
     72a:	0e 94 49 03 	call	0x692	; 0x692 <_ZN13CMeassureTaskC1Ev>
     72e:	20 e0       	ldi	r18, 0x00	; 0
     730:	4a e0       	ldi	r20, 0x0A	; 10
     732:	50 e0       	ldi	r21, 0x00	; 0
     734:	be 01       	movw	r22, r28
     736:	6f 5f       	subi	r22, 0xFF	; 255
     738:	7f 4f       	sbci	r23, 0xFF	; 255
     73a:	8c e5       	ldi	r24, 0x5C	; 92
     73c:	91 e0       	ldi	r25, 0x01	; 1
     73e:	0e 94 17 07 	call	0xe2e	; 0xe2e <_ZN8CRTTimer8add_taskEP14CTaskInterfacejb>
     742:	8c e5       	ldi	r24, 0x5C	; 92
     744:	91 e0       	ldi	r25, 0x01	; 1
     746:	0e 94 3a 07 	call	0xe74	; 0xe74 <_ZN8CRTTimer4mainEv>
     74a:	fb cf       	rjmp	.-10     	; 0x742 <main+0x3c>

0000074c <_ZN8CVL53L0XC1Ev>:
     74c:	08 95       	ret

0000074e <_ZN8CVL53L0XD1Ev>:
     74e:	08 95       	ret

00000750 <_ZN8CVL53L0X4readEv>:
     750:	0f 93       	push	r16
     752:	1f 93       	push	r17
     754:	cf 93       	push	r28
     756:	df 93       	push	r29
     758:	ec 01       	movw	r28, r24
     75a:	89 89       	ldd	r24, Y+17	; 0x11
     75c:	9a 89       	ldd	r25, Y+18	; 0x12
     75e:	dc 01       	movw	r26, r24
     760:	ed 91       	ld	r30, X+
     762:	fc 91       	ld	r31, X
     764:	00 84       	ldd	r0, Z+8	; 0x08
     766:	f1 85       	ldd	r31, Z+9	; 0x09
     768:	e0 2d       	mov	r30, r0
     76a:	21 e0       	ldi	r18, 0x01	; 1
     76c:	4b e0       	ldi	r20, 0x0B	; 11
     76e:	62 e5       	ldi	r22, 0x52	; 82
     770:	09 95       	icall
     772:	89 89       	ldd	r24, Y+17	; 0x11
     774:	9a 89       	ldd	r25, Y+18	; 0x12
     776:	dc 01       	movw	r26, r24
     778:	ed 91       	ld	r30, X+
     77a:	fc 91       	ld	r31, X
     77c:	9e 01       	movw	r18, r28
     77e:	2d 5f       	subi	r18, 0xFD	; 253
     780:	3f 4f       	sbci	r19, 0xFF	; 255
     782:	02 88       	ldd	r0, Z+18	; 0x12
     784:	f3 89       	ldd	r31, Z+19	; 0x13
     786:	e0 2d       	mov	r30, r0
     788:	0e e0       	ldi	r16, 0x0E	; 14
     78a:	10 e0       	ldi	r17, 0x00	; 0
     78c:	44 e1       	ldi	r20, 0x14	; 20
     78e:	62 e5       	ldi	r22, 0x52	; 82
     790:	09 95       	icall
     792:	8d 85       	ldd	r24, Y+13	; 0x0d
     794:	90 e0       	ldi	r25, 0x00	; 0
     796:	98 2f       	mov	r25, r24
     798:	88 27       	eor	r24, r24
     79a:	2e 85       	ldd	r18, Y+14	; 0x0e
     79c:	82 2b       	or	r24, r18
     79e:	1a 82       	std	Y+2, r1	; 0x02
     7a0:	9c 01       	movw	r18, r24
     7a2:	24 51       	subi	r18, 0x14	; 20
     7a4:	31 09       	sbc	r19, r1
     7a6:	21 3e       	cpi	r18, 0xE1	; 225
     7a8:	31 40       	sbci	r19, 0x01	; 1
     7aa:	20 f4       	brcc	.+8      	; 0x7b4 <_ZN8CVL53L0X4readEv+0x64>
     7ac:	99 83       	std	Y+1, r25	; 0x01
     7ae:	88 83       	st	Y, r24
     7b0:	81 e0       	ldi	r24, 0x01	; 1
     7b2:	8a 83       	std	Y+2, r24	; 0x02
     7b4:	88 81       	ld	r24, Y
     7b6:	99 81       	ldd	r25, Y+1	; 0x01
     7b8:	df 91       	pop	r29
     7ba:	cf 91       	pop	r28
     7bc:	1f 91       	pop	r17
     7be:	0f 91       	pop	r16
     7c0:	08 95       	ret

000007c2 <_ZN8CVL53L0X12get_distanceEv>:
     7c2:	fc 01       	movw	r30, r24
     7c4:	80 81       	ld	r24, Z
     7c6:	91 81       	ldd	r25, Z+1	; 0x01
     7c8:	08 95       	ret

000007ca <_ZN8CVL53L0X11getSPADinfoEPhPb>:
     7ca:	af 92       	push	r10
     7cc:	bf 92       	push	r11
     7ce:	cf 92       	push	r12
     7d0:	df 92       	push	r13
     7d2:	ef 92       	push	r14
     7d4:	ff 92       	push	r15
     7d6:	0f 93       	push	r16
     7d8:	1f 93       	push	r17
     7da:	cf 93       	push	r28
     7dc:	df 93       	push	r29
     7de:	ec 01       	movw	r28, r24
     7e0:	8b 01       	movw	r16, r22
     7e2:	5a 01       	movw	r10, r20
     7e4:	db 01       	movw	r26, r22
     7e6:	1c 92       	st	X, r1
     7e8:	89 89       	ldd	r24, Y+17	; 0x11
     7ea:	9a 89       	ldd	r25, Y+18	; 0x12
     7ec:	dc 01       	movw	r26, r24
     7ee:	ed 91       	ld	r30, X+
     7f0:	fc 91       	ld	r31, X
     7f2:	00 84       	ldd	r0, Z+8	; 0x08
     7f4:	f1 85       	ldd	r31, Z+9	; 0x09
     7f6:	e0 2d       	mov	r30, r0
     7f8:	21 e0       	ldi	r18, 0x01	; 1
     7fa:	40 e8       	ldi	r20, 0x80	; 128
     7fc:	62 e5       	ldi	r22, 0x52	; 82
     7fe:	09 95       	icall
     800:	89 89       	ldd	r24, Y+17	; 0x11
     802:	9a 89       	ldd	r25, Y+18	; 0x12
     804:	dc 01       	movw	r26, r24
     806:	ed 91       	ld	r30, X+
     808:	fc 91       	ld	r31, X
     80a:	00 84       	ldd	r0, Z+8	; 0x08
     80c:	f1 85       	ldd	r31, Z+9	; 0x09
     80e:	e0 2d       	mov	r30, r0
     810:	21 e0       	ldi	r18, 0x01	; 1
     812:	4f ef       	ldi	r20, 0xFF	; 255
     814:	62 e5       	ldi	r22, 0x52	; 82
     816:	09 95       	icall
     818:	89 89       	ldd	r24, Y+17	; 0x11
     81a:	9a 89       	ldd	r25, Y+18	; 0x12
     81c:	dc 01       	movw	r26, r24
     81e:	ed 91       	ld	r30, X+
     820:	fc 91       	ld	r31, X
     822:	00 84       	ldd	r0, Z+8	; 0x08
     824:	f1 85       	ldd	r31, Z+9	; 0x09
     826:	e0 2d       	mov	r30, r0
     828:	20 e0       	ldi	r18, 0x00	; 0
     82a:	40 e0       	ldi	r20, 0x00	; 0
     82c:	62 e5       	ldi	r22, 0x52	; 82
     82e:	09 95       	icall
     830:	89 89       	ldd	r24, Y+17	; 0x11
     832:	9a 89       	ldd	r25, Y+18	; 0x12
     834:	dc 01       	movw	r26, r24
     836:	ed 91       	ld	r30, X+
     838:	fc 91       	ld	r31, X
     83a:	00 84       	ldd	r0, Z+8	; 0x08
     83c:	f1 85       	ldd	r31, Z+9	; 0x09
     83e:	e0 2d       	mov	r30, r0
     840:	26 e0       	ldi	r18, 0x06	; 6
     842:	4f ef       	ldi	r20, 0xFF	; 255
     844:	62 e5       	ldi	r22, 0x52	; 82
     846:	09 95       	icall
     848:	89 89       	ldd	r24, Y+17	; 0x11
     84a:	9a 89       	ldd	r25, Y+18	; 0x12
     84c:	fc 01       	movw	r30, r24
     84e:	a0 81       	ld	r26, Z
     850:	b1 81       	ldd	r27, Z+1	; 0x01
     852:	18 96       	adiw	r26, 0x08	; 8
     854:	ed 90       	ld	r14, X+
     856:	fc 90       	ld	r15, X
     858:	19 97       	sbiw	r26, 0x09	; 9
     85a:	1e 96       	adiw	r26, 0x0e	; 14
     85c:	ed 91       	ld	r30, X+
     85e:	fc 91       	ld	r31, X
     860:	1f 97       	sbiw	r26, 0x0f	; 15
     862:	43 e8       	ldi	r20, 0x83	; 131
     864:	62 e5       	ldi	r22, 0x52	; 82
     866:	09 95       	icall
     868:	28 2f       	mov	r18, r24
     86a:	24 60       	ori	r18, 0x04	; 4
     86c:	43 e8       	ldi	r20, 0x83	; 131
     86e:	62 e5       	ldi	r22, 0x52	; 82
     870:	89 89       	ldd	r24, Y+17	; 0x11
     872:	9a 89       	ldd	r25, Y+18	; 0x12
     874:	f7 01       	movw	r30, r14
     876:	09 95       	icall
     878:	89 89       	ldd	r24, Y+17	; 0x11
     87a:	9a 89       	ldd	r25, Y+18	; 0x12
     87c:	dc 01       	movw	r26, r24
     87e:	ed 91       	ld	r30, X+
     880:	fc 91       	ld	r31, X
     882:	00 84       	ldd	r0, Z+8	; 0x08
     884:	f1 85       	ldd	r31, Z+9	; 0x09
     886:	e0 2d       	mov	r30, r0
     888:	27 e0       	ldi	r18, 0x07	; 7
     88a:	4f ef       	ldi	r20, 0xFF	; 255
     88c:	62 e5       	ldi	r22, 0x52	; 82
     88e:	09 95       	icall
     890:	89 89       	ldd	r24, Y+17	; 0x11
     892:	9a 89       	ldd	r25, Y+18	; 0x12
     894:	dc 01       	movw	r26, r24
     896:	ed 91       	ld	r30, X+
     898:	fc 91       	ld	r31, X
     89a:	00 84       	ldd	r0, Z+8	; 0x08
     89c:	f1 85       	ldd	r31, Z+9	; 0x09
     89e:	e0 2d       	mov	r30, r0
     8a0:	21 e0       	ldi	r18, 0x01	; 1
     8a2:	41 e8       	ldi	r20, 0x81	; 129
     8a4:	62 e5       	ldi	r22, 0x52	; 82
     8a6:	09 95       	icall
     8a8:	89 89       	ldd	r24, Y+17	; 0x11
     8aa:	9a 89       	ldd	r25, Y+18	; 0x12
     8ac:	dc 01       	movw	r26, r24
     8ae:	ed 91       	ld	r30, X+
     8b0:	fc 91       	ld	r31, X
     8b2:	00 84       	ldd	r0, Z+8	; 0x08
     8b4:	f1 85       	ldd	r31, Z+9	; 0x09
     8b6:	e0 2d       	mov	r30, r0
     8b8:	21 e0       	ldi	r18, 0x01	; 1
     8ba:	40 e8       	ldi	r20, 0x80	; 128
     8bc:	62 e5       	ldi	r22, 0x52	; 82
     8be:	09 95       	icall
     8c0:	89 89       	ldd	r24, Y+17	; 0x11
     8c2:	9a 89       	ldd	r25, Y+18	; 0x12
     8c4:	dc 01       	movw	r26, r24
     8c6:	ed 91       	ld	r30, X+
     8c8:	fc 91       	ld	r31, X
     8ca:	00 84       	ldd	r0, Z+8	; 0x08
     8cc:	f1 85       	ldd	r31, Z+9	; 0x09
     8ce:	e0 2d       	mov	r30, r0
     8d0:	2b e6       	ldi	r18, 0x6B	; 107
     8d2:	44 e9       	ldi	r20, 0x94	; 148
     8d4:	62 e5       	ldi	r22, 0x52	; 82
     8d6:	09 95       	icall
     8d8:	89 89       	ldd	r24, Y+17	; 0x11
     8da:	9a 89       	ldd	r25, Y+18	; 0x12
     8dc:	dc 01       	movw	r26, r24
     8de:	ed 91       	ld	r30, X+
     8e0:	fc 91       	ld	r31, X
     8e2:	00 84       	ldd	r0, Z+8	; 0x08
     8e4:	f1 85       	ldd	r31, Z+9	; 0x09
     8e6:	e0 2d       	mov	r30, r0
     8e8:	20 e0       	ldi	r18, 0x00	; 0
     8ea:	43 e8       	ldi	r20, 0x83	; 131
     8ec:	62 e5       	ldi	r22, 0x52	; 82
     8ee:	09 95       	icall
     8f0:	81 e4       	ldi	r24, 0x41	; 65
     8f2:	c8 2e       	mov	r12, r24
     8f4:	82 e4       	ldi	r24, 0x42	; 66
     8f6:	d8 2e       	mov	r13, r24
     8f8:	8f e0       	ldi	r24, 0x0F	; 15
     8fa:	e8 2e       	mov	r14, r24
     8fc:	f1 2c       	mov	r15, r1
     8fe:	89 89       	ldd	r24, Y+17	; 0x11
     900:	9a 89       	ldd	r25, Y+18	; 0x12
     902:	dc 01       	movw	r26, r24
     904:	ed 91       	ld	r30, X+
     906:	fc 91       	ld	r31, X
     908:	06 84       	ldd	r0, Z+14	; 0x0e
     90a:	f7 85       	ldd	r31, Z+15	; 0x0f
     90c:	e0 2d       	mov	r30, r0
     90e:	43 e8       	ldi	r20, 0x83	; 131
     910:	62 e5       	ldi	r22, 0x52	; 82
     912:	09 95       	icall
     914:	81 11       	cpse	r24, r1
     916:	08 c0       	rjmp	.+16     	; 0x928 <__stack+0x29>
     918:	b1 e0       	ldi	r27, 0x01	; 1
     91a:	cb 1a       	sub	r12, r27
     91c:	d1 08       	sbc	r13, r1
     91e:	e1 08       	sbc	r14, r1
     920:	f1 08       	sbc	r15, r1
     922:	69 f7       	brne	.-38     	; 0x8fe <_ZN8CVL53L0X11getSPADinfoEPhPb+0x134>
     924:	80 e0       	ldi	r24, 0x00	; 0
     926:	81 c0       	rjmp	.+258    	; 0xa2a <__stack+0x12b>
     928:	89 89       	ldd	r24, Y+17	; 0x11
     92a:	9a 89       	ldd	r25, Y+18	; 0x12
     92c:	dc 01       	movw	r26, r24
     92e:	ed 91       	ld	r30, X+
     930:	fc 91       	ld	r31, X
     932:	00 84       	ldd	r0, Z+8	; 0x08
     934:	f1 85       	ldd	r31, Z+9	; 0x09
     936:	e0 2d       	mov	r30, r0
     938:	21 e0       	ldi	r18, 0x01	; 1
     93a:	43 e8       	ldi	r20, 0x83	; 131
     93c:	62 e5       	ldi	r22, 0x52	; 82
     93e:	09 95       	icall
     940:	89 89       	ldd	r24, Y+17	; 0x11
     942:	9a 89       	ldd	r25, Y+18	; 0x12
     944:	dc 01       	movw	r26, r24
     946:	ed 91       	ld	r30, X+
     948:	fc 91       	ld	r31, X
     94a:	06 84       	ldd	r0, Z+14	; 0x0e
     94c:	f7 85       	ldd	r31, Z+15	; 0x0f
     94e:	e0 2d       	mov	r30, r0
     950:	42 e9       	ldi	r20, 0x92	; 146
     952:	62 e5       	ldi	r22, 0x52	; 82
     954:	09 95       	icall
     956:	98 2f       	mov	r25, r24
     958:	9f 77       	andi	r25, 0x7F	; 127
     95a:	f8 01       	movw	r30, r16
     95c:	90 83       	st	Z, r25
     95e:	98 2f       	mov	r25, r24
     960:	99 1f       	adc	r25, r25
     962:	99 27       	eor	r25, r25
     964:	99 1f       	adc	r25, r25
     966:	d5 01       	movw	r26, r10
     968:	9c 93       	st	X, r25
     96a:	89 89       	ldd	r24, Y+17	; 0x11
     96c:	9a 89       	ldd	r25, Y+18	; 0x12
     96e:	dc 01       	movw	r26, r24
     970:	ed 91       	ld	r30, X+
     972:	fc 91       	ld	r31, X
     974:	00 84       	ldd	r0, Z+8	; 0x08
     976:	f1 85       	ldd	r31, Z+9	; 0x09
     978:	e0 2d       	mov	r30, r0
     97a:	20 e0       	ldi	r18, 0x00	; 0
     97c:	41 e8       	ldi	r20, 0x81	; 129
     97e:	62 e5       	ldi	r22, 0x52	; 82
     980:	09 95       	icall
     982:	89 89       	ldd	r24, Y+17	; 0x11
     984:	9a 89       	ldd	r25, Y+18	; 0x12
     986:	dc 01       	movw	r26, r24
     988:	ed 91       	ld	r30, X+
     98a:	fc 91       	ld	r31, X
     98c:	00 84       	ldd	r0, Z+8	; 0x08
     98e:	f1 85       	ldd	r31, Z+9	; 0x09
     990:	e0 2d       	mov	r30, r0
     992:	26 e0       	ldi	r18, 0x06	; 6
     994:	4f ef       	ldi	r20, 0xFF	; 255
     996:	62 e5       	ldi	r22, 0x52	; 82
     998:	09 95       	icall
     99a:	89 89       	ldd	r24, Y+17	; 0x11
     99c:	9a 89       	ldd	r25, Y+18	; 0x12
     99e:	fc 01       	movw	r30, r24
     9a0:	a0 81       	ld	r26, Z
     9a2:	b1 81       	ldd	r27, Z+1	; 0x01
     9a4:	18 96       	adiw	r26, 0x08	; 8
     9a6:	0d 91       	ld	r16, X+
     9a8:	1c 91       	ld	r17, X
     9aa:	19 97       	sbiw	r26, 0x09	; 9
     9ac:	1e 96       	adiw	r26, 0x0e	; 14
     9ae:	ed 91       	ld	r30, X+
     9b0:	fc 91       	ld	r31, X
     9b2:	1f 97       	sbiw	r26, 0x0f	; 15
     9b4:	43 e8       	ldi	r20, 0x83	; 131
     9b6:	62 e5       	ldi	r22, 0x52	; 82
     9b8:	09 95       	icall
     9ba:	28 2f       	mov	r18, r24
     9bc:	43 e8       	ldi	r20, 0x83	; 131
     9be:	62 e5       	ldi	r22, 0x52	; 82
     9c0:	89 89       	ldd	r24, Y+17	; 0x11
     9c2:	9a 89       	ldd	r25, Y+18	; 0x12
     9c4:	f8 01       	movw	r30, r16
     9c6:	09 95       	icall
     9c8:	89 89       	ldd	r24, Y+17	; 0x11
     9ca:	9a 89       	ldd	r25, Y+18	; 0x12
     9cc:	dc 01       	movw	r26, r24
     9ce:	ed 91       	ld	r30, X+
     9d0:	fc 91       	ld	r31, X
     9d2:	00 84       	ldd	r0, Z+8	; 0x08
     9d4:	f1 85       	ldd	r31, Z+9	; 0x09
     9d6:	e0 2d       	mov	r30, r0
     9d8:	21 e0       	ldi	r18, 0x01	; 1
     9da:	4f ef       	ldi	r20, 0xFF	; 255
     9dc:	62 e5       	ldi	r22, 0x52	; 82
     9de:	09 95       	icall
     9e0:	89 89       	ldd	r24, Y+17	; 0x11
     9e2:	9a 89       	ldd	r25, Y+18	; 0x12
     9e4:	dc 01       	movw	r26, r24
     9e6:	ed 91       	ld	r30, X+
     9e8:	fc 91       	ld	r31, X
     9ea:	00 84       	ldd	r0, Z+8	; 0x08
     9ec:	f1 85       	ldd	r31, Z+9	; 0x09
     9ee:	e0 2d       	mov	r30, r0
     9f0:	21 e0       	ldi	r18, 0x01	; 1
     9f2:	40 e0       	ldi	r20, 0x00	; 0
     9f4:	62 e5       	ldi	r22, 0x52	; 82
     9f6:	09 95       	icall
     9f8:	89 89       	ldd	r24, Y+17	; 0x11
     9fa:	9a 89       	ldd	r25, Y+18	; 0x12
     9fc:	dc 01       	movw	r26, r24
     9fe:	ed 91       	ld	r30, X+
     a00:	fc 91       	ld	r31, X
     a02:	00 84       	ldd	r0, Z+8	; 0x08
     a04:	f1 85       	ldd	r31, Z+9	; 0x09
     a06:	e0 2d       	mov	r30, r0
     a08:	20 e0       	ldi	r18, 0x00	; 0
     a0a:	4f ef       	ldi	r20, 0xFF	; 255
     a0c:	62 e5       	ldi	r22, 0x52	; 82
     a0e:	09 95       	icall
     a10:	89 89       	ldd	r24, Y+17	; 0x11
     a12:	9a 89       	ldd	r25, Y+18	; 0x12
     a14:	dc 01       	movw	r26, r24
     a16:	ed 91       	ld	r30, X+
     a18:	fc 91       	ld	r31, X
     a1a:	00 84       	ldd	r0, Z+8	; 0x08
     a1c:	f1 85       	ldd	r31, Z+9	; 0x09
     a1e:	e0 2d       	mov	r30, r0
     a20:	20 e0       	ldi	r18, 0x00	; 0
     a22:	40 e8       	ldi	r20, 0x80	; 128
     a24:	62 e5       	ldi	r22, 0x52	; 82
     a26:	09 95       	icall
     a28:	81 e0       	ldi	r24, 0x01	; 1
     a2a:	df 91       	pop	r29
     a2c:	cf 91       	pop	r28
     a2e:	1f 91       	pop	r17
     a30:	0f 91       	pop	r16
     a32:	ff 90       	pop	r15
     a34:	ef 90       	pop	r14
     a36:	df 90       	pop	r13
     a38:	cf 90       	pop	r12
     a3a:	bf 90       	pop	r11
     a3c:	af 90       	pop	r10
     a3e:	08 95       	ret

00000a40 <_ZN8CVL53L0X4initEP14CI2C_Interface>:
     a40:	ef 92       	push	r14
     a42:	ff 92       	push	r15
     a44:	0f 93       	push	r16
     a46:	1f 93       	push	r17
     a48:	cf 93       	push	r28
     a4a:	df 93       	push	r29
     a4c:	cd b7       	in	r28, 0x3d	; 61
     a4e:	de b7       	in	r29, 0x3e	; 62
     a50:	28 97       	sbiw	r28, 0x08	; 8
     a52:	0f b6       	in	r0, 0x3f	; 63
     a54:	f8 94       	cli
     a56:	de bf       	out	0x3e, r29	; 62
     a58:	0f be       	out	0x3f, r0	; 63
     a5a:	cd bf       	out	0x3d, r28	; 61
     a5c:	7c 01       	movw	r14, r24
     a5e:	cb 01       	movw	r24, r22
     a60:	d7 01       	movw	r26, r14
     a62:	52 96       	adiw	r26, 0x12	; 18
     a64:	7c 93       	st	X, r23
     a66:	6e 93       	st	-X, r22
     a68:	51 97       	sbiw	r26, 0x11	; 17
     a6a:	20 e0       	ldi	r18, 0x00	; 0
     a6c:	30 e2       	ldi	r19, 0x20	; 32
     a6e:	11 96       	adiw	r26, 0x01	; 1
     a70:	3c 93       	st	X, r19
     a72:	2e 93       	st	-X, r18
     a74:	12 96       	adiw	r26, 0x02	; 2
     a76:	1c 92       	st	X, r1
     a78:	fb 01       	movw	r30, r22
     a7a:	a0 81       	ld	r26, Z
     a7c:	b1 81       	ldd	r27, Z+1	; 0x01
     a7e:	18 96       	adiw	r26, 0x08	; 8
     a80:	0d 91       	ld	r16, X+
     a82:	1c 91       	ld	r17, X
     a84:	19 97       	sbiw	r26, 0x09	; 9
     a86:	1e 96       	adiw	r26, 0x0e	; 14
     a88:	ed 91       	ld	r30, X+
     a8a:	fc 91       	ld	r31, X
     a8c:	1f 97       	sbiw	r26, 0x0f	; 15
     a8e:	49 e8       	ldi	r20, 0x89	; 137
     a90:	62 e5       	ldi	r22, 0x52	; 82
     a92:	09 95       	icall
     a94:	28 2f       	mov	r18, r24
     a96:	21 60       	ori	r18, 0x01	; 1
     a98:	49 e8       	ldi	r20, 0x89	; 137
     a9a:	62 e5       	ldi	r22, 0x52	; 82
     a9c:	d7 01       	movw	r26, r14
     a9e:	51 96       	adiw	r26, 0x11	; 17
     aa0:	8d 91       	ld	r24, X+
     aa2:	9c 91       	ld	r25, X
     aa4:	52 97       	sbiw	r26, 0x12	; 18
     aa6:	f8 01       	movw	r30, r16
     aa8:	09 95       	icall
     aaa:	d7 01       	movw	r26, r14
     aac:	51 96       	adiw	r26, 0x11	; 17
     aae:	8d 91       	ld	r24, X+
     ab0:	9c 91       	ld	r25, X
     ab2:	52 97       	sbiw	r26, 0x12	; 18
     ab4:	dc 01       	movw	r26, r24
     ab6:	ed 91       	ld	r30, X+
     ab8:	fc 91       	ld	r31, X
     aba:	06 84       	ldd	r0, Z+14	; 0x0e
     abc:	f7 85       	ldd	r31, Z+15	; 0x0f
     abe:	e0 2d       	mov	r30, r0
     ac0:	40 ec       	ldi	r20, 0xC0	; 192
     ac2:	62 e5       	ldi	r22, 0x52	; 82
     ac4:	09 95       	icall
     ac6:	8e 3e       	cpi	r24, 0xEE	; 238
     ac8:	09 f0       	breq	.+2      	; 0xacc <_ZN8CVL53L0X4initEP14CI2C_Interface+0x8c>
     aca:	61 c1       	rjmp	.+706    	; 0xd8e <_ZN8CVL53L0X4initEP14CI2C_Interface+0x34e>
     acc:	f7 01       	movw	r30, r14
     ace:	81 89       	ldd	r24, Z+17	; 0x11
     ad0:	92 89       	ldd	r25, Z+18	; 0x12
     ad2:	dc 01       	movw	r26, r24
     ad4:	ed 91       	ld	r30, X+
     ad6:	fc 91       	ld	r31, X
     ad8:	00 84       	ldd	r0, Z+8	; 0x08
     ada:	f1 85       	ldd	r31, Z+9	; 0x09
     adc:	e0 2d       	mov	r30, r0
     ade:	21 e0       	ldi	r18, 0x01	; 1
     ae0:	4f eb       	ldi	r20, 0xBF	; 191
     ae2:	62 e5       	ldi	r22, 0x52	; 82
     ae4:	09 95       	icall
     ae6:	81 ea       	ldi	r24, 0xA1	; 161
     ae8:	96 e8       	ldi	r25, 0x86	; 134
     aea:	a1 e0       	ldi	r26, 0x01	; 1
     aec:	b0 e0       	ldi	r27, 0x00	; 0
     aee:	01 97       	sbiw	r24, 0x01	; 1
     af0:	a1 09       	sbc	r26, r1
     af2:	b1 09       	sbc	r27, r1
     af4:	11 f0       	breq	.+4      	; 0xafa <_ZN8CVL53L0X4initEP14CI2C_Interface+0xba>
     af6:	00 00       	nop
     af8:	fa cf       	rjmp	.-12     	; 0xaee <_ZN8CVL53L0X4initEP14CI2C_Interface+0xae>
     afa:	f7 01       	movw	r30, r14
     afc:	81 89       	ldd	r24, Z+17	; 0x11
     afe:	92 89       	ldd	r25, Z+18	; 0x12
     b00:	dc 01       	movw	r26, r24
     b02:	ed 91       	ld	r30, X+
     b04:	fc 91       	ld	r31, X
     b06:	00 84       	ldd	r0, Z+8	; 0x08
     b08:	f1 85       	ldd	r31, Z+9	; 0x09
     b0a:	e0 2d       	mov	r30, r0
     b0c:	20 e0       	ldi	r18, 0x00	; 0
     b0e:	48 e8       	ldi	r20, 0x88	; 136
     b10:	62 e5       	ldi	r22, 0x52	; 82
     b12:	09 95       	icall
     b14:	f7 01       	movw	r30, r14
     b16:	81 89       	ldd	r24, Z+17	; 0x11
     b18:	92 89       	ldd	r25, Z+18	; 0x12
     b1a:	dc 01       	movw	r26, r24
     b1c:	ed 91       	ld	r30, X+
     b1e:	fc 91       	ld	r31, X
     b20:	00 84       	ldd	r0, Z+8	; 0x08
     b22:	f1 85       	ldd	r31, Z+9	; 0x09
     b24:	e0 2d       	mov	r30, r0
     b26:	21 e0       	ldi	r18, 0x01	; 1
     b28:	40 e8       	ldi	r20, 0x80	; 128
     b2a:	62 e5       	ldi	r22, 0x52	; 82
     b2c:	09 95       	icall
     b2e:	f7 01       	movw	r30, r14
     b30:	81 89       	ldd	r24, Z+17	; 0x11
     b32:	92 89       	ldd	r25, Z+18	; 0x12
     b34:	dc 01       	movw	r26, r24
     b36:	ed 91       	ld	r30, X+
     b38:	fc 91       	ld	r31, X
     b3a:	00 84       	ldd	r0, Z+8	; 0x08
     b3c:	f1 85       	ldd	r31, Z+9	; 0x09
     b3e:	e0 2d       	mov	r30, r0
     b40:	21 e0       	ldi	r18, 0x01	; 1
     b42:	4f ef       	ldi	r20, 0xFF	; 255
     b44:	62 e5       	ldi	r22, 0x52	; 82
     b46:	09 95       	icall
     b48:	f7 01       	movw	r30, r14
     b4a:	81 89       	ldd	r24, Z+17	; 0x11
     b4c:	92 89       	ldd	r25, Z+18	; 0x12
     b4e:	dc 01       	movw	r26, r24
     b50:	ed 91       	ld	r30, X+
     b52:	fc 91       	ld	r31, X
     b54:	00 84       	ldd	r0, Z+8	; 0x08
     b56:	f1 85       	ldd	r31, Z+9	; 0x09
     b58:	e0 2d       	mov	r30, r0
     b5a:	20 e0       	ldi	r18, 0x00	; 0
     b5c:	40 e0       	ldi	r20, 0x00	; 0
     b5e:	62 e5       	ldi	r22, 0x52	; 82
     b60:	09 95       	icall
     b62:	f7 01       	movw	r30, r14
     b64:	81 89       	ldd	r24, Z+17	; 0x11
     b66:	92 89       	ldd	r25, Z+18	; 0x12
     b68:	dc 01       	movw	r26, r24
     b6a:	ed 91       	ld	r30, X+
     b6c:	fc 91       	ld	r31, X
     b6e:	06 84       	ldd	r0, Z+14	; 0x0e
     b70:	f7 85       	ldd	r31, Z+15	; 0x0f
     b72:	e0 2d       	mov	r30, r0
     b74:	41 e9       	ldi	r20, 0x91	; 145
     b76:	62 e5       	ldi	r22, 0x52	; 82
     b78:	09 95       	icall
     b7a:	f7 01       	movw	r30, r14
     b7c:	81 89       	ldd	r24, Z+17	; 0x11
     b7e:	92 89       	ldd	r25, Z+18	; 0x12
     b80:	dc 01       	movw	r26, r24
     b82:	ed 91       	ld	r30, X+
     b84:	fc 91       	ld	r31, X
     b86:	00 84       	ldd	r0, Z+8	; 0x08
     b88:	f1 85       	ldd	r31, Z+9	; 0x09
     b8a:	e0 2d       	mov	r30, r0
     b8c:	21 e0       	ldi	r18, 0x01	; 1
     b8e:	40 e0       	ldi	r20, 0x00	; 0
     b90:	62 e5       	ldi	r22, 0x52	; 82
     b92:	09 95       	icall
     b94:	f7 01       	movw	r30, r14
     b96:	81 89       	ldd	r24, Z+17	; 0x11
     b98:	92 89       	ldd	r25, Z+18	; 0x12
     b9a:	dc 01       	movw	r26, r24
     b9c:	ed 91       	ld	r30, X+
     b9e:	fc 91       	ld	r31, X
     ba0:	00 84       	ldd	r0, Z+8	; 0x08
     ba2:	f1 85       	ldd	r31, Z+9	; 0x09
     ba4:	e0 2d       	mov	r30, r0
     ba6:	20 e0       	ldi	r18, 0x00	; 0
     ba8:	4f ef       	ldi	r20, 0xFF	; 255
     baa:	62 e5       	ldi	r22, 0x52	; 82
     bac:	09 95       	icall
     bae:	f7 01       	movw	r30, r14
     bb0:	81 89       	ldd	r24, Z+17	; 0x11
     bb2:	92 89       	ldd	r25, Z+18	; 0x12
     bb4:	dc 01       	movw	r26, r24
     bb6:	ed 91       	ld	r30, X+
     bb8:	fc 91       	ld	r31, X
     bba:	00 84       	ldd	r0, Z+8	; 0x08
     bbc:	f1 85       	ldd	r31, Z+9	; 0x09
     bbe:	e0 2d       	mov	r30, r0
     bc0:	20 e0       	ldi	r18, 0x00	; 0
     bc2:	40 e8       	ldi	r20, 0x80	; 128
     bc4:	62 e5       	ldi	r22, 0x52	; 82
     bc6:	09 95       	icall
     bc8:	18 86       	std	Y+8, r1	; 0x08
     bca:	ae 01       	movw	r20, r28
     bcc:	49 5f       	subi	r20, 0xF9	; 249
     bce:	5f 4f       	sbci	r21, 0xFF	; 255
     bd0:	be 01       	movw	r22, r28
     bd2:	68 5f       	subi	r22, 0xF8	; 248
     bd4:	7f 4f       	sbci	r23, 0xFF	; 255
     bd6:	c7 01       	movw	r24, r14
     bd8:	0e 94 e5 03 	call	0x7ca	; 0x7ca <_ZN8CVL53L0X11getSPADinfoEPhPb>
     bdc:	f7 01       	movw	r30, r14
     bde:	81 89       	ldd	r24, Z+17	; 0x11
     be0:	92 89       	ldd	r25, Z+18	; 0x12
     be2:	dc 01       	movw	r26, r24
     be4:	ed 91       	ld	r30, X+
     be6:	fc 91       	ld	r31, X
     be8:	02 88       	ldd	r0, Z+18	; 0x12
     bea:	f3 89       	ldd	r31, Z+19	; 0x13
     bec:	e0 2d       	mov	r30, r0
     bee:	06 e0       	ldi	r16, 0x06	; 6
     bf0:	10 e0       	ldi	r17, 0x00	; 0
     bf2:	9e 01       	movw	r18, r28
     bf4:	2f 5f       	subi	r18, 0xFF	; 255
     bf6:	3f 4f       	sbci	r19, 0xFF	; 255
     bf8:	40 eb       	ldi	r20, 0xB0	; 176
     bfa:	62 e5       	ldi	r22, 0x52	; 82
     bfc:	09 95       	icall
     bfe:	f7 01       	movw	r30, r14
     c00:	81 89       	ldd	r24, Z+17	; 0x11
     c02:	92 89       	ldd	r25, Z+18	; 0x12
     c04:	dc 01       	movw	r26, r24
     c06:	ed 91       	ld	r30, X+
     c08:	fc 91       	ld	r31, X
     c0a:	00 84       	ldd	r0, Z+8	; 0x08
     c0c:	f1 85       	ldd	r31, Z+9	; 0x09
     c0e:	e0 2d       	mov	r30, r0
     c10:	21 e0       	ldi	r18, 0x01	; 1
     c12:	4f ef       	ldi	r20, 0xFF	; 255
     c14:	62 e5       	ldi	r22, 0x52	; 82
     c16:	09 95       	icall
     c18:	f7 01       	movw	r30, r14
     c1a:	81 89       	ldd	r24, Z+17	; 0x11
     c1c:	92 89       	ldd	r25, Z+18	; 0x12
     c1e:	dc 01       	movw	r26, r24
     c20:	ed 91       	ld	r30, X+
     c22:	fc 91       	ld	r31, X
     c24:	00 84       	ldd	r0, Z+8	; 0x08
     c26:	f1 85       	ldd	r31, Z+9	; 0x09
     c28:	e0 2d       	mov	r30, r0
     c2a:	20 e0       	ldi	r18, 0x00	; 0
     c2c:	4f e4       	ldi	r20, 0x4F	; 79
     c2e:	62 e5       	ldi	r22, 0x52	; 82
     c30:	09 95       	icall
     c32:	f7 01       	movw	r30, r14
     c34:	81 89       	ldd	r24, Z+17	; 0x11
     c36:	92 89       	ldd	r25, Z+18	; 0x12
     c38:	dc 01       	movw	r26, r24
     c3a:	ed 91       	ld	r30, X+
     c3c:	fc 91       	ld	r31, X
     c3e:	00 84       	ldd	r0, Z+8	; 0x08
     c40:	f1 85       	ldd	r31, Z+9	; 0x09
     c42:	e0 2d       	mov	r30, r0
     c44:	2c e2       	ldi	r18, 0x2C	; 44
     c46:	4e e4       	ldi	r20, 0x4E	; 78
     c48:	62 e5       	ldi	r22, 0x52	; 82
     c4a:	09 95       	icall
     c4c:	f7 01       	movw	r30, r14
     c4e:	81 89       	ldd	r24, Z+17	; 0x11
     c50:	92 89       	ldd	r25, Z+18	; 0x12
     c52:	dc 01       	movw	r26, r24
     c54:	ed 91       	ld	r30, X+
     c56:	fc 91       	ld	r31, X
     c58:	00 84       	ldd	r0, Z+8	; 0x08
     c5a:	f1 85       	ldd	r31, Z+9	; 0x09
     c5c:	e0 2d       	mov	r30, r0
     c5e:	20 e0       	ldi	r18, 0x00	; 0
     c60:	4f ef       	ldi	r20, 0xFF	; 255
     c62:	62 e5       	ldi	r22, 0x52	; 82
     c64:	09 95       	icall
     c66:	f7 01       	movw	r30, r14
     c68:	81 89       	ldd	r24, Z+17	; 0x11
     c6a:	92 89       	ldd	r25, Z+18	; 0x12
     c6c:	dc 01       	movw	r26, r24
     c6e:	ed 91       	ld	r30, X+
     c70:	fc 91       	ld	r31, X
     c72:	00 84       	ldd	r0, Z+8	; 0x08
     c74:	f1 85       	ldd	r31, Z+9	; 0x09
     c76:	e0 2d       	mov	r30, r0
     c78:	24 eb       	ldi	r18, 0xB4	; 180
     c7a:	46 eb       	ldi	r20, 0xB6	; 182
     c7c:	62 e5       	ldi	r22, 0x52	; 82
     c7e:	09 95       	icall
     c80:	8f 81       	ldd	r24, Y+7	; 0x07
     c82:	81 11       	cpse	r24, r1
     c84:	02 c0       	rjmp	.+4      	; 0xc8a <_ZN8CVL53L0X4initEP14CI2C_Interface+0x24a>
     c86:	40 e0       	ldi	r20, 0x00	; 0
     c88:	01 c0       	rjmp	.+2      	; 0xc8c <_ZN8CVL53L0X4initEP14CI2C_Interface+0x24c>
     c8a:	4c e0       	ldi	r20, 0x0C	; 12
     c8c:	a8 85       	ldd	r26, Y+8	; 0x08
     c8e:	80 e0       	ldi	r24, 0x00	; 0
     c90:	90 e0       	ldi	r25, 0x00	; 0
     c92:	61 e0       	ldi	r22, 0x01	; 1
     c94:	70 e0       	ldi	r23, 0x00	; 0
     c96:	28 2f       	mov	r18, r24
     c98:	26 95       	lsr	r18
     c9a:	26 95       	lsr	r18
     c9c:	26 95       	lsr	r18
     c9e:	58 2f       	mov	r21, r24
     ca0:	57 70       	andi	r21, 0x07	; 7
     ca2:	e1 e0       	ldi	r30, 0x01	; 1
     ca4:	f0 e0       	ldi	r31, 0x00	; 0
     ca6:	ec 0f       	add	r30, r28
     ca8:	fd 1f       	adc	r31, r29
     caa:	e2 0f       	add	r30, r18
     cac:	f1 1d       	adc	r31, r1
     cae:	84 17       	cp	r24, r20
     cb0:	10 f0       	brcs	.+4      	; 0xcb6 <_ZN8CVL53L0X4initEP14CI2C_Interface+0x276>
     cb2:	9a 13       	cpse	r25, r26
     cb4:	0a c0       	rjmp	.+20     	; 0xcca <_ZN8CVL53L0X4initEP14CI2C_Interface+0x28a>
     cb6:	9b 01       	movw	r18, r22
     cb8:	01 c0       	rjmp	.+2      	; 0xcbc <_ZN8CVL53L0X4initEP14CI2C_Interface+0x27c>
     cba:	22 0f       	add	r18, r18
     cbc:	5a 95       	dec	r21
     cbe:	ea f7       	brpl	.-6      	; 0xcba <_ZN8CVL53L0X4initEP14CI2C_Interface+0x27a>
     cc0:	20 95       	com	r18
     cc2:	30 81       	ld	r19, Z
     cc4:	23 23       	and	r18, r19
     cc6:	20 83       	st	Z, r18
     cc8:	09 c0       	rjmp	.+18     	; 0xcdc <_ZN8CVL53L0X4initEP14CI2C_Interface+0x29c>
     cca:	20 81       	ld	r18, Z
     ccc:	30 e0       	ldi	r19, 0x00	; 0
     cce:	02 c0       	rjmp	.+4      	; 0xcd4 <_ZN8CVL53L0X4initEP14CI2C_Interface+0x294>
     cd0:	35 95       	asr	r19
     cd2:	27 95       	ror	r18
     cd4:	5a 95       	dec	r21
     cd6:	e2 f7       	brpl	.-8      	; 0xcd0 <_ZN8CVL53L0X4initEP14CI2C_Interface+0x290>
     cd8:	20 fd       	sbrc	r18, 0
     cda:	9f 5f       	subi	r25, 0xFF	; 255
     cdc:	8f 5f       	subi	r24, 0xFF	; 255
     cde:	80 33       	cpi	r24, 0x30	; 48
     ce0:	d1 f6       	brne	.-76     	; 0xc96 <_ZN8CVL53L0X4initEP14CI2C_Interface+0x256>
     ce2:	f7 01       	movw	r30, r14
     ce4:	81 89       	ldd	r24, Z+17	; 0x11
     ce6:	92 89       	ldd	r25, Z+18	; 0x12
     ce8:	dc 01       	movw	r26, r24
     cea:	ed 91       	ld	r30, X+
     cec:	fc 91       	ld	r31, X
     cee:	04 84       	ldd	r0, Z+12	; 0x0c
     cf0:	f5 85       	ldd	r31, Z+13	; 0x0d
     cf2:	e0 2d       	mov	r30, r0
     cf4:	06 e0       	ldi	r16, 0x06	; 6
     cf6:	10 e0       	ldi	r17, 0x00	; 0
     cf8:	9e 01       	movw	r18, r28
     cfa:	2f 5f       	subi	r18, 0xFF	; 255
     cfc:	3f 4f       	sbci	r19, 0xFF	; 255
     cfe:	40 eb       	ldi	r20, 0xB0	; 176
     d00:	62 e5       	ldi	r22, 0x52	; 82
     d02:	09 95       	icall
     d04:	f7 01       	movw	r30, r14
     d06:	81 89       	ldd	r24, Z+17	; 0x11
     d08:	92 89       	ldd	r25, Z+18	; 0x12
     d0a:	dc 01       	movw	r26, r24
     d0c:	ed 91       	ld	r30, X+
     d0e:	fc 91       	ld	r31, X
     d10:	06 84       	ldd	r0, Z+14	; 0x0e
     d12:	f7 85       	ldd	r31, Z+15	; 0x0f
     d14:	e0 2d       	mov	r30, r0
     d16:	44 e8       	ldi	r20, 0x84	; 132
     d18:	62 e5       	ldi	r22, 0x52	; 82
     d1a:	09 95       	icall
     d1c:	18 2f       	mov	r17, r24
     d1e:	f7 01       	movw	r30, r14
     d20:	81 89       	ldd	r24, Z+17	; 0x11
     d22:	92 89       	ldd	r25, Z+18	; 0x12
     d24:	dc 01       	movw	r26, r24
     d26:	ed 91       	ld	r30, X+
     d28:	fc 91       	ld	r31, X
     d2a:	00 84       	ldd	r0, Z+8	; 0x08
     d2c:	f1 85       	ldd	r31, Z+9	; 0x09
     d2e:	e0 2d       	mov	r30, r0
     d30:	24 e0       	ldi	r18, 0x04	; 4
     d32:	4a e0       	ldi	r20, 0x0A	; 10
     d34:	62 e5       	ldi	r22, 0x52	; 82
     d36:	09 95       	icall
     d38:	f7 01       	movw	r30, r14
     d3a:	81 89       	ldd	r24, Z+17	; 0x11
     d3c:	92 89       	ldd	r25, Z+18	; 0x12
     d3e:	dc 01       	movw	r26, r24
     d40:	ed 91       	ld	r30, X+
     d42:	fc 91       	ld	r31, X
     d44:	21 2f       	mov	r18, r17
     d46:	2f 7e       	andi	r18, 0xEF	; 239
     d48:	00 84       	ldd	r0, Z+8	; 0x08
     d4a:	f1 85       	ldd	r31, Z+9	; 0x09
     d4c:	e0 2d       	mov	r30, r0
     d4e:	44 e8       	ldi	r20, 0x84	; 132
     d50:	62 e5       	ldi	r22, 0x52	; 82
     d52:	09 95       	icall
     d54:	f7 01       	movw	r30, r14
     d56:	81 89       	ldd	r24, Z+17	; 0x11
     d58:	92 89       	ldd	r25, Z+18	; 0x12
     d5a:	dc 01       	movw	r26, r24
     d5c:	ed 91       	ld	r30, X+
     d5e:	fc 91       	ld	r31, X
     d60:	00 84       	ldd	r0, Z+8	; 0x08
     d62:	f1 85       	ldd	r31, Z+9	; 0x09
     d64:	e0 2d       	mov	r30, r0
     d66:	21 e0       	ldi	r18, 0x01	; 1
     d68:	4b e0       	ldi	r20, 0x0B	; 11
     d6a:	62 e5       	ldi	r22, 0x52	; 82
     d6c:	09 95       	icall
     d6e:	f7 01       	movw	r30, r14
     d70:	81 89       	ldd	r24, Z+17	; 0x11
     d72:	92 89       	ldd	r25, Z+18	; 0x12
     d74:	dc 01       	movw	r26, r24
     d76:	ed 91       	ld	r30, X+
     d78:	fc 91       	ld	r31, X
     d7a:	00 84       	ldd	r0, Z+8	; 0x08
     d7c:	f1 85       	ldd	r31, Z+9	; 0x09
     d7e:	e0 2d       	mov	r30, r0
     d80:	22 e0       	ldi	r18, 0x02	; 2
     d82:	40 e0       	ldi	r20, 0x00	; 0
     d84:	62 e5       	ldi	r22, 0x52	; 82
     d86:	09 95       	icall
     d88:	80 e0       	ldi	r24, 0x00	; 0
     d8a:	90 e0       	ldi	r25, 0x00	; 0
     d8c:	02 c0       	rjmp	.+4      	; 0xd92 <_ZN8CVL53L0X4initEP14CI2C_Interface+0x352>
     d8e:	8e ef       	ldi	r24, 0xFE	; 254
     d90:	9f ef       	ldi	r25, 0xFF	; 255
     d92:	28 96       	adiw	r28, 0x08	; 8
     d94:	0f b6       	in	r0, 0x3f	; 63
     d96:	f8 94       	cli
     d98:	de bf       	out	0x3e, r29	; 62
     d9a:	0f be       	out	0x3f, r0	; 63
     d9c:	cd bf       	out	0x3d, r28	; 61
     d9e:	df 91       	pop	r29
     da0:	cf 91       	pop	r28
     da2:	1f 91       	pop	r17
     da4:	0f 91       	pop	r16
     da6:	ff 90       	pop	r15
     da8:	ef 90       	pop	r14
     daa:	08 95       	ret

00000dac <_ZN6CUSARTC1Ev>:
     dac:	10 92 c5 00 	sts	0x00C5, r1
     db0:	87 e6       	ldi	r24, 0x67	; 103
     db2:	80 93 c4 00 	sts	0x00C4, r24
     db6:	e2 ec       	ldi	r30, 0xC2	; 194
     db8:	f0 e0       	ldi	r31, 0x00	; 0
     dba:	80 81       	ld	r24, Z
     dbc:	86 60       	ori	r24, 0x06	; 6
     dbe:	80 83       	st	Z, r24
     dc0:	e1 ec       	ldi	r30, 0xC1	; 193
     dc2:	f0 e0       	ldi	r31, 0x00	; 0
     dc4:	80 81       	ld	r24, Z
     dc6:	88 61       	ori	r24, 0x18	; 24
     dc8:	80 83       	st	Z, r24
     dca:	08 95       	ret

00000dcc <_ZN6CUSARTD1Ev>:
     dcc:	08 95       	ret

00000dce <_ZN6CUSART8put_charEc>:
     dce:	60 93 c6 00 	sts	0x00C6, r22
     dd2:	80 91 c0 00 	lds	r24, 0x00C0
     dd6:	85 fd       	sbrc	r24, 5
     dd8:	02 c0       	rjmp	.+4      	; 0xdde <_ZN6CUSART8put_charEc+0x10>
     dda:	00 00       	nop
     ddc:	fa cf       	rjmp	.-12     	; 0xdd2 <_ZN6CUSART8put_charEc+0x4>
     dde:	08 95       	ret

00000de0 <_ZdlPv>:
     de0:	0c 94 f1 09 	jmp	0x13e2	; 0x13e2 <free>

00000de4 <_ZN8CRTTimerC1Ev>:
     de4:	ed e5       	ldi	r30, 0x5D	; 93
     de6:	f1 e0       	ldi	r31, 0x01	; 1
     de8:	80 e0       	ldi	r24, 0x00	; 0
     dea:	90 e0       	ldi	r25, 0x00	; 0
     dec:	11 82       	std	Z+1, r1	; 0x01
     dee:	10 82       	st	Z, r1
     df0:	13 82       	std	Z+3, r1	; 0x03
     df2:	12 82       	std	Z+2, r1	; 0x02
     df4:	15 82       	std	Z+5, r1	; 0x05
     df6:	14 82       	std	Z+4, r1	; 0x04
     df8:	dc 01       	movw	r26, r24
     dfa:	a3 5a       	subi	r26, 0xA3	; 163
     dfc:	be 4f       	sbci	r27, 0xFE	; 254
     dfe:	16 96       	adiw	r26, 0x06	; 6
     e00:	1c 92       	st	X, r1
     e02:	16 97       	sbiw	r26, 0x06	; 6
     e04:	17 96       	adiw	r26, 0x07	; 7
     e06:	1c 92       	st	X, r1
     e08:	38 96       	adiw	r30, 0x08	; 8
     e0a:	08 96       	adiw	r24, 0x08	; 8
     e0c:	80 34       	cpi	r24, 0x40	; 64
     e0e:	91 05       	cpc	r25, r1
     e10:	69 f7       	brne	.-38     	; 0xdec <_ZN8CRTTimerC1Ev+0x8>
     e12:	84 b5       	in	r24, 0x24	; 36
     e14:	82 60       	ori	r24, 0x02	; 2
     e16:	84 bd       	out	0x24, r24	; 36
     e18:	89 ef       	ldi	r24, 0xF9	; 249
     e1a:	87 bd       	out	0x27, r24	; 39
     e1c:	83 e0       	ldi	r24, 0x03	; 3
     e1e:	85 bd       	out	0x25, r24	; 37
     e20:	80 91 6e 00 	lds	r24, 0x006E
     e24:	82 60       	ori	r24, 0x02	; 2
     e26:	80 93 6e 00 	sts	0x006E, r24
     e2a:	78 94       	sei
     e2c:	08 95       	ret

00000e2e <_ZN8CRTTimer8add_taskEP14CTaskInterfacejb>:
     e2e:	f8 94       	cli
     e30:	ed e5       	ldi	r30, 0x5D	; 93
     e32:	f1 e0       	ldi	r31, 0x01	; 1
     e34:	80 e0       	ldi	r24, 0x00	; 0
     e36:	90 e0       	ldi	r25, 0x00	; 0
     e38:	a0 81       	ld	r26, Z
     e3a:	b1 81       	ldd	r27, Z+1	; 0x01
     e3c:	ab 2b       	or	r26, r27
     e3e:	89 f4       	brne	.+34     	; 0xe62 <_ZN8CRTTimer8add_taskEP14CTaskInterfacejb+0x34>
     e40:	fc 01       	movw	r30, r24
     e42:	33 e0       	ldi	r19, 0x03	; 3
     e44:	ee 0f       	add	r30, r30
     e46:	ff 1f       	adc	r31, r31
     e48:	3a 95       	dec	r19
     e4a:	e1 f7       	brne	.-8      	; 0xe44 <_ZN8CRTTimer8add_taskEP14CTaskInterfacejb+0x16>
     e4c:	e3 5a       	subi	r30, 0xA3	; 163
     e4e:	fe 4f       	sbci	r31, 0xFE	; 254
     e50:	71 83       	std	Z+1, r23	; 0x01
     e52:	60 83       	st	Z, r22
     e54:	53 83       	std	Z+3, r21	; 0x03
     e56:	42 83       	std	Z+2, r20	; 0x02
     e58:	55 83       	std	Z+5, r21	; 0x05
     e5a:	44 83       	std	Z+4, r20	; 0x04
     e5c:	16 82       	std	Z+6, r1	; 0x06
     e5e:	27 83       	std	Z+7, r18	; 0x07
     e60:	07 c0       	rjmp	.+14     	; 0xe70 <_ZN8CRTTimer8add_taskEP14CTaskInterfacejb+0x42>
     e62:	01 96       	adiw	r24, 0x01	; 1
     e64:	38 96       	adiw	r30, 0x08	; 8
     e66:	88 30       	cpi	r24, 0x08	; 8
     e68:	91 05       	cpc	r25, r1
     e6a:	31 f7       	brne	.-52     	; 0xe38 <_ZN8CRTTimer8add_taskEP14CTaskInterfacejb+0xa>
     e6c:	8f ef       	ldi	r24, 0xFF	; 255
     e6e:	9f ef       	ldi	r25, 0xFF	; 255
     e70:	78 94       	sei
     e72:	08 95       	ret

00000e74 <_ZN8CRTTimer4mainEv>:
     e74:	cf 93       	push	r28
     e76:	df 93       	push	r29
     e78:	c0 e0       	ldi	r28, 0x00	; 0
     e7a:	d0 e0       	ldi	r29, 0x00	; 0
     e7c:	fe 01       	movw	r30, r28
     e7e:	e3 5a       	subi	r30, 0xA3	; 163
     e80:	fe 4f       	sbci	r31, 0xFE	; 254
     e82:	80 81       	ld	r24, Z
     e84:	91 81       	ldd	r25, Z+1	; 0x01
     e86:	00 97       	sbiw	r24, 0x00	; 0
     e88:	71 f0       	breq	.+28     	; 0xea6 <_ZN8CRTTimer4mainEv+0x32>
     e8a:	26 81       	ldd	r18, Z+6	; 0x06
     e8c:	22 23       	and	r18, r18
     e8e:	59 f0       	breq	.+22     	; 0xea6 <_ZN8CRTTimer4mainEv+0x32>
     e90:	16 82       	std	Z+6, r1	; 0x06
     e92:	27 81       	ldd	r18, Z+7	; 0x07
     e94:	21 11       	cpse	r18, r1
     e96:	07 c0       	rjmp	.+14     	; 0xea6 <_ZN8CRTTimer4mainEv+0x32>
     e98:	dc 01       	movw	r26, r24
     e9a:	ed 91       	ld	r30, X+
     e9c:	fc 91       	ld	r31, X
     e9e:	04 80       	ldd	r0, Z+4	; 0x04
     ea0:	f5 81       	ldd	r31, Z+5	; 0x05
     ea2:	e0 2d       	mov	r30, r0
     ea4:	09 95       	icall
     ea6:	28 96       	adiw	r28, 0x08	; 8
     ea8:	c0 34       	cpi	r28, 0x40	; 64
     eaa:	d1 05       	cpc	r29, r1
     eac:	39 f7       	brne	.-50     	; 0xe7c <_ZN8CRTTimer4mainEv+0x8>
     eae:	df 91       	pop	r29
     eb0:	cf 91       	pop	r28
     eb2:	08 95       	ret

00000eb4 <_ZN8CRTTimer8get_timeEv>:
     eb4:	cf 93       	push	r28
     eb6:	df 93       	push	r29
     eb8:	00 d0       	rcall	.+0      	; 0xeba <_ZN8CRTTimer8get_timeEv+0x6>
     eba:	00 d0       	rcall	.+0      	; 0xebc <_ZN8CRTTimer8get_timeEv+0x8>
     ebc:	cd b7       	in	r28, 0x3d	; 61
     ebe:	de b7       	in	r29, 0x3e	; 62
     ec0:	f8 94       	cli
     ec2:	80 91 9d 01 	lds	r24, 0x019D
     ec6:	90 91 9e 01 	lds	r25, 0x019E
     eca:	a0 91 9f 01 	lds	r26, 0x019F
     ece:	b0 91 a0 01 	lds	r27, 0x01A0
     ed2:	89 83       	std	Y+1, r24	; 0x01
     ed4:	9a 83       	std	Y+2, r25	; 0x02
     ed6:	ab 83       	std	Y+3, r26	; 0x03
     ed8:	bc 83       	std	Y+4, r27	; 0x04
     eda:	78 94       	sei
     edc:	69 81       	ldd	r22, Y+1	; 0x01
     ede:	7a 81       	ldd	r23, Y+2	; 0x02
     ee0:	8b 81       	ldd	r24, Y+3	; 0x03
     ee2:	9c 81       	ldd	r25, Y+4	; 0x04
     ee4:	0f 90       	pop	r0
     ee6:	0f 90       	pop	r0
     ee8:	0f 90       	pop	r0
     eea:	0f 90       	pop	r0
     eec:	df 91       	pop	r29
     eee:	cf 91       	pop	r28
     ef0:	08 95       	ret

00000ef2 <__vector_14>:
     ef2:	1f 92       	push	r1
     ef4:	0f 92       	push	r0
     ef6:	0f b6       	in	r0, 0x3f	; 63
     ef8:	0f 92       	push	r0
     efa:	11 24       	eor	r1, r1
     efc:	0f 93       	push	r16
     efe:	1f 93       	push	r17
     f00:	2f 93       	push	r18
     f02:	3f 93       	push	r19
     f04:	4f 93       	push	r20
     f06:	5f 93       	push	r21
     f08:	6f 93       	push	r22
     f0a:	7f 93       	push	r23
     f0c:	8f 93       	push	r24
     f0e:	9f 93       	push	r25
     f10:	af 93       	push	r26
     f12:	bf 93       	push	r27
     f14:	cf 93       	push	r28
     f16:	df 93       	push	r29
     f18:	ef 93       	push	r30
     f1a:	ff 93       	push	r31
     f1c:	cd e5       	ldi	r28, 0x5D	; 93
     f1e:	d1 e0       	ldi	r29, 0x01	; 1
     f20:	00 e0       	ldi	r16, 0x00	; 0
     f22:	10 e0       	ldi	r17, 0x00	; 0
     f24:	8c 81       	ldd	r24, Y+4	; 0x04
     f26:	9d 81       	ldd	r25, Y+5	; 0x05
     f28:	00 97       	sbiw	r24, 0x00	; 0
     f2a:	21 f0       	breq	.+8      	; 0xf34 <__vector_14+0x42>
     f2c:	01 97       	sbiw	r24, 0x01	; 1
     f2e:	9d 83       	std	Y+5, r25	; 0x05
     f30:	8c 83       	std	Y+4, r24	; 0x04
     f32:	18 c0       	rjmp	.+48     	; 0xf64 <__vector_14+0x72>
     f34:	8a 81       	ldd	r24, Y+2	; 0x02
     f36:	9b 81       	ldd	r25, Y+3	; 0x03
     f38:	9d 83       	std	Y+5, r25	; 0x05
     f3a:	8c 83       	std	Y+4, r24	; 0x04
     f3c:	f8 01       	movw	r30, r16
     f3e:	e3 5a       	subi	r30, 0xA3	; 163
     f40:	fe 4f       	sbci	r31, 0xFE	; 254
     f42:	86 81       	ldd	r24, Z+6	; 0x06
     f44:	8f 3f       	cpi	r24, 0xFF	; 255
     f46:	11 f0       	breq	.+4      	; 0xf4c <__vector_14+0x5a>
     f48:	8f 5f       	subi	r24, 0xFF	; 255
     f4a:	86 83       	std	Z+6, r24	; 0x06
     f4c:	87 81       	ldd	r24, Z+7	; 0x07
     f4e:	88 23       	and	r24, r24
     f50:	49 f0       	breq	.+18     	; 0xf64 <__vector_14+0x72>
     f52:	88 81       	ld	r24, Y
     f54:	99 81       	ldd	r25, Y+1	; 0x01
     f56:	dc 01       	movw	r26, r24
     f58:	ed 91       	ld	r30, X+
     f5a:	fc 91       	ld	r31, X
     f5c:	04 80       	ldd	r0, Z+4	; 0x04
     f5e:	f5 81       	ldd	r31, Z+5	; 0x05
     f60:	e0 2d       	mov	r30, r0
     f62:	09 95       	icall
     f64:	08 5f       	subi	r16, 0xF8	; 248
     f66:	1f 4f       	sbci	r17, 0xFF	; 255
     f68:	28 96       	adiw	r28, 0x08	; 8
     f6a:	00 34       	cpi	r16, 0x40	; 64
     f6c:	11 05       	cpc	r17, r1
     f6e:	d1 f6       	brne	.-76     	; 0xf24 <__vector_14+0x32>
     f70:	80 91 9d 01 	lds	r24, 0x019D
     f74:	90 91 9e 01 	lds	r25, 0x019E
     f78:	a0 91 9f 01 	lds	r26, 0x019F
     f7c:	b0 91 a0 01 	lds	r27, 0x01A0
     f80:	01 96       	adiw	r24, 0x01	; 1
     f82:	a1 1d       	adc	r26, r1
     f84:	b1 1d       	adc	r27, r1
     f86:	80 93 9d 01 	sts	0x019D, r24
     f8a:	90 93 9e 01 	sts	0x019E, r25
     f8e:	a0 93 9f 01 	sts	0x019F, r26
     f92:	b0 93 a0 01 	sts	0x01A0, r27
     f96:	ff 91       	pop	r31
     f98:	ef 91       	pop	r30
     f9a:	df 91       	pop	r29
     f9c:	cf 91       	pop	r28
     f9e:	bf 91       	pop	r27
     fa0:	af 91       	pop	r26
     fa2:	9f 91       	pop	r25
     fa4:	8f 91       	pop	r24
     fa6:	7f 91       	pop	r23
     fa8:	6f 91       	pop	r22
     faa:	5f 91       	pop	r21
     fac:	4f 91       	pop	r20
     fae:	3f 91       	pop	r19
     fb0:	2f 91       	pop	r18
     fb2:	1f 91       	pop	r17
     fb4:	0f 91       	pop	r16
     fb6:	0f 90       	pop	r0
     fb8:	0f be       	out	0x3f, r0	; 63
     fba:	0f 90       	pop	r0
     fbc:	1f 90       	pop	r1
     fbe:	18 95       	reti

00000fc0 <_GLOBAL__sub_I_g_rt_time>:
     fc0:	8c e5       	ldi	r24, 0x5C	; 92
     fc2:	91 e0       	ldi	r25, 0x01	; 1
     fc4:	0c 94 f2 06 	jmp	0xde4	; 0xde4 <_ZN8CRTTimerC1Ev>

00000fc8 <_ZN9CTerminal4putsEPKc>:
     fc8:	0f 93       	push	r16
     fca:	1f 93       	push	r17
     fcc:	cf 93       	push	r28
     fce:	df 93       	push	r29
     fd0:	8c 01       	movw	r16, r24
     fd2:	eb 01       	movw	r28, r22
     fd4:	69 91       	ld	r22, Y+
     fd6:	66 23       	and	r22, r22
     fd8:	21 f0       	breq	.+8      	; 0xfe2 <_ZN9CTerminal4putsEPKc+0x1a>
     fda:	c8 01       	movw	r24, r16
     fdc:	0e 94 e7 06 	call	0xdce	; 0xdce <_ZN6CUSART8put_charEc>
     fe0:	f9 cf       	rjmp	.-14     	; 0xfd4 <_ZN9CTerminal4putsEPKc+0xc>
     fe2:	df 91       	pop	r29
     fe4:	cf 91       	pop	r28
     fe6:	1f 91       	pop	r17
     fe8:	0f 91       	pop	r16
     fea:	08 95       	ret

00000fec <_ZN9CTerminal4putsEPc>:
     fec:	0f 93       	push	r16
     fee:	1f 93       	push	r17
     ff0:	cf 93       	push	r28
     ff2:	df 93       	push	r29
     ff4:	8c 01       	movw	r16, r24
     ff6:	eb 01       	movw	r28, r22
     ff8:	69 91       	ld	r22, Y+
     ffa:	66 23       	and	r22, r22
     ffc:	21 f0       	breq	.+8      	; 0x1006 <_ZN9CTerminal4putsEPc+0x1a>
     ffe:	c8 01       	movw	r24, r16
    1000:	0e 94 e7 06 	call	0xdce	; 0xdce <_ZN6CUSART8put_charEc>
    1004:	f9 cf       	rjmp	.-14     	; 0xff8 <_ZN9CTerminal4putsEPc+0xc>
    1006:	df 91       	pop	r29
    1008:	cf 91       	pop	r28
    100a:	1f 91       	pop	r17
    100c:	0f 91       	pop	r16
    100e:	08 95       	ret

00001010 <_ZN9CTerminal4putiEl>:
    1010:	8f 92       	push	r8
    1012:	9f 92       	push	r9
    1014:	af 92       	push	r10
    1016:	bf 92       	push	r11
    1018:	cf 92       	push	r12
    101a:	df 92       	push	r13
    101c:	ef 92       	push	r14
    101e:	ff 92       	push	r15
    1020:	0f 93       	push	r16
    1022:	1f 93       	push	r17
    1024:	cf 93       	push	r28
    1026:	df 93       	push	r29
    1028:	cd b7       	in	r28, 0x3d	; 61
    102a:	de b7       	in	r29, 0x3e	; 62
    102c:	2c 97       	sbiw	r28, 0x0c	; 12
    102e:	0f b6       	in	r0, 0x3f	; 63
    1030:	f8 94       	cli
    1032:	de bf       	out	0x3e, r29	; 62
    1034:	0f be       	out	0x3f, r0	; 63
    1036:	cd bf       	out	0x3d, r28	; 61
    1038:	7c 01       	movw	r14, r24
    103a:	77 ff       	sbrs	r23, 7
    103c:	09 c0       	rjmp	.+18     	; 0x1050 <_ZN9CTerminal4putiEl+0x40>
    103e:	70 95       	com	r23
    1040:	60 95       	com	r22
    1042:	50 95       	com	r21
    1044:	41 95       	neg	r20
    1046:	5f 4f       	sbci	r21, 0xFF	; 255
    1048:	6f 4f       	sbci	r22, 0xFF	; 255
    104a:	7f 4f       	sbci	r23, 0xFF	; 255
    104c:	01 e0       	ldi	r16, 0x01	; 1
    104e:	01 c0       	rjmp	.+2      	; 0x1052 <_ZN9CTerminal4putiEl+0x42>
    1050:	00 e0       	ldi	r16, 0x00	; 0
    1052:	1c 86       	std	Y+12, r1	; 0x0c
    1054:	1a e0       	ldi	r17, 0x0A	; 10
    1056:	9a e0       	ldi	r25, 0x0A	; 10
    1058:	89 2e       	mov	r8, r25
    105a:	91 2c       	mov	r9, r1
    105c:	a1 2c       	mov	r10, r1
    105e:	b1 2c       	mov	r11, r1
    1060:	cc 24       	eor	r12, r12
    1062:	c3 94       	inc	r12
    1064:	d1 2c       	mov	r13, r1
    1066:	cc 0e       	add	r12, r28
    1068:	dd 1e       	adc	r13, r29
    106a:	c1 0e       	add	r12, r17
    106c:	d1 1c       	adc	r13, r1
    106e:	cb 01       	movw	r24, r22
    1070:	ba 01       	movw	r22, r20
    1072:	a5 01       	movw	r20, r10
    1074:	94 01       	movw	r18, r8
    1076:	0e 94 37 09 	call	0x126e	; 0x126e <__divmodsi4>
    107a:	94 2f       	mov	r25, r20
    107c:	85 2f       	mov	r24, r21
    107e:	60 5d       	subi	r22, 0xD0	; 208
    1080:	f6 01       	movw	r30, r12
    1082:	60 83       	st	Z, r22
    1084:	a9 01       	movw	r20, r18
    1086:	69 2f       	mov	r22, r25
    1088:	78 2f       	mov	r23, r24
    108a:	8f ef       	ldi	r24, 0xFF	; 255
    108c:	81 0f       	add	r24, r17
    108e:	41 15       	cp	r20, r1
    1090:	51 05       	cpc	r21, r1
    1092:	61 05       	cpc	r22, r1
    1094:	71 05       	cpc	r23, r1
    1096:	11 f0       	breq	.+4      	; 0x109c <_ZN9CTerminal4putiEl+0x8c>
    1098:	18 2f       	mov	r17, r24
    109a:	e2 cf       	rjmp	.-60     	; 0x1060 <_ZN9CTerminal4putiEl+0x50>
    109c:	00 23       	and	r16, r16
    109e:	49 f0       	breq	.+18     	; 0x10b2 <_ZN9CTerminal4putiEl+0xa2>
    10a0:	e1 e0       	ldi	r30, 0x01	; 1
    10a2:	f0 e0       	ldi	r31, 0x00	; 0
    10a4:	ec 0f       	add	r30, r28
    10a6:	fd 1f       	adc	r31, r29
    10a8:	e8 0f       	add	r30, r24
    10aa:	f1 1d       	adc	r31, r1
    10ac:	9d e2       	ldi	r25, 0x2D	; 45
    10ae:	90 83       	st	Z, r25
    10b0:	18 2f       	mov	r17, r24
    10b2:	61 e0       	ldi	r22, 0x01	; 1
    10b4:	70 e0       	ldi	r23, 0x00	; 0
    10b6:	6c 0f       	add	r22, r28
    10b8:	7d 1f       	adc	r23, r29
    10ba:	61 0f       	add	r22, r17
    10bc:	71 1d       	adc	r23, r1
    10be:	c7 01       	movw	r24, r14
    10c0:	0e 94 f6 07 	call	0xfec	; 0xfec <_ZN9CTerminal4putsEPc>
    10c4:	2c 96       	adiw	r28, 0x0c	; 12
    10c6:	0f b6       	in	r0, 0x3f	; 63
    10c8:	f8 94       	cli
    10ca:	de bf       	out	0x3e, r29	; 62
    10cc:	0f be       	out	0x3f, r0	; 63
    10ce:	cd bf       	out	0x3d, r28	; 61
    10d0:	df 91       	pop	r29
    10d2:	cf 91       	pop	r28
    10d4:	1f 91       	pop	r17
    10d6:	0f 91       	pop	r16
    10d8:	ff 90       	pop	r15
    10da:	ef 90       	pop	r14
    10dc:	df 90       	pop	r13
    10de:	cf 90       	pop	r12
    10e0:	bf 90       	pop	r11
    10e2:	af 90       	pop	r10
    10e4:	9f 90       	pop	r9
    10e6:	8f 90       	pop	r8
    10e8:	08 95       	ret

000010ea <_ZN9CTerminal5putuiEm>:
    10ea:	8f 92       	push	r8
    10ec:	9f 92       	push	r9
    10ee:	af 92       	push	r10
    10f0:	bf 92       	push	r11
    10f2:	cf 92       	push	r12
    10f4:	df 92       	push	r13
    10f6:	ef 92       	push	r14
    10f8:	ff 92       	push	r15
    10fa:	1f 93       	push	r17
    10fc:	cf 93       	push	r28
    10fe:	df 93       	push	r29
    1100:	cd b7       	in	r28, 0x3d	; 61
    1102:	de b7       	in	r29, 0x3e	; 62
    1104:	2c 97       	sbiw	r28, 0x0c	; 12
    1106:	0f b6       	in	r0, 0x3f	; 63
    1108:	f8 94       	cli
    110a:	de bf       	out	0x3e, r29	; 62
    110c:	0f be       	out	0x3f, r0	; 63
    110e:	cd bf       	out	0x3d, r28	; 61
    1110:	6c 01       	movw	r12, r24
    1112:	1c 86       	std	Y+12, r1	; 0x0c
    1114:	1a e0       	ldi	r17, 0x0A	; 10
    1116:	9a e0       	ldi	r25, 0x0A	; 10
    1118:	89 2e       	mov	r8, r25
    111a:	91 2c       	mov	r9, r1
    111c:	a1 2c       	mov	r10, r1
    111e:	b1 2c       	mov	r11, r1
    1120:	ee 24       	eor	r14, r14
    1122:	e3 94       	inc	r14
    1124:	f1 2c       	mov	r15, r1
    1126:	ec 0e       	add	r14, r28
    1128:	fd 1e       	adc	r15, r29
    112a:	e1 0e       	add	r14, r17
    112c:	f1 1c       	adc	r15, r1
    112e:	cb 01       	movw	r24, r22
    1130:	ba 01       	movw	r22, r20
    1132:	a5 01       	movw	r20, r10
    1134:	94 01       	movw	r18, r8
    1136:	0e 94 15 09 	call	0x122a	; 0x122a <__udivmodsi4>
    113a:	94 2f       	mov	r25, r20
    113c:	85 2f       	mov	r24, r21
    113e:	60 5d       	subi	r22, 0xD0	; 208
    1140:	f7 01       	movw	r30, r14
    1142:	60 83       	st	Z, r22
    1144:	a9 01       	movw	r20, r18
    1146:	69 2f       	mov	r22, r25
    1148:	78 2f       	mov	r23, r24
    114a:	11 50       	subi	r17, 0x01	; 1
    114c:	41 15       	cp	r20, r1
    114e:	51 05       	cpc	r21, r1
    1150:	61 05       	cpc	r22, r1
    1152:	71 05       	cpc	r23, r1
    1154:	29 f7       	brne	.-54     	; 0x1120 <_ZN9CTerminal5putuiEm+0x36>
    1156:	b7 01       	movw	r22, r14
    1158:	c6 01       	movw	r24, r12
    115a:	0e 94 f6 07 	call	0xfec	; 0xfec <_ZN9CTerminal4putsEPc>
    115e:	2c 96       	adiw	r28, 0x0c	; 12
    1160:	0f b6       	in	r0, 0x3f	; 63
    1162:	f8 94       	cli
    1164:	de bf       	out	0x3e, r29	; 62
    1166:	0f be       	out	0x3f, r0	; 63
    1168:	cd bf       	out	0x3d, r28	; 61
    116a:	df 91       	pop	r29
    116c:	cf 91       	pop	r28
    116e:	1f 91       	pop	r17
    1170:	ff 90       	pop	r15
    1172:	ef 90       	pop	r14
    1174:	df 90       	pop	r13
    1176:	cf 90       	pop	r12
    1178:	bf 90       	pop	r11
    117a:	af 90       	pop	r10
    117c:	9f 90       	pop	r9
    117e:	8f 90       	pop	r8
    1180:	08 95       	ret

00001182 <_GLOBAL__sub_I_terminal>:
    1182:	81 ea       	ldi	r24, 0xA1	; 161
    1184:	91 e0       	ldi	r25, 0x01	; 1
    1186:	0c 94 d6 06 	jmp	0xdac	; 0xdac <_ZN6CUSARTC1Ev>

0000118a <_GLOBAL__sub_D_terminal>:
    118a:	81 ea       	ldi	r24, 0xA1	; 161
    118c:	91 e0       	ldi	r25, 0x01	; 1
    118e:	0c 94 e6 06 	jmp	0xdcc	; 0xdcc <_ZN6CUSARTD1Ev>

00001192 <_ZN16CObjectDetectionC1Ev>:
    1192:	0c 94 a6 03 	jmp	0x74c	; 0x74c <_ZN8CVL53L0XC1Ev>

00001196 <_ZN16CObjectDetectionD1Ev>:
    1196:	0c 94 a7 03 	jmp	0x74e	; 0x74e <_ZN8CVL53L0XD1Ev>

0000119a <_ZN16CObjectDetection4initEP14CI2C_Interface>:
    119a:	fc 01       	movw	r30, r24
    119c:	16 8a       	std	Z+22, r1	; 0x16
    119e:	15 8a       	std	Z+21, r1	; 0x15
    11a0:	10 8e       	std	Z+24, r1	; 0x18
    11a2:	17 8a       	std	Z+23, r1	; 0x17
    11a4:	12 8e       	std	Z+26, r1	; 0x1a
    11a6:	11 8e       	std	Z+25, r1	; 0x19
    11a8:	13 8e       	std	Z+27, r1	; 0x1b
    11aa:	14 8a       	std	Z+20, r1	; 0x14
    11ac:	13 8a       	std	Z+19, r1	; 0x13
    11ae:	0c 94 20 05 	jmp	0xa40	; 0xa40 <_ZN8CVL53L0X4initEP14CI2C_Interface>

000011b2 <_ZN16CObjectDetection7processEv>:
    11b2:	cf 93       	push	r28
    11b4:	df 93       	push	r29
    11b6:	ec 01       	movw	r28, r24
    11b8:	0e 94 a8 03 	call	0x750	; 0x750 <_ZN8CVL53L0X4readEv>
    11bc:	ce 01       	movw	r24, r28
    11be:	0e 94 e1 03 	call	0x7c2	; 0x7c2 <_ZN8CVL53L0X12get_distanceEv>
    11c2:	9e 8b       	std	Y+22, r25	; 0x16
    11c4:	8d 8b       	std	Y+21, r24	; 0x15
    11c6:	4f 89       	ldd	r20, Y+23	; 0x17
    11c8:	58 8d       	ldd	r21, Y+24	; 0x18
    11ca:	6f e1       	ldi	r22, 0x1F	; 31
    11cc:	64 9f       	mul	r22, r20
    11ce:	90 01       	movw	r18, r0
    11d0:	65 9f       	mul	r22, r21
    11d2:	30 0d       	add	r19, r0
    11d4:	11 24       	eor	r1, r1
    11d6:	28 0f       	add	r18, r24
    11d8:	39 1f       	adc	r19, r25
    11da:	37 ff       	sbrs	r19, 7
    11dc:	02 c0       	rjmp	.+4      	; 0x11e2 <_ZN16CObjectDetection7processEv+0x30>
    11de:	21 5e       	subi	r18, 0xE1	; 225
    11e0:	3f 4f       	sbci	r19, 0xFF	; 255
    11e2:	45 e0       	ldi	r20, 0x05	; 5
    11e4:	35 95       	asr	r19
    11e6:	27 95       	ror	r18
    11e8:	4a 95       	dec	r20
    11ea:	e1 f7       	brne	.-8      	; 0x11e4 <_ZN16CObjectDetection7processEv+0x32>
    11ec:	38 8f       	std	Y+24, r19	; 0x18
    11ee:	2f 8b       	std	Y+23, r18	; 0x17
    11f0:	82 1b       	sub	r24, r18
    11f2:	93 0b       	sbc	r25, r19
    11f4:	9a 8f       	std	Y+26, r25	; 0x1a
    11f6:	89 8f       	std	Y+25, r24	; 0x19
    11f8:	86 3f       	cpi	r24, 0xF6	; 246
    11fa:	9f 4f       	sbci	r25, 0xFF	; 255
    11fc:	5c f4       	brge	.+22     	; 0x1214 <_ZN16CObjectDetection7processEv+0x62>
    11fe:	8b 89       	ldd	r24, Y+19	; 0x13
    1200:	9c 89       	ldd	r25, Y+20	; 0x14
    1202:	89 2b       	or	r24, r25
    1204:	39 f4       	brne	.+14     	; 0x1214 <_ZN16CObjectDetection7processEv+0x62>
    1206:	81 e0       	ldi	r24, 0x01	; 1
    1208:	8b 8f       	std	Y+27, r24	; 0x1b
    120a:	84 e1       	ldi	r24, 0x14	; 20
    120c:	90 e0       	ldi	r25, 0x00	; 0
    120e:	9c 8b       	std	Y+20, r25	; 0x14
    1210:	8b 8b       	std	Y+19, r24	; 0x13
    1212:	01 c0       	rjmp	.+2      	; 0x1216 <_ZN16CObjectDetection7processEv+0x64>
    1214:	1b 8e       	std	Y+27, r1	; 0x1b
    1216:	8b 89       	ldd	r24, Y+19	; 0x13
    1218:	9c 89       	ldd	r25, Y+20	; 0x14
    121a:	00 97       	sbiw	r24, 0x00	; 0
    121c:	19 f0       	breq	.+6      	; 0x1224 <_ZN16CObjectDetection7processEv+0x72>
    121e:	01 97       	sbiw	r24, 0x01	; 1
    1220:	9c 8b       	std	Y+20, r25	; 0x14
    1222:	8b 8b       	std	Y+19, r24	; 0x13
    1224:	df 91       	pop	r29
    1226:	cf 91       	pop	r28
    1228:	08 95       	ret

0000122a <__udivmodsi4>:
    122a:	a1 e2       	ldi	r26, 0x21	; 33
    122c:	1a 2e       	mov	r1, r26
    122e:	aa 1b       	sub	r26, r26
    1230:	bb 1b       	sub	r27, r27
    1232:	fd 01       	movw	r30, r26
    1234:	0d c0       	rjmp	.+26     	; 0x1250 <__udivmodsi4_ep>

00001236 <__udivmodsi4_loop>:
    1236:	aa 1f       	adc	r26, r26
    1238:	bb 1f       	adc	r27, r27
    123a:	ee 1f       	adc	r30, r30
    123c:	ff 1f       	adc	r31, r31
    123e:	a2 17       	cp	r26, r18
    1240:	b3 07       	cpc	r27, r19
    1242:	e4 07       	cpc	r30, r20
    1244:	f5 07       	cpc	r31, r21
    1246:	20 f0       	brcs	.+8      	; 0x1250 <__udivmodsi4_ep>
    1248:	a2 1b       	sub	r26, r18
    124a:	b3 0b       	sbc	r27, r19
    124c:	e4 0b       	sbc	r30, r20
    124e:	f5 0b       	sbc	r31, r21

00001250 <__udivmodsi4_ep>:
    1250:	66 1f       	adc	r22, r22
    1252:	77 1f       	adc	r23, r23
    1254:	88 1f       	adc	r24, r24
    1256:	99 1f       	adc	r25, r25
    1258:	1a 94       	dec	r1
    125a:	69 f7       	brne	.-38     	; 0x1236 <__udivmodsi4_loop>
    125c:	60 95       	com	r22
    125e:	70 95       	com	r23
    1260:	80 95       	com	r24
    1262:	90 95       	com	r25
    1264:	9b 01       	movw	r18, r22
    1266:	ac 01       	movw	r20, r24
    1268:	bd 01       	movw	r22, r26
    126a:	cf 01       	movw	r24, r30
    126c:	08 95       	ret

0000126e <__divmodsi4>:
    126e:	05 2e       	mov	r0, r21
    1270:	97 fb       	bst	r25, 7
    1272:	1e f4       	brtc	.+6      	; 0x127a <__divmodsi4+0xc>
    1274:	00 94       	com	r0
    1276:	0e 94 4e 09 	call	0x129c	; 0x129c <__negsi2>
    127a:	57 fd       	sbrc	r21, 7
    127c:	07 d0       	rcall	.+14     	; 0x128c <__divmodsi4_neg2>
    127e:	0e 94 15 09 	call	0x122a	; 0x122a <__udivmodsi4>
    1282:	07 fc       	sbrc	r0, 7
    1284:	03 d0       	rcall	.+6      	; 0x128c <__divmodsi4_neg2>
    1286:	4e f4       	brtc	.+18     	; 0x129a <__divmodsi4_exit>
    1288:	0c 94 4e 09 	jmp	0x129c	; 0x129c <__negsi2>

0000128c <__divmodsi4_neg2>:
    128c:	50 95       	com	r21
    128e:	40 95       	com	r20
    1290:	30 95       	com	r19
    1292:	21 95       	neg	r18
    1294:	3f 4f       	sbci	r19, 0xFF	; 255
    1296:	4f 4f       	sbci	r20, 0xFF	; 255
    1298:	5f 4f       	sbci	r21, 0xFF	; 255

0000129a <__divmodsi4_exit>:
    129a:	08 95       	ret

0000129c <__negsi2>:
    129c:	90 95       	com	r25
    129e:	80 95       	com	r24
    12a0:	70 95       	com	r23
    12a2:	61 95       	neg	r22
    12a4:	7f 4f       	sbci	r23, 0xFF	; 255
    12a6:	8f 4f       	sbci	r24, 0xFF	; 255
    12a8:	9f 4f       	sbci	r25, 0xFF	; 255
    12aa:	08 95       	ret

000012ac <__tablejump2__>:
    12ac:	ee 0f       	add	r30, r30
    12ae:	ff 1f       	adc	r31, r31
    12b0:	05 90       	lpm	r0, Z+
    12b2:	f4 91       	lpm	r31, Z
    12b4:	e0 2d       	mov	r30, r0
    12b6:	09 94       	ijmp

000012b8 <malloc>:
    12b8:	cf 93       	push	r28
    12ba:	df 93       	push	r29
    12bc:	82 30       	cpi	r24, 0x02	; 2
    12be:	91 05       	cpc	r25, r1
    12c0:	10 f4       	brcc	.+4      	; 0x12c6 <malloc+0xe>
    12c2:	82 e0       	ldi	r24, 0x02	; 2
    12c4:	90 e0       	ldi	r25, 0x00	; 0
    12c6:	e0 91 a4 01 	lds	r30, 0x01A4
    12ca:	f0 91 a5 01 	lds	r31, 0x01A5
    12ce:	20 e0       	ldi	r18, 0x00	; 0
    12d0:	30 e0       	ldi	r19, 0x00	; 0
    12d2:	c0 e0       	ldi	r28, 0x00	; 0
    12d4:	d0 e0       	ldi	r29, 0x00	; 0
    12d6:	30 97       	sbiw	r30, 0x00	; 0
    12d8:	11 f1       	breq	.+68     	; 0x131e <malloc+0x66>
    12da:	40 81       	ld	r20, Z
    12dc:	51 81       	ldd	r21, Z+1	; 0x01
    12de:	48 17       	cp	r20, r24
    12e0:	59 07       	cpc	r21, r25
    12e2:	c0 f0       	brcs	.+48     	; 0x1314 <malloc+0x5c>
    12e4:	48 17       	cp	r20, r24
    12e6:	59 07       	cpc	r21, r25
    12e8:	61 f4       	brne	.+24     	; 0x1302 <malloc+0x4a>
    12ea:	82 81       	ldd	r24, Z+2	; 0x02
    12ec:	93 81       	ldd	r25, Z+3	; 0x03
    12ee:	20 97       	sbiw	r28, 0x00	; 0
    12f0:	19 f0       	breq	.+6      	; 0x12f8 <malloc+0x40>
    12f2:	9b 83       	std	Y+3, r25	; 0x03
    12f4:	8a 83       	std	Y+2, r24	; 0x02
    12f6:	2b c0       	rjmp	.+86     	; 0x134e <malloc+0x96>
    12f8:	90 93 a5 01 	sts	0x01A5, r25
    12fc:	80 93 a4 01 	sts	0x01A4, r24
    1300:	26 c0       	rjmp	.+76     	; 0x134e <malloc+0x96>
    1302:	21 15       	cp	r18, r1
    1304:	31 05       	cpc	r19, r1
    1306:	19 f0       	breq	.+6      	; 0x130e <malloc+0x56>
    1308:	42 17       	cp	r20, r18
    130a:	53 07       	cpc	r21, r19
    130c:	18 f4       	brcc	.+6      	; 0x1314 <malloc+0x5c>
    130e:	9a 01       	movw	r18, r20
    1310:	be 01       	movw	r22, r28
    1312:	df 01       	movw	r26, r30
    1314:	ef 01       	movw	r28, r30
    1316:	02 80       	ldd	r0, Z+2	; 0x02
    1318:	f3 81       	ldd	r31, Z+3	; 0x03
    131a:	e0 2d       	mov	r30, r0
    131c:	dc cf       	rjmp	.-72     	; 0x12d6 <malloc+0x1e>
    131e:	21 15       	cp	r18, r1
    1320:	31 05       	cpc	r19, r1
    1322:	09 f1       	breq	.+66     	; 0x1366 <malloc+0xae>
    1324:	28 1b       	sub	r18, r24
    1326:	39 0b       	sbc	r19, r25
    1328:	24 30       	cpi	r18, 0x04	; 4
    132a:	31 05       	cpc	r19, r1
    132c:	90 f4       	brcc	.+36     	; 0x1352 <malloc+0x9a>
    132e:	12 96       	adiw	r26, 0x02	; 2
    1330:	8d 91       	ld	r24, X+
    1332:	9c 91       	ld	r25, X
    1334:	13 97       	sbiw	r26, 0x03	; 3
    1336:	61 15       	cp	r22, r1
    1338:	71 05       	cpc	r23, r1
    133a:	21 f0       	breq	.+8      	; 0x1344 <malloc+0x8c>
    133c:	fb 01       	movw	r30, r22
    133e:	93 83       	std	Z+3, r25	; 0x03
    1340:	82 83       	std	Z+2, r24	; 0x02
    1342:	04 c0       	rjmp	.+8      	; 0x134c <malloc+0x94>
    1344:	90 93 a5 01 	sts	0x01A5, r25
    1348:	80 93 a4 01 	sts	0x01A4, r24
    134c:	fd 01       	movw	r30, r26
    134e:	32 96       	adiw	r30, 0x02	; 2
    1350:	44 c0       	rjmp	.+136    	; 0x13da <malloc+0x122>
    1352:	fd 01       	movw	r30, r26
    1354:	e2 0f       	add	r30, r18
    1356:	f3 1f       	adc	r31, r19
    1358:	81 93       	st	Z+, r24
    135a:	91 93       	st	Z+, r25
    135c:	22 50       	subi	r18, 0x02	; 2
    135e:	31 09       	sbc	r19, r1
    1360:	2d 93       	st	X+, r18
    1362:	3c 93       	st	X, r19
    1364:	3a c0       	rjmp	.+116    	; 0x13da <malloc+0x122>
    1366:	20 91 a2 01 	lds	r18, 0x01A2
    136a:	30 91 a3 01 	lds	r19, 0x01A3
    136e:	23 2b       	or	r18, r19
    1370:	41 f4       	brne	.+16     	; 0x1382 <malloc+0xca>
    1372:	20 91 02 01 	lds	r18, 0x0102
    1376:	30 91 03 01 	lds	r19, 0x0103
    137a:	30 93 a3 01 	sts	0x01A3, r19
    137e:	20 93 a2 01 	sts	0x01A2, r18
    1382:	20 91 00 01 	lds	r18, 0x0100
    1386:	30 91 01 01 	lds	r19, 0x0101
    138a:	21 15       	cp	r18, r1
    138c:	31 05       	cpc	r19, r1
    138e:	41 f4       	brne	.+16     	; 0x13a0 <malloc+0xe8>
    1390:	2d b7       	in	r18, 0x3d	; 61
    1392:	3e b7       	in	r19, 0x3e	; 62
    1394:	40 91 04 01 	lds	r20, 0x0104
    1398:	50 91 05 01 	lds	r21, 0x0105
    139c:	24 1b       	sub	r18, r20
    139e:	35 0b       	sbc	r19, r21
    13a0:	e0 91 a2 01 	lds	r30, 0x01A2
    13a4:	f0 91 a3 01 	lds	r31, 0x01A3
    13a8:	e2 17       	cp	r30, r18
    13aa:	f3 07       	cpc	r31, r19
    13ac:	a0 f4       	brcc	.+40     	; 0x13d6 <malloc+0x11e>
    13ae:	2e 1b       	sub	r18, r30
    13b0:	3f 0b       	sbc	r19, r31
    13b2:	28 17       	cp	r18, r24
    13b4:	39 07       	cpc	r19, r25
    13b6:	78 f0       	brcs	.+30     	; 0x13d6 <malloc+0x11e>
    13b8:	ac 01       	movw	r20, r24
    13ba:	4e 5f       	subi	r20, 0xFE	; 254
    13bc:	5f 4f       	sbci	r21, 0xFF	; 255
    13be:	24 17       	cp	r18, r20
    13c0:	35 07       	cpc	r19, r21
    13c2:	48 f0       	brcs	.+18     	; 0x13d6 <malloc+0x11e>
    13c4:	4e 0f       	add	r20, r30
    13c6:	5f 1f       	adc	r21, r31
    13c8:	50 93 a3 01 	sts	0x01A3, r21
    13cc:	40 93 a2 01 	sts	0x01A2, r20
    13d0:	81 93       	st	Z+, r24
    13d2:	91 93       	st	Z+, r25
    13d4:	02 c0       	rjmp	.+4      	; 0x13da <malloc+0x122>
    13d6:	e0 e0       	ldi	r30, 0x00	; 0
    13d8:	f0 e0       	ldi	r31, 0x00	; 0
    13da:	cf 01       	movw	r24, r30
    13dc:	df 91       	pop	r29
    13de:	cf 91       	pop	r28
    13e0:	08 95       	ret

000013e2 <free>:
    13e2:	0f 93       	push	r16
    13e4:	1f 93       	push	r17
    13e6:	cf 93       	push	r28
    13e8:	df 93       	push	r29
    13ea:	00 97       	sbiw	r24, 0x00	; 0
    13ec:	09 f4       	brne	.+2      	; 0x13f0 <free+0xe>
    13ee:	8c c0       	rjmp	.+280    	; 0x1508 <free+0x126>
    13f0:	fc 01       	movw	r30, r24
    13f2:	32 97       	sbiw	r30, 0x02	; 2
    13f4:	13 82       	std	Z+3, r1	; 0x03
    13f6:	12 82       	std	Z+2, r1	; 0x02
    13f8:	00 91 a4 01 	lds	r16, 0x01A4
    13fc:	10 91 a5 01 	lds	r17, 0x01A5
    1400:	01 15       	cp	r16, r1
    1402:	11 05       	cpc	r17, r1
    1404:	81 f4       	brne	.+32     	; 0x1426 <free+0x44>
    1406:	20 81       	ld	r18, Z
    1408:	31 81       	ldd	r19, Z+1	; 0x01
    140a:	82 0f       	add	r24, r18
    140c:	93 1f       	adc	r25, r19
    140e:	20 91 a2 01 	lds	r18, 0x01A2
    1412:	30 91 a3 01 	lds	r19, 0x01A3
    1416:	28 17       	cp	r18, r24
    1418:	39 07       	cpc	r19, r25
    141a:	79 f5       	brne	.+94     	; 0x147a <free+0x98>
    141c:	f0 93 a3 01 	sts	0x01A3, r31
    1420:	e0 93 a2 01 	sts	0x01A2, r30
    1424:	71 c0       	rjmp	.+226    	; 0x1508 <free+0x126>
    1426:	d8 01       	movw	r26, r16
    1428:	40 e0       	ldi	r20, 0x00	; 0
    142a:	50 e0       	ldi	r21, 0x00	; 0
    142c:	ae 17       	cp	r26, r30
    142e:	bf 07       	cpc	r27, r31
    1430:	50 f4       	brcc	.+20     	; 0x1446 <free+0x64>
    1432:	12 96       	adiw	r26, 0x02	; 2
    1434:	2d 91       	ld	r18, X+
    1436:	3c 91       	ld	r19, X
    1438:	13 97       	sbiw	r26, 0x03	; 3
    143a:	ad 01       	movw	r20, r26
    143c:	21 15       	cp	r18, r1
    143e:	31 05       	cpc	r19, r1
    1440:	09 f1       	breq	.+66     	; 0x1484 <free+0xa2>
    1442:	d9 01       	movw	r26, r18
    1444:	f3 cf       	rjmp	.-26     	; 0x142c <free+0x4a>
    1446:	9d 01       	movw	r18, r26
    1448:	da 01       	movw	r26, r20
    144a:	33 83       	std	Z+3, r19	; 0x03
    144c:	22 83       	std	Z+2, r18	; 0x02
    144e:	60 81       	ld	r22, Z
    1450:	71 81       	ldd	r23, Z+1	; 0x01
    1452:	86 0f       	add	r24, r22
    1454:	97 1f       	adc	r25, r23
    1456:	82 17       	cp	r24, r18
    1458:	93 07       	cpc	r25, r19
    145a:	69 f4       	brne	.+26     	; 0x1476 <free+0x94>
    145c:	ec 01       	movw	r28, r24
    145e:	28 81       	ld	r18, Y
    1460:	39 81       	ldd	r19, Y+1	; 0x01
    1462:	26 0f       	add	r18, r22
    1464:	37 1f       	adc	r19, r23
    1466:	2e 5f       	subi	r18, 0xFE	; 254
    1468:	3f 4f       	sbci	r19, 0xFF	; 255
    146a:	31 83       	std	Z+1, r19	; 0x01
    146c:	20 83       	st	Z, r18
    146e:	8a 81       	ldd	r24, Y+2	; 0x02
    1470:	9b 81       	ldd	r25, Y+3	; 0x03
    1472:	93 83       	std	Z+3, r25	; 0x03
    1474:	82 83       	std	Z+2, r24	; 0x02
    1476:	45 2b       	or	r20, r21
    1478:	29 f4       	brne	.+10     	; 0x1484 <free+0xa2>
    147a:	f0 93 a5 01 	sts	0x01A5, r31
    147e:	e0 93 a4 01 	sts	0x01A4, r30
    1482:	42 c0       	rjmp	.+132    	; 0x1508 <free+0x126>
    1484:	13 96       	adiw	r26, 0x03	; 3
    1486:	fc 93       	st	X, r31
    1488:	ee 93       	st	-X, r30
    148a:	12 97       	sbiw	r26, 0x02	; 2
    148c:	ed 01       	movw	r28, r26
    148e:	49 91       	ld	r20, Y+
    1490:	59 91       	ld	r21, Y+
    1492:	9e 01       	movw	r18, r28
    1494:	24 0f       	add	r18, r20
    1496:	35 1f       	adc	r19, r21
    1498:	e2 17       	cp	r30, r18
    149a:	f3 07       	cpc	r31, r19
    149c:	71 f4       	brne	.+28     	; 0x14ba <free+0xd8>
    149e:	80 81       	ld	r24, Z
    14a0:	91 81       	ldd	r25, Z+1	; 0x01
    14a2:	84 0f       	add	r24, r20
    14a4:	95 1f       	adc	r25, r21
    14a6:	02 96       	adiw	r24, 0x02	; 2
    14a8:	11 96       	adiw	r26, 0x01	; 1
    14aa:	9c 93       	st	X, r25
    14ac:	8e 93       	st	-X, r24
    14ae:	82 81       	ldd	r24, Z+2	; 0x02
    14b0:	93 81       	ldd	r25, Z+3	; 0x03
    14b2:	13 96       	adiw	r26, 0x03	; 3
    14b4:	9c 93       	st	X, r25
    14b6:	8e 93       	st	-X, r24
    14b8:	12 97       	sbiw	r26, 0x02	; 2
    14ba:	e0 e0       	ldi	r30, 0x00	; 0
    14bc:	f0 e0       	ldi	r31, 0x00	; 0
    14be:	d8 01       	movw	r26, r16
    14c0:	12 96       	adiw	r26, 0x02	; 2
    14c2:	8d 91       	ld	r24, X+
    14c4:	9c 91       	ld	r25, X
    14c6:	13 97       	sbiw	r26, 0x03	; 3
    14c8:	00 97       	sbiw	r24, 0x00	; 0
    14ca:	19 f0       	breq	.+6      	; 0x14d2 <free+0xf0>
    14cc:	f8 01       	movw	r30, r16
    14ce:	8c 01       	movw	r16, r24
    14d0:	f6 cf       	rjmp	.-20     	; 0x14be <free+0xdc>
    14d2:	8d 91       	ld	r24, X+
    14d4:	9c 91       	ld	r25, X
    14d6:	98 01       	movw	r18, r16
    14d8:	2e 5f       	subi	r18, 0xFE	; 254
    14da:	3f 4f       	sbci	r19, 0xFF	; 255
    14dc:	82 0f       	add	r24, r18
    14de:	93 1f       	adc	r25, r19
    14e0:	20 91 a2 01 	lds	r18, 0x01A2
    14e4:	30 91 a3 01 	lds	r19, 0x01A3
    14e8:	28 17       	cp	r18, r24
    14ea:	39 07       	cpc	r19, r25
    14ec:	69 f4       	brne	.+26     	; 0x1508 <free+0x126>
    14ee:	30 97       	sbiw	r30, 0x00	; 0
    14f0:	29 f4       	brne	.+10     	; 0x14fc <free+0x11a>
    14f2:	10 92 a5 01 	sts	0x01A5, r1
    14f6:	10 92 a4 01 	sts	0x01A4, r1
    14fa:	02 c0       	rjmp	.+4      	; 0x1500 <free+0x11e>
    14fc:	13 82       	std	Z+3, r1	; 0x03
    14fe:	12 82       	std	Z+2, r1	; 0x02
    1500:	10 93 a3 01 	sts	0x01A3, r17
    1504:	00 93 a2 01 	sts	0x01A2, r16
    1508:	df 91       	pop	r29
    150a:	cf 91       	pop	r28
    150c:	1f 91       	pop	r17
    150e:	0f 91       	pop	r16
    1510:	08 95       	ret

00001512 <__do_global_dtors>:
    1512:	10 e0       	ldi	r17, 0x00	; 0
    1514:	c6 e3       	ldi	r28, 0x36	; 54
    1516:	d0 e0       	ldi	r29, 0x00	; 0
    1518:	04 c0       	rjmp	.+8      	; 0x1522 <__do_global_dtors+0x10>
    151a:	fe 01       	movw	r30, r28
    151c:	0e 94 56 09 	call	0x12ac	; 0x12ac <__tablejump2__>
    1520:	21 96       	adiw	r28, 0x01	; 1
    1522:	c7 33       	cpi	r28, 0x37	; 55
    1524:	d1 07       	cpc	r29, r17
    1526:	c9 f7       	brne	.-14     	; 0x151a <__do_global_dtors+0x8>
    1528:	f8 94       	cli

0000152a <__stop_program>:
    152a:	ff cf       	rjmp	.-2      	; 0x152a <__stop_program>
