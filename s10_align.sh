#!/bin/csh
#PBS -q hotel
#PBS -N s10_align.sh
#PBS -l nodes=1:ppn=16
#PBS -l walltime=0:30:00
#PBS -o s10_align.sh.o
#PBS -e s10_align.sh.e
#PBS -V
#PBS -M aparisia@ucsd.edu,spgoodma@ucsd.edu
#PBS -m abe

cd ~/projects/shalek2013/processing_scripts
STAR --runThreadN 16 --genomeDir /projects/ps-yeolab/biom262-2016/genomes/mm10/gencode/m8/star_chr11/ --readFilesIn $HOME/scratch/shalek2013/raw_data/S10_R1.fastq.gz $HOME/scratch/shalek2013/raw_data/S10_R2.fastq.gz --outFileNamePrefix $HOME/projects/shalek2013/processed_data/S10. --readFilesCommand zcat

