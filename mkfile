# DESCRIPTION:
# mk module to run HiCUP truncater
#
# USAGE:
# Single target execution: `mk <TARGET>` where TARGET is
# any line printed by the script `bin/targets`
#
# Multiple target execution in tandem `bin/targets | xargs mk`
#
# AUTHOR: HRG
#
# Load configuration file
< config.mk
#
# Run HiCUP truncater script
#
results/%_R1.trunc.fastq.gz \
results/%_R2.trunc.fastq.gz:	data/%_R1.fastq.gz data/%_R2.fastq.gz
	mkdir -p `dirname $target`
	hicup_truncater \
		--threads $THREADS_NUMBER \
		--zip \
		--re1 $ENZYME \
		--outdir `dirname $target` \
		$prereq


