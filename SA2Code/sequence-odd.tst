//this tst file can be used to test 
//whether your sequence.asm implementation
//properly handles odd inputs

load sequence.asm,
output-file sequence-odd.out,
compare-to sequence-odd.cmp,
output-list RAM[0]%D2.6.2 RAM[1]%D2.6.2;

set PC 0,
set RAM[0] 1,
set RAM[1] 0,
repeat 100 {
	ticktock;
}
output;

set PC 0,
set RAM[0] 3,
set RAM[1] 0,
repeat 100 {
	ticktock;
}
output;

set PC 0,
set RAM[0] 5,
set RAM[1] 0,
repeat 100 {
	ticktock;
}
output;