#!/usr/bin/env bash

count=0
rm -f out.log err.log  # clean up old logs if present

# Loop until the command fails (i.e., returns a non-zero exit code).
while true; do
  ((count++))
  # Append standard output to out.log and standard error to err.log
  ./random.sh >> out.log 2>> err.log
  # Check the exit code
  if [[ $? -ne 0 ]]; then
    echo "Script failed after $count runs."
    echo
    echo "=== STDOUT so far: ==="
    cat out.log
    echo
    echo "=== STDERR so far: ==="
    cat err.log
    break
  fi
done
