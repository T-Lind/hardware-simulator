// Test script for Negation16 chip

load Negation16.hdl,
output-file Negation16.out,
compare-to Negation16.cmp,
output-list in%B1.16.1 out%B1.16.1;

// Test case 1: in = 1
set in %B0000000000000001,
eval,
output;

// Test case 2: in = 255
set in %B0000000011111111,
eval,
output;

// Test case 3: in = 256
set in %B0000000100000000,
eval,
output;

// Test case 4: in = -1
set in %B1111111111111111,
eval,
output;

// Additional test cases

// Test case 5: in = 0
set in %B0000000000000000,
eval,
output;

// Test case 6: in = -32768 (minimum 16-bit signed integer)
set in %B1000000000000000,
eval,
output;

// Test case 7: in = 32767 (maximum 16-bit signed integer)
set in %B0111111111111111,
eval,
output;