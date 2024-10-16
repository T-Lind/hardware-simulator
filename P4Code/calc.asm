// Tiernan Lindauer 134003853

// File name: calc.asm

// The program develops a calculator application. 
// The operands a and b are integer numbers stored in RAM[0] (R0) and RAM[1] (R1), respectively.
// The operation choice c is stored in RAM[2] (R2), respectively
// if c == 1, do a + b
// if c == 2, do a - b
// if c == 3, do a * b
// if c == 4, do a / b
// For Addition and Subtraction operations the operands a and b can be positive or negative.
// For Multiplication operation only ONE operand can be negative.
// For Division operation BOTH operands must be positive and must be greater than 0.
// Store the final result (quotient for Division) in RAM[3] (R3). Only the Division operation 
// stores the remainder in RAM[4] (R4).


// Put your code below this line
// File name: calc.asm

@1024
M=0

@R2
D=M

@ADD
D=D-1
D;JEQ

@SUB
D=D-1
D;JEQ

@MUL
D=D-1
D;JEQ

@DIV
D=D-1
D;JEQ

@ERROR
0;JMP

(ADD)
    @R0
    D=M
    @R1
    D=D+M
    @R3
    M=D
    @END
    0;JMP

(SUB)
    @R0
    D=M
    @R1
    D=D-M
    @R3
    M=D
    @END
    0;JMP

(MUL)
    @R0
    D=M
    @MUL_CHECK_SECOND
    D;JGE
    @R1
    D=M
    @ERROR
    D;JLT

(MUL_CHECK_SECOND)
    @R3
    M=0

    @R0
    D=M
    @R4
    M=D
    @MUL_ABS_A
    D;JGE
    @R4
    M=-M
(MUL_ABS_A)
    @R1
    D=M
    @R5
    M=D
    @MUL_ABS_B
    D;JGE
    @R5
    M=-M
(MUL_ABS_B)

(MUL_LOOP)
    @R5
    D=M
    @MUL_END
    D;JEQ
    @R4
    D=M
    @R3
    M=M+D
    @R5
    M=M-1
    @MUL_LOOP
    0;JMP

(MUL_END)
    @R0
    D=M
    @R1
    D=D|M
    @MUL_DONE
    D;JGE
    @R3
    M=-M

(MUL_DONE)
    @END
    0;JMP

(DIV)
    @R0
    D=M
    @ERROR
    D;JLE
    @R1
    D=M
    @ERROR
    D;JLE

    @R3
    M=0
    @R4
    M=0

    @R0
    D=M
    @R4
    M=D
(DIV_LOOP)
    @R4
    D=M
    @R1
    D=D-M
    @DIV_END
    D;JLT

    @R4
    M=D
    @R3
    M=M+1
    @DIV_LOOP
    0;JMP

(DIV_END)
    @END
    0;JMP

(ERROR)
    @1024
    M=-1

(END)
    @END
    0;JMP