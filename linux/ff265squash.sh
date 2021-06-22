ffmpeg -i 1.mp4 -vf scale=-1:720 -c:v libx265 -crf 28 -c:a copy 1.h265.mp4
