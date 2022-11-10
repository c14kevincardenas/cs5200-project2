#include "pq.h"
#include <stdlib.h>

#define LCHILD(x) 2 * x + 1
#define RCHILD(x) 2 * x + 2
#define PARENT(x) (x - 1) / 2

// A min heap node
typedef struct node {
    void* data;
    // Lower values indicate higher priority
    double priority;
} node ;
typedef struct pq {
    int size;
    node *elem;
} pq;

// Heap related methods
void swap(node *n1, node *n2) {
    node temp = *n1;
    *n1 = *n2;
    *n2 = temp;
}
void heapify(pq** heap, int i) {
    int smallest_priority = (LCHILD(i) < (*heap)->size && (*heap)->elem[LCHILD(i)].priority < (*heap)->elem[i].priority) ? LCHILD(i) : i;
    if(RCHILD(i) < (*heap)->size && (*heap)->elem[RCHILD(i)].priority < (*heap)->elem[smallest_priority].priority) {
        smallest_priority = RCHILD(i);
    }
    if(smallest_priority != i) {
        swap(&((*heap)->elem[i]), &((*heap)->elem[smallest_priority]));
        heapify(heap, smallest_priority);
    }
}

// Allocates and initializes a new pq
pq* pq_create()
{
    pq* minheap = (pq*)malloc(sizeof(pq));
    minheap->size = 0;
    return minheap;
}

// Push value to pq
void pq_push(pq** heap, double key, void *value)
{
    if ((*heap)->size) {
        (*heap)->elem = realloc((*heap)->elem, ((*heap)->size + 1) * sizeof(node));
    } else {
        (*heap)->elem = malloc(sizeof(node));
    }

    node nd;
    nd.data = value;
    nd.priority = key;

    int i = ((*heap)->size)++;

    while(i && nd.priority < (*heap)->elem[PARENT(i)].priority) {
        (*heap)->elem[i] = (*heap)->elem[PARENT(i)];
        i = PARENT(i);
    }

    (*heap)->elem[i] = nd;
}

// Removes element from pq and return its data
void* pq_pop(pq** heap)
{
    if ((*heap)->size) {
        void *temp = (*heap)->elem[0].data;
        (*heap)->elem[0] = (*heap)->elem[--((*heap)->size)] ;
        (*heap)->elem = realloc((*heap)->elem, (*heap)->size * sizeof(node)) ;
        heapify(heap, 0) ;
        return temp;
    }
    else
    {
        free((*heap)->elem);
        return (void*)-1;
    }
}

/* Deallocates (frees) pq. Shallow destruction,
meaning nodes in the pq are not recursively freed. */
void pq_destroy(pq *heap)
{
    free(heap->elem);
    free(heap);
}
