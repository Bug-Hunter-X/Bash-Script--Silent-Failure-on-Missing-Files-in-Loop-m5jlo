# Bash Script Bug: Silent File Processing Errors

This repository demonstrates a common error in bash scripting: silently failing when processing files that don't exist within a loop.  The `bug.sh` script showcases the problematic code, while `bugSolution.sh` provides a corrected version with robust error handling.

## Problem

The original script iterates over a list of filenames.  If a file is not found, the `grep` command returns an error code, but the script doesn't check for this error.  This leads to the script continuing execution even when encountering missing files, potentially producing inaccurate results.

## Solution

The solution incorporates a check for the exit status of the `grep` command using `$?`. If the file does not exist or the pattern is not found, an informative error message is printed.  This ensures the script's output is accurate and provides clear feedback on file processing errors.

## Usage

1. Clone this repository.
2. Run the buggy script: `bash bug.sh`
3. Run the corrected script: `bash bugSolution.sh`

Observe the difference in output and error handling between the two versions.