
hello:     file format elf32-tradlittlemips


Disassembly of section .interp:

00400194 <.interp>:
  400194:	62696c2f 	0x62696c2f
  400198:	2e646c2f 	sltiu	a0,s3,27695
  40019c:	312e6f73 	andi	t6,t1,0x6f73
	...

Disassembly of section .note.ABI-tag:

004001a4 <.note.ABI-tag>:
  4001a4:	00000004 	sllv	zero,zero,zero
  4001a8:	00000010 	mfhi	zero
  4001ac:	00000001 	0x1
  4001b0:	00554e47 	0x554e47
  4001b4:	00000000 	nop
  4001b8:	00000003 	sra	zero,zero,0x0
  4001bc:	00000002 	srl	zero,zero,0x0
  4001c0:	00000000 	nop

Disassembly of section .MIPS.abiflags:

004001c8 <.MIPS.abiflags>:
  4001c8:	00020000 	sll	zero,v0,0x0
  4001cc:	05000101 	bltz	t0,4005d4 <__start+0x14>
  4001d0:	00000000 	nop
	...

Disassembly of section .reginfo:

004001e0 <.reginfo>:
  4001e0:	b20001f6 	0xb20001f6
	...
  4001f4:	00419010 	0x419010

Disassembly of section .note.gnu.build-id:

004001f8 <.note.gnu.build-id>:
  4001f8:	00000004 	sllv	zero,zero,zero
  4001fc:	00000014 	0x14
  400200:	00000003 	sra	zero,zero,0x0
  400204:	00554e47 	0x554e47
  400208:	58808cea 	blezl	a0,3e35b4 <_DYNAMIC-0x1cc68>
  40020c:	c99bb780 	lwc2	$27,-18560(t4)
  400210:	45b6e647 	0x45b6e647
  400214:	cb508a49 	lwc2	$16,-30135(k0)
  400218:	0ecbb157 	jal	b2ec55c <_gp+0xaed354c>

Disassembly of section .dynamic:

0040021c <_DYNAMIC>:
  40021c:	00000001 	0x1
  400220:	00000091 	0x91
  400224:	0000000c 	syscall
  400228:	00400534 	teq	v0,zero,0x14
  40022c:	0000000d 	break
  400230:	00400950 	0x400950
  400234:	00000004 	sllv	zero,zero,zero
  400238:	004002fc 	0x4002fc
  40023c:	00000005 	0x5
  400240:	00400428 	0x400428
  400244:	00000006 	srlv	zero,zero,zero
  400248:	00400348 	0x400348
  40024c:	0000000a 	0xa
  400250:	000000cf 	0xcf
  400254:	0000000b 	0xb
  400258:	00000010 	mfhi	zero
  40025c:	70000016 	0x70000016
  400260:	00411010 	0x411010
  400264:	70000035 	0x70000035
  400268:	00010dac 	0x10dac
  40026c:	00000015 	0x15
  400270:	00000000 	nop
  400274:	00000003 	sra	zero,zero,0x0
  400278:	00411020 	add	v0,v0,at
  40027c:	70000001 	0x70000001
  400280:	00000001 	0x1
  400284:	70000005 	0x70000005
  400288:	00000002 	srl	zero,zero,0x0
  40028c:	70000006 	0x70000006
  400290:	00400000 	0x400000
  400294:	7000000a 	0x7000000a
  400298:	0000000b 	0xb
  40029c:	70000011 	0x70000011
  4002a0:	0000000e 	0xe
  4002a4:	70000012 	0x70000012
  4002a8:	0000001e 	0x1e
  4002ac:	70000013 	0x70000013
  4002b0:	00000008 	jr	zero
  4002b4:	6ffffffe 	0x6ffffffe
  4002b8:	00400514 	0x400514
  4002bc:	6fffffff 	0x6fffffff
  4002c0:	00000001 	0x1
  4002c4:	6ffffff0 	0x6ffffff0
  4002c8:	004004f8 	0x4004f8
	...

