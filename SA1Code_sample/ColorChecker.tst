load ColorChecker.hdl,
compare-to ColorChecker.cmp,
output-file ColorChecker.out,
output-list S%B3.1.3 L%B3.1.3 R%B3.1.3 KEEP%B3.1.3;

set S 0,
set L 0,
set R 0,
eval,
output;

set S 0,
set L 0,
set R 1,
eval,
output;

set S 0,
set L 1,
set R 0,
eval,
output;

set S 0,
set L 1,
set R 1,
eval,
output;

set S 1,
set L 0,
set R 0,
eval,
output;

set S 1,
set L 0,
set R 1,
eval,
output;

set S 1,
set L 1,
set R 0,
eval,
output;

set S 1,
set L 1,
set R 1,
eval,
output;