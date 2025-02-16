#!/bin/bash

for file in [0-9][0-9] [0-9][0-9][0-9]; do
    if [[ -f "$file" ]]; then
        if [[ "$file" =~ ^[0-9]{2}$ ]]; then
            mv "$file" "$file.in"
        elif [[ "$file" =~ ^[0-9]{3}$ ]]; then
            mv "$file" "$file.in"
        fi
    fi
done

for file in [0-9][0-9].a [0-9][0-9][0-9].a; do
    if [[ -f "$file" ]]; then
        if [[ "$file" =~ ^[0-9]{2}\.a$ ]]; then
            mv "$file" "${file%.a}.out"
        elif [[ "$file" =~ ^[0-9]{3}\.a$ ]]; then
            mv "$file" "${file%.a}.out"
        fi
    fi
done
