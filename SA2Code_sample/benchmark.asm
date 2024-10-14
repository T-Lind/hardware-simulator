// Sum up A + B + C
// Compare RAM[3] to threshold 60
// If RAM[3] > 60 then RAM[4] = 0
// If RAM[3] <= 60 then RAM[4] = 1

// Sum up A + B + C
@0
D=M
@1
D=D+M
@2
D=D+M
@3
M=D  // RAM[3] = A + B + C

// Compare RAM[3] to threshold 60
@60
D=A  // Store 60 in D for the trheshold
@3
D=M-D
@SATISFACTORY
D; JLE  // jump if D <= 0
@DISSATISFACTORY
0; JMP

// If RAM[3] > 60 then RAM[4] = 0
(DISSATISFACTORY)
@4
M=0
@END
0; JMP


// If RAM[3] <= 60 then RAM[4] = 1
(SATISFACTORY)
@4
M=1
@END
0; JMP

(END)
@END
0; JMP