Disassembly of section .hash:

004002fc <.hash>:
  4002fc:	00000003 	sra	zero,zero,0x0
  400300:	0000000e 	0xe
  400304:	00000007 	srav	zero,zero,zero
  400308:	00000008 	jr	zero
  40030c:	00000004 	sllv	zero,zero,zero
	...
  400320:	00000003 	sra	zero,zero,0x0
  400324:	0000000a 	0xa
  400328:	00000005 	0x5
  40032c:	00000009 	jalr	zero,zero
  400330:	00000006 	srlv	zero,zero,zero
  400334:	0000000b 	0xb
  400338:	0000000c 	syscall
  40033c:	00000001 	0x1
  400340:	0000000d 	break
  400344:	00000002 	srl	zero,zero,0x0

Disassembly of section .dynsym:

00400348 <.dynsym>:
	...
  400358:	00000011 	mthi	zero
  40035c:	004008b4 	teq	v0,zero,0x22
  400360:	00000008 	jr	zero
  400364:	000d0012 	0xd0012
  400368:	0000009b 	0x9b
  40036c:	00000001 	0x1
  400370:	00000000 	nop
  400374:	fff10013 	sdc3	$17,19(ra)
  400378:	000000b6 	tne	zero,zero,0x2
  40037c:	004009a0 	0x4009a0
  400380:	00000004 	sllv	zero,zero,zero
  400384:	00100011 	0x100011
  400388:	000000ac 	0xac
  40038c:	00411010 	0x411010
  400390:	00000000 	nop
  400394:	00160011 	0x160011
  400398:	00000001 	0x1
  40039c:	00400810 	0x400810
  4003a0:	000000a4 	0xa4
  4003a4:	000d0012 	0xd0012
  4003a8:	0000002e 	0x2e
  4003ac:	004007b0 	tge	v0,zero,0x1e
  4003b0:	00000054 	0x54
  4003b4:	000d0012 	0xd0012
  4003b8:	0000000b 	0xb
  4003bc:	00400534 	teq	v0,zero,0x14
  4003c0:	00000000 	nop
  4003c4:	000c0012 	0xc0012
  4003c8:	0000005e 	0x5e
	...
  4003d4:	00000020 	add	zero,zero,zero
  4003d8:	00000078 	0x78
	...
  4003e4:	00000020 	add	zero,zero,zero
  4003e8:	00000021 	move	zero,zero
  4003ec:	00400930 	tge	v0,zero,0x24
  4003f0:	00000000 	nop
  4003f4:	00000012 	mflo	zero
  4003f8:	00000033 	tltu	zero,zero
	...
  400404:	00000022 	neg	zero,zero
  400408:	0000008c 	syscall	0x2
  40040c:	00400920 	0x400920
  400410:	00000000 	nop
  400414:	00000012 	mflo	zero
  400418:	00000042 	srl	zero,zero,0x1
	...
  400424:	00000020 	add	zero,zero,zero

Disassembly of section .dynstr:

