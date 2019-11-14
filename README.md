# mk-hicup-truncater

Run the HiCUP truncater step on raw FASTQ files to obtain reads without the ligation junction that can be better aligned to the reference genome. 

## About ##

The reads are truncated when a ligation junction is found and the nucleotides to the right are discarded (even if there is a second ligation junction present).


The output from HiCUP is a pair of sequence files with the same name as the infput files, follwed by the suffix `trunc.fastq`. The HiCUP truncater also outputs a date stamped file with the truncation summary (how  many reads were truncated) and SVG QC charts.

