// Tiernan Lindauer 134003853

// The program develops a Palindrome checker application. 
// The input to the program is a 5 digit integer A and is stored in RAM[0] (R0).
// A helper value of 10 is stored in RAM[8] (R8) by virtue of the tst file command.
// Number A is a positive integer.
// A has exactly 5 digits and no more no less.

// Program functions as follows: 
// Extract the individual digits from number A and store them in R2-R6 registers in that order.
// Result of 1 is stored in R1 if the number A is a Palindrome else result of 0 is stored in R1



// Set divisor to 10000
@10000
D=A
@R1
M=D

(DIV)
    @R0
    D=M
    @ERROR
    D;JLE
    @R1
    D=M
    @ERROR
    D;JLE

    @R10
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
    @R10
    M=M+1
    @DIV_LOOP
    0;JMP

(DIV_END)
    @1000
    D=A
    @R1
    M=D

    @R4
    D=M
    @R0
    M=D
    @DIV2
    0;JMP


(DIV2)
    @R0
    D=M
    @ERROR
    D;JLE
    @R1
    D=M
    @ERROR
    D;JLE

    @R11
    M=0
    @R4
    M=0

    @R0
    D=M
    @R4
    M=D

(DIV_LOOP2)
    @R4
    D=M
    @R1
    D=D-M
    @DIV_END2
    D;JLT

    @R4
    M=D
    @R11
    M=M+1
    @DIV_LOOP2
    0;JMP

(DIV_END2)
    @100
    D=A
    @R1
    M=D

    @R4
    D=M
    @R0
    M=D
    @DIV3
    0;JMP


(DIV3)
    @R0
    D=M
    @ERROR
    D;JLE
    @R1
    D=M
    @ERROR
    D;JLE

    @R12
    M=0
    @R4
    M=0

    @R0
    D=M
    @R4
    M=D

(DIV_LOOP3)
    @R4
    D=M
    @R1
    D=D-M
    @DIV_END3
    D;JLT

    @R4
    M=D
    @R12
    M=M+1
    @DIV_LOOP3
    0;JMP

(DIV_END3)
    @10
    D=A
    @R1
    M=D

    @R4
    D=M
    @R0
    M=D
    @DIV4
    0;JMP


(DIV4)
    @R0
    D=M
    @ERROR
    D;JLE
    @R1
    D=M
    @ERROR
    D;JLE

    @R13
    M=0
    @R4
    M=0

    @R0
    D=M
    @R4
    M=D

(DIV_LOOP4)
    @R4
    D=M
    @R1
    D=D-M
    @DIV_END4
    D;JLT

    @R4
    M=D
    @R13
    M=M+1
    @DIV_LOOP4
    0;JMP

(DIV_END4)
    @10
    D=A
    @R1
    M=D

    @R4
    D=M
    @R0
    M=D
    @DIV5
    0;JMP

(DIV5)
    @R0
    D=M
    @ERROR
    D;JLE
    @R1
    D=M
    @ERROR
    D;JLE

    @R14
    M=0
    @R4
    M=0

    @R0
    D=M
    @R4
    M=D

(DIV_LOOP5)  // last loop actually doesn't need division
    @R4
    D=M
    @R14
    M=D

    @COMPARE
    0;JMP

(COMPARE)
    // todo: compare RAM[10] to RAM[14], and RAM[11] to RAM[13]. If both are equal, set RAM[16] to 1, if not set to 0
    @R10
    D=M
    @R14
    D=D-M
    @COMPARE_END
    D;JNE

    @R11
    D=M
    @R13
    D=D-M
    @COMPARE_END
    D;JNE

    @R16
    M=1
    @END

(END)
    @END
    0;JMP

(COMPARE_END)
    @R16
    M=0
    @END

(ERROR)
    @1024
    M=-1