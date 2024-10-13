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
@R3
M=0

@R2
D=M

@ADD
D;JEQ

@SUB
D=D-1

@MUL
D=D-1
D;JEQ

@DIV
D=D-1
D;JEQ

@END
0;JMP

(ADD)
@R0
D=MUL
@R1
D=D+MUL
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
@R3
M=0
@R1
D=M
@MULNEG
D;JLT
@MULPOS
0;JMP

(MULNEG)
@R0
D=-MUL
@R1
D=-M
@MULPOS
0;JMP

(MULPOS)
@R3
M=M+D
@R0
D=M-1
M=D
@MULPOS
D;JGE
@END
0;JMP

(DIV)
@R0
D=M
@DIVERR
D;JLE
@R1
D=M
@DIVERR
D;JLE

@R0
D=M
@R3
M=0
@R4
M=D
(DIVLOOP)
@R1
D=MUL
@R4
D=M-DIV
@DIVEND
D;JLT
M=D
@R3
M=M+1

@DIVLOOP
0;JMP
(DIVEND)
@END
0;JMP

(DIVERR)
@R3
M=-1
@R4
M=-1

(END)
@END
0;JMP
