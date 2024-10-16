// Filename = palin.tst

load palin.asm,
output-file palin.out,
compare-to palin.cmp,
output-list RAM[0]%D2.6.2 RAM[1]%D2.6.2 RAM[2]%D2.6.2 RAM[3]%D2.6.2 RAM[4]%D2.6.2 RAM[5]%D2.6.2 RAM[6]%D2.6.2;

// Test case 1: Palindrome (12121)
set RAM[0] 12121,
set RAM[8] 10,
set RAM[1] 0;
repeat 300 {
  ticktock;
}
output;

// Test case 2: Non-palindrome (12345)
set PC 0,
set RAM[0] 12345,
set RAM[8] 10,
set RAM[1] 0;
repeat 300 {
  ticktock;
}
output;

// Test case 3: Palindrome (30603)
set PC 0,
set RAM[0] 30603,
set RAM[8] 10,
set RAM[1] 0;
repeat 300 {
  ticktock;
}
output;

// Test case 4: Non-palindrome (10211)
set PC 0,
set RAM[0] 10211,
set RAM[8] 10,
set RAM[1] 0;
repeat 300 {
  ticktock;
}
output;

// Test case 5: Palindrome (11111)
set PC 0,
set RAM[0] 11111,
set RAM[8] 10,
set RAM[1] 0;
repeat 300 {
  ticktock;
}
output;

// Test case 6: Non-palindrome (12321)
set PC 0,
set RAM[0] 12321,
set RAM[8] 10,
set RAM[1] 0;
repeat 300 {
  ticktock;
}
output;

// Test case 7: Palindrome (10001)
set PC 0,
set RAM[0] 10001,
set RAM[8] 10,
set RAM[1] 0;
repeat 300 {
  ticktock;
}
output;

// Test case 8: Non-palindrome (10000)
set PC 0,
set RAM[0] 10000,
set RAM[8] 10,
set RAM[1] 0;
repeat 700 {
  ticktock;
}
output;