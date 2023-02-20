MODEL_FILE=$1
QA_DATA=$2
CTX_SRC_LIST=$3
ENCODED_CTX_LIST=$4
OUT_FILE=$5

shift 5

python dense_retriever.py \
	model_file=$MODEL_FILE \
	encoder.sequence_length=$SEQ_LEN \
	qa_dataset=$QA_DATA \
	ctx_datatsets=$CTX_SRC_LIST \
	encoded_ctx_files=$ENCODED_CTX_LIST \
	out_file=$OUT_FILE "$@"

# python dense_retriever.py \
# 	model_file={path to a checkpoint downloaded from our download_data.py as 'checkpoint.retriever.single.nq.bert-base-encoder'} \
# 	qa_dataset={the name os the test source} \
# 	ctx_datatsets=[{list of passage sources's names, comma separated without spaces}] \
# 	encoded_ctx_files=[{list of encoded document files glob expression, comma separated without spaces}] \
# 	out_file={path to output json file with results} 