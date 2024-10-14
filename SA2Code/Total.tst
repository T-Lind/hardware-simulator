load Total.hdl,
output-file Total.out,
compare-to Total.cmp,
output-list time%S1.4.1 in%B1.16.1 reset%B3.1.3 out%B1.16.1;

set in %B0000000000000000,
set reset 0,
tick,
tock,
output;

set in %B0000000000000000,
tick,
tock,
output;

set in %B0000000000000001,
tick,
output;
tock,
output;

set in %B0000000000000000,
tick,
tock,
output;

set in %B0000000000000000,
set reset 1,
tick,
tock,
output;

set in %B0000000000000100,
set reset 1,
tick,
tock,
output;

set in %B0000000000010000,
set reset 0,
tick,
tock,
output;

set in %B0000000000000011,
set reset 0,
tick,
tock,
output;

set in %B0000000000000000,
set reset 0,
tick,
tock,
output;

set in %B0010101001101000,
set reset 1,
tick,
tock,
output;

set in %B0000000000000001,
set reset 0,
tick,
tock,
output;
tick,
tock,
output;
tick,
tock,
output;
tick,
tock,
output;

set in %B1010111110100010,
tick,
tock,
output;

set in %B0000111100100110,
tick,
tock,
output;

set in %B0101010101010101,
tick,
tock,
output;
tick,
tock,
output;

set in %B1001011010001001,
tick,
tock,
output;

set in %B0000000000000000,
tick,
tock,
output;

set in %B0000000000000001,
tick,
tock,
output;

set in %B0000000000000000,
tick,
tock,
output;

set in %B0000000000000001,
tick,
tock,
output;

set in %B1111111111111110,
set reset 1,
tick,
tock,
output;