#!/bin/bash

# Paths
GIT_MEDIA_FOLDER=~/Documents/telugu/oxford3000_telugu_anki/media/
ANKI_MEDIA_FOLDER=~/.local/share/Anki2/User\ 1/collection.media

# Remove old links
find "$ANKI_MEDIA_FOLDER" -type l -exec rm {} \;

# Recreate links for all files in the Git media folder
find "$GIT_MEDIA_FOLDER" -type f -exec ln -s {} "$ANKI_MEDIA_FOLDER/" \;

# Print completion message
echo "Media links updated!"

