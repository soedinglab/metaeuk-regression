#!/bin/bash -ex

METAEUK="$1"
DATAPATH="$2"
RESULTPATH="$3"

mkdir -p "${RESULTPATH}"

"${METAEUK}" easy-predict "${DATAPATH}/contigs.fna" "${DATAPATH}/proteins.faa" "${RESULTPATH}/resNoScan" tempFolder --len-scan-for-start 0
"${METAEUK}" easy-predict "${DATAPATH}/contigs.fna" "${DATAPATH}/proteins.faa" "${RESULTPATH}/resWithScan" tempFolder --len-scan-for-start 140

# check output #
perl compare_fasta_results.pl "${RESULTPATH}/resWithScan.fas" "${RESULTPATH}/resNoScan.fas" "${DATAPATH}/as_should_with_scan.fas" "${DATAPATH}/as_should_no_scan.fas"