for /f "tokens=1 delims=." %%a in ('dir /B *.mp4') do ffmpeg -n -hwaccel auto -i "%%a.mp4" -pix_fmt p010le -c:v hevc_nvenc -rc vbr_hq -b:v 6M -maxrate:v 10M -c:a aac -b:a 240k "output-hevc\%%a.mp4"