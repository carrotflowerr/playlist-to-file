# playlist-to-file
Grab files from a .xspf and put them into a directory

.xspf files are just paths to audio files. This script grabs them and puts them into 

# Use
### Clone the repo

`git clone https://github.com/carrotflowerr/playlist-to-file`

### Give permission for the script to run

`chmod +x physicalPlaylist.sh`

### Give the script your playlist
ex.
 `./physicalPlaylist jazz.xspf`


### Notes

If you want to be able to run the script like a normal command you can add it to your local bin.

`mv physicalPlaylist.sh /usr/bin/`

**Important:** if your music directory isn't `~/Music/` then change the variable.
