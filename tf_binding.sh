#PBS -q <queue name>
#PBS -N <job name>
#PBS -l nodes=10:ppn=2
#PBS -l walltime=0:50:00
#PBS -o <output file>
#PBS -e <error file>
#PBS -V
#PBS -M <email address list>
#PBS -m abe
#PBS -A <account>