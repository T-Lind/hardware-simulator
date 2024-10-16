// Tiernan Lindauer 134003853

// File name: gcd.asm

// This program calculates the greatest common divisor (gcd) of two given 
// non-negative integers, which are stored in RAM[0] (R0) and RAM[1] (R1). 
// The gcd is stored in RAM[2] (R2).



// Put your code below this line
@R0
D=M
@a
M=D

@R1
D=M
@b
M=D

(LOOP)
@b
D=M
@END
D;JEQ

@a
D=M
@b
D=D-M
@SWAP
D;JLT

@b
D=M
@a
M=M-D
@LOOP
0;JMP

(SWAP)
@a
D=M
@temp
M=D

@b
D=M
@a
M=D

@temp
D=M
@b
M=D

@LOOP
0;JMP

(END)
@a
D=M
@R2
M=D

(INFINITE_LOOP)
@INFINITE_LOOP
0;JMP