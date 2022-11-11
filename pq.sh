#Part1
build/X86/gem5.opt configs/example/se.py --cmd=/cs5200-project2/main-linklist-p1 --options=10000--cpu-type=TimingSimpleCPU 
mv m5out/config.ini /cs5200-project2/m5out/main-linklist-p1-config.ini
mv m5out/stats.txt /cs5200-project2/m5out/main-linklist-p1-stats.txt

build/X86/gem5.opt configs/example/se.py --cmd=/cs5200-project2/main-minheap-p1 --options=10000--cpu-type=TimingSimpleCPU 
mv m5out/config.ini /cs5200-project2/m5out/main-minheap-p1-config.ini
mv m5out/stats.txt /cs5200-project2/m5out/main-minheap-p1-stats.txt

#Part2 n=10000
build/X86/gem5.opt configs/example/se.py --cmd=/cs5200-project2/main-linklist-p2 --options=10000--cpu-type=TimingSimpleCPU 
mv m5out/config.ini /cs5200-project2/m5out/main-linklist-p2-config.ini
mv m5out/stats.txt /cs5200-project2/m5out/main-linklist-p2-stats.txt

build/X86/gem5.opt configs/example/se.py --cmd=/cs5200-project2/main-minheap-p2 --options=10000--cpu-type=TimingSimpleCPU 
mv m5out/config.ini /cs5200-project2/m5out/main-minheap-p2-config.ini
mv m5out/stats.txt /cs5200-project2/m5out/main-minheap-p2-stats.txt

#Part2 n=1000
build/X86/gem5.opt configs/example/se.py --cmd=/cs5200-project2/main-linklist-p2 --options=1000--cpu-type=TimingSimpleCPU 
mv m5out/config.ini /cs5200-project2/m5out/main-linklist-p2-n1000-config.ini
mv m5out/stats.txt /cs5200-project2/m5out/main-linklist-p2-n1000-stats.txt

build/X86/gem5.opt configs/example/se.py --cmd=/cs5200-project2/main-minheap-p2 --options=1000--cpu-type=TimingSimpleCPU 
mv m5out/config.ini /cs5200-project2/m5out/main-minheap-p2-n1000-config.ini
mv m5out/stats.txt /cs5200-project2/m5out/main-minheap-p2-n1000-stats.txt

# Part3a
build/X86/gem5.opt configs/example/se.py --cmd=/cs5200-project2/main-minheap-p2 --options=1000 --cpu-type=BaseMinorCPU --caches --l1d_size=64kB --l1i_size=32kB --l2cache --l2_size=8MB --l1i_assoc=1 --l1d_assoc=1 --l2_assoc=8 
mv m5out/config.ini /cs5200-project2/m5out/main-minheap-p3-n1000-config.ini
mv m5out/stats.txt /cs5200-project2/m5out/main-minheap-p3-n1000-stats.txt

build/X86/gem5.opt configs/example/se.py --cmd=/cs5200-project2/main-minheap-p2 --options=10 --cpu-type=BaseMinorCPU  --caches --l1d_size=64kB --l1i_size=32kB --l2cache --l2_size=8MB --l1i_assoc=1 --l1d_assoc=1 --l2_assoc=8 
mv m5out/config.ini /cs5200-project2/m5out/main-minheap-p3-n10-config.ini
mv m5out/stats.txt /cs5200-project2/m5out/main-minheap-p3-n10-stats.txt

build/X86/gem5.opt configs/example/se.py --cmd=/cs5200-project2/main-minheap-p2 --options=10000 --cpu-type=BaseMinorCPU  --caches --l1d_size=64kB --l1i_size=32kB --l2cache --l2_size=8MB --l1i_assoc=1 --l1d_assoc=1 --l2_assoc=8 
mv m5out/config.ini /cs5200-project2/m5out/main-minheap-p3-n10000-config.ini
mv m5out/stats.txt /cs5200-project2/m5out/main-minheap-p3-n10000-stats.txt

#Part 3b
#Part 3c
