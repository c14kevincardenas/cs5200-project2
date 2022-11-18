# TODO

## PART 1

- [x] Create Makefile to compile 				(Carlos)
- [x] Locally compile pq-linklist.c 			(Carlos)
- [x] Locally compile pq-minheap.c 				(Carlos)
- [x] Push main-linklist-p1 to GitHub 			(Carlos)
- [x] Push main-minheap-p1 to GitHub 			(Carlos)
- [x] Simulate pq-linklist-p1 executable in gem5 (Smita)
- [x] Simulate pq-minheap-p1 executable in gem5 	(Smita)
- [x] Make script to pull correct inst mix 		(Kevin)
- [x] Display inst mix results 					(Kevin)

## PART 2

- [x] Uncomment 3 lines in main.c 				(Carlos)
		(#include m5ops.h, m5_dump_reset_stats())
- [x] Modify Makefile to include -S 				(Carlos)
- [x] Locally compile pq-linklist.c 			(Carlos)
- [x] Locally compile pq-minheap.c 				(Carlos)
- [x] Build libm5 in gem5 repo					(Smita)
		(scons -C util/m5 build/X86/out/m5)
- [x] Link m5ops library						(Smita)
		(gcc -static -I${GEM5} -o main main.c pq-minheap.c {GEM5}/util/m5/build/X86/out/libm5.a)
- [x] Simulate pq-linklist exeutable in gem5	(Smita)
- [x] Simulate pq-minheap exeutable in gem5		(Smita)
- [x] Modify script to pull correct inst mix	(Kevin)
- [x] Display inst mix results					(Kevin)

## PART 3

- [x] Write bash script to run all 9 combos		(Smita)
		(CPU: X86MinorCPU, Cache: 32 KB DM L1 i$ 64 KB DM L1 d$ 4 MB 8-way L2 unified $)
		(7 Combos: opLat-issueLat parameters: default-default (n=1000), default-default (n=10), default-default (n=10000), 6-1, 5-2, 4-3, 3-4, 2-5, 1-6)
- [x] Run bash script to simulate in gem5		(Smita)
- [x] Display L1$ miss rates results (n=1000)	(Kevin)
- [x] Are L1 $ miss rates surprising?			(Kevin)
- [x] Which pq- implementation is best?			(Kevin)
		(simTime)
- [x] Repeat for n=10 and n=10000
- [x] Which FloatSimd FU prefer?				(Kevin)

## PART 4

- [x] Add int & FP opLat arg parsing in se.py	(Smita)
- [x] Add IntFU defs in cpu.py MinorCPU class 	(Smita)
- [x] Write bash script to run 3 combos			(Smita)
		(3 Combos: opLat cycles (int-FP) parameters: 2-4, 1-4, 2-2)
		(issueLat = 1)
- [x] Run bash script to simulate in gem5		(Smita)
- [x] Which one should we halve?				(Kevin)

## PART 5

- [x] Modify Makefile, include -funroll-loops	(Smita)
- [x] Locally compile pq-linklist.c 			(Smita)
- [x] Locally compile pq-minheap.c 				(Smita)
- [x] Write bash script to run 9+3 combos			(Smita)
- [x] Push pq-linklist assembly to GitHub 		(Carlos)
- [x] Push pq-minheap assembly to GitHub 		(Carlos)
- [x] Examine assembly to ID # unrolls			(Kevin)
		(main.c and 3x pq-*.c)
- [x] Repeat Part 3 with new executables		(Smita)
- [x] Repeat Part 4 with new executables		(Smita)
- [ ] Repeat Part 3 questions w/ new stats.txt	(Kevin)
- [ ] Repeat Part 4 questions w/ new stats.txt	(Kevin)
- [x] Is loop unrolling good/bad/neutral?		(Kevin)
- [x] Did conclusions/design choices change?	(Kevin)