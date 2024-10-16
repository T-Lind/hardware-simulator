// Filename = gcd.tst

load gcd.asm,
output-file gcd.out,
compare-to gcd.cmp,
output-list RAM[0]%D2.6.2 RAM[1]%D2.6.2 RAM[2]%D2.6.2;

// Test case 1: GCD(48, 18) = 6
set RAM[0] 48,
set RAM[1] 18,
set RAM[2] 0;
repeat 400 {
  ticktock;
}
output;

// Test case 2: GCD(17, 5) = 1 (coprime)
set PC 0,
set RAM[0] 17,
set RAM[1] 5,
set RAM[2] 0;
repeat 400 {
  ticktock;
}
output;

// Test case 3: GCD(100, 75) = 25
set PC 0,
set RAM[0] 100,
set RAM[1] 75,
set RAM[2] 0;
repeat 400 {
  ticktock;
}
output;

// Test case 4: GCD(0, 5) = 5
set PC 0,
set RAM[0] 0,
set RAM[1] 5,
set RAM[2] 0;
repeat 400 {
  ticktock;
}
output;

// Test case 5: GCD(5, 0) = 5 (commutative property)
set PC 0,
set RAM[0] 5,
set RAM[1] 0,
set RAM[2] 0;
repeat 400 {
  ticktock;
}
output;

// Test case 6: GCD(1, 1) = 1
set PC 0,
set RAM[0] 1,
set RAM[1] 1,
set RAM[2] 0;
repeat 400 {
  ticktock;
}
output;

// Test case 7: GCD(13, 13) = 13 (equal numbers)
set PC 0,
set RAM[0] 13,
set RAM[1] 13,
set RAM[2] 0;
repeat 400 {
  ticktock;
}
output;

// Test case 8: GCD(144, 12) = 12 (one number divisible by the other)
set PC 0,
set RAM[0] 144,
set RAM[1] 12,
set RAM[2] 0;
repeat 400 {
  ticktock;
}
output;