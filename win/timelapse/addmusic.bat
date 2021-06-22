REM $1 - video
REM $2 - music
ffmpeg -i $1 -i $2 -c copy -map 0:v:0 -map 1:a:0 timelapse-music.mp4
