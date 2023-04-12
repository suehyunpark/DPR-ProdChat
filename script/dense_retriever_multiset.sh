#!/bin/bash
QA_DATA=$1
CTX_SRC_LIST=$2
ENCODED_CTX_LIST=$3
INDEX_FILE=$4
OUT_FILE=$5

shift 5

python dense_retriever.py \
model_file="/home/miyoung/suehyun/DPR/checkpoint/retriever/multiset/bert-base-encoder.cp" \
encoder.sequence_length=512 \
n_docs=10 \
qa_dataset=$QA_DATA \
ctx_datatsets=$CTX_SRC_LIST \
encoded_ctx_files=$ENCODED_CTX_LIST \
index_path=$INDEX_FILE \
out_file=$OUT_FILE "$@"

# python dense_retriever.py \
# 	model_file={path to a checkpoint downloaded from our download_data.py as 'checkpoint.retriever.single.nq.bert-base-encoder'} \
# 	qa_dataset={the name os the test source} \
# 	ctx_datatsets=[{list of passage sources's names, comma separated without spaces}] \
# 	encoded_ctx_files=[{list of encoded document files glob expression, comma separated without spaces}] \
# 	out_file={path to output json file with results} 