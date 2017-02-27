#!/bin/bash

echo -n "title?> "
read title
echo -n "author?> "
read author

date=$(date +%Y-%m-%d)
filename="${date}-${title}.md"

echo "Creating ${filename}..."

cat > ${filename} <<EOF
---
title: "${title}"
author: "${author}"
---

Some good sentences here.

EOF

echo "Done."
