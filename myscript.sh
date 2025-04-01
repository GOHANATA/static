#!/bin/bash
#SBATCH --job-name=static-crawler
#SBATCH --partition=Centaurus
#SBATCH --time=00:15:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1

make

./level_client "Tom Hanks" 5
