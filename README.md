# CS 5200 Computer Architecture - Project 2

## How to compile the code

To compile the `main.c` code, we need to have a pq-*.c added to the command like, for example:

```shell
gcc -O2 main.c pq-null.c -o main
```

In this way the program knows what implementation of `pq` to use. That can be changed to others like: `pq-linkedlist.c` or `pq-minheap.c`.

It's also necessary to compile inside the Linux machine we have `gem5` installed, for future references to its code and also to make sure it works on the machine.


## How to structure the output data
Here is my proposed file structure. This file structure will be found under the gem5 folder in the virtual machine. 

```
output
|   |p1
|   |   |null_stats.txt
|   |   |null_config.ini
|   |   |linklist_stats.txt
|   |   |linklist_config.ini
|   |   |minheap_stats.txt
|   |   |minheap_config.ini
|   |p2
|   |   |null_stats.txt
|   |   |null_config.ini
|   |   |linklist_stats.txt
|   |   |linklist_config.ini
|   |   |minheap_stats.txt
|   |   |minheap_config.ini
|   |p3
|   |   |base
|   |   |	|null_stats.txt
|   |   |	|null_config.ini
|   |   |	|linklist_stats.txt
|   |   |	|linklist_config.ini
|   |   |	|minheap_stats.txt
|   |   |	|minheap_config.ini
|   |   |6_1
|   |   |	|null_stats.txt
|   |   |	|null_config.ini
|   |   |	|linklist_stats.txt
|   |   |	|linklist_config.ini
|   |   |	|minheap_stats.txt
|   |   |	|minheap_config.ini
|   |   |5_2
|   |   |	|null_stats.txt
|   |   |	|null_config.ini
|   |   |	|linklist_stats.txt
|   |   |	|linklist_config.ini
|   |   |	|minheap_stats.txt
|   |   |	|minheap_config.ini
|   |   |4_3
|   |   |	|null_stats.txt
|   |   |	|null_config.ini
|   |   |	|linklist_stats.txt
|   |   |	|linklist_config.ini
|   |   |	|minheap_stats.txt
|   |   |	|minheap_config.ini
|   |   |3_4
|   |   |	|null_stats.txt
|   |   |	|null_config.ini
|   |   |	|linklist_stats.txt
|   |   |	|linklist_config.ini
|   |   |	|minheap_stats.txt
|   |   |	|minheap_config.ini
|   |   |2_5
|   |   |	|null_stats.txt
|   |   |	|null_config.ini
|   |   |	|linklist_stats.txt
|   |   |	|linklist_config.ini
|   |   |	|minheap_stats.txt
|   |   |	|minheap_config.ini
|   |   |1_6
|   |   |	|null_stats.txt
|   |   |	|null_config.ini
|   |   |	|linklist_stats.txt
|   |   |	|linklist_config.ini
|   |   |	|minheap_stats.txt
|   |   |	|minheap_config.ini
|   |p4
|   |   |2_4
|   |   |	|null_stats.txt
|   |   |	|null_config.ini
|   |   |	|linklist_stats.txt
|   |   |	|linklist_config.ini
|   |   |	|minheap_stats.txt
|   |   |	|minheap_config.ini
|   |   |1_4
|   |   |	|null_stats.txt
|   |   |	|null_config.ini
|   |   |	|linklist_stats.txt
|   |   |	|linklist_config.ini
|   |   |	|minheap_stats.txt
|   |   |	|minheap_config.ini
|   |   |2_2
|   |   |	|null_stats.txt
|   |   |	|null_config.ini
|   |   |	|linklist_stats.txt
|   |   |	|linklist_config.ini
|   |   |	|minheap_stats.txt
|   |   |	|minheap_config.ini
|   |p5
|   |   |unroll
|   |   |	|null.S
|   |   |	|linklist.S
|   |   |	|minheap.S
|   |   |base
|   |   |	|null_stats.txt
|   |   |	|null_config.ini
|   |   |	|linklist_stats.txt
|   |   |	|linklist_config.ini
|   |   |	|minheap_stats.txt
|   |   |	|minheap_config.ini
|   |   |6_1
|   |   |	|null_stats.txt
|   |   |	|null_config.ini
|   |   |	|linklist_stats.txt
|   |   |	|linklist_config.ini
|   |   |	|minheap_stats.txt
|   |   |	|minheap_config.ini
|   |   |5_2
|   |   |	|null_stats.txt
|   |   |	|null_config.ini
|   |   |	|linklist_stats.txt
|   |   |	|linklist_config.ini
|   |   |	|minheap_stats.txt
|   |   |	|minheap_config.ini
|   |   |4_3
|   |   |	|null_stats.txt
|   |   |	|null_config.ini
|   |   |	|linklist_stats.txt
|   |   |	|linklist_config.ini
|   |   |	|minheap_stats.txt
|   |   |	|minheap_config.ini
|   |   |3_4
|   |   |	|null_stats.txt
|   |   |	|null_config.ini
|   |   |	|linklist_stats.txt
|   |   |	|linklist_config.ini
|   |   |	|minheap_stats.txt
|   |   |	|minheap_config.ini
|   |   |2_5
|   |   |	|null_stats.txt
|   |   |	|null_config.ini
|   |   |	|linklist_stats.txt
|   |   |	|linklist_config.ini
|   |   |	|minheap_stats.txt
|   |   |	|minheap_config.ini
|   |   |1_6
|   |   |	|null_stats.txt
|   |   |	|null_config.ini
|   |   |	|linklist_stats.txt
|   |   |	|linklist_config.ini
|   |   |	|minheap_stats.txt
|   |   |	|minheap_config.ini
|   |   |2_4
|   |   |	|null_stats.txt
|   |   |	|null_config.ini
|   |   |	|linklist_stats.txt
|   |   |	|linklist_config.ini
|   |   |	|minheap_stats.txt
|   |   |	|minheap_config.ini
|   |   |1_4
|   |   |	|null_stats.txt
|   |   |	|null_config.ini
|   |   |	|linklist_stats.txt
|   |   |	|linklist_config.ini
|   |   |	|minheap_stats.txt
|   |   |	|minheap_config.ini
|   |   |2_2
|   |   |	|null_stats.txt
|   |   |	|null_config.ini
|   |   |	|linklist_stats.txt
|   |   |	|linklist_config.ini
|   |   |	|minheap_stats.txt
|   |   |	|minheap_config.ini
```