//
// Created by toxaxab on 21.06.18.
//
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "define.h"
#include "bits.h"

typedef unsigned char BYTE;
typedef struct t_bitsymb{
    unsigned char offset;
    int bits[32];
    int freq;
}t_bitsymb;

unsigned int countb;

size_t read_text(void *ptr, size_t so, size_t count, FILE *file) {
    return fread(ptr, so, count, file);
}

t_HEAP *create_heap(size_t max_size) {
    t_HEAP *tmp = (t_HEAP *) malloc(sizeof(t_HEAP));
    tmp->size = 0;
    tmp->max_size = max_size;
    tmp->HEAP = (t_node **) malloc(tmp->max_size * sizeof(t_node *));
    return tmp;
}

t_node *new_node(int symb, unsigned int freq) {
    t_node *tmp = (t_node *) malloc(sizeof(t_node));
    tmp->right = tmp->left = NULL;
    tmp->symb = symb;
    tmp->freq = freq;
    return tmp;
}

void swapNodes(t_node **a, t_node **b) {
    t_node *tmp = *a;
    *a = *b;
    *b = tmp;
}

void heapify(t_HEAP *head, int pos) {
    int left;
    int right;
    int smallest;
    while (1) {
        left = 2 * pos + 1;
        right = 2 * pos + 2;
        smallest = pos;
        if (left < head->size && head->HEAP[left]->freq < head->HEAP[smallest]->freq)
            smallest = left;
        if (right < head->size && head->HEAP[right]->freq < head->HEAP[smallest]->freq)
            smallest = right;
        if (smallest == pos) break;
        swapNodes(&head->HEAP[smallest], &head->HEAP[pos]);
        pos = smallest;
    }
}

t_HEAP *buildHeap(unsigned int *src, size_t max_size) {
    t_HEAP *head = create_heap(max_size);
    int index = 0;
    for (int i = 0; i < sizeAlp; ++i) {
        if (src[i] != 0)
            head->HEAP[index++] = new_node(i, src[i]);
    }
    head->size = max_size;
    for (int i = (max_size - 2) / 2; i >= 0; --i) {
        heapify(head, i);
    }
    return head;
}

t_node *minNode(t_HEAP *head) {
    t_node *tmp = head->HEAP[0];
    head->HEAP[0] = head->HEAP[head->size - 1];
    --(head->size);
    heapify(head, 0);
    return tmp;
}

t_node *insertNode(t_HEAP *head, t_node *current){
    ++(head->size);
    int i = head->size - 1;
    while (i && current->freq < head->HEAP[(i - 1) / 2]->freq){
        head->HEAP[i] = head->HEAP[(i - 1)/ 2];
        i = (i - 1)/ 2;
    }
    head->HEAP[i] = current;
}

t_node *createHaffTree(unsigned int *src, size_t max_size) {
    t_node *left, *right, *parent;
    t_HEAP* head = buildHeap(src, max_size);
    while (head->size != 1) {
        left = minNode(head);
        right = minNode(head);
        parent = new_node('^', left->freq + right->freq);
        parent->left = left;
        parent->right = right;
        insertNode(head, parent);
    }
    return minNode(head);
}

void addCodes(t_node* head, const int *src, t_bitsymb *bits, int n){
    bits[head->symb].offset = n;
    bits[head->symb].freq = head->freq;
    for (int i = 0; i < n; ++i) {
        bits[head->symb].bits[i] = src[i];
    }
}

void countCodes(int *src, t_node* head, int index, t_bitsymb *code, int tmp){
    if(head->left != NULL){
        src[index] = 0;
        countCodes(src, head->left, index + 1, code, tmp);
    }
    if(head->right != NULL){
        src[index] = 1;
        countCodes(src, head->right, index + 1, code, tmp);
    }
    if(head->right == NULL && head->left == NULL){
        if(index == tmp)
            ++index;
        addCodes(head, src, code, index);
    }

}

int code() {
    FILE *inp = fopen(inputCODER, "rb");

    unsigned int len = 0;
    static unsigned char buffer[BUF_SIZE];
    static unsigned int inputarray[sizeAlp];
    unsigned int size = 0;
    if (!inp) {
        puts("No FILE");
        return -1;
    }
    while (!feof(inp)) {
        len = read_text(buffer, 1, BUF_SIZE, inp);
        countb += len;
        for (int i = 0; i < len; ++i) {
            ++(inputarray[buffer[i]]);
        }
    }
    fclose(inp);

    for (int i = 0; i < sizeAlp; ++i) {
        if (inputarray[i] != 0)
            ++size;
    }
    static int arrCodes[BUFF_SIZE];
    t_node *root = createHaffTree(inputarray, size);
    int index = 0;
    static t_bitsymb codes[sizeAlp];
    countCodes(arrCodes, root, index, codes, index);
    FILE *out = fopen(outputCODER, "wb");
    t_stream *stream = fopen_bit(out, BUFF_SIZE);

    fwrite(&size, sizeof(int), 1, stream->fid);
    fwrite(&countb, sizeof(int), 1, stream->fid);
    for (int i = 0; i < sizeAlp; ++i) {
        if(!codes[i].offset) continue;
        for (int j = 7; j >= 0; --j) {
            put_bit((i & (1U << (unsigned int)j)) != 0, stream);
        }
        for (int j = SIZE_B; j >= 0; --j) {
            put_bit((codes[i].freq & (1U << (unsigned int)j)) != 0, stream);
        }
    }
    inp =  fopen(inputCODER, "r");

    while(!feof(inp)){
        len = read_text(buffer, 1, BUF_SIZE, inp);
        for (int i = 0; i < len; ++i) {
            for (int j = 0; j < codes[buffer[i]].offset; ++j) {
                put_bit((codes[buffer[i]].bits[j]) != 0, stream);
            }
        }
    }

    //fflush(stdout);
    /*countb = stream->offset;
    fflush_bit(stream);
    fseek(stream->fid, tt, SEEK_SET);
    fwrite(&countb, sizeof(int), 1, stream->fid);*/
    fclose_bit(stream);
    //fclose(out);
    return 0;
}
