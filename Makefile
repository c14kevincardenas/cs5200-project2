help:
	@echo "Available commands:"
	@echo "- build-linklist-p1"
	@echo "- build-minheap-p1"
	@echo "- build-linklist"
	@echo "- build-minheap"

build-linklist-p1:
	gcc -O2 main_p1.c pq-linklist.c -o main-linklist-p1
	@echo "Program 'main-linklist' compiled.\n"

build-minheap-p1:
	gcc -O2 main_p1.c pq-minheap.c -o main-minheap-p1
	@echo "Program 'main-minheap' compiled.\n"

build-linklist:
	gcc -O2 main.c pq-linklist.c -o main-linklist
	@echo "Program 'main-linklist' compiled.\n"

build-minheap:
	gcc -O2 main.c pq-minheap.c -o main-minheap
	@echo "Program 'main-minheap' compiled.\n"
	