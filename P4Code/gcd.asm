// Tiernan Lindauer 134003853

// File name: gcd.asm

// This program calculates the greatest common divisor (gcd) of two given 
// non-negative integers, which are stored in RAM[0] (R0) and RAM[1] (R1). 
// The gcd is stored in RAM[2] (R2).



// Put your code below this line

// Load first number from R0
@R0
D=M
@a
M=D

// Load second number from R1
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
    @SUBTRACT
    D;JGE
    @UPDATE
    0;JMP

(SUBTRACT)
    @b
    D=M
    @a
    M=M-D
    @LOOP
    0;JMP

(UPDATE)
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

(INFINITE)
    @INFINITE
    0;JMP