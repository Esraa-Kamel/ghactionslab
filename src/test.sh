#!/bin/bash

EXPECTED="Hello, Test!"
OUTPUT=$(node -e "console.log(require('./src/app')('Test'))")

if [ "$OUTPUT" = "$EXPECTED" ]; then
    echo "TEST PASSED"
    exit 0
else
    echo "TEST FAILED! Expected '$EXPECTED' but got '$OUTPUT'"
    exit 1
fi