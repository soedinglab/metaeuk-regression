#!/bin/bash -ex

METAEUK="$1"
DATAPATH="$2"
RESULTPATH="$3"

mkdir -p "${RESULTPATH}"

"${METAEUK}" easy-predict "${DATAPATH}/NC_001133.9_100425_153163.fa" "${DATAPATH}/sacc_prots_in_segment.fa" "${RESULTPATH}/preds" tempFolder
"${METAEUK}" taxtocontig "tempFolder/latest/contigs" "preds.fas" "preds.headersMap.tsv" "${DATAPATH}/swissProtSomeClasses" "taxRes" "tmpDir" -s 2 --majority 0.5 --tax-lineage --lca-mode 2

# check output #
(grep "Saccharomyces" taxRes_tax_per_contig.tsv) || (echo "did not match Saccharomyces"; exit 1)