00400428 <.dynstr>:
  400428:	6c5f5f00 	0x6c5f5f00
  40042c:	5f636269 	0x5f636269
  400430:	5f757363 	0x5f757363
  400434:	74696e69 	jalx	1a5b9a4 <_gp+0x1642994>
  400438:	6c5f5f00 	0x6c5f5f00
  40043c:	5f636269 	0x5f636269
  400440:	5f757363 	0x5f757363
  400444:	696e6966 	0x696e6966
  400448:	6c5f5f00 	0x6c5f5f00
  40044c:	5f636269 	0x5f636269
  400450:	72617473 	0x72617473
  400454:	616d5f74 	0x616d5f74
  400458:	5f006e69 	bgtzl	t8,41be00 <_gp+0x2df0>
  40045c:	6f6d675f 	0x6f6d675f
  400460:	74735f6e 	jalx	1cd7db8 <_gp+0x18beda8>
  400464:	5f747261 	0x5f747261
  400468:	495f005f 	0x495f005f
  40046c:	645f4d54 	0x645f4d54
  400470:	67657265 	0x67657265
  400474:	65747369 	0x65747369
  400478:	434d5472 	c0	0x14d5472
  40047c:	656e6f6c 	0x656e6f6c
  400480:	6c626154 	0x6c626154
  400484:	495f0065 	0x495f0065
  400488:	725f4d54 	0x725f4d54
  40048c:	73696765 	0x73696765
  400490:	54726574 	bnel	v1,s2,419a64 <_gp+0xa54>
  400494:	6f6c434d 	0x6f6c434d
  400498:	6154656e 	0x6154656e
  40049c:	00656c62 	0x656c62
  4004a0:	5f764a5f 	0x5f764a5f
  4004a4:	69676552 	0x69676552
  4004a8:	72657473 	0x72657473
  4004ac:	73616c43 	0x73616c43
  4004b0:	00736573 	tltu	v1,s3,0x195
  4004b4:	73747570 	0x73747570
  4004b8:	62696c00 	0x62696c00
  4004bc:	6f732e63 	0x6f732e63
  4004c0:	5f00362e 	bgtzl	t8,40dd7c <__FRAME_END__+0xd3bc>
  4004c4:	414e5944 	0x414e5944
  4004c8:	5f43494d 	0x5f43494d
  4004cc:	4b4e494c 	c2	0x14e494c
  4004d0:	00474e49 	0x474e49
  4004d4:	4c525f5f 	0x4c525f5f
  4004d8:	414d5f44 	0x414d5f44
  4004dc:	495f0050 	0x495f0050
  4004e0:	74735f4f 	jalx	1cd7d3c <_gp+0x18bed2c>
  4004e4:	5f6e6964 	0x5f6e6964
  4004e8:	64657375 	0x64657375
  4004ec:	494c4700 	0x494c4700
  4004f0:	325f4342 	andi	ra,s2,0x4342
  4004f4:	Address 0x00000000004004f4 is out of bounds.


Disassembly of section .gnu.version:

004004f8 <.gnu.version>:
  4004f8:	00010000 	sll	zero,at,0x0
  4004fc:	00010001 	0x10001
  400500:	00010001 	0x10001
  400504:	00010001 	0x10001
  400508:	00000000 	nop
  40050c:	00000002 	srl	zero,zero,0x0
  400510:	00000002 	srl	zero,zero,0x0

Disassembly of section .gnu.version_r:

00400514 <.gnu.version_r>:
  400514:	00010001 	0x10001
  400518:	00000091 	0x91
  40051c:	00000010 	mfhi	zero
  400520:	00000000 	nop
  400524:	0d696910 	jal	5a5a440 <_gp+0x5641430>
  400528:	00020000 	sll	zero,v0,0x0
  40052c:	000000c5 	0xc5
  400530:	00000000 	nop

Disassembly of section .init:

