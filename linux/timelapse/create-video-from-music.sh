ffmpeg -i input.mp3 -filter_complex \
"[0:a]avectorscope=s=640x518[left]; \
 [0:a]showspectrum=mode=separate:color=intensity:scale=cbrt:s=640x518[right]; \
 [0:a]showwaves=s=1280x202:mode=line[bottom]; \
 [left][right]hstack[top]; \
 [top][bottom]vstack,drawtext=fontfile=/usr/share/fonts/TTF/Vera.ttf:fontcolor=white:x=10:y=10:text='\"Song Title\" by Artist'[out]" \
-map "[out]" -map 0:a -c:v libx264 -preset fast -crf 18 -c:a copy output.mkv
