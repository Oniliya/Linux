#!/bin/bash

if ["$#" -ne 1 ]; then
echo "Usa: $0 path_to_directory"
exit 1
fi

if [! -d "$1" ]; then
echo "Error: directory $1 does not exist"
exit 1
fi

echo "cleaning directory $1..."
find "$1" -type f( -name '*.bak' -o -name '*.tmp' -o -name '*.backup') -delete
echo "Done"