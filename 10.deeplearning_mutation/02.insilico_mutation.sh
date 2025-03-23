##### for the pseudo bulk RPE cell type from tissue #####
### overlaped SNP & peak summit test 12 (TMEM216 GRCh38 chr11 61392562 G>A (0 base), peak is chr11 61392322 61393674 (0 base)

# 1. bash ./utils/test12_parameters.sh to get the parameters
'''
Plot range: [61392748, 61393248)
Sequence range: [61327462, 61458534)
Mutation upstream distance: 676
Mutation length: 1353
'''

# 2. make the bed file with the parameters above in the Sequence range
echo chr11 61327462 61458534 > ./utils/test12.bed

# 3. get the scores.h5
/basenji/bin/basenji_sat_bed.py -f /data/human/fasta/genome_selected.fa -u 676 -d 677 -o ./RPE/test12_sat --rc -t ./utils/RPE_wigs.txt ./utils/human.json ./utils/model_best.h5 ./utils/test12.bed

# 4. plot the sat (full peak region)
/basenji/bin/basenji_sat_plot.py -l 1353 -o ./RPE/test12_sat/plot_peak -t ./utils/RPE_wigs.txt ./RPE/test12_sat/scores.h5

# 5. plot the sat (zoom in SNP region)
## for chr11 61392562, set plot_start = 225, plot_end = 245 in /basenji/bin/basenji_sat_plot.py 
/basenji/bin/basenji_sat_plot.py -l 20 -o ./RPE/test12_sat/plot_snp -t ./utils/RPE_wigs.txt ./RPE/test12_sat/scores.h5










