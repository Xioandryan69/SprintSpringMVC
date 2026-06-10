#!/bin/bash

OUTPUT="source.txt"

{
    echo "PROJECT EXPORT"
    echo "Generated: $(date)"
    echo

    echo "===== STRUCTURE ====="
    tree

    echo
    echo "===== FILE CONTENT ====="

    find . -type f \
    ! -path "./.git/*" \
    ! -path "./target/*" \
    ! -name "*.class" \
    | sort \
    | while read file
    do
        echo
        echo "================================================="
        echo "FILE : $file"
        echo "================================================="
        nl -ba "$file"
    done

} > "$OUTPUT"

echo "Export terminé -> $OUTPUT"