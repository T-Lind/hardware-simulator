load DMux4Way.hdl,
output-file DMux4Way.out,
compare-to DMux4Way.cmp,
output-list in%B3.1.3 sel%B3.1.2 a%B3.1.3 b%B3.1.3 c%B3.1.3 d%B3.1.3;

set in 1, set sel 0;
eval;
output;

set in 1, set sel 1;
eval;
output;

set in 1, set sel 2;
eval;
output;

set in 1, set sel 3;
eval;
output;

set in 0, set sel 0;
eval;
output;

set in 0, set sel 1;
eval;
output;

set in 0, set sel 2;
eval;
output;

set in 0, set sel 3;
eval;
output;
