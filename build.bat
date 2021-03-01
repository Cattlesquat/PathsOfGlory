del .\Paths_of_Glory_%1.vmod
del .\Paths_of_Glory_%1.zip

7z a Paths_of_Glory_%1.zip *.xml -mx1
7z a Paths_of_Glory_%1.zip *.html -mx1
7z a Paths_of_Glory_%1.zip *.vsav -mx1
7z a Paths_of_Glory_%1.zip moduledata -mx1
7z a Paths_of_Glory_%1.zip help\ -r -mx1
7z a Paths_of_Glory_%1.zip images\ -r -mx1
7z a Paths_of_Glory_%1.zip PathsOfGlory\ -r -mx1

rename Paths_of_Glory_%1.zip Paths_of_Glory_%1.vmod