00400534 <_init>:
  400534:	3c1c0002 	lui	gp,0x2
  400538:	279c8adc 	addiu	gp,gp,-29988
  40053c:	0399e021 	addu	gp,gp,t9
  400540:	27bdffe0 	addiu	sp,sp,-32
  400544:	afbc0010 	sw	gp,16(sp)
  400548:	afbf001c 	sw	ra,28(sp)
  40054c:	8f828048 	lw	v0,-32696(gp)
  400550:	10400004 	beqz	v0,400564 <_init+0x30>
  400554:	00200825 	move	at,at
  400558:	8f998048 	lw	t9,-32696(gp)
  40055c:	0320f809 	jalr	t9
  400560:	00200825 	move	at,at
  400564:	04110001 	bal	40056c <_init+0x38>
  400568:	00000000 	nop
  40056c:	3c1c0042 	lui	gp,0x42
  400570:	279c9010 	addiu	gp,gp,-28656
  400574:	8f998024 	lw	t9,-32732(gp)
  400578:	2739075c 	addiu	t9,t9,1884
  40057c:	04110077 	bal	40075c <frame_dummy>
  400580:	00000000 	nop
  400584:	8fbc0010 	lw	gp,16(sp)
  400588:	04110001 	bal	400590 <_init+0x5c>
  40058c:	00000000 	nop
  400590:	3c1c0042 	lui	gp,0x42
  400594:	279c9010 	addiu	gp,gp,-28656
  400598:	8f998024 	lw	t9,-32732(gp)
  40059c:	273908c0 	addiu	t9,t9,2240
  4005a0:	041100c7 	bal	4008c0 <__do_global_ctors_aux>
  4005a4:	00000000 	nop
  4005a8:	8fbf001c 	lw	ra,28(sp)
  4005ac:	03e00008 	jr	ra
  4005b0:	27bd0020 	addiu	sp,sp,32

Disassembly of section .text:

004005c0 <__start>:
  4005c0:	03e00025 	move	zero,ra
  4005c4:	04110001 	bal	4005cc <__start+0xc>
  4005c8:	00200825 	move	at,at
  4005cc:	3c1c0042 	lui	gp,0x42
  4005d0:	279c9010 	addiu	gp,gp,-28656
  4005d4:	0000f825 	move	ra,zero
  4005d8:	8f848018 	lw	a0,-32744(gp)
  4005dc:	8fa50000 	lw	a1,0(sp)
  4005e0:	27a60004 	addiu	a2,sp,4
  4005e4:	2401fff8 	li	at,-8
  4005e8:	03a1e824 	and	sp,sp,at
  4005ec:	27bdffe0 	addiu	sp,sp,-32
  4005f0:	8f87801c 	lw	a3,-32740(gp)
  4005f4:	8f888020 	lw	t0,-32736(gp)
  4005f8:	afa80010 	sw	t0,16(sp)
  4005fc:	afa20014 	sw	v0,20(sp)
  400600:	afbd0018 	sw	sp,24(sp)
  400604:	8f998044 	lw	t9,-32700(gp)
  400608:	0320f809 	jalr	t9
  40060c:	00200825 	move	at,at

00400610 <hlt>:
  400610:	1000ffff 	b	400610 <hlt>
  400614:	00200825 	move	at,at
  400618:	00200825 	move	at,at
  40061c:	00200825 	move	at,at

00400620 <deregister_tm_clones>:
  400620:	3c040041 	lui	a0,0x41
  400624:	3c020041 	lui	v0,0x41
  400628:	24841014 	addiu	a0,a0,4116
  40062c:	24421017 	addiu	v0,v0,4119
  400630:	00441023 	subu	v0,v0,a0
  400634:	2c420007 	sltiu	v0,v0,7
  400638:	14400007 	bnez	v0,400658 <deregister_tm_clones+0x38>
  40063c:	3c1c0042 	lui	gp,0x42
  400640:	279c9010 	addiu	gp,gp,-28656
  400644:	8f998050 	lw	t9,-32688(gp)
  400648:	13200003 	beqz	t9,400658 <deregister_tm_clones+0x38>
  40064c:	00000000 	nop
  400650:	03200008 	jr	t9
  400654:	00000000 	nop
  400658:	03e00008 	jr	ra
  40065c:	00000000 	nop

