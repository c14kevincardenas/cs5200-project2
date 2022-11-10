

build/X86/gem5.opt configs/example/se.py --cmd=/home/smita/Project2/main-null --cpu-type=TimingSimpleCPU 
mv m5out/config.ini /home/smita/Project2/m5out/main-null-config.ini
mv m5out/stats.txt /home/smita/Project2/m5out/main-null-stats.txt

build/X86/gem5.opt configs/example/se.py --cmd=/home/smita/Project2/main-linklist-p1 --options=10000--cpu-type=TimingSimpleCPU 
mv m5out/config.ini /home/smita/Project2/m5out/main-linklist-p1-config.ini
mv m5out/stats.txt /home/smita/Project2/m5out/main-linklist-p1-stats.txt
