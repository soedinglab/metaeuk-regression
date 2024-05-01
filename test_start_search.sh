#!/bin/bash -ex

METAEUK="$1"
DATAPATH="$2"
RESULTPATH="$3"

mkdir -p "${RESULTPATH}"

"${METAEUK}" easy-predict "${DATAPATH}/contigs.fna" "${DATAPATH}/proteins.faa" "${RESULTPATH}/resNoSearch" tempFolder --len-scan-for-start 0
"${METAEUK}" easy-predict "${DATAPATH}/contigs.fna" "${DATAPATH}/proteins.faa" "${RESULTPATH}/resWithSearch" tempFolder --len-scan-for-start 140

# check output #
perl compare_fasta_results.pl "${RESULTPATH}/resWithSearch.fas" "${RESULTPATH}/resNoSearch.fas" "${DATAPATH}/as_should_with_search.fas" "${DATAPATH}/as_should_no_search.fas"