#!/bin/bash
# Nacivat Refresh Trial-Time

file=$(defaults read ~/Library/Preferences/com.prect.NavicatPremium15.plist)
regex="([0-9A-Z]{32}) =     {"

[[ $file =~ $regex ]]

defaults delete ~/Library/Preferences/com.prect.NavicatPremium15.plist ${BASH_REMATCH[1]}

cd ~/Library/Application\ Support/PremiumSoft\ CyberTech/Navicat\ CC/Navicat\ Premium/

str=$(ls -a | grep '^\.')
regex="\.([0-9A-Z]{32})"

[[ $str =~ $regex ]]

rm .${BASH_REMATCH[1]}

echo "Nacivat successfully reset trial time."

cd -
