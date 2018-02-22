# PowerShell script to download and install Google Chrome

# Set variables
$spotify_path = 'C:\Users\Malore\spotify_install.exe'

# Fetch the Google Chrome installer
(New-Object Net.WebClient).DownloadFile('https://download.scdn.co/SpotifySetup.exe', $spotify_path)
Invoke-WebRequest 'https://download.scdn.co/SpotifySetup.exe' -OutFile $spotify_path

# Install Google Chrome if $chrome_path exists
if([System.IO.File]::Exists($spotify_path)){
    C:\Users\Malore\spotify_install.exe
}