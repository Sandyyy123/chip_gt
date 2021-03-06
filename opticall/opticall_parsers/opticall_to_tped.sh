#!/bin/bash

#########################################################################
# -- Author: Amos Folarin                                               #
# -- Organisation: KCL/SLaM                                             #
# -- Email: amosfolarin@gmail.com                                       #
#########################################################################

#------------------------------------------------------------------------
# USAGE: opticall_to_tped.sh <chunked_opticall_file> <chr number>
# e.g. opticall_to_tped.sh gendep_11-002-2013_01_filt.report_Chr_Y_opticall-out.calls 
#------------------------------------------------------------------------

#------------------------------------------------------------------------
# ARGS:
# Input File <Opticall Calls File> chunked by chromosome!
#------------------------------------------------------------------------
op_calls=${1}  ##opticall calls file chunked by chromosome

# other vars
chr_n=`echo ${op_calls} | perl -ne '$_ =~ m/.+_Chr_(.{1,2})_opticall-out.calls$/ ; print $1;'`   ##extract chromosome number
op_tped=${op_calls}.tped #output tped file

## pseudo code
# 1) convert the file into calls swap, 1 = AA, 2 = AB (heterozygote), 3 = BB, 4 = NN (no call)
# 2) put the snpid, 0, position, then the genotypes space separated
# 3) next do a join again on the report file to get the chromosome positions in column 1.
# 4 this is the tped, next you need to build the tfam file.

#------------------------------------------------------------------------
# Build the TPED file 
#------------------------------------------------------------------------

#perl -slane 'if($. > 1) {map ($_ =~ s/1/A A/g, @F[4..$#F]); map ($_ =~ s/2/A B/g, @F[4..$#F]); map ($_ =~ s/3/B B/g, @F[4..$#F]); map ($_ =~ s/4/N N/g, @F[4..$#F]); unshift(@F, $chr_n); delete(@F[3..4]); print( join(" ", "@F"))}' -- -chr_n=${chr_n}  ${op_calls} > ${op_tped}


perl -slane 'if($. > 1) {map ($_ =~ s/1/A A/g, @F[4..$#F]); map ($_ =~ s/2/A B/g, @F[4..$#F]); map ($_ =~ s/3/B B/g, @F[4..$#F]); map ($_ =~ s/4/0 0/g, @F[4..$#F]); splice(@F, 1,0,0); unshift(@F, $chr_n); splice(@F, 4, 2); print( join(" ", "@F"))}' -- -chr_n=${chr_n}  ${op_calls} > ${op_tped}

