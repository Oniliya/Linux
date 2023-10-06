#!/bin/bash

if ["$#" -ne 1 ]; then
echo "Usage: $0 path_to_directory"
exit 1
fi

cd "$1"

for file in *; do
if [-f "$file"]; then
owner=$(stat -c %U "$file")
mkdir -p "$owner"
cp "$file" "$owner"
fi
done

echo "done"