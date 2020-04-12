@echo off
title Youtube mp3 downloader using youtube-dl
rem conf
set "autoupdate=y"
set "safetemp=n"
set "askcustomtitle=n"
set "convertmp3=y"
set "songlocation=" rem music/ for example
set "programmlocation=!p"
set "showlog=y"
rem conf end

rem check
if not exist %programmlocation%\ ( mkdir %programmlocation% && set "pgl=0" && set "ffm=0" && set "ytd=0") else (
	if not exist %programmlocation%\ffmpeg.exe (set "ffm=0") else (set "ffm=1")
	if not exist %programmlocation%\youtube-dl.exe (set "ytd=0") else (set "ytd=1")
)
if "%pgl%"=="0" (echo The program Folder wasnt present but was created now
) else (echo The program folder is present
)
if "%ffm%"=="0" (echo Please download the latest ffmpeg version and place it here "%cd%\%programmlocation%" You can find it here :
echo https://ffmpeg.zeranoe.com/builds/
) else (echo ffmpeg is present
)
if "%ytd%"=="0" (echo Please download the latest youtube-dl version and place it here "%cd%\%programmlocation%" You can find it here :
echo http://ytdl-org.github.io/youtube-dl/download.html
) else (echo youtube-dl is present
if "%autoupdate%"=="y" (
	echo Updating youtube-dl
	%programmlocation%\youtube-dl.exe -U
)
)
echo log end --
echo.
if "%showlog%"=="n" cls
rem check end
rem vars
echo Youtube Url (rightclick when copied to paste)
set /p url=Hier :
if "%askcustomtitle%"=="n" (set "title=%%(title)s") else (
	set /p "title=Title: "
)
if "%convertmp3%"=="y" (set "conv=--ffmpeg-location %programmlocation%\ -x --audio-format mp3") else (set "conv=") 
if "%safetemp%"=="y" (set "st=-k") else (set "st=")
rem vars end
rem dl
%programmlocation%\youtube-dl.exe -i --geo-bypass -o %songlocation%%title%.%%(ext)s -w --no-continue --console-title -f bestaudio %conv% %st% %url% 
echo.
echo Song stored at : %cd%\%songlocation%
echo.
rem dl end
pause
exit