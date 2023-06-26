@echo off
yt-dlp.exe --extract-audio -f "bestaudio[ext=m4a]" --add-metadata --embed-thumbnail --embed-chapters --keep-video %*
