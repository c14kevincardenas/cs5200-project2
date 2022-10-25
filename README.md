# CS 5200 Computer Architecture - Project 2

## Item 1

### How to compile the code

To compile the `main.c` code, we need to have a pq-*.c added to the command like, for example:

```shell
gcc -O2 main.c pq-null.c -o main
```

In this way the program knows what implementation of `pq` to use. That can be changed to others like: `pq-linkedlist.c` or `pq-minheap.c`.

It's also necessary to compile inside the Linux machine we have `gem5` installed, for future references to its code and also to make sure it works on the machine.