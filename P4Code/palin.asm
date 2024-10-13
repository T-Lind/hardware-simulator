// Tiernan Lindauer 134003853

// File name: palin.asm

// The program develops a Palindrome checker application. 
// The input to the program is a 5 digit integer A and is stored in RAM[0] (R0).
// A helper value of 10 is stored in RAM[8] (R8) by virtue of the tst file command.
// Number A is a positive integer.
// A has exactly 5 digits and no more no less.

// Program functions as follows: 
// Extract the individual digits from number A and store them in R2-R6 registers in that order.
// Result of 1 is stored in R1 if the number A is a Palindrome else result of 0 is stored in R1

// Put your code below this line

@R0
D=M
@num
M=D

@R8
D=M
@divisor
M=D

@5
D=A
@counter
M=D

@2
D=A
@store
M=D

(EXTRACT_LOOP)
    @num
    D=M
    @divisor
    D=D-M
    @DIGIT_EXTRACTED
    D;JLT

    @num
    D=M
    @divisor
    D=D-M
    @num
    M=D
    @EXTRACT_LOOP
    0;JMP

(DIGIT_EXTRACTED)
    @num
    D=M
    @store
    A=M
    M=D

    @store
    M=M+1

    @divisor
    D=M
    @num
    M=D

    @R8
    D=M
    @divisor
    M=M*D

    @counter
    M=M-1
    D=M
    @EXTRACT_LOOP
    D;JGT

@2
D=M
@6
D=D-M
@NOT_PALINDROME
D;JNE

@3
D=M
@5
D=D-M
@NOT_PALINDROME
D;JNE

@PALINDROME
0;JMP

(PALINDROME)
    @1
    D=A
    @R1
    M=D
    @END
    0;JMP

(NOT_PALINDROME)
    @0
    D=A
    @R1
    M=D

(END)
    @END
    0;JMP