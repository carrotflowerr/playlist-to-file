#!/bin/bash


PLAYLIST_NAME="$1"
echo $PLAYLIST_NAME

# you should change this
SOURCE_DIR="~/Music"

DESTINATION_DIR="$PWD"

PLAYLIST_DIR_NAME="${PLAYLIST_NAME%.*}"

echo $PLAYLIST_DIR_NAME

DESTINATION_PLAYLIST_DIR="$DESTINATION_DIR/$PLAYLIST_DIR_NAME"
mkdir -p "$DESTINATION_PLAYLIST_DIR"


while IFS= read -r line || [[ -n "$line" ]]; do

    if [[ $line == *"<location>"* ]]; then

	FILE_PATH="${line#*<location>}"
	FILE_PATH="${FILE_PATH%%</location>*}"
	FILE_PATH="${FILE_PATH#"$SOURCE_DIR/"}"
	cp "$SOURCE_DIR/$FILE_PATH" "$DESTINATION_PLAYLIST_DIR"

    fi
done < "$PLAYLIST_NAME"
