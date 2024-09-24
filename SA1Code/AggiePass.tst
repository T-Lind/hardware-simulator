//Test Stimulus File for AggiePass Chip

load AggiePass.hdl,
compare-to AggiePass.cmp,
output-file AggiePass.out,
output-list a%B3.1.3 b%B3.1.3 c%B3.1.3 i%B2.2.3 unlock%B3.1.4;

set a 0,
set b 1,
set c 1,
set i %B00,
eval,
output;


set a 1,
set b 0,
set c 0,
set i %B01,
eval,
output;

set a 1,
set b 1,
set c 0,
set i %B10,
eval,
output; 


set a 0,
set b 0,
set c 0,
set i %B10,
eval,
output;


set a 0,
set b 1,
set c 0,
set i %B01,
eval,
output;


set a 1,
set b 0,
set c 1,
set i %B00,
eval,
output;


set a 1,
set b 1,
set c 0,
set i %B01,
eval,
output;


set a 1,
set b 1,
set c 1,
set i %B10,
eval,
output;