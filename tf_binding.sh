#PBS -q hotel
#PBS -N TF Binding
#PBS -l nodes=1:ppn=8
#PBS -l walltime=0:60:00
#PBS -o tf_binding.sh.o>
#PBS -e tf_binding.sh.e
#PBS -V
#PBS -M aparisia@ucsd.edu,vivianw.violin@gmail.com
#PBS -m abe

Hello I am a message in standard error(stderr) >&2


echo "Hello I am a message in standard out (stdout)"

Exercise 4
module load biotools
bedtools intersect -a gencode.v19.annotation.chr22.transcript.promoter.gtf -b tf.nfkb.bed > gencode.v19.annotation.chr22.transcript.promoter.nfkb.gtf

Exercise 5
module load biotools
bedtools getfasta -s -fi GRCh37.p13.chr22.fa -bed gencode.v19.annotation.chr22.transcript.promoter.nfkb.gtf -fo gencode.v19.annotation.chr22.transcript.promoter.nfkb.fasta
