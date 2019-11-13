# mk-hicup

Run the HiCUP pipeline on raw FASTQ files to obtain aligned, filtered and deduplicated SAM files.

## About ##

HiCUP pre-processes Hi-C FASTQ reads truncating them at the specified ligation junction, then aligns them to a reference genome and performs filtering according to the digested reference genome. It also deduplicates read pairs.

The reads are truncated when a ligation junction is found and the nucleotides to the right are discarded (even if there is a second ligation junction present).

You need other tools to perform downstream Hi-C analysis (binning, normalization, etcetera).

The output from HiCUP is a SAM/BAM file with the paired reads on adjacent lines.

