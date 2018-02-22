# PowerShell script to download and install Google Chrome

# Set variables
$discord_path = 'C:\Users\Malore\discord_install.exe'

# Fetch the Google Chrome installer
(New-Object Net.WebClient).DownloadFile('https://discordapp.com/api/download?platform=win', $discord_path)
Invoke-WebRequest 'https://discordapp.com/api/download?platform=win' -OutFile $discord_path

# Install Google Chrome if $chrome_path exists
if([System.IO.File]::Exists($discord_path)){
    $discord_path
}