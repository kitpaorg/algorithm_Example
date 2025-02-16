#!/bin/bash

for file in [0-9][0-9]; do
    if [[ -f "$file" ]]; then
        mv "$file" "$file.in"
    fi
done

for file in [0-9][0-9].a; do
    if [[ -f "$file" ]]; then
        mv "$file" "${file%.a}.out"
    fi
done
