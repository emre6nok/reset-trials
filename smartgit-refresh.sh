#!/bin/bash
# SmartGit Refresh Trial-Time

version="21.1"
mainFolder="/Users/$USER/Library/Preferences/SmartGit/${version}/"
backupFolder=".backup"
files=("license" "preferences.yml" "settings.xml")

for file in "${files[@]}" 
do
   rm -i ${mainFolder}${file}
done

rm -rf ${mainFolder}${backupFolder}

echo "SmartGit successfully reset trial time."
