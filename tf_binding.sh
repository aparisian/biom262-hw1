#PBS -q hotel
#PBS -N TF Binding
#PBS -l nodes=1:ppn=8
#PBS -l walltime=0:60:00
#PBS -o tf_binding.sh.o>
#PBS -e tf_binding.sh.e
#PBS -V
#PBS -M aparisia@ucsd.edu,vivianw.violin@gmail.com
#PBS -m abe

echo "Hello I am a message in standard out (stdout)"
