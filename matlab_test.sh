#!/bin/bash
#SBATCH --cpus-per-task=12  
#SBATCH --mem=8G
#SBATCH --time=15:00:00
cd /scratch/pavsilv/
export LD_PRELOAD="/cvmfs/soft.computecanada.ca/easybuild/software/2020/Core/imkl/2020.1.217/mkl/lib/intel64/libmkl_intel_lp64.so:/cvmfs/soft.computecanada.ca/easybuild/software/2020/Core/imkl/2020.1.217/mkl/lib/intel64/libmkl_core.so:/cvmfs/soft.computecanada.ca/easybuild/software/2020/Core/imkl/2020.1.217/mkl/lib/intel64/libmkl_def.so:/cvmfs/soft.computecanada.ca/easybuild/software/2020/Core/imkl/2020.1.217/mkl/lib/intel64/libmkl_rt.so:/cvmfs/soft.computecanada.ca/easybuild/software/2020/Core/imkl/2020.1.217/mkl/lib/intel64/libmkl_sequential.so"
export BLAS_VERSION="/cvmfs/soft.computecanada.ca/easybuild/software/2020/Core/imkl/2020.1.217/mkl/lib/intel64/libmkl_rt.so"
module load matlab
module load simbody
module load java
matlab -nodisplay -nosplash -r 'runRTSAsimsCluster()';