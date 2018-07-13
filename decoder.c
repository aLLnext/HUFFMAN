//
// Created by toxaxab on 23.06.18.
//

#include <bits/types/FILE.h>
#include <stdio.h>
#include "define.h"
#include "bits.h"

int read_code(unsigned int *cur, t_stream *stream, int countb) {
    *cur = 0;
    int bit = 0;
    for (int i = countb; i >= 0; --i) {
        bit = fread_bit(stream);
        //printf("%d", bit);
        if (bit == 1) {
            *cur |= (1U << (unsigned int) i);
        }
        //else if (bit == 0)
        //    *cur &= ~(1 << i);
        else if(bit == EOF) return 1;
    }
}

int decode() {
    FILE *inpd = fopen(inputDECODER, "rb");
    FILE *outd = fopen(outputDECODER, "wb");
    t_stream *stream_out = fopen_bit(inpd, 0);
    static unsigned int n;
    static unsigned int countb;

    fread(&n, sizeof(int), 1, stream_out->fid);
    fread(&countb, sizeof(int), 1, stream_out->fid);
    static unsigned int inputArr[sizeAlp];
    static unsigned int cur;
    for (int i = 0; i < n; ++i) {
        read_code(&cur, stream_out, 7);
        read_code(&inputArr[cur], stream_out, SIZE_B);
    }

    t_node *root = createHaffTree(inputArr, n);
    t_node *current = root;
    int bit = 0;
    int offset = 0;
    while (1) {
        if (bit_feof(stream_out) == EOF) break;
        bit = fread_bit(stream_out);
        if(!countb) break;
        /*if(stream_out->ind == stream_out->len && BUFF_SIZE > stream_out->ind){
            if(countb != stream_out->offset) {
                break;
            }
        }*/
        //printf("%d", bit);
        //fflush(stdout);
        if (bit < 0) break;
        if (bit == 0) {
            if (current->left != NULL){
                current = current->left;
            }
            if (current->right == NULL && current->left == NULL) {
                fprintf(outd, "%c", current->symb);
                --countb;
                current = root;
                continue;
            }
        } else{
            if (current->right != NULL) {
                current = current->right;
            }
            if (current->right == NULL && current->left == NULL) {
                fprintf(outd,"%c", current->symb);
                --countb;
                current = root;
                continue;
            }
        }
    }
    return 0;
}