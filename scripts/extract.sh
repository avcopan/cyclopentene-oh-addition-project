#!/usr/bin/env bash

WD=${INIT_CWD:-$(pwd)}
DIR=${1}

cd ${WD}
cp ${DIR}/*.{inp,xyz,allxyz,log,ipynb,hess} .
