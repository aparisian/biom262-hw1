#!/bin/bash
#PBS -q hotel
#PBS -N s10_sort
#PBS -l nodes=1:ppn=8
#PBS -l walltime=0:30:00
#PBS -o s10_sort.sh.o
#PBS -e s10_sort.sh.e
#PBS -V
#PBS -M aparisia@ucsd.edu
#PBS -m abe

samtools view -b $HOME/projects/shalek2013/processed_data/S10.Aligned.out.sam \
    > $HOME/projects/shalek2013/processed_data/S10.Aligned.out.bam
samtools sort -@ 4 $HOME/projects/shalek2013/processed_data/S10.Aligned.out.bam
samtools index $HOME/projects/shalek2013/processed_data/S10.Aligned.out.sorted.bam
