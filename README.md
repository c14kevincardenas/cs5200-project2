# CS 5200 Computer Architecture - Project 2

## How to compile the code

To compile the `main.c` code, we need to have a pq-*.c added to the command like, for example:

```shell
gcc -O2 main.c pq-null.c -o main
```

In this way the program knows what implementation of `pq` to use. That can be changed to others like: `pq-linkedlist.c` or `pq-minheap.c`.

It's also necessary to compile inside the Linux machine we have `gem5` installed, for future references to its code and also to make sure it works on the machine.

### Makefile

There is now a `Makefile` that defines some commands to compile the program with different headers and pq-* files. Just run: `make` to see the list of available commands. An example of command is below:

```sh
make build-null
```
This compiles `main.c` using `pq-null.c` and creates `main-null` executable.

## How to structure the output data
Here is my proposed file structure. This file structure will be found under the gem5 folder in the virtual machine. 

```
output
|   |p1
|   |   |linklist-stats.txt
|   |   |linklist-config.ini
|   |   |minheap-stats.txt
|   |   |minheap-config.ini
|   |p2
|   |   |linklist-n1000-stats.txt
|   |   |linklist-n1000-config.ini
|   |   |minheap-n1000-stats.txt
|   |   |minheap-n1000-config.ini
|   |   |linklist-n10000-stats.txt
|   |   |linklist-n10000-config.ini
|   |   |minheap-n10000-stats.txt
|   |   |minheap-n10000-config.ini
|   |p3
|	|	|base
|   |   |	|linklist-n10-stats.txt
|   |   |	|linklist-n10-config.ini
|   |   |	|minheap-n10-stats.txt
|   |   |	|minheap-n10-config.ini
|   |   |	|linklist-n1000-stats.txt
|   |   |	|linklist-n1000-config.ini
|   |   |	|minheap-n1000-stats.txt
|   |   |	|minheap-n1000-config.ini
|   |   |	|linklist-n10000-stats.txt
|   |   |	|linklist-n10000-config.ini
|   |   |	|minheap-n10000-stats.txt
|   |   |	|minheap-n10000-config.ini
|   |   |6-1
|   |   |	|linklist-stats.txt
|   |   |	|linklist-config.ini
|   |   |	|minheap-stats.txt
|   |   |	|minheap-config.ini
|   |   |5-2
|   |   |	|linklist-stats.txt
|   |   |	|linklist-config.ini
|   |   |	|minheap-stats.txt
|   |   |	|minheap-config.ini
|   |   |4-3
|   |   |	|linklist-stats.txt
|   |   |	|linklist-config.ini
|   |   |	|minheap-stats.txt
|   |   |	|minheap-config.ini
|   |   |3-4
|   |   |	|linklist-stats.txt
|   |   |	|linklist-config.ini
|   |   |	|minheap-stats.txt
|   |   |	|minheap-config.ini
|   |   |2-5
|   |   |	|linklist-stats.txt
|   |   |	|linklist-config.ini
|   |   |	|minheap-stats.txt
|   |   |	|minheap-config.ini
|   |   |1-6
|   |   |	|linklist-stats.txt
|   |   |	|linklist-config.ini
|   |   |	|minheap-stats.txt
|   |   |	|minheap-config.ini
|   |p4
|   |   |2-4
|   |   |	|linklist-stats.txt
|   |   |	|linklist-config.ini
|   |   |	|minheap-stats.txt
|   |   |	|minheap-config.ini
|   |   |1-4
|   |   |	|linklist-stats.txt
|   |   |	|linklist-config.ini
|   |   |	|minheap-stats.txt
|   |   |	|minheap-config.ini
|   |   |2-2
|   |   |	|linklist-stats.txt
|   |   |	|linklist-config.ini
|   |   |	|minheap-stats.txt
|   |   |	|minheap-config.ini
|   |p5
|   |   |unroll
|   |   |	|linklist.S
|   |   |	|minheap.S
|	|	|base
|   |   |	|linklist-n10-stats.txt
|   |   |	|linklist-n10-config.ini
|   |   |	|minheap-n10-stats.txt
|   |   |	|minheap-n10-config.ini
|   |   |	|linklist-n1000-stats.txt
|   |   |	|linklist-n1000-config.ini
|   |   |	|minheap-n1000-stats.txt
|   |   |	|minheap-n1000-config.ini
|   |   |	|linklist-n10000-stats.txt
|   |   |	|linklist-n10000-config.ini
|   |   |	|minheap-n10000-stats.txt
|   |   |	|minheap-n10000-config.ini
|   |   |6-1
|   |   |	|linklist-stats.txt
|   |   |	|linklist-config.ini
|   |   |	|minheap-stats.txt
|   |   |	|minheap-config.ini
|   |   |5-2
|   |   |	|linklist-stats.txt
|   |   |	|linklist-config.ini
|   |   |	|minheap-stats.txt
|   |   |	|minheap-config.ini
|   |   |4-3
|   |   |	|linklist-stats.txt
|   |   |	|linklist-config.ini
|   |   |	|minheap-stats.txt
|   |   |	|minheap-config.ini
|   |   |3-4
|   |   |	|linklist-stats.txt
|   |   |	|linklist-config.ini
|   |   |	|minheap-stats.txt
|   |   |	|minheap-config.ini
|   |   |2-5
|   |   |	|linklist-stats.txt
|   |   |	|linklist-config.ini
|   |   |	|minheap-stats.txt
|   |   |	|minheap-config.ini
|   |   |1-6
|   |   |	|linklist-stats.txt
|   |   |	|linklist-config.ini
|   |   |	|minheap-stats.txt
|   |   |	|minheap-config.ini
|   |   |2-4
|   |   |	|linklist-stats.txt
|   |   |	|linklist-config.ini
|   |   |	|minheap-stats.txt
|   |   |	|minheap-config.ini
|   |   |1-4
|   |   |	|linklist-stats.txt
|   |   |	|linklist-config.ini
|   |   |	|minheap-stats.txt
|   |   |	|minheap-config.ini
|   |   |2-2
|   |   |	|linklist-stats.txt
|   |   |	|linklist-config.ini
|   |   |	|minheap-stats.txt
|   |   |	|minheap-config.ini
```