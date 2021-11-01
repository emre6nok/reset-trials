#!/bin/bash
# SmartGit Refresh Trial-Time
# Creator: Emre Altınok

folderName="/Users/$USER/Library/Preferences/SmartGit/21.1/"
backupName=".backup"
files=("license" "preferences.yml" "settings.xml")

for file in "${files[@]}" 
do
   rm -i ${folderName}${file}
done

rm -rf $folderName$backupName

echo "SmartGit successfully reset trial time."
