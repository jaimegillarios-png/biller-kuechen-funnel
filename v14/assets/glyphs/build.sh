#!/usr/bin/env bash
# Regenerates manifest.json by scanning *.svg files in this folder.
# Run after adding/removing/renaming an SVG glyph.
#
# Usage:  ./build.sh
set -e
cd "$(dirname "$0")"
ls *.svg | sort | python3 -c "
import sys, json, collections
names = sorted(line.strip().rsplit('.svg',1)[0] for line in sys.stdin)
groups = collections.defaultdict(list)
for n in names:
    prefix = n.split('-',1)[0]
    groups[prefix].append(n)
manifest = {'groups': {k: v for k, v in groups.items()}}
print(json.dumps(manifest, indent=2, ensure_ascii=False))
" > manifest.json
echo "✓ manifest.json regenerated ($(grep -o '\"' manifest.json | wc -l | tr -d ' ') entries)"
