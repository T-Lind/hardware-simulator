//this tst file can be used to test 
//whether your sequence.asm implementation
//properly handles even inputs

load sequence.asm,
output-file sequence-even.out,
compare-to sequence-even.cmp,
output-list RAM[0]%D2.6.2 RAM[1]%D2.6.2;

set PC 0,
set RAM[0] 0,
set RAM[1] 0,
repeat 100 {
	ticktock;
}
output;

set PC 0,
set RAM[0] 2,
set RAM[1] 0,
repeat 100 {
	ticktock;
}
output;

set PC 0,
set RAM[0] 10,
set RAM[1] 0,
repeat 100 {
	ticktock;
}
output;