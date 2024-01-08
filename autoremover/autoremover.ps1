# Get the current username
$currentUsername = $env:USERNAME

# Define the path to the folder using the variable
$directoryPath = "C:\Users\$currentUsername\Documents\TEMP"

# Making sure that the directory exists and then 
# removing all contents of the folder
if (Test-Path -Path $directoryPath -PathType Container) {
    Remove-Item -Path "$directoryPath\*" -Recurse -Force
    Write-Host "Contents in $directoryPath deleted successfully."
} else {
    Write-Host "Directory not found: $directoryPath"
}