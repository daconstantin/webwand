#!/bin/bash
#
#THIS SCRIPT PROBABLY DOESN'T WORK YET!

set -e ## Exit if any command exits with non-zero status.

if [[ $1 == "install" ]]; then
	if [[ $2 == "minimal" ]]; then
		echo Minimal Browser script
			elif [[ $2 == "firefox" ]]; then
		echo Creating a desktop launcher called $3 fro a web app $4
		echo using install Firefox with customized settings...
		# ADD A CHECK IF FIREFOX IS INSTALLED OR NOT!
		
		cp -r $HOME/.webwand/firefox_profiles/default $HOME/.webwand/firefox_profiles/$3
		echo "user_pref(\"browser.startup.homepage\", \"https://youtube.com\");" >> ~/.webwand/firefox_profiles/$3/user.js
		

		elif [[ $2 == "chromium" || $2 == "google-chrome" ]]; then
	echo Chromium or Google Chrome script
		elif [[ $2 == "basilisk" ]]; then
	echo Basilisk script
		elif [[ $2 == "palemoon" ]]; then
	echo Pale Moon script
		elif [[ $2 == "Falkon" ]]; then
	echo Falkon script
		elif [[ $2 == "web" || $1 == "epiphone" ]]; then
	echo Web/Epiphone script
		
	else
	 	echo "Missing or invalid argument.. which browser?"
	fi

elif [[ $1 == "remove" ]]; then
	echo Remove a web-app
	

else
	echo Error! Do you want to install or remove a webapp?
fi


