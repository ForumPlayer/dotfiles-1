# HOW TO USE -- Copy the youtube link and execute this python file.
import os
import subprocess
import time

# Sets the old file list for later comparison, to only send the necessary files
old_file_list = []
# Sets the default local music location, change this to your preferred folder
music_location = "$HOME/Music/"
files = os.listdir(music_location)
# Grabs the youtube link from your clipboard
link = subprocess.check_output(["xclip", "-o", "-selection", "clipboard"]).decode('ascii')
# Checks each file in the preferred folder and appends it before downloading the video
for entry in files:
    old_file_list.append(entry)
# Sends notification and downloads the video.
subprocess.call(["notify-send", "-t", "2000", "Youtube-DL", f"Downloading: {link}"])
subprocess.call(["youtube-dl", "-o", music_location + "%(title)s", link])
subprocess.call(["notify-send", "-t", "1000", "Download finished"])
