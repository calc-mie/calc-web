#!/bin/bash

echo -n "title?> "
read title
echo -n "author?> "
read author

dir="posts-available"
date=$(date +%Y-%m-%d)
filename="${date}-${title}.md"

echo "Creating ${dir}/${filename}..."
cat > ${dir}/${filename} <<EOF
---
title: "${title}"
author: "${author}"
---

Some good sentences here.

EOF

echo "Done."
