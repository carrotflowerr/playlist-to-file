#!/bin/bash
# this is code to scan through a .xspf file and copy the files into a directory.
# to use, fill out SOURCE_DIR, DESTINATION_DIR and PLAYLIST_NAME

SOURCE_DIR="/mnt/Second/music"

DESTINATION_DIR="/mnt/Second/music/playlists/pc"
# name playlist here
PLAYLIST_NAME="March24.xspf"

PLAYLIST_DIR_NAME="${PLAYLIST_NAME%.*}"

# Create the destination playlist directory
DESTINATION_PLAYLIST_DIR="$DESTINATION_DIR/$PLAYLIST_DIR_NAME"
mkdir -p "$DESTINATION_PLAYLIST_DIR"

# Read the playlist file line by line
while IFS= read -r line || [[ -n "$line" ]]; do
    # Check if the line contains a location tag
    if [[ $line == *"<location>"* ]]; then
         #Extract the file path from the line
	FILE_PATH="${line#*<location>}"
	FILE_PATH="${FILE_PATH%%</location>*}"

	# Remove the source directory path from the file path
	FILE_PATH="${FILE_PATH#"$SOURCE_DIR/"}"

	# Copy the file to the destination directory
	cp "$SOURCE_DIR/$FILE_PATH" "$DESTINATION_PLAYLIST_DIR"
    fi
done < "$PLAYLIST_NAME"
