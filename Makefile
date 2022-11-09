help:
	@echo "Available commands:"
	@echo "- build-null"
	@echo "- build-linklist"
	@echo "- build-minheap"

build-null:
	gcc -O2 main.c pq-null.c -o main-null
	@echo "Program 'main-null' compiled.\n"

build-linklist:
	gcc -O2 main.c pq-linklist.c -o main-linklist
	@echo "Program 'main-linklist' compiled.\n"

build-minheap:
	gcc -O2 main.c pq-minheap.c -o main-minheap
	@echo "Program 'main-minheap' compiled.\n"

	