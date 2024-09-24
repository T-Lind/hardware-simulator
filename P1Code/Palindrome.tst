//Test Stimulus File for Palindrome Chip

load Palindrome.hdl,
compare-to Palindrome.cmp,
output-file Palindrome.out,
output-list p%B3.1.3 q%B3.1.3 r%B3.1.3 s%B3.1.3 t%B3.1.3 out%B3.1.3;

set p %B1,
set q %B1,
set r %B0,
set s %B1,
set t %B1,
eval,
output;

set p 0, set q 0, set r 0, set s 0, set t 0,
eval,
output;

set p 0, set q 0, set r 0, set s 0, set t 1,
eval,
output;

set p 0, set q 0, set r 0, set s 1, set t 0,
eval,
output;

set p 0, set q 0, set r 1, set s 0, set t 0,
eval,
output;

set p 0, set q 1, set r 0, set s 0, set t 0,
eval,
output;

set p 1, set q 0, set r 0, set s 0, set t 0,
eval,
output;

set p 1, set q 1, set r 1, set s 1, set t 1,
eval,
output;

set p 1, set q 0, set r 1, set s 0, set t 1,
eval,
output;

set p 0, set q 1, set r 0, set s 1, set t 0,
eval,
output;

set p 1, set q 0, set r 0, set s 0, set t 1,
eval,
output;