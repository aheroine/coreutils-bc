bcname="rm"
bcfile=/home/jl/testspace/coreutils-bc/cr-1/${bcname}.bc
for target in $(cat ${bcname}_target_functions)
do
outbcfile=${bcname}-macke-${target}-main.bc
opt -load ~/deploy/macke-opt-llvm/bin/libMackeOpt.so -encapsulatesymbolic mv.bc -encapsulatedfunction $target -o $outbcfile

llvm-dis $outbcfile
done  
