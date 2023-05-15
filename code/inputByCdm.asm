	asect 0xf3
Changes: 	
	asect 0xf2
play:
	asect 0xf1
setBit:
	asect 0x00
start:
	ldi r3, 0
	ldi r0, Changes
readkbd:
	do
		ld r0, r1
	tst r1
	until pl
		
	ldi r2, 0x0a 
	if 
		cmp r1, r2
	is eq 
		ldi r0, setBit
		st r0, r0
		ldi r0, Changes
		br readkbd
	fi
		
	ldi r2, 0x64
	if 
		cmp r1, r2
	is eq
		ldi r2, 16
		add r2, r3
		st r0, r3
		br readkbd
	fi
		
	ldi r2, 0x61
	if 
		cmp r1, r2
	is eq
		ldi r2, -16
		add r2, r3
		st r0, r3
		br readkbd
	fi
			
	ldi r2, 0x77
	if 
		cmp r1, r2
	is eq
		move r3, r2
		shla r2
		shla r2
		shla r2
		shla r2
		if
			tst r2
		is eq
			ldi r2, 16
			add r2, r3
		fi
		dec r3
		st r0, r3
		br readkbd
	fi
		
	ldi r2, 0x73
	if 
		cmp r1, r2
	is eq
		move r3, r2
		shla r2
		shla r2
		shla r2
		shla r2
		ldi r1, 0xf0
		if
			cmp r2, r1	
		is eq
			ldi r2, -16
			add r2, r3
		fi
		inc r3
		st r0, r3
		br readkbd
	fi
	
	br readkbd 
		
end