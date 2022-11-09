main: main.o
        gcc main.o -o main & ./main

main.o: main.c
        gcc -O2 -c main.c pq-null.c -o main.o