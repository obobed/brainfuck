don't use ts in powershell it hates me

a smol "os" built with brainfuck!!
compile `main.bf` using `compiler` (build it first with your compiler of choice lmao):
`clang compiler.c -o compiler`
`compiler < main.bf > main.c`
`clang main.c -o main`

then simply run with `./main` or the equiv in your os!
yes "compiler" is a transpiler and it is unoptimised af :D

commands (type them, then an argument separated by a space if required):
e - echo whatever you type after it!
w - write data to the buffer
r - read data from the buffer
q - quit!

doesn't seem like much but trust me holy shit this is so complex

have a look at [the plan](plan) for more details behind it lol

## the tape:
as you know, brainfuck runs on a tape of approximately 30000 cells, thats around how big the buffer is here! we literally only save 5 singular cells for operations

t0 run flag | t1 typed char | t2, t3 temporary operations | t4 guard | t5+ buffer!

explanations: 
t0      holds 1 when logic loop should keep going, 0 when it should stop (remember, square brackets run until the cell is 0)
t1      holds user input
t2,3    temporary cells, used for comparing values without destroying them (explanation below)
t4      stays 0 forever, is boundary for where the buffer starts (the square brackets in brainfuck repeat until the selected pointer is 0, so you can loop all the way to this, zeroed, cell with something as simple as `[<]`) 
t5      anything past this is the buffer! where writes get stored and read from


how t2 and t3 are used (MOVING VALUES IN BRAINFUCK DESTROYES THE ORIGINAL so we must do this :c):
1. t1 is emptied into BOTH t2 and t3
2. t3 is emptied back into t1 to restore it

start:          t1=65   t2=0    t3=0
after step 1:   t1=0    t2=65   t3=65
after step 2:   t1=65   t2=65   t3=0