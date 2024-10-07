// Test Stimulus File for Palindrome Chip

load Palindrome.hdl,
output-file Palindrome.out,
compare-to Palindrome.cmp,
output-list p%B3.1.3 q%B3.1.3 r%B3.1.3 s%B3.1.3 t%B3.1.3 out%B3.1.3;

set p 0, set q 0, set r 0, set s 0, set t 0, eval, output;
set p 0, set q 0, set r 1, set s 0, set t 0, eval, output;
set p 0, set q 1, set r 0, set s 1, set t 0, eval, output;
set p 0, set q 1, set r 1, set s 1, set t 0, eval, output;
set p 1, set q 0, set r 0, set s 0, set t 1, eval, output;
set p 1, set q 0, set r 1, set s 0, set t 1, eval, output;
set p 1, set q 1, set r 0, set s 1, set t 1, eval, output;
set p 1, set q 1, set r 1, set s 1, set t 1, eval, output;

set p 0, set q 0, set r 0, set s 0, set t 1, eval, output;
set p 0, set q 0, set r 0, set s 1, set t 0, eval, output;
set p 0, set q 0, set r 1, set s 0, set t 1, eval, output;
set p 0, set q 0, set r 1, set s 1, set t 0, eval, output;
set p 0, set q 1, set r 0, set s 0, set t 0, eval, output;
set p 0, set q 1, set r 0, set s 0, set t 1, eval, output;
set p 0, set q 1, set r 1, set s 0, set t 0, eval, output;
set p 0, set q 1, set r 1, set s 0, set t 1, eval, output;
set p 1, set q 0, set r 0, set s 0, set t 0, eval, output;
set p 1, set q 0, set r 0, set s 1, set t 0, eval, output;
set p 1, set q 0, set r 1, set s 1, set t 0, eval, output;
set p 1, set q 0, set r 1, set s 1, set t 1, eval, output;
set p 1, set q 1, set r 0, set s 0, set t 0, eval, output;
set p 1, set q 1, set r 0, set s 0, set t 1, eval, output;
set p 1, set q 1, set r 1, set s 0, set t 0, eval, output;
set p 1, set q 1, set r 1, set s 0, set t 1, eval, output;