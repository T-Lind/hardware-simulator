//Starter Test stimulus file for AddSub10 

load AddSub10.hdl,
output-file AddSub10.out,
compare-to AddSub10.cmp,
output-list a%B1.10.1 b%B1.10.1 sub%B1.1.1 out%B1.10.1 overflow%B4.1.4;

set a %B0000000000,
set b %B0000000000,
set sub 0,
eval,
output;


set a %B0000000010,
set b %B0000000010,
set sub 0,
eval,
output;