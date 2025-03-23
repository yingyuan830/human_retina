#!/bin/bash

# Define mutation start and end
mu_start=61392322
mu_end=61393675

# Calculate the middle of the mutation
mu_mid=$(( (mu_start + mu_end) / 2 ))
mu_len=$((mu_end - mu_start))

# Define the plot and sequence length
plot_len=500
seq_len=131072

# Calculate the start and end of the plot
plot_start=$(( mu_mid - plot_len / 2 ))
plot_end=$(( plot_start + plot_len ))

# Calculate the middle of the sequence based on its length
seq_mid=$(( seq_len / 2 ))

# Calculate the sequence range
seq_start=$(( mu_mid - seq_len / 2 ))
seq_end=$(( mu_mid + seq_len / 2 ))

# Calculate mut_up (distance from sequence start to mutation start)
mut_up=$(( mu_mid-mu_start ))

# Print the plot range and sequence info
echo "Plot range: [$plot_start, $plot_end)"
echo "Sequence range: [$seq_start, $seq_end)"
echo "Mutation upstream distance: $mut_up"
echo "Mutation length: $mu_len"

