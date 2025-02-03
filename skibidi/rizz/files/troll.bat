@echo off
IF EXIST "troll.bat.files"(
    delet.bat
    rmdir troll.bat.files
) ELSE (IF EXIST "C:\Program Files\Git\" (
git clone https://github.com/TVremote1252/troll.bat.git
cd troll.bat.files
start.bat

) ELSE (
    curl -o git-installer.exe https://github.com/git-for-windows/git/releases/download/v2.47.1.windows.2/Git-2.47.1.2-64-bit.exe
    git-installer.exe /SILENT
    setx PATH "%PATH%;C:\Program Files\Git\Bin"
    troll.bat
))


