#!/bin/sh
cat /etc/passwd | cut -d: -f1 | awk 'NR % 2 == 0' | rev | sort -r | awk "NR >= $FT_LINE1 && NR <= $FT_LINE2" | xargs echo | sed 's/ /, /g' | sed 's/[^.]$/&./' | tr -d '\n'