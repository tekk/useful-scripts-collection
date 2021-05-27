#!/bin/bash

#The script downloads the song from YouTube using youtube-dl command line utitlity. After that it calls MusicBrainz Picard (MP3 ID3 Tagger) to correct the metadata. Post that, it calls mp3info to display the ID3 tag information as well as prompts the user whether they want to play the song.
if test "$#" -lt 1; then
    echo "Illegal number of parameters"
    echo "Usage: dl-music [URL] [OPTIONS]"
    exit
fi

if [[ "$2" == '1' ]]
	then
		youtube-dl --extract-audio --audio-format mp3 -o "%(title)s.%(ext)s" --no-mtime $1
	else
		youtube-dl --extract-audio --audio-format mp3  --output '%(title)s.%(ext)s' --add-metadata --metadata-from-title "%(artist)s - %(title)s" --no-mtime $1
fi
	
file=$(ls -Art | tail -n 1)
picard "$file"
mp3info "$file"
echo "Do you want to play the file? (Y/N):"
read choice
if [ "$choice" == "Y" -o "$choice" == "y" ]; then
xdg-open "$file"
fi