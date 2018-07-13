//
// Created by toxaxab on 16.06.18.
//

#ifndef TASK4B_BITS_H
#define TASK4B_BITS_H
#define BUFF_SIZE 128


#include <bits/types/FILE.h>
#include <stdio.h>
#include <stdlib.h>
#define BITS 7
#define SIZE_B 31
typedef unsigned char BYTE;
typedef struct t_stream {
    BYTE buff[BUFF_SIZE];
    size_t len, ind;
    FILE *fid;
    signed char offset;
} t_stream;

t_stream *fopen_bit(FILE *file, size_t size);

void fflush_bit(t_stream *stream);

int put_bit(BYTE bit, t_stream *stream);

int fread_bit(t_stream *stream);

void fclose_bit(t_stream *stream);

int bit_feof(t_stream *stream);

#endif //TASK4B_BITS_H
