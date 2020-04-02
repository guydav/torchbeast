#!/usr/bin/env bash
wandb login 9676e3cc95066e4865586082971f2653245f09b4
python3.7 -m torchbeast.monobeast \
     --env FrostbiteNoFrameskip-v4 \
     --num_actors 45 \
     --total_steps 10000000 \
     --learning_rate 0.0004 \
     --epsilon 0.01 \
     --entropy_cost 0.01 \
     --batch_size 4 \
     --unroll_length 80 \
     --num_buffers 60 \
     --num_threads 4 \
     --xpid "torchbeast-test" \
     --seed 300 \
     --wandb-resume
