#!/bin/bash
CTX_SRC=$1
OUT_FILE=$2
DEVICE=$3

shift 3

python generate_dense_embeddings.py \
model_file="/home/miyoung/suehyun/DPR/checkpoint/retriever/multiset/bert-base-encoder.cp" \
encoder.sequence_length=512 \
ctx_src=$CTX_SRC \
shard_id=0 \
device=1 \
out_file=$OUT_FILE "$@"

# python generate_dense_embeddings.py \
# 	model_file={path to biencoder checkpoint} \
# 	ctx_src={name of the passages resource, set to dpr_wiki to use our original wikipedia split} \
# 	shard_id={shard_num, 0-based} num_shards={total number of shards} \
# 	out_file={result files location + name PREFX}	