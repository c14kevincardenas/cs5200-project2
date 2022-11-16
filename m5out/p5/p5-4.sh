#!/bin/sh

gem5=build/X86/gem5.opt

se_py=configs/example/se_p4.py
n_opt=--options=
m5out_dir=m5out/
ini_file=config.ini
stats_file=stats.txt

for iteration in 1 2 3
do 
	case "$iteration"
	in
	  "1")	ifu_opLat=2
		fpu_opLat=4
	  	;;
	  "2")	ifu_opLat=1
		fpu_opLat=4
	  	;;
	  "3")	ifu_opLat=2
		fpu_opLat=2
	  	;;
	esac
	confg="--cpu-type=MinorCPU  --caches --l1d_size=64kB --l1i_size=32kB --l2cache --l2_size=8MB --l1i_assoc=1 --l1d_assoc=1 --l2_assoc=8 --fpu_operation_latency=$fpu_opLat --ifu_operation_latency=$ifu_opLat" 
	sep=_
	part=p5/$ifu_opLat$sep$fpu_opLat
	to_dir=/cs5200-project2/m5out/$part/

	for bin in linklist minheap
	do
		num=1000
		cmd="--cmd=/cs5200-project2/main-$bin-p5"
		n=$n_opt$num
		echo $gem5 $se_py $cmd $n $confg
		$gem5 $se_py $cmd $n $confg
		echo mv $m5out_dir$ini_file $to_dir$bin-$ini_file
		mv $m5out_dir$ini_file $to_dir$bin-$ini_file
		echo mv $m5out_dir$stats_file $to_dir$bin-$stats_file
		mv $m5out_dir$stats_file $to_dir$bin-$stats_file
	done
done
