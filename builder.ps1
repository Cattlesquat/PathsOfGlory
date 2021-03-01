Write-Output "Zipping Visual Studio solution..."

$version=$args[0]

# top level from where to start and location of the zip file
$path = "c:\projects\PathsOfGlory"
# top path that we want to keep in the source code zip file
$subdir = "c:\projects\PathsOfGlory"
# location of the zip file
$ZipFile = "${path}\Paths_of_Glory_$version.zip"

# change current directory
Set-Location "$path"

# collecting list of files that we want to archive excluding those that we don't want to preserve
$Files  = @(Get-ChildItem "${subdir}" -Recurse -File | Where-Object {$_.PSParentPath -inotmatch "x64|packages|.vs|Win32"})
$Files += @(Get-ChildItem "${subdir}\packages" -Recurse -File)
#$Files += @(Get-ChildItem "${subdir}\.git" -Recurse -File)
$FullFilenames = $files | ForEach-Object -Process {Write-Output -InputObject $_.FullName}

# remove old zip file
if (Test-Path $ZipFile) { Remove-Item $ZipFile -ErrorAction Stop }

#create zip file
Add-Type -AssemblyName System.IO.Compression
Add-Type -AssemblyName System.IO.Compression.FileSystem
$zip = [System.IO.Compression.ZipFile]::Open(($ZipFile), [System.IO.Compression.ZipArchiveMode]::Create)

# write entries with relative paths as names
foreach ($fname in $FullFilenames) {
    $rname = $(Resolve-Path -Path $fname -Relative) -replace '\.\\',''
    Write-Output $rname
    $zentry = $zip.CreateEntry($rname)
    $zentryWriter = New-Object -TypeName System.IO.BinaryWriter $zentry.Open()
    $zentryWriter.Write([System.IO.File]::ReadAllBytes($fname))
    $zentryWriter.Flush()
    $zentryWriter.Close()
}

# release zip file
$zip.Dispose()

# for file in *\\*; do target="${file//\\//}"; mkdir -p "${target%/*}"; mv -v "$file" "$target"; done
