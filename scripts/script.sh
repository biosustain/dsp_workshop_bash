#!/bin/bash
# Albert 2024-09-25
# Script to add sample names to the gene calls

# Loop through all .fna files in the current directory
for file in *.fna; do
	echo "Working on $file"
  
	# Extract filename without extension
	filename=$(basename "$file" .fna)

# Use sed to insert the filename at the start of each line beginning with '>'
	sed -i '' "s/^>/>${filename}_/" "$file"
done

echo "Sample name inserted into lines starting with '>' in all .fna files."

