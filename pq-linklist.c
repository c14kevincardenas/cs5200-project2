#include "pq.h"
#include <stdlib.h>

// A linked list node
struct pq {
    void* data;
    pq* next;
};

/* Allocates and initializes a new pq */
pq* pq_create()
{
    return (pq*)malloc(sizeof(pq));
}

// Push value to pq to the end of the linked list
void pq_push(pq* head, double key, void *value)
{
    pq* newNode = pq_create();
    newNode->data = value;
    newNode->next = NULL;

    pq* start = head;

    while(start->next != NULL){
        start = start->next;
    }

    start->next = newNode;
}

// Removes element from pq, from the end of the linked list
// and return its data
void* pq_pop(pq* head)
{
    pq* temp = head;
    
    while(temp->next->next != NULL) {
        temp = temp->next;
    }

    pq* p = temp->next;
    temp->next = NULL;
    
    return p->data;
}

/* Deallocates (frees) pq. Shallow destruction,
meaning nodes in the pq are not recursively freed. */
void pq_destroy(pq *head)
{
    free(head);
}