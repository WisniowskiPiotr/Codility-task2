#!/bin/bash

for i in `seq -10 10`
do
  ./main.run $i
done


n=200
for l in 1000 10000 100000 1000000 10000000 100000000
do
  runtime=0
  for i in `seq 1 $n`
  do
    start=`date +%s%N`
    k=$l+$i
    ./main.run $k
    end=`date +%s%N`
    runtime=$((runtime+end-start))
  done
  echo "$runtime/($n-1)" | bc
done





