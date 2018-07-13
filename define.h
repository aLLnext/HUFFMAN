//
// Created by toxaxab on 21.06.18.
//

#ifndef HAFF_DEFINE_H
#define HAFF_DEFINE_H

#define inputCODER "input.txt"
#define outputCODER "code.txt"
#define inputDECODER "code.txt"
#define outputDECODER "output.txt"
#define BUF_SIZE 100
#define sizeAlp 256


typedef struct t_node {
    int symb;
    unsigned int freq;
    struct t_node *left, *right;
} t_node;

typedef struct t_HEAP {
    size_t size, max_size;
    t_node **HEAP;
} t_HEAP;

void heapify(t_HEAP *head, int pos);
void swapNodes(t_node **a, t_node **b);
t_node *new_node(int symb, unsigned int freq);
t_HEAP *create_heap(size_t max_size);
t_node *createHaffTree(unsigned int *src, size_t max_size);

#endif //HAFF_DEFINE_H
