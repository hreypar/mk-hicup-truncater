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
# Load configuration file
< config.mk
#
# Run HiCUP truncator script
#
results/%.trunc.fastq.gz:	data/%.fastq.gz
	mkdir -p `dirname $target`
	hicup_truncator \
		--threads $THREADS_NUMBER \
		--zip \
		--re1 $ENZYME \
		--outdir `dirname $target` \
		$prereq

