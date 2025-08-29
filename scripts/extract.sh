#!/usr/bin/env bash

WD=${INIT_CWD:-$(pwd)}
DIR=${1}

cd ${WD}
cp ${DIR}/*.inp .
cp ${DIR}/*.xyz .
cp ${DIR}/*.allxyz .
cp ${DIR}/*.log .
cp ${DIR}/*.ipynb .
