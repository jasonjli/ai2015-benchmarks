#!/bin/sh

# It goes up to a maximum benchmark of 21 and gives each problem a maximum time limit of 600 seconds

bash benchmarks/benchmark2_bash.sh ./sddtab/bin/sddtab "-s4" benchmarks/s4 results/output.s4.sddtab.txt 21 600 &

bash benchmarks/benchmark2_bash.sh ./sddtab/bin/sddtab "-k" benchmarks/k results/output.k.sddtab.txt 21 600 &

bash benchmarks/benchmark2_bash.sh ./bddtab/bddtab "-s4" benchmarks/s4 results/output.s4.bddtab.txt 21 600 &

bash benchmarks/benchmark2_bash.sh ./bddtab/bddtab "" benchmarks/k results/output.k.bddtab.txt 21 600 &
