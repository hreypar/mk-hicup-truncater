et  DESCRIPTION:
# mk module to run HiCUP
#
# USAGE:
# Single target execution: `mk <TARGET>` where TARGET is
# any line printed by the script `bin/mk-targets`
#
# Multiple target execution in tandem `bin/mk-targets | xargs mk`
#
# AUTHOR: HRG
#
# Run HiCUP pipeline
#
results/%:	data/%
	mkdir -p `dirname $target`
	hicup \
		--threads $THREADS_NUMBER \
		--zip \
		--bowtie2 $BOWTIE2_PATH \
		--index $INDEX_PATH \
		--digest $DIGESTED_GENOME_PATH \
		--

