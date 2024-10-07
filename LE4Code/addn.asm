//addn.asm

//NAME: Tiernan Lindauer
//UIN: 134003853

//This asm computes the sum of n numbers
//Assuming RAM[0] stores the value n (how many numbers to sum)
//and the numbers are stored in consecutive addresses starting at address 1.
//The result will be stored in RAM[0], overwriting the original value of n.
//It may be useful to use variables when solving this problem.
//Write your code below.
///////////////////////////////////////////////////////////////////////////////

@R0
D=M
@n
M=D  // n = RAM[0] (number of values to sum)

@i
M=1  // i = 1 (start index)

@sum
M=0  // sum = 0 (initialize sum)

(LOOP)
  // see if we've processed all numbers
  @i
  D=M
  @n
  D=D-M
  @END
  D;JGT  // If i > n, goto END

  // add curr num to sum
  @i
  A=M    // A = i
  D=M    // D = RAM[i]
  @sum
  M=M+D  // sum += RAM[i]

  // increment i
  @i
  M=M+1

  @LOOP
  0;JMP  // Go back to LOOP

(END)
  // Store the final sum in RAM[0]
  @sum
  D=M
  @R0
  M=D  // RAM[0] = sum

(INFINITE_LOOP)
  @INFINITE_LOOP
  0;JMP  // Infinite loop to end the program