// Tiernan Lindauer 134003853

// The program develops a Palindrome checker application.
// The input to the program is a 5 digit integer A and is stored in RAM[0] (R0).
// A helper value of 10 is stored in RAM[8] (R8) by virtue of the tst file command.
// Number A is a positive integer.
// A has exactly 5 digits and no more no less.

// Program functions as follows:
// Extract the individual digits from number A and store them in R2-R6 registers in that order.
// Result of 1 is stored in R1 if the number A is a Palindrome else result of 0 is stored in R1

// we'll copy the number to R11 and put it back in R0 at the end
@R0
D=M
@R11
M=D

// Set divisor to 10000
@10000
D=A
@R8
M=D

(DIV)
@R0
D=M
@END
D;JLE
@R8
D=M
@END
D;JLE

@R2
M=0
@R10
M=0

@R0
D=M
@R10
M=D
(DIV_LOOP)
@R10
D=M
@R8
D=D-M
@DIV_END
D;JLT

@R10
M=D
@R2
M=M+1
@DIV_LOOP
0;JMP
(DIV_END)
@1000
D=A
@R8
M=D

@R10
D=M
@R0
M=D
@DIV2
0;JMP
(DIV2)
@R0
D=M
@END
D;JLE
@R8
D=M
@END
D;JLE

@R3
M=0
@R10
M=0

@R0
D=M
@R10
M=D
(DIV_LOOP2)
@R10
D=M
@R8
D=D-M
@DIV_END2
D;JLT

@R10
M=D
@R3
M=M+1
@DIV_LOOP2
0;JMP
(DIV_END2)
@100
D=A
@R8
M=D

@R10
D=M
@R0
M=D
@DIV3
0;JMP
(DIV3)
@R0
D=M
@END
D;JLE
@R8
D=M
@END
D;JLE

@R4
M=0
@R10
M=0

@R0
D=M
@R10
M=D
(DIV_LOOP3)
@R10
D=M
@R8
D=D-M
@DIV_END3
D;JLT

@R10
M=D
@R4
M=M+1
@DIV_LOOP3
0;JMP
(DIV_END3)
@10
D=A
@R8
M=D

@R10
D=M
@R0
M=D
@DIV4
0;JMP
(DIV4)
@R0
D=M
@END
D;JLE
@R8
D=M
@END
D;JLE

@R5
M=0
@R10
M=0

@R0
D=M
@R10
M=D
(DIV_LOOP4)
@R10
D=M
@R8
D=D-M
@DIV_END4
D;JLT

@R10
M=D
@R5
M=M+1
@DIV_LOOP4
0;JMP
(DIV_END4)
@10
D=A
@R8
M=D

@R10
D=M
@R0
M=D
@DIV5
0;JMP
(DIV5)
@R0
D=M
@END
D;JLE
@R8
D=M
@END
D;JLE

@R6
M=0
@R10
M=0

@R0
D=M
@R10
M=D
(DIV_LOOP5) // last loop actually doesn't need division
@R10
D=M
@R6
M=D

@COMPARE
0;JMP
(COMPARE)
// move the number back to R0
@R11
D=M
@R0
M=D

// compare RAM[2] to RAM[6], and RAM[3] to RAM[5]. If both are equal, set RAM[1] to 1, if not set to 0
@R2
D=M
@R6
D=D-M
@COMPARE_END
D;JNE

@R3
D=M
@R5
D=D-M
@COMPARE_END
D;JNE

@R1
M=1
@END
(END)
@END
0;JMP

(COMPARE_END)
@R1
M=0
@END