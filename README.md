# playlist-to-file
Grab files from a .xspf and put them into a directory

.xspf files are just paths to audio files. This script grabs them and puts them into 

# Use
Clone the repo

`git clone https://github.com/carrotflowerr/playlist-to-file`

Give permission for the script to run

`chmod +x physicalPlaylist.sh`

fill out SOURCE_DIR, DESTINATION_DIR and PLAYLIST_NAME.
* SOURCE_DIR = where your music is
* DESTINATION_DIR = where you want your files
* PLAYLIST_NAME = the playlist to look for the files

If you want to be able to run the script like a normal command you can add it to your local bin.

`mv physicalPlaylist.sh /usr/bin/`
