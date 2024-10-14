load benchmark.hack,
output-file benchmark.out,
compare-to benchmark.cmp,
output-list RAM[0]%D2.6.2 RAM[1]%D2.6.2 RAM[2]%D2.6.2 RAM[3]%D2.6.2 RAM[4]%D2.6.2;

set PC 0,
set RAM[0] 12,
set RAM[1] 32,
set RAM[2]  3,
repeat 30 {
	ticktock;
}
output;

set PC 0,
set RAM[0] 19,
set RAM[1] 20,
set RAM[2] 20,
repeat 30 {
	ticktock;
}
output;

set PC 0,
set RAM[0] 20,
set RAM[1] 20,
set RAM[2] 20,
repeat 30 {
	ticktock;
}
output;

set PC 0,
set RAM[0] 20,
set RAM[1] 20,
set RAM[2] 21,
repeat 30 {
	ticktock;
}
output;

set PC 0,
set RAM[0] 123,
set RAM[1] 321,
set RAM[2]   0,
repeat 30 {
	ticktock;
}
output;

set PC 0,
set RAM[0] 123,
set RAM[1] 321,
set RAM[2] 111,
repeat 30 {
	ticktock;
}
output;

set PC 0,
set RAM[0] 123,
set RAM[1] 321,
set RAM[2] 222,
repeat 30 {
	ticktock;
}
output;



