#!/bin/bash

FILES=("adams.txt" "black-holes.txt" "tolkien.txt")
WORDS=("the" "be" "to" "of" "and")

for FILE in "${FILES[@]}"; do
    TOTAL_WORDS=$(wc -w < "$FILE")  # Get total word count
    OUTPUT_FILE="${FILE%.txt}-freq.txt"  # Name output file based on input file

    echo "Word Frequency in $FILE" > "$OUTPUT_FILE"  # Write header

    for WORD in "${WORDS[@]}"; do
        COUNT=$(grep -iowc "$WORD" "$FILE")  # Count occurrences of the word
        PERCENTAGE=$((COUNT * 100 / TOTAL_WORDS))  # Calculate percentage
        echo "$WORD: $PERCENTAGE%" >> "$OUTPUT_FILE"  # Append result to output file
    done
done
