#include "pq.h"
#include <stdlib.h>

// Node
typedef struct pq {
	void* data;
	// Lower values indicate higher priority
	double priority;
	struct pq* next;
} pq;

/* Allocates and initializes a new pq */
pq* pq_create()
{
    return (pq*)malloc(sizeof(pq));
}

// Push according to priority
void pq_push(pq** head, double key, void* value)
{
    pq* start = (*head);
	
	// create a new node
	pq* temp = (pq*)malloc(sizeof(pq));
    temp->data = value;
    temp->priority = key;
    temp->next = NULL;
	
	// check if new node should be head
	if ((*head)->priority > key) {
 
        // Insert New Node before head
        temp->next = *head;
        (*head) = temp;
    }
	else {

		while(start->next != NULL && start->next->priority < key){
			start = start->next;
		}

		temp->next = start->next;
		start->next = temp;
	}
}

// Removes the element with the
// highest priority from the list
// and return it
void* pq_pop(pq** head)
{
    pq* temp = *head;
    (*head) = (*head)->next;
    return temp->data;
}

/* Deallocates (frees) pq. Shallow destruction,
meaning nodes in the pq are not recursively freed. */
void pq_destroy(pq *head)
{
    free(head);
}