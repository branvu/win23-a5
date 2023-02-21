#!/usr/bin/env bash

# (The absolute path to the program is provided as the first and only argument.)
CALCULATOR=$1


# Test 01: Ensure the program runs without error with a simple, valid invocation.
if ! $CALCULATOR 5 + 5; then  # If the return code of $PROGRAM is non-zero (i.e. error)...
  echo 'ERROR! A valid run of the calculator (5 * 5) failed!'
  exit 1
fi

# Test 02: Ensure simple case has correct output...
if [[ $($CALCULATOR 2 / 2) -ne 1 ]]; then  # If the output of the program is not 1...
  echo 'ERROR! A valid run of the calculator (2 / 2) failed to produce 1 as an output!'
  exit 1
fi
# Test 03: Ensure simple case has correct output...
if [[ $($CALCULATOR 2 + 3) -ne 5 ]]; then  # If the output of the program is not 5...
  echo 'ERROR! A valid run of the calculator (2 + 3) failed to produce 5 as an output!'
  exit 1
fi
# Test 04: Ensure simple case has correct output...
if [[ $($CALCULATOR 2 * 7) -ne 14 ]]; then
  echo 'ERROR! A valid run of the calculator (2 * 7) failed to produce 14 as an output!'
  exit 1
fi

# Test 05: Ensure simple case has correct output...
if [[ $($CALCULATOR 1 - 2) -ne -1 ]]; then
  echo 'ERROR! A valid run of the calculator (1 - 2) failed to produce -1 as an output!'
  exit 1
fi
# Test 06: Ensure program errors with an invalid operand
if $CALCULATOR 10 j 100; then  # If the return code of $PROGRAM is zero (i.e. success)...
  echo 'ERROR! An invalid run of the application (3 j 2) apparently succeeded?!'
  exit 1
fi
