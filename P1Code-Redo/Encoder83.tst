// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/custom/Encoder83.tst

load Encoder83.hdl,
output-file Encoder83.out,
compare-to Encoder83.cmp,
output-list a%B2.8.2 out%B2.3.2 idle%B2.1.2;

set a %B10000000,
eval,
output;

set a %B01000000,
eval,
output;

set a %B00100000,
eval,
output;

set a %B00010000,
eval,
output;

set a %B00001000,
eval,
output;

set a %B00000100,
eval,
output;

set a %B00000010,
eval,
output;

set a %B00000001,
eval,
output;

// All inputs are 0 (idle)
set a %B00000000,
eval,
output;