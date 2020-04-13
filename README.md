# Convert2mp3
Basic Batch UI for youtube-dl

This is an easy to use Batch interface for youtube-dl. It takes away the hassle of using the Commandpromt while making it easy to download and convert your favourite songs from Youtube directly into .mp3 files. 
- [INSTALLATION](#installation)
- [CONFIGURATION](#configuration)
- [DEFAULTS](#defaults)
- [USAGE](#usage)

# Installation
What you need:
- [My Bat file](https://github.com/5hunx/convert2mp3/blob/master/dl.bat)
- [FFMPEG](https://ffmpeg.zeranoe.com/builds/)
- [youtube-dl](http://ytdl-org.github.io/youtube-dl/download.html)

Just download the Batch file and place it into a folder and start it. It should automatically create a folder for the Programs called "!p". Place the ffmpeg.exe (you dont need ffplay.exe, ffprobe.exe or anything else) and the latest youtube-dl.exe into the !p folder. After that youre set! You dont really need to change anything in the config. But if you want:

# Configuration
The Config is pretty self-explanatory and can be edited in the head of the file. In most cases its a True/False question where y(es) is True and n(o) is False. You can change: 
- if youtube-dl should look for updates on every start
- if youtube-dl should save the temp files
- if youtube-dl should ask you for custom titles
- if ffmpeg should automatically convert the downloaded file into mp3
- Where the files should go to (maybe a music folder idk)
- Where the Programs are (if you want to change the !p folder)
- If the log should be displayed

The Default conf (and the conf that I recommend) is: 

# Defaults

    rem conf
    set "autoupdate=y"
    set "safetemp=n"
    set "askcustomtitle=n"
    set "convertmp3=y"
    set "songlocation="
    set "programmlocation=!p"
    set "showlog=y"
    rem conf end

# Usage
With this you can download Songs or even entire Playlists without having to worry about huge file sizes or slow downloads. I also have a similar Batch-script for videos but its a hassle to translate it. Message me if you want it and ill look into it.
Thanks for Reading! Have fun Downloading.

I DO NOT HOLD THE RIGHTS FOR youtube-dl / FFMPEG NOR AM I IN CONTACT WITH THE CREATORS
