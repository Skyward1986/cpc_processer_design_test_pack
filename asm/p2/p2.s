	.text
main:
	andi	$16,	$16,	0
	lui	$16,	 1

	lb	$8,	0x0($16)
	lb	$9,	0x1($16)
	add	$10,	$8,	$9
	sh	$10,	0x2($16)

	addi	$10,	$10,	-1
	sw	$10,	0x4($16)

	lb	$8,	0x8($16)
	lbu	$9,	0x9($16)
	addu	$10,	$8,	$9
	sh	$10,	0xa($16)

	addiu	$10,	$10,	-11
	sw	$10,	0xc($16)
	
	lhu	$8,	0x10($16)
	lh	$9,	0x12($16)
	sub	$10,	$8,	$9
	sw	$10,	0x14($16)

	lh	$8,	0x18($16)
	lb	$9,	0x1a($16)
	subu	$10,	$8,	$9
	sb	$10,	0x1b($16)

	lh	$8,	0x1c($16)
	lh	$9,	0x1e($16)
	and	$10,	$8,	$9
	sw	$10,	0x20($16)
	
	andi	$10,	$10,	0xff00
	sw	$10,	0x24($16)

	lhu	$8,	0x1c($16)
	lhu	$9,	0x1e($16)
	or	$10,	$8,	$9
	sw	$10,	0x28($16)

	ori	$10,	$10,	0xf00f
	sw	$10,	0x2c($16)

	lh	$8,	0x1c($16)
	lhu	$9,	0x1e($16)
	xor	$10,	$8,	$9
	sw	$10,	0x30($16)

	xori	$10,	0xff00
	sw	$10,	0x34($16)

	lhu	$8,	0x1c($16)
	lhu	$9,	0x1e($16)
	nor	$10,	$8,	$9
	sw	$10,	0x38($16)

	lw	$8,	0x3c($16)
	sll	$10,	$8,	4
	sw	$10,	0x40($16)

	srl	$10,	$8,	4
	sw	$10,	0x44($16)

	sra	$10,	$8,	4
	sw	$10,	0x48($16)

	lh	$8,	0x3e($16)
	sra	$10,	$8,	4
	sw	$10,	0x4c($16)

	lw	$8,	0x3c($16)
	xor	$9,	$9,	$9
	ori	$9,	$9,	4
	sllv	$10,	$8,	$9
	sw	$10,	0x50($16)

	srlv	$10,	$8,	$9
	sw	$10,	0x54($16)

	srav	$10,	$8,	$9
	sw	$10,	0x58($16)

	lh	$8,	0x3e($16)
	srav	$10,	$8,	$9
	sw	$10,	0x5c($16)

	lb	$8,	0x60($16)
	lb	$9,	0x61($16)
	slt	$10,	$8,	$8
	sb	$10,	0x64($16)
	sltu	$10,	$8,	$8
	sb	$10,	0x65($16)
	slt	$10,	$8,	$9
	sb	$10,	0x66($16)
	sltu	$10,	$8,	$9
	sb	$10,	0x67($16)
	lb	$8,	0x62($16)
	slt	$10,	$8,	$9
	sb	$10,	0x68($16)
	sltu	$10,	$8,	$9
	sb	$10,	0x69($16)
	lb	$9,	0x63($16)
	slt	$10,	$8,	$9
	sb	$10,	0x6a($16)
	sltu	$10,	$8,	$9
	sb	$10,	0x6b($16)

	xor	$10,	$10,	$10
	sw	$10,	0x6c($16)
	sw	$10,	0x70($16)
	sw	$10,	0x74($16)
	sw	$10,	0x78($16)
	sw	$10,	0x7c($16)
	sw	$10,	0x80($16)
	sw	$10,	0x84($16)
	ori	$10,	$10,	0x1
	j	L1
	sb	$10,	0x6c($16)
L1:
	jal	L2
	sb	$10,	0x6d($16)
	jr	$31
L2:
	ori	$10,	$10,	0x3
	jalr	$31
L3:
	xor	$8,	$8,	$8
	addi	$8,	$8,	0x03
	xor	$9,	$9,	$9
	addi	$9,	$9,	-1
	beq	$8,	$8,	L4
	sb	$10,	0x6e($16)
L4:
	beq	$8,	$9,	L5
	sb	$10,	0x6f($16)
L5:
	bne	$8,	$8,	L6
	sb	$10,	0x70($16)
L6:
	bne	$8,	$9,	L7
	sb	$10,	0x71($16)
L7:
	blez	$8,	L8
	sb	$10,	0x72($16)
L8:
	blez	$0,	L9
	sb	$10,	0x73($16)
L9:
	blez	$9,	L10
	sb	$10,	0x74($16)
L10:
	bgtz	$8,	L11
	sb	$10,	0x75($16)
L11:
	bgtz	$0,	L12
	sb	$10,	0x76($16)
L12:
	bgtz	$9,	L13
	sb	$10,	0x77($16)
L13:
	bgez	$8,	L14
	sb	$10,	0x78($16)
L14:
	bgez	$0,	L15
	sb	$10,	0x79($16)
L15:
	bgez	$9,	L16
	sb	$10,	0x7a($16)
L16:
	bgezal	$8,	L17
	sb	$10,	0x7b($16)
L17:
	bgezal	$0,	L18
	sb	$10,	0x7c($16)
L18:
	bgezal	$9,	L19
	sb	$10,	0x7d($16)
L19:
	bgezal	$0,	L20
	sb	$10,	0x7e($16)
	j	L21
L20:
	ori	$10,	$10,	0x7
	jr	$31
L21:
	bltz	$8,	L22
	sb	$10,	0x7f($16)
L22:
	bltz	$0,	L23
	sb	$10,	0x80($16)
L23:
	bltz	$9,	L24
	sb	$10,	0x81($16)
L24:
	bltzal	$8,	L25
	sb	$10,	0x82($16)
L25:
	bltzal	$0,	L26
	sb	$10,	0x83($16)
L26:
	bltzal	$9,	L27
	sb	$10,	0x84($16)
L27:
	bltzal	$9,	L28
	sb	$10,	0x85($16)
	j	L29
L28:
	ori	$10,	$10,	0xf
	jr	$31
L29:
	jal	L30
	j	L31
L30:
	jr	$31
L31:
	ori	$10,	$10,	0x1f
	sb	$10,	0x86($16)
L32:
	beq	$0,	$0,	L32

	.data
	.word	0x3040000	# @10000
	.word	0x0		# @10004
	.word	0x9ff0000	# @10008
	.word	0x0		# @1000c
	.word	0xffff0123	# @10010
	.word	0x0		# @10014
	.word	0x1232400	# @10018
	.word	0xff00f0f0	# @1001c
	.word	0x0		# @10020
	.word	0x0		# @10024
	.word	0x0		# @10028
	.word	0x0		# @1002c
	.word	0x0		# @10030
	.word	0x0		# @10034
	.word	0x0		# @10038
	.word	0xf0f00f00	# @1003c
	.word	0x0		# @10040
	.word	0x0		# @10044
	.word	0x0		# @10048
	.word	0x0		# @1004c
	.word	0x0		# @10050
	.word	0x0		# @10054
	.word	0x0		# @10058
	.word	0x0		# @1005c
	.word	0x305f3f5	# @10060
	.word	0x0		# @10064
	.word	0x0		# @10068

