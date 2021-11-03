#!/bin/bash
# SmartGit Refresh Trial-Time
# Creator: Emre Altınok

version="21.1"
folderName="/Users/$USER/Library/Preferences/SmartGit/${version}/"
backupName=".backup"
files=("license" "preferences.yml" "settings.xml")

for file in "${files[@]}" 
do
   rm -i ${folderName}${file}
done

rm -rf ${folderName}${backupName}

echo "SmartGit successfully reset trial time."
