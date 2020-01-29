REM Create list of folders
dir /a:d /b M:\Shares\FolderRedirection >M:\Temp\users.txt

REM Read each line from just created text file...
for /f "tokens=*" %%G in (M:\Temp\users.txt) do (

REM ...and set ownership for each folder
icacls "M:\Shares\FolderRedirection\%%G" /setowner "domain\%%G" /t
icacls "M:\Shares\FolderRedirection\%%G" /q /c /t /reset

echo.

)