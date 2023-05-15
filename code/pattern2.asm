	asect 0xf7
end:
	asect 0x00
restart:
	ldi r1, end
	st r1, r3
	br start
	asect 0xf3
Changes: 	
	asect 0xf1
setBit:
	asect 0x20
start:
	ldi r0, Changes
	ldi r2, 16
	ldi r3, 0	
readkbd:
	add r2, r3
	add r2, r3
	add r2, r3
	add r2, r3
	add r2, r3
	add r2, r3
	inc r3
	inc r3
	inc r3
	ldi r1, 4
	while 
		tst r1
	stays pl
		st r0, r3
		ldi r0, setBit
		st r0, r0
		ldi r0, Changes
		add r2, r3
		dec r1
	wend
	add r2, r3
	inc r3
	inc r3
	neg r2
	ldi r1, 8
	while 
		tst r1
	stays pl
		st r0, r3
		ldi r0, setBit
		st r0, r0
		ldi r0, Changes
		add r2, r3
		dec r1
	wend
	add r2, r3
	inc r3
	inc r3
	neg r2
	ldi r1, 12
	while 
		tst r1
	stays pl
		st r0, r3
		ldi r0, setBit
		st r0, r0
		ldi r0, Changes
		add r2, r3
		dec r1
	wend
	inc r3
	inc r3
	neg r2
	add r2, r3
	add r2, r3
	add r2, r3
	ldi r1, 8
	while 
		tst r1
	stays pl
		st r0, r3
		ldi r0, setBit
		st r0, r0
		ldi r0, Changes
		add r2, r3
		dec r1
	wend
	inc r3
	inc r3
	neg r2
	add r2, r3
	add r2, r3
	add r2, r3
	ldi r1, 4	
	while 
		tst r1
	stays pl
		st r0, r3
		ldi r0, setBit
		st r0, r0
		ldi r0, Changes
		add r2, r3
		dec r1
	wend
	br restart
end