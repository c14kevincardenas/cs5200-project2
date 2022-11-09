#include "pq.h"
#include <stdlib.h>

#define LCHILD(x) 2 * x + 1
#define RCHILD(x) 2 * x + 2
#define PARENT(x) (x - 1) / 2

// A min heap node
typedef struct node {
    void* data;
} node ;
typedef struct pq {
    int size;
    node *elem;
} pq;

/* Allocates and initializes a new pq */
pq* pq_create()
{
    pq* minheap = (pq*)malloc(sizeof(pq));
    minheap->size = 0;
    return minheap;
}

// Push value to pq
void pq_push(pq* heap, double key, void *value)
{
    // Function to insert a node into the min heap, by allocating space for that node in the
    // heap and also making sure that the heap property and shape propety are never violated.

    if(heap->size) {
        heap->elem = realloc(heap->elem, (heap->size + 1) * sizeof(node));
    } else {
        heap->elem = malloc(sizeof(node));
    }

    node nd;
    nd.data = value;

    int i = (heap->size)++ ;
    while(i && nd.data < heap->elem[PARENT(i)].data) {
        heap->elem[i] = heap->elem[PARENT(i)];
        i = PARENT(i);
    }
    heap->elem[i] = nd;
}

void swap(node *n1, node *n2) {
    node temp = *n1;
    *n1 = *n2;
    *n2 = temp;
}

void heapify(pq *hp, int i) {
    int smallest = (LCHILD(i) < hp->size && hp->elem[LCHILD(i)].data < hp->elem[i].data) ? LCHILD(i) : i;
    if(RCHILD(i) < hp->size && hp->elem[RCHILD(i)].data < hp->elem[smallest].data) {
        smallest = RCHILD(i);
    }
    if(smallest != i) {
        swap(&(hp->elem[i]), &(hp->elem[smallest]));
        heapify(hp, smallest);
    }
}

// Removes element from pq and return its data
void* pq_pop(pq* heap)
{
    if (heap->size) {
        void *temp = heap->elem[0].data;
        heap->elem[0] = heap->elem[--(heap->size)] ;
        heap->elem = realloc(heap->elem, heap->size * sizeof(node)) ;
        heapify(heap, 0) ;
        return temp;
    }
    else
    {
        free(heap->elem);
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

// // A min heap node
// struct pq {
//     float* arr;
//     // Current Size of the Heap
//     int size;
//     // Maximum capacity of the heap
//     int capacity;
// };

// int capacity = 10000;

// int parent(int i) {
//     // Get the index of the parent
//     return (i - 1) / 2;
// }

// int left_child(int i) {
//     return (2*i + 1);
// }

// int right_child(int i) {
//     return (2*i + 2);
// }

// float get_min(pq* heap) {
//     // Return the root node element,
//     // since that's the minimum, by the min-heap
//     // property
//     return heap->arr[0];
// }

// pq* heapify(pq* heap, int index) {
//     // Rearranges the heap as to maintain
//     // the min-heap property
//     if (heap->size <= 1)
//         return heap;
    
//     int left = left_child(index); 
//     int right = right_child(index); 

//     // Variable to get the smallest element of the subtree
//     // of an element an index
//     int smallest = index; 
    
//     // If the left child is smaller than this element, it is
//     // the smallest
//     if (left < heap->size && heap->arr[left] < heap->arr[index]) 
//         smallest = left; 
    
//     // Similarly for the right, but we are updating the smallest element
//     // so that it will definitely give the least element of the subtree
//     if (right < heap->size && heap->arr[right] < heap->arr[smallest]) 
//         smallest = right; 

//     // Now if the current element is not the smallest,
//     // swap with the current element. The min heap property
//     // is now satisfied for this subtree. We now need to
//     // recursively keep doing this until we reach the root node,
//     // the point at which there will be no change!
//     if (smallest != index) 
//     { 
//         int temp = heap->arr[index];
//         heap->arr[index] = heap->arr[smallest];
//         heap->arr[smallest] = temp;
//         heap = heapify(heap, smallest); 
//     }

//     return heap;
// }

// /* Allocates and initializes a new pq */
// pq* pq_create()
// {
//     pq* minheap = (pq*) calloc (1, sizeof(pq));
//     minheap->arr = (float*) calloc (capacity, sizeof(int));
//     minheap->capacity = capacity;
//     minheap->size = 0;
//     return minheap;
// }

// // Push value to pq
// void pq_push(pq* heap, double key, void *value)
// {
//     // Inserts an element to the min heap
//     // We first add it to the bottom (last level)
//     // of the tree, and keep swapping with it's parent
//     // if it is lesser than it. We keep doing that until
//     // we reach the root node. So, we will have inserted the
//     // element in it's proper position to preserve the min heap property
//     if (heap->size == heap->capacity) {
//         // Cannot insert value. Heap is already full
//         return;
//     }
//     // We can add it. Increase the size and add it to the end
//     heap->size++;
//     heap->arr[heap->size - 1] = value;

//     // Keep swapping until we reach the root
//     int curr = heap->size - 1;
//     // As long as you aren't in the root node, and while the 
//     // parent of the last element is greater than it
//     while (curr > 0 && heap->arr[parent(curr)] > heap->arr[curr]) {
//         // Swap
//         int temp = heap->arr[parent(curr)];
//         heap->arr[parent(curr)] = heap->arr[curr];
//         heap->arr[curr] = temp;
//         // Update the current index of element
//         curr = parent(curr);
//     }
// }

// // Returns value from pq
// void* pq_pop(pq *heap)
// {
//     // Deletes the minimum element, at the root
//     if (!heap || heap->size == 0)
//         return heap;

//     int size = heap->size;
//     float last_element = heap->arr[size-1];
    
//     // Update root value with the last element
//     heap->arr[0] = last_element;

//     // Now remove the last element, by decreasing the size
//     heap->size--;
//     size--;

//     // We need to call heapify(), to maintain the min-heap
//     // property
//     heap = heapify(heap, 0);
//     return last_element;
// }


// /* Deallocates (frees) pq. Shallow destruction,
// meaning nodes in the pq are not recursively freed. */
// void pq_destroy(pq *heap)
// {
//     free(heap->arr);
//     free(heap);
// }