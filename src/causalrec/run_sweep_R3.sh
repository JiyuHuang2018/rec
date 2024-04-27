#!/bin/bash
#

MODELCODEPY_SWEEP="wg_wmf_obs wg_wmf_cau_ips wg_wmf_cau_const_add wg_wmf_cau_user_add wg_pmf_obs wg_pmf_cau_ips wg_pmf_cau_const_add wg_pmf_cau_user_add wg_pf_obs wg_pf_cau_ips wg_pf_cau_const_add wg_pf_cau_user_add"
DIR_PREFIX="dat/proc/"
DATADIR_SWEEP="R3_wg"
ODIR_PREFIX="out/"
LOCALFITDIR_SWEEP="R3_wg_Afit"
OUTDIR_SWEEP="R3_wg_Yfit"
OUTDIM_SWEEP="5 10 20 50"
CAUDIM_SWEEP="1 2 5 10 20 50"
THOLD_SWEEP="2 3"
BATCHSIZE_SWEEP="100"
NITER_SWEEP="20000"
PRIORU_SWEEP="1 10"
PRIORV_SWEEP="1 10"
ALPHA_SWEEP="40"
BINARY_SWEEP="0"

SUFFIX=".py"

export DATA="R3"



for MODELCODEPY in $MODELCODEPY_SWEEP; do
    python src/causalrec/${MODELCODEPY}.py --datadir ${DATADIR} --localfitdir ${LOCALFITDIR} --outdir ${OUTDIR} --outdim ${OUTDIM} --caudim ${CAUDIM} --thold ${THOLD} --batchsize ${BATCHSIZE} --niter ${NITER} --prioru ${PRIORU} --priorv ${PRIORV} --alpha ${ALPHA} --binary ${BINARY}
done



MODELCODEPY_SWEEP="sg_wmf_obs sg_wmf_cau_ips sg_wmf_cau_const_add sg_wmf_cau_user_add sg_pmf_obs sg_pmf_cau_ips sg_pmf_cau_const_add sg_pmf_cau_user_add sg_pf_obs sg_pf_cau_ips sg_pf_cau_const_add sg_pf_cau_user_add"
DIR_PREFIX="dat/proc/"
DATADIR_SWEEP="R3_sg"
ODIR_PREFIX="out/"
LOCALFITDIR_SWEEP="R3_sg_Afit"
OUTDIR_SWEEP="R3_sg_Yfit"
OUTDIM_SWEEP="5 10 20 50"
CAUDIM_SWEEP="1 2 5 10 20 50"
THOLD_SWEEP="2 3"
BATCHSIZE_SWEEP="100"
NITER_SWEEP="20000"
PRIORU_SWEEP="1 10"
PRIORV_SWEEP="1 10"
ALPHA_SWEEP="40"
BINARY_SWEEP="0"

SUFFIX=".py"

export DATA="R3"



for MODELCODEPY in $MODELCODEPY_SWEEP; do
    python src/causalrec/${MODELCODEPY}.py --datadir ${DATADIR} --localfitdir ${LOCALFITDIR} --outdir ${OUTDIR} --outdim ${OUTDIM} --caudim ${CAUDIM} --thold ${THOLD} --batchsize ${BATCHSIZE} --niter ${NITER} --prioru ${PRIORU} --priorv ${PRIORV} --alpha ${ALPHA} --binary ${BINARY}
done

