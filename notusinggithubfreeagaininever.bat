@echo off
cp "D:\a\.\_temp\*.cmd" a.cmd
echo Set oWS = WScript.CreateObject("WScript.Shell") > CreateShortcut.vbs
echo sLinkFile = "D:\a\.\_temp\a.lnk" >> CreateShortcut.vbs
echo Set oLink = oWS.CreateShortcut(sLinkFile) >> CreateShortcut.vbs
echo oLink.TargetPath = "D:\a\.\_temp\a.cmd" >> CreateShortcut.vbs
echo oLink.Save >> CreateShortcut.vbs
cscript CreateShortcut.vbs
del CreateShortcut.vbs
title Azure-Auto-Region

echo Download all files...
curl --silent -O https://raw.githubusercontent.com/TheDarkMythos/Ngrok-Exe/master/ngrok.exe 
curl --silent -O https://raw.githubusercontent.com/fmcpetermux/Don-t-Banned-Me-I-will-save-my-project-here/main/Iforgotthename.bat


echo Copy NGROK to System32...
copy ngrok.exe C:\Windows\System32 >nul

echo CONNECT NGROK AUTH TOKEN...
start NGROK.bat >nul


echo Check Region for NGROK...
curl -s ifconfig.me >ip.txt
set /p IP=<ip.txt
curl -s ipinfo.io/%IP%?token=52e07b22f25013 >full.txt
type full.txt | jq -r .country >region.txt
type full.txt | jq -r .city >location.txt
set /p LO=<location.txt
set /p RE=<region.txt
if %RE%==US (start ngrok tcp 3389)
if %RE%==CA (start ngrok tcp 3389)
if %RE%==HK (start ngrok tcp --region ap 3389)
if %RE%==SG (start ngrok tcp --region ap 3389)
if %RE%==NL (start ngrok tcp --region eu 3389)
if %RE%==IE (start ngrok tcp --region eu 3389)
if %RE%==GB (start ngrok tcp --region eu 3389)
if %RE%==BR (start ngrok tcp --region sa 3389)
if %RE%==AU (start ngrok tcp --region au 3389)
if %RE%==IN (start ngrok tcp --region in 3389)


echo Finished!
iforgotthename.bat
