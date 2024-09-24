load ShapeChecker.hdl,
compare-to ShapeChecker.cmp,
output-file ShapeChecker.out,
output-list L%B3.1.3 R%B3.1.3 KEEP%B3.1.3;

set L 0,
set R 0,
eval,
output;

set L 0,
set R 1,
eval,
output;

set L 1,
set R 0,
eval,
output;

set L 1,
set R 1,
eval,
output;
