#!/bin/bash

# This script attempts to process a list of files, but it contains a subtle error.
# It uses a loop to iterate over file names, but it doesn't handle files that might not exist.
files="file1.txt file2.txt file3.txt"

for file in $files; do
  # This line will fail silently if the file doesn't exist
  grep "pattern" "$file" > /dev/null 2>&1
  if [ $? -eq 0 ]; then
    echo "Pattern found in $file"
  else
    echo "Pattern not found in $file"
  fi
  # Without proper error handling, the script continues even if a file is missing
done