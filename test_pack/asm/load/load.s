	.text
main:
	add	$21,	$0,	$0
	lui	$21,	1
	lw	$8,	0x0($21)
	lh	$9,	0x0($21)
	lh	$10,	0x2($21)
	lhu	$11,	0x0($21)
	lhu	$12,	0x2($21)
	lb	$13,	0x0($21)
	lb	$14,	0x1($21)
	lb	$15,	0x2($21)
	lb	$16,	0x3($21)
	lbu	$17,	0x0($21)
	lbu	$18,	0x1($21)
	lbu	$19,	0x2($21)
	lbu	$20,	0x3($21)
Loop:
	beq	$0,	$0,	Loop

	.data
	.word	0x1028182	# @10000

