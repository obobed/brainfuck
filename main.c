// apologies for the copious amount of comments in this code, its late-ish at night and i havent programmed in raw c in a LONG LONG time :sob:

#include <stdio.h>
#include <string.h> // ts not cs50 gng we can use this

char buf[256]; // kaboom 256 is what brainfuck is limited to

void c_echo(char *args) {
    // TODO haha
}

void c_read(void) {
    // TODO haha
}

void c_print(void) {
    // TODO haha
}

void c_write(char *args) {
    // TODO haha
}

void c_3(void) {
    // TODO haha
}

int main(void) {
    char line[256];

    for (;;) {
        printf("% "); // haha zsh
        if (!fgets(line, sizeof line, stdin)) break;
        line[strspn(line, "\n")] = 0; // we gotta get rid of dat newline char, zeroing it probably works? haven't tested

        // need to get actual command
        char *cmd = strtok(line, " "); // split tokens by space
        char *args = strtok(NULL, ""); // NULL continues from prev split

        if (!cmd) continue;

        else if (!strcmp(cmd, "echo"))  c_echo(args);
        else if (!strcmp(cmd, "read"))  c_read();
        else if (!strcmp(cmd, "print")) c_print();
        else if (!strcmp(cmd, "write")) c_write(args);
        else if (!strcmp(cmd, "exit"))  return(0);

        else printf("unknown command: %s\n", cmd);
    }
    return 0;
}