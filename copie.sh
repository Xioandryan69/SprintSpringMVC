#!/bin/bash

OUTPUT="source.txt"

rm -rf $OUTPUT
#!/bin/bash


{
    echo "PROJECT EXPORT"
    echo "Generated: $(date)"
    echo

    find src/main -type f | sort | while read file
    do
        echo
        echo "================================================="
        echo "FILE : $file"
        echo "================================================="
        nl -ba "$file"
        echo
    done

} > "$OUTPUT"

echo "Export terminé -> $OUTPUT"