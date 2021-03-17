del .\Paths_of_Glory_%1.vmod
del .\Paths_of_Glory_%1_es.vmod

# a = add to archive
# -mx1 = fastest compression
# -tzip = zip archive format

7z a Paths_of_Glory_%1.vmod *.xml -mx1 -tzip
7z a Paths_of_Glory_%1.vmod HowToPlay.html -mx1 -tzip
7z a Paths_of_Glory_%1.vmod changelist.html -mx1 -tzip
7z a Paths_of_Glory_%1.vmod notes.html -mx1 -tzip
7z a Paths_of_Glory_%1.vmod updatingmodule.html -mx1 -tzip
7z a Paths_of_Glory_%1.vmod *.vsav -mx1 -tzip
7z a Paths_of_Glory_%1.vmod moduledata -mx1 -tzip
7z a Paths_of_Glory_%1.vmod Module_es.properties -mx1 -tzip
7z a Paths_of_Glory_%1.vmod help\ -r -mx1 -tzip
7z a Paths_of_Glory_%1.vmod help_es\ -r -mx1 -tzip
7z a Paths_of_Glory_%1.vmod images\ -r -mx1 -tzip
7z a Paths_of_Glory_%1.vmod images_es\ -r -mx1 -tzip
7z a Paths_of_Glory_%1.vmod help_es\ -r -mx1 -tzip
7z a Paths_of_Glory_%1.vmod PathsOfGlory\ -r -mx1 -tzip
