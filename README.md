# Useful Scripts Collection
Collection of useful scripts that don't need a separate repo for each.
For Linux / Mac / Windows.
Author: [@tekk](https://github.com/tekk)

# 1. Batch Convert any folder with mp4 videos to H265/HEVC mp4 videos

- Place source mp4 files to i.e.:
    - `cpu\*.mp4`
    - `cuda\*.mp4`
    - `radeon\*.mp4`
- Default preset for `ffmpeg` is `-c:v libx265 -crf 28 -c:a aac -b:a 128k`
- You can adjust the `-crf 28` to a level of compression you like or use the HQ scripts
    - Note: Please see **ffmpeg** [documentation](https://trac.ffmpeg.org/wiki/Encode/H.265) about `-crf` option

## Dependencies

- For CUDA transcoding you need the CUDA Framework from NVidia
