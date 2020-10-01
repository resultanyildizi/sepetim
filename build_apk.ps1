$SourcePath = ".\build\app\outputs\apk\release\"
$DestinationPath = "C:\Users\rtanyildizi\Documents\GoogleDriveSync\"
$FileName = "app-release.apk" 
$GoogleDriveFolderUrl = "https://drive.google.com/drive/u/0/folders/1ZmytH5o-XeVbXC8PIzj54Zu72oyDS7qj"
$CommitMessage = $args[0]
if ($null -eq $CommitMessage || $CommitMessage -eq "") {
    throw "Invalid commit message."
}
(git add . && git commit  -am $CommitMessage && git push) |
flutter build apk --release && Copy-Item ($SourcePath + $FileName) $DestinationPath && Start-Process "chrome.exe" $GoogleDriveFolderUrl 