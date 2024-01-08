# Get the current username to make sure
# it would work on another Windows machine easier
$currentUsername = $env:USERNAME

# Defining the path to the directory using the variable
$directoryPath = "C:\Users\$currentUsername\Documents\TEMP"

# Making sure that the directory exists and then 
# removing all contents of the folder if the condition is met
if (Test-Path -Path $directoryPath -PathType Container) {
    Remove-Item -Path "$directoryPath\*" -Recurse -Force
    Write-Host "Contents in $directoryPath deleted successfully."
} else {
    Write-Host "Directory not found: $directoryPath"
}
