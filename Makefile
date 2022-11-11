help:
	@echo "Available commands:"
	@echo "- build-linklist-p1"
	@echo "- build-minheap-p1"
	@echo "- build-linklist-p2"
	@echo "- build-minheap-p2"

build-linklist-p1:
	gcc -O2 main_p1.c pq-linklist.c -o main-linklist-p1
	@echo "Program 'main-linklist-p1' compiled.\n"

build-minheap-p1:
	gcc -O2 main_p1.c pq-minheap.c -o main-minheap-p1
	@echo "Program 'main-minheap-p1' compiled.\n"

build-linklist-p2:
	gcc -O2 -static -I/gem5/include main.c pq-linklist.c /gem5/util/m5/build/x86/out/libm5.a -o main-linklist-p2
	@echo "Program 'main-linklist-p2' compiled.\n"

build-minheap-p2:
	gcc -O2 -static -I/gem5/include main.c pq-minheap.c /gem5/util/m5/build/x86/out/libm5.a -o main-minheap-p2
	@echo "Program 'main-minheap-p2' compiled.\n"

	