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
7z a Paths_of_Glory_%1.vmod images\ -r -mx1 -tzip
7z a Paths_of_Glory_%1.vmod PathsOfGlory\ -r -mx1 -tzip

mkdir tmp_images_es
xcopy images tmp_images_es
xcopy /y images_es tmp_images_es

7z a Paths_of_Glory_%1_es.vmod *.xml -mx1 -tzip
7z a Paths_of_Glory_%1_es.vmod HowToPlay_es.html -mx1 -tzip
7z rn Paths_of_Glory_%1_es.vmod HowToPlay_es.html HowToPlay.html
7z a Paths_of_Glory_%1_es.vmod changelist.html -mx1 -tzip
7z a Paths_of_Glory_%1_es.vmod notes_es.html -mx1 -tzip
7z rn Paths_of_Glory_%1_es.vmod notes_es.html notes.html
7z a Paths_of_Glory_%1.vmod updatingmodule.html -mx1 -tzip
7z a Paths_of_Glory_%1_es.vmod *.vsav -mx1 -tzip
7z a Paths_of_Glory_%1_es.vmod moduledata -mx1 -tzip
7z a Paths_of_Glory_%1_es.vmod Module_es.properties -mx1 -tzip
7z a Paths_of_Glory_%1_es.vmod help\ -r -mx1 -tzip
7z a Paths_of_Glory_%1_es.vmod tmp_images_es\ -r -mx1 -tzip
7z rn Paths_of_Glory_%1_es.vmod tmp_images_es images
7z a Paths_of_Glory_%1_es.vmod PathsOfGlory\ -r -mx1 -tzip

del /q tmp_images_es
rmdir tmp_images_es


