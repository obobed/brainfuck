// transpiles brainfuck to c code

#include <stdio.h>

int main() {
    puts("#include <stdio.h>\nchar tape[30000], *p=tape;\nint main(){"); // p is the actual brainfuck pointer, the one you control with `>` and `<` etc.
    for (int c; (c = getchar()) != EOF;)
        switch (c) {
            case '>': puts("p++;"); break;
            case '<': puts("p--;"); break;
            case '+': puts("(*p)++;"); break;
            case '-': puts("(*p)--;"); break;
            case '.': puts("putchar(*p);"); break;
            case ',': puts("*p = getchar();"); break;
            case '[': puts("while (*p){"); break;
            case ']': puts("}"); break;
        }
    puts("}");
}

// brainfuck instructions:
// > 	Move the pointer to the right
// < 	Move the pointer to the left
// + 	Increment the memory cell under the pointer
// - 	Decrement the memory cell under the pointer
// . 	Output the character signified by the cell at the pointer
// , 	Input a character and store it in the cell at the pointer
// [ 	Jump past the matching ] if the cell under the pointer is 0
// ] 	Jump back to the matching [ if the cell under the pointer is nonzero