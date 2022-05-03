#!/usr/bin/env bash

set -o errexit

VERSION="$1"
MODULE="./Paths_of_Glory_${VERSION}.vmod"

[[ -z "$VERSION" ]] && (echo "No Version specified"; exit 1)
rm -f "$MODULE"

# a = add to archive
# -mx1 = fastest compression
# -tzip = zip archive format

7z a "$MODULE" ./*.xml -mx1 -tzip
7z a "$MODULE" HowToPlay.html -mx1 -tzip
7z a "$MODULE" changelist.html -mx1 -tzip
7z a "$MODULE" notes.html -mx1 -tzip
7z a "$MODULE" updatingmodule.html -mx1 -tzip
7z a "$MODULE" ./*.vsav -mx1 -tzip
7z a "$MODULE" moduledata -mx1 -tzip
7z a "$MODULE" Module_es.properties -mx1 -tzip
7z a "$MODULE" help/ -r -mx1 -tzip
7z a "$MODULE" help_es/ -r -mx1 -tzip
7z a "$MODULE" images/ -r -mx1 -tzip
7z a "$MODULE" images_es/ -r -mx1 -tzip
7z a "$MODULE" help_es/ -r -mx1 -tzip
7z a "$MODULE" PathsOfGlory/ -r -mx1 -tzip
