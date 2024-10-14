//sequence.asm

//NAME: Tiernan Lindauer
//UIN: 134003853

//This asm computes the following piecewise function:
//         { 1-x   if x < 0     }
// f(x) =  { x-3   if x is odd  }
//         { -x    if x is even }
//where the first case has priority
//(i.e., ignore the other two cases if x is negative).
//Assuming RAM[0] stores the input number x,
//your program should compute the result f(x)
//and store it in RAM[1].
//Write your code below.
///////////////////////////////////////////////////////////////////////////////

@0 // this loads x into D
D=M

@NEGATIVE_CHECK
D;JLT

@EVEN_CHECK
D=M

// A bitwise AND with 1 will return 1 if the number is odd b/c the first bit is 2^0=1 which is the only way to make a binary number odd
@1
D=A
D=D&M

@ODD_CHECK
D;JNE

(EVEN_CHECK)
@0
D=M
D=-D
@RESULT
0;JMP

(NEGATIVE_CHECK)
@0
D=M
@1
D=A-D
@RESULT
0;JMP

(ODD_CHECK)
@0
D=M
@3
D=D-A
@RESULT
0;JMP

(RESULT)
@1
M=D
(END)
@END
0;JMP

