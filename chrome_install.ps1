# PowerShell script to download and install Google Chrome

# Set variables
$chrome_path = 'C:\Users\Malore\chrome_install.exe'

# Fetch the Google Chrome installer
(New-Object Net.WebClient).DownloadFile('http://dl.google.com/chrome/install/375.126/chrome_installer.exe', $chrome_path)
Invoke-WebRequest 'http://dl.google.com/chrome/install/375.126/chrome_installer.exe' -OutFile $chrome_path

# Install Google Chrome if $chrome_path exists
if([System.IO.File]::Exists($chrome_path)){
    # FIXME Should use '$chrome_path /silent /install' but '$chrome_path' doesn't resolve in this situation
    C:\Users\Malore\chrome_install.exe /silent /install
}

#FIXME Cannot set where Google Chrome installs to
#FIXME Need to manually run PowerShell script as admin