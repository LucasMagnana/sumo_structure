#!/bin/bash
lambda=0.0
add=0.05
for i in {1..20}
do
    lambda=`echo $lambda + $add | bc`
    echo $lambda
    for j in {1..10}
    do
        python3 main.py --learning True --new-scenario True --car-poisson-lambda $lambda --config 1
        #python3 main.py --learning True --poisson-lambda $lambda;
    done
done
