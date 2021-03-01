del .\Paths_of_Glory_%1.vmod

# a = add to archive
# -mx1 = fastest compression
# -tzip = zip archive format

7z a Paths_of_Glory_%1.vmod *.xml -mx1 -tzip
7z a Paths_of_Glory_%1.vmod *.html -mx1 -tzip
7z a Paths_of_Glory_%1.vmod *.vsav -mx1 -tzip
7z a Paths_of_Glory_%1.vmod moduledata -mx1 -tzip
7z a Paths_of_Glory_%1.vmod help\ -r -mx1 -tzip
7z a Paths_of_Glory_%1.vmod images\ -r -mx1 -tzip
7z a Paths_of_Glory_%1.vmod PathsOfGlory\ -r -mx1 -tzip




