# TODO

## PART 1

- [x] Create Makefile to compile 				(Carlos)
- [ ] Locally compile pq-linklist.c 			(Carlos)
- [ ] Locally compile pq-minheap.c 				(Carlos)
- [ ] Push main-linklist-p1 to GitHub 			(Carlos)
- [ ] Push main-minheap-p1 to GitHub 			(Carlos)
- [ ] Simulate pq-linklist-p1 exeutable in gem5 (Smita)
- [ ] Simulate pq-minheap-p1 exeutable in gem5 	(Smita)
- [ ] Make script to pull correct inst mix 		(Kevin)
- [ ] Display inst mix results 					(Kevin)

## PART 2

- [ ] Uncomment 3 lines in main.c 				(Carlos)
		(#include m5ops.h, m5_dump_reset_stats())
- [ ] Modify Makefile to inclue -S 				(Carlos)
- [ ] Locally compile pq-linklist.c 			(Carlos)
- [ ] Locally compile pq-minheap.c 				(Carlos)
- [ ] Push pq-linklist executable to GitHub 	(Carlos)
- [ ] Push pq-minheap executable to GitHub 		(Carlos)
- [ ] Push pq-linklist assembly to GitHub 		(Carlos)
- [ ] Push pq-minheap assembly to GitHub 		(Carlos)
- [ ] Build libm5 in gem5 repo					(Smita)
		(scons -C util/m5 build/X86/out/m5)
- [ ] Link m5ops library						(Smita)
		(gcc -static -I${GEM5} -o main main.c pq-minheap.c {GEM5}/util/m5/build/X86/out/libm5.a)
- [ ] Simulate pq-linklist exeutable in gem5	(Smita)
- [ ] Simulate pq-minheap exeutable in gem5		(Smita)
- [ ] Modify script to pull correct inst mix	(Kevin)
- [ ] Display inst mix results					(Kevin)

## PART 3

- [ ] Write bash script to run all 7 combos		(Carlos/Kevin)
		(CPU: BaseMinorCPU, Cache: 32 KB DM L1 i$ 64 KB DM L1 d$ 4 MB 8-way L2 unified $)
		(7 Combos: opLat-issueLat parameters: default-default, 6-1, 5-2, 4-3, 3-4, 2-5, 1-6)
- [ ] Run bash script to simulate in gem5		(Smita)
- [ ] Display L1$ miss rates results			(Kevin)
- [ ] Are L1 $ miss rates surprising?			(Kevin)
- [ ] Which pq- implementation is best?			(Kevin)
		(simTime)
- [ ] Which FloatSimd FU prefer?				(Kevin)

## PART 4

- [ ] Add int & FP opLat arg parsing in se.py	(Carlos/Kevin)
- [ ] Add IntFU defs in cpu.py MinorCPU class 	(Carlos/Kevin)
- [ ] Write bash script to run 3 combos			(Carlos/Kevin)
		(3 Combos: opLat cycles (int-FP) parameters: 2-4, 1-4, 2-2)
		(issueLat = 1)
- [ ] Run bash script to simulate in gem5		(Smita)
- [ ] Which one should we halve?				(Kevin)

## PART 5

- [ ] Modify Makefile, include -funroll-loops	(Carlos)
- [ ] Locally compile pq-linklist.c 			(Carlos)
- [ ] Locally compile pq-minheap.c 				(Carlos)
- [ ] Push pq-linklist executable to GitHub 	(Carlos)
- [ ] Push pq-minheap executable to GitHub 		(Carlos)
- [ ] Push pq-linklist assembly to GitHub 		(Carlos)
- [ ] Push pq-minheap assembly to GitHub 		(Carlos)
- [ ] Examine assembly to ID # unrolls			(Kevin)
		(main.c and 3x pq-*.c)
- [ ] Repeat Part 3 with new executables		(Smita)
- [ ] Repeat Part 4 with new executables		(Smita)
- [ ] Repeat Part 3 questions w/ new stats.txt	(Kevin)
- [ ] Repeat Part 4 questions w/ new stats.txt	(Kevin)
- [ ] Is loop unrolling good/bad/neutral?		(Kevin)
- [ ] Did conclusions/design choices change?	(Kevin)