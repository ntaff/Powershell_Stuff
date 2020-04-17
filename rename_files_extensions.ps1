# Path where we want to launch the script
$path = "C:\\"

# Extension we want to replace...
$ext = ".*.evtx_data"

# ... By this extensions 
$extension = ".evtx"

# Recursively find files with the targeted extension
$fichiers = Get-ChildItem -Recurse | Where-Object FullName -Match ".*$path*"

foreach ($fichier in $fichiers) {
    $name = $fichier.Name
    $fullname = $fichier.FullName
    if ($name -Match $ext) {
        Rename-Item $fullname "$name$extension"
    }
}
