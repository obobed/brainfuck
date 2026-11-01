// transpiles brainfuck to c code

#include <stdio.h>

void go(FILE *f) {
    for (int c; (c = getc(f)) != EOF;){
        if (c != '{') {
            putchar(c);
            continue;
        }
        char fname[256];
        fscanf(f, "%255[^}]", fname);
        getc(f);

        FILE *include = fopen(fname, "r");
        if (!include) {
            fprintf(stderr, "can't open %s\n", fname);
            continue;
        }
        go(include);
        fclose(include);
    }
}


int main() {
    go(stdin);
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