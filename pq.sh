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

