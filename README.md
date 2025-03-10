# playlist-to-file
Grab files from a .xspf and put them into a directory
.xspf files are just paths to audio files. This script follows the paths and puts the files into a directory of the same name.

For chinese garbage mp3 players that don't support playlist files.
The device will practically treat the playlist like an album.

# Use
### Clone the repo

`git clone https://github.com/carrotflowerr/playlist-to-file`

### Give permission for the script to run

`chmod +x physicalPlaylist.sh`

### Give the script your playlist
ex.
 `./physicalPlaylist jazz.xspf`

 files will be saved in `$PWD/jazz/` for example


**Important:** default directory is `~/Music/`. Change it to your music directory if needed.
