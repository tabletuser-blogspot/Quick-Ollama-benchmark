#!/bin/bash
# Taken from https://taoofmac.com/space/blog/2024/01/20/1800
# changed count to run only 3 times for now
# pulls model tinyllama and Eval Rate can be use as a benchmark.
# try other models dolphin-phi tinydolphin phi
for run in {1..3}; do echo "Why is the blue sky blue?" | ollama run tinyllama --verbose 2>&1 >/dev/null | grep "eval rate:"; done
