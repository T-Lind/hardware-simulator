load CPU.hdl,
output-file CPU.out,
compare-to CPU.cmp,
output-list time%S1.4.1 In%B1.8.1 Reset%B2.1.2 Out%B1.6.1 PCout%D2.3.2;

tick, output, tock, output;

///////////////////////////////////////////////////////////
//testing jump (JCD)
///////////////////////////////////////////////////////////

set In %B10000000, //JCD 0 (jump to 0 if R0 >= 0)
tick, output, tock, output;

set In %B10001010, //JCD 10 (jump to 10 if R0 >= 0)
tick, output, tock, output;

set In %B10000011, //JCD 3 (jump to 3 if R0 >= 0)
tick, output, tock, output;

///////////////////////////////////////////////////////////
//testing input (INP)
///////////////////////////////////////////////////////////

set In %B11000101, //INP 5 (R0 = 5)
tick, output, tock, output;

set In %B10000001, //JCD 1 (jump to 1 if R0 >= 0)
tick, output, tock, output;

set In %B11101111, //INP -17 (R0 = -17)
tick, output, tock, output;

set In %B10001100, //JCD 12 (jump to 12 if R0 >= 0)
tick, output, tock, output;

///////////////////////////////////////////////////////////
//testing arithmetic (ADD/SUB)
///////////////////////////////////////////////////////////

set In %B00010010, //ADD R1 R0 R2 (R1 = R0 + R2) should make R1=-17
tick, output, tock, output;

set In %B11000101, //INP 5 (R0 = 5)
tick, output, tock, output;

set In %B00110010, //ADD R3 R0 R2 (R1 = R0 + R2) should make R3=5
tick, output, tock, output;

set In %B00100001, //ADD R2 R0 R1 (R2 = R0 + R1) should make R2=-12
tick, output, tock, output;

set In %B11000111, //INP 7 (R0 = 7)
tick, output, tock, output;

set In %B01110011, //SUB R3 R0 R3 (R3 = R0 - R3) should make R3=2
tick, output, tock, output;

set In %B00001011, //ADD R0 R2 R3 (R0 = R2 + R3) should make R0=-10
tick, output, tock, output;