#!/bin/bash

# This script is a corrected version that includes error handling for missing files.
files="file1.txt file2.txt file3.txt"

for file in $files; do
  # Check if the file exists before processing
  if [ -f "$file" ]; then
    grep "pattern" "$file" > /dev/null 2>&1
    if [ $? -eq 0 ]; then
      echo "Pattern found in $file"
    else
      echo "Pattern not found in $file"
    fi
  else
    echo "Error: File '$file' not found"
  fi
done