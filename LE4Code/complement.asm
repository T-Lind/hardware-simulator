//complement.asm

//NAME: Tiernan Lindauer
//UIN: 134003853

//This asm checks whether two numbers a and b are complements;
//that is, each bit active in a is inactive b, and vice-versa.
//Other ways of saying this are:
// (a & b) = 0 and (a | b) = 0b111..., where & is bitwise AND and | is bitwise OR
// (a + b) = -1
// and any other technique you come up with is ok, as long as it functions properly.
//The two numbers are given in RAM[0] and RAM[1]
//and the result will be stored to RAM[2].
//The result should be 1 if a and b are complements,
//and 0 if they are not.
//Write your code below.
///////////////////////////////////////////////////////////////////////////////

// load a from RAM[0]
@R0
D=M

// add a to b from RAM[1]
@R1
D=D+M

// if (a + b) = -1, then a and b are complements
// in two's complement, -1 is all bits true
@COMPLEMENTS
D;JEQ  // If D == -1, jump to COMPLEMENTS

// then not complements so set results to 0
@R2
M=0
@END
0;JMP

(COMPLEMENTS)
@R2
M=1  // Set result to 1 (true)

(END)
@END
0;JMP  // Infinite loop ends program