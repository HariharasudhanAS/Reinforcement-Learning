#!/bin/bash
set -eux
for e in Hopper-v1 Ant-v1 HalfCheetah-v1 Humanoid-v1 Reacher-v1 Walker2d-v1
do
	for n in 10 15 20 25; do
    	python3 run_expert.py experts/$e.pkl $e --render --num_rollouts=$n
	done
done
