// This file is part of the materials accompanying the book 
// "The Elements of Computing Systems" by Nisan and Schocken, 
// MIT Press. Book site: www.idc.ac.il/tecs
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[3], respectively.)

// R1 is added R0 times to R2
// Therefore R2 = 0
// i = 0
// if R0 - i <= 0 JMP

	@R2
	M=0					// R2 = 0, product
	
	@R3
	M=0					// R3 = 0, counter

(LOOP)
	@R0
	D=M
	
	@R3
	D=D-M				// D = R0-R3
	
	@END
	D;JLE 				// If (R0-R3)<=0 goto END
	
	@R1
	D=M					// D = R0
	
	@R2
	M=D+M				// R2 += R0

	@R3
	M=M+1

	@LOOP
	0;JMP // Goto LOOP

(END)
	@END
	0;JMP 				// Infinite loop


