#!/bin/bash
# SmartGit Refresh Trial-Time
# Creator: Emre Altınok

version="21.1"
folderName="/Users/$USER/Library/Preferences/SmartGit/${version}/"
files=("license" "preferences.yml")

for file in "${files[@]}" 
do
   rm -i ${folderName}${file}
done

echo "SmartGit successfully reset trial time."
