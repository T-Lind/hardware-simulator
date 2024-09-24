// Test stimulus file for FastRCA12

load FastRCA12.hdl,
compare-to FastRCA12.cmp,
output-file FastRCA12.out,
output-list a%B3.12.3 b%B3.12.3 out%B3.12.3 carry%B3.1.3;

set a %B000000000000,
set b %B000000000000,
eval,
output;

set a %B000000000001,
set b %B000000000001,
eval,
output;

set a %B111111111111,
set b %B000000000001,
eval,
output;

set a %B000000000101,
set b %B000000000011,
eval,
output;

set a %B111111111111,
set b %B111111111111,
eval,
output;

set a %B000000011111,
set b %B000000011111,
eval,
output;

set a %B100000000000,
set b %B100000000000,
eval,
output;

set a %B011111111111,
set b %B011111111111,
eval,
output;
