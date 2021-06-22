ffmpeg -r 17 -i FHD%04d.JPG -c:v libx264 -s 4608x2592 -preset fast -crf 28 timelapse-4K.mp4
