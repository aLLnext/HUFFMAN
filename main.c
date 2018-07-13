#include <stdio.h>
extern int code();
extern int decode();

int main() {
    if(!code()) {
        decode();
    }
    return 0;
}