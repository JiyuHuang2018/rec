#!/bin/bash
#


python -u src/causalrec/wg_fitA_py2.py -ddir "dat/proc/R3_wg/" -odir "../../out/R3_wg_Afit"
echo "done with wg"
python -u src/causalrec/sg_fitA_py2.py -ddir "dat/proc/R3_sg/" -odir "../../out/R3_sg_Afit"
echo "done"