#PBS -q hotel
#PBS -N tf_binding.sh
#PBS -l nodes=1:ppn=1
#PBS -l walltime=0:10:00
#PBS -o tf_binding.sh.o
#PBS -e tf_binding.sh.e
#PBS -V
#PBS -M aparisia@ucsd.edu,vivianw.violin@gmail.com
#PBS -m abe

echo "Hello I am a message in standard out (stdout)"

echo "Hello I am a message in standard error (stderr) >&2"

#Exercise 1
cd ~/biom262-2016/weeks/week01/data
grep 'NFKB' tf.bed > tf.nfkb.bed

#Exercise 2
awk '$3 ~ /transcript/{print}' gencode.v19.annotation.chr22.gtf > gencode.v19.annotation.chr22.transcript.gtf

#Exercise 3
module load biotools
bedtools flank -s -i gencode.v19.annotation.chr22.transcript.gtf -g hg19.genome -l 2000 -r 0 > gencode.v19.annotation.chr22.transcript.promoter.gtf

#Exercise 4
module load biotools
bedtools intersect -a gencode.v19.annotation.chr22.transcript.promoter.gtf -b tf.nfkb.bed > gencode.v19.annotation.chr22.transcript.promoter.nfkb.gtf

#Exercise 5
module load biotools
bedtools getfasta -s -fi GRCh37.p13.chr22.fa -bed gencode.v19.annotation.chr22.transcript.promoter.nfkb.gtf -fo gencode.v19.annotation.chr22.transcript.promoter.nfkb.fasta

#Exercise 6
#Promoter list doesn't correspond well with known NFKB binding sequences. 
#Based on a comparison between the sequences in our generated file of promoters and the list of 11-mer canonical NFKB-binding sequences
#from the paper, it seems that our generated list of promoters contains less than 10% of the known canonical NFKB-binding sequences
#(only 283 out of 4400 probe sequences). This suggests that our list of NFKB-binding promoters is unlikely to be a complete list of
#the regions where NFKB binds. In addition, a similar number of our promoters (332 out of 1221) contain a probe sequence.
#This represents almost a quarter of the promoters in the list, but again suggests that either the list of probes or promoters is
#likely to be incomplete.
