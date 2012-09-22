// This file is part of the materials accompanying the book 
// "The Elements of Computing Systems" by Nisan and Schocken, 
// MIT Press. Book site: www.idc.ac.il/tecs
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, 
// the screen should be cleared.

// Put your code here.

@24575				// Last bit of screen memory map
D=A					// D = 24575

@e
M=D					// e = SCREEN

(LOOP)

	@SCREEN
	D=A					// D=SCREEN

	@i
	M=D					// i = SCREEN
	
	@KBD
	D=M
	
	@BLACKEN
	D;JNE
	
	@CLEAR
	D;JEQ

	(CLEAR)
	
		@i
		D=M
		
		@e
		D=D-M			
		
		@LOOP
		D;JGT			// If (i-e) > 0 goto END
		
		@i
		A=M
		M=0
		
		@i
		M=M+1			// i = i + 1
		
		@CLEAR
		0;JMP // Goto LOOP

	(BLACKEN)

		@i
		D=M
		
		@e
		D=D-M			
		
		@LOOP
		D;JGT			// If (i-e) > 0 goto END
		
		@i
		A=M
		M=-1
		
		@i
		M=M+1			// i = i + 1
		
		@BLACKEN
		0;JMP // Goto LOOP
	
(END)

	@END
	0;JMP // Infinite loop



	

		
