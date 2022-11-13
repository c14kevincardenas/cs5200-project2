#!/bin/sh

gem5=build/X86/gem5.opt

se_py=configs/example/se.py
n_opt=--options=
#confg="--cpu-type=MinorCPU  --caches --l1d_size=64kB --l1i_size=32kB --l2cache --l2_size=8MB --l1i_assoc=1 --l1d_assoc=1 --l2_assoc=8 --fpu_operation_latency=5 --fpu_issue_latency=2"
m5out_dir=m5out/
ini_file=config.ini
stats_file=stats.txt
#part=p3
#to_dir=/cs5200-project2/m5out/$part/
for opLat in 1 2 3 4 5 6
do 
	case "$opLat"
	in
	  "1")	issLat=6
	  	;;
	  "2")	issLat=5
	  	;;
	  "3")	issLat=4
	  	;;
	  "4")	issLat=3
	  	;;
	  "5")	issLat=2
	  	;;
	  "6")	issLat=1
	  	;;
	esac
	confg="--cpu-type=MinorCPU  --caches --l1d_size=64kB --l1i_size=32kB --l2cache --l2_size=8MB --l1i_assoc=1 --l1d_assoc=1 --l2_assoc=8 --fpu_operation_latency=$opLat --fpu_issue_latency=$issLat"
	sep=_
	part=p3/$opLat$sep$issLat
	to_dir=/cs5200-project2/m5out/$part/

	for bin in linklist minheap
	do
		cmd="--cmd=/cs5200-project2/main-$bin-p2"
		for num in 10 1000 10000
		do
			n=$n_opt$num
			echo $gem5 $se_py $cmd $n $confg
			$gem5 $se_py $cmd $n $confg
			echo mv $m5out_dir$ini_file $to_dir$bin-n$num-$ini_file
			mv $m5out_dir$ini_file $to_dir$bin-n$num-$ini_file
			echo mv $m5out_dir$stats_file $to_dir$bin-n$num-$stats_file
			mv $m5out_dir$stats_file $to_dir$bin-n$num-$stats_file
		done
	done
done
