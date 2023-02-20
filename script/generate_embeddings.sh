#!/bin/bash
MODEL_TAG=$1
MODEL_FILE=$2
SEQ_LEN=$3
CTX_SRC=$4
SHARD_ID=$5
OUT_FILE=$6

shift 6

python generate_dense_embeddings.py \
model_file=$MODEL_FILE \
encoder.sequence_length=$SEQ_LEN \
ctx_src=$CTX_SRC \
shard_id=$SHARD_ID \
out_file=$OUT_FILE "$@"
# hydra.run.dir="/outputs/$MODEL_TAG/gen_embs/$CTX_SRC/$SEQ_LEN/${now:%Y-%m-%d_%H-%M-%S}" "$@"


# python generate_dense_embeddings.py \
# 	model_file={path to biencoder checkpoint} \
# 	ctx_src={name of the passages resource, set to dpr_wiki to use our original wikipedia split} \
# 	shard_id={shard_num, 0-based} num_shards={total number of shards} \
# 	out_file={result files location + name PREFX}	