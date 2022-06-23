# Random Number Generator Assembly

> **Low-level Programming (Assembly) Assignment (3rd year of University)**

## Assignment

One of the methods used to generate random numbers is the "linear congruential generation" method. In this method, the next random number (xt+1) is calculated according to the formula according to the previous random number (xt). The value x0 is called the seed. 

> $x(t+1) = (a*x(t) + c) (mod m)$

For m=8191, a=884 and c=1 values, you are requested to generate a random number between 0-255 with the given method.

Write the code that generates a random number in assembly language as a complete EXE program by accepting the number you will read from the 23rd offset in the code segment as the seed. Define m, a and c values appropriately in the data segment, store the generated random number in the data segment.

Code is [here](https://github.com/uguraltindal/Random-Number-Generator-Assembly/blob/main/random.asm).

## Quiz 
Write the assembly code of the program that checks whether a triangle can be formed by combining the 3 given edges.

Code is [here](https://github.com/uguraltindal/Random-Number-Generator-Assembly/blob/main/triangle.asm)