00400660 <register_tm_clones>:
  400660:	3c040041 	lui	a0,0x41
  400664:	3c020041 	lui	v0,0x41
  400668:	24841014 	addiu	a0,a0,4116
  40066c:	24421014 	addiu	v0,v0,4116
  400670:	00441023 	subu	v0,v0,a0
  400674:	00021083 	sra	v0,v0,0x2
  400678:	00022fc2 	srl	a1,v0,0x1f
  40067c:	00a22821 	addu	a1,a1,v0
  400680:	00052843 	sra	a1,a1,0x1
  400684:	10a00007 	beqz	a1,4006a4 <register_tm_clones+0x44>
  400688:	3c1c0042 	lui	gp,0x42
  40068c:	279c9010 	addiu	gp,gp,-28656
  400690:	8f99803c 	lw	t9,-32708(gp)
  400694:	13200003 	beqz	t9,4006a4 <register_tm_clones+0x44>
  400698:	00000000 	nop
  40069c:	03200008 	jr	t9
  4006a0:	00000000 	nop
  4006a4:	03e00008 	jr	ra
  4006a8:	00000000 	nop

004006ac <__do_global_dtors_aux>:
  4006ac:	27bdffd0 	addiu	sp,sp,-48
  4006b0:	afb30028 	sw	s3,40(sp)
  4006b4:	3c130041 	lui	s3,0x41
  4006b8:	afbf002c 	sw	ra,44(sp)
  4006bc:	afb20024 	sw	s2,36(sp)
  4006c0:	afb10020 	sw	s1,32(sp)
  4006c4:	afb0001c 	sw	s0,28(sp)
  4006c8:	92621070 	lbu	v0,4208(s3)
  4006cc:	1440001c 	bnez	v0,400740 <__do_global_dtors_aux+0x94>
  4006d0:	3c110041 	lui	s1,0x41
  4006d4:	3c020041 	lui	v0,0x41
  4006d8:	26310ff4 	addiu	s1,s1,4084
  4006dc:	24420ff8 	addiu	v0,v0,4088
  4006e0:	3c100041 	lui	s0,0x41
  4006e4:	00518823 	subu	s1,v0,s1
  4006e8:	3c020041 	lui	v0,0x41
  4006ec:	00118883 	sra	s1,s1,0x2
  4006f0:	24520ff4 	addiu	s2,v0,4084
  4006f4:	8e021074 	lw	v0,4212(s0)
  4006f8:	2631ffff 	addiu	s1,s1,-1
  4006fc:	0051182b 	sltu	v1,v0,s1
  400700:	1060000b 	beqz	v1,400730 <__do_global_dtors_aux+0x84>
  400704:	24420001 	addiu	v0,v0,1
  400708:	00021880 	sll	v1,v0,0x2
  40070c:	ae021074 	sw	v0,4212(s0)
  400710:	02431021 	addu	v0,s2,v1
  400714:	8c590000 	lw	t9,0(v0)
  400718:	0320f809 	jalr	t9
  40071c:	00000000 	nop
  400720:	8e021074 	lw	v0,4212(s0)
  400724:	0051182b 	sltu	v1,v0,s1
  400728:	1460fff7 	bnez	v1,400708 <__do_global_dtors_aux+0x5c>
  40072c:	24420001 	addiu	v0,v0,1
  400730:	0c100188 	jal	400620 <deregister_tm_clones>
  400734:	00000000 	nop
  400738:	24020001 	li	v0,1
  40073c:	a2621070 	sb	v0,4208(s3)
  400740:	8fbf002c 	lw	ra,44(sp)
  400744:	8fb30028 	lw	s3,40(sp)
  400748:	8fb20024 	lw	s2,36(sp)
  40074c:	8fb10020 	lw	s1,32(sp)
  400750:	8fb0001c 	lw	s0,28(sp)
  400754:	03e00008 	jr	ra
  400758:	27bd0030 	addiu	sp,sp,48

0040075c <frame_dummy>:
  40075c:	3c020041 	lui	v0,0x41
  400760:	24440ffc 	addiu	a0,v0,4092
  400764:	8c820000 	lw	v0,0(a0)
  400768:	14400003 	bnez	v0,400778 <frame_dummy+0x1c>
  40076c:	3c1c0042 	lui	gp,0x42
  400770:	08100198 	j	400660 <register_tm_clones>
  400774:	00000000 	nop
  400778:	27bdffe0 	addiu	sp,sp,-32
  40077c:	279c9010 	addiu	gp,gp,-28656
  400780:	afbf001c 	sw	ra,28(sp)
  400784:	afbc0010 	sw	gp,16(sp)
  400788:	8f998040 	lw	t9,-32704(gp)
  40078c:	13200005 	beqz	t9,4007a4 <frame_dummy+0x48>
  400790:	8fbf001c 	lw	ra,28(sp)
  400794:	0320f809 	jalr	t9
  400798:	00000000 	nop
  40079c:	8fbc0010 	lw	gp,16(sp)
  4007a0:	8fbf001c 	lw	ra,28(sp)
  4007a4:	08100198 	j	400660 <register_tm_clones>
  4007a8:	27bd0020 	addiu	sp,sp,32
  4007ac:	00000000 	nop

004007b0 <main>:
  4007b0:	27bdffe0 	addiu	sp,sp,-32
  4007b4:	afbf001c 	sw	ra,28(sp)
  4007b8:	afbe0018 	sw	s8,24(sp)
  4007bc:	03a0f025 	move	s8,sp
  4007c0:	3c1c0042 	lui	gp,0x42
  4007c4:	279c9010 	addiu	gp,gp,-28656
  4007c8:	afbc0010 	sw	gp,16(sp)
  4007cc:	3c020040 	lui	v0,0x40
  4007d0:	244409b0 	addiu	a0,v0,2480
  4007d4:	8f82804c 	lw	v0,-32692(gp)
  4007d8:	0040c825 	move	t9,v0
  4007dc:	0320f809 	jalr	t9
  4007e0:	00000000 	nop
  4007e4:	8fdc0010 	lw	gp,16(s8)
  4007e8:	00001025 	move	v0,zero
  4007ec:	03c0e825 	move	sp,s8
  4007f0:	8fbf001c 	lw	ra,28(sp)
  4007f4:	8fbe0018 	lw	s8,24(sp)
  4007f8:	27bd0020 	addiu	sp,sp,32
  4007fc:	03e00008 	jr	ra
  400800:	00000000 	nop
	...

00400810 <__libc_csu_init>:
  400810:	3c1c0002 	lui	gp,0x2
  400814:	279c8800 	addiu	gp,gp,-30720
  400818:	0399e021 	addu	gp,gp,t9
  40081c:	27bdffc8 	addiu	sp,sp,-56
  400820:	8f998028 	lw	t9,-32728(gp)
  400824:	afbc0010 	sw	gp,16(sp)
  400828:	afb50030 	sw	s5,48(sp)
  40082c:	00c0a825 	move	s5,a2
  400830:	afb4002c 	sw	s4,44(sp)
  400834:	00a0a025 	move	s4,a1
  400838:	afb30028 	sw	s3,40(sp)
  40083c:	00809825 	move	s3,a0
  400840:	afb20024 	sw	s2,36(sp)
  400844:	afb0001c 	sw	s0,28(sp)
  400848:	afbf0034 	sw	ra,52(sp)
  40084c:	0411ff39 	bal	400534 <_init>
  400850:	afb10020 	sw	s1,32(sp)
  400854:	8fbc0010 	lw	gp,16(sp)
  400858:	8f90802c 	lw	s0,-32724(gp)
  40085c:	8f92802c 	lw	s2,-32724(gp)
  400860:	02509023 	subu	s2,s2,s0
  400864:	00129083 	sra	s2,s2,0x2
  400868:	12400009 	beqz	s2,400890 <__libc_csu_init+0x80>
  40086c:	00008825 	move	s1,zero
  400870:	8e190000 	lw	t9,0(s0)
  400874:	26310001 	addiu	s1,s1,1
  400878:	02a03025 	move	a2,s5
  40087c:	02802825 	move	a1,s4
  400880:	0320f809 	jalr	t9
  400884:	02602025 	move	a0,s3
  400888:	1632fff9 	bne	s1,s2,400870 <__libc_csu_init+0x60>
  40088c:	26100004 	addiu	s0,s0,4
  400890:	8fbf0034 	lw	ra,52(sp)
  400894:	8fb50030 	lw	s5,48(sp)
  400898:	8fb4002c 	lw	s4,44(sp)
  40089c:	8fb30028 	lw	s3,40(sp)
  4008a0:	8fb20024 	lw	s2,36(sp)
  4008a4:	8fb10020 	lw	s1,32(sp)
  4008a8:	8fb0001c 	lw	s0,28(sp)
  4008ac:	03e00008 	jr	ra
  4008b0:	27bd0038 	addiu	sp,sp,56

004008b4 <__libc_csu_fini>:
  4008b4:	03e00008 	jr	ra
  4008b8:	00200825 	move	at,at
  4008bc:	00200825 	move	at,at

004008c0 <__do_global_ctors_aux>:
  4008c0:	3c030041 	lui	v1,0x41
  4008c4:	2402ffff 	li	v0,-1
  4008c8:	8c790fec 	lw	t9,4076(v1)
  4008cc:	1322000f 	beq	t9,v0,40090c <__do_global_ctors_aux+0x4c>
  4008d0:	00000000 	nop
  4008d4:	27bdffd8 	addiu	sp,sp,-40
  4008d8:	afb10020 	sw	s1,32(sp)
  4008dc:	2411ffff 	li	s1,-1
  4008e0:	afb0001c 	sw	s0,28(sp)
  4008e4:	24700fec 	addiu	s0,v1,4076
  4008e8:	afbf0024 	sw	ra,36(sp)
  4008ec:	0320f809 	jalr	t9
  4008f0:	2610fffc 	addiu	s0,s0,-4
  4008f4:	8e190000 	lw	t9,0(s0)
  4008f8:	1731fffc 	bne	t9,s1,4008ec <__do_global_ctors_aux+0x2c>
  4008fc:	8fbf0024 	lw	ra,36(sp)
  400900:	8fb10020 	lw	s1,32(sp)
  400904:	8fb0001c 	lw	s0,28(sp)
  400908:	27bd0028 	addiu	sp,sp,40
  40090c:	03e00008 	jr	ra
  400910:	00000000 	nop
	...

Disassembly of section .MIPS.stubs:

00400920 <_MIPS_STUBS_>:
  400920:	8f998010 	lw	t9,-32752(gp)
  400924:	03e07825 	move	t7,ra
  400928:	0320f809 	jalr	t9
  40092c:	2418000c 	li	t8,12
  400930:	8f998010 	lw	t9,-32752(gp)
  400934:	03e07825 	move	t7,ra
  400938:	0320f809 	jalr	t9
  40093c:	2418000a 	li	t8,10
	...

Disassembly of section .fini:

00400950 <_fini>:
  400950:	3c1c0002 	lui	gp,0x2
  400954:	279c86c0 	addiu	gp,gp,-31040
  400958:	0399e021 	addu	gp,gp,t9
  40095c:	27bdffe0 	addiu	sp,sp,-32
  400960:	afbc0010 	sw	gp,16(sp)
  400964:	afbf001c 	sw	ra,28(sp)
  400968:	04110001 	bal	400970 <_fini+0x20>
  40096c:	00000000 	nop
  400970:	3c1c0042 	lui	gp,0x42
  400974:	279c9010 	addiu	gp,gp,-28656
  400978:	8f998024 	lw	t9,-32732(gp)
  40097c:	273906ac 	addiu	t9,t9,1708
  400980:	0411ff4a 	bal	4006ac <__do_global_dtors_aux>
  400984:	00000000 	nop
  400988:	8fbf001c 	lw	ra,28(sp)
  40098c:	03e00008 	jr	ra
  400990:	27bd0020 	addiu	sp,sp,32

Disassembly of section .rodata:

004009a0 <_IO_stdin_used>:
  4009a0:	00020001 	0x20001
	...
  4009b0:	6c6c6548 	0x6c6c6548
  4009b4:	57202c6f 	bnezl	t9,40bb74 <__FRAME_END__+0xb1b4>
  4009b8:	646c726f 	0x646c726f
  4009bc:	00000021 	move	zero,zero

Disassembly of section .eh_frame:

004009c0 <__FRAME_END__>:
  4009c0:	00000000 	nop

Disassembly of section .ctors:

00410fec <__CTOR_LIST__>:
  410fec:	ffffffff 	sdc3	$31,-1(ra)

00410ff0 <__CTOR_END__>:
  410ff0:	00000000 	nop

Disassembly of section .dtors:

00410ff4 <__DTOR_LIST__>:
  410ff4:	ffffffff 	sdc3	$31,-1(ra)

00410ff8 <__DTOR_END__>:
  410ff8:	00000000 	nop

Disassembly of section .jcr:

00410ffc <__JCR_END__>:
  410ffc:	00000000 	nop

Disassembly of section .data:

00411000 <__data_start>:
	...

Disassembly of section .rld_map:

00411010 <__RLD_MAP>:
  411010:	00000000 	nop

Disassembly of section .got:

00411020 <_GLOBAL_OFFSET_TABLE_>:
  411020:	00000000 	nop
  411024:	80000000 	lb	zero,0(zero)
  411028:	004007b0 	tge	v0,zero,0x1e
  41102c:	00400810 	0x400810
  411030:	004008b4 	teq	v0,zero,0x22
  411034:	00400000 	0x400000
  411038:	00400534 	teq	v0,zero,0x14
  41103c:	00410fec 	0x410fec
	...
  411054:	00400930 	tge	v0,zero,0x24
  411058:	00000000 	nop
  41105c:	00400920 	0x400920
  411060:	00000000 	nop

Disassembly of section .sdata:

00411064 <__dso_handle>:
  411064:	00000000 	nop

Disassembly of section .bss:

00411070 <completed.6840>:
  411070:	00000000 	nop

00411074 <dtor_idx.6842>:
	...

Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	xori	v1,s2,0x4347
   4:	62552820 	0x62552820
   8:	75746e75 	jalx	5d1b9d4 <_gp+0x59029c4>
   c:	342e3520 	ori	t6,at,0x3520
  10:	362d302e 	ori	t5,s1,0x302e
  14:	6e756275 	0x6e756275
  18:	7e317574 	0x7e317574
  1c:	302e3631 	andi	t6,at,0x3631
  20:	29312e34 	slti	s1,t1,11828
  24:	342e3520 	ori	t6,at,0x3520
  28:	3220302e 	andi	zero,s1,0x302e
  2c:	30363130 	andi	s6,at,0x3130
  30:	00393036 	tne	at,t9,0xc0

Disassembly of section .pdr:

00000000 <.pdr>:
   0:	004007b0 	tge	v0,zero,0x1e
   4:	c0000000 	ll	zero,0(zero)
   8:	fffffffc 	sdc3	$31,-4(ra)
	...
  14:	00000020 	add	zero,zero,zero
  18:	0000001e 	0x1e
  1c:	0000001f 	0x1f
  20:	00400810 	0x400810
  24:	803f0000 	lb	ra,0(at)
  28:	fffffffc 	sdc3	$31,-4(ra)
	...
  34:	00000038 	0x38
  38:	0000001d 	0x1d
  3c:	0000001f 	0x1f
  40:	004008b4 	teq	v0,zero,0x22
	...
  58:	0000001d 	0x1d
  5c:	0000001f 	0x1f

Disassembly of section .gnu.attributes:

00000000 <.gnu.attributes>:
   0:	00000f41 	0xf41
   4:	756e6700 	jalx	5b99c00 <_gp+0x5780bf0>
   8:	00070100 	sll	zero,a3,0x4
   c:	05040000 	0x5040000
