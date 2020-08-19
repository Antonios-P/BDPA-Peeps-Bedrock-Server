#!/bin/bash

#Move the README to the previous directory so it doesn't get deleted
mv BDPA-Peeps-Bedrock-Server/README.md README.md
#delete all the files to prep for the backup
rm -r BDPA-Peeps-Bedrock-Server/*
#Rsync all the files from the Pi4 used for the backup
rsync -azvh pi@bdpapeeps:bdpapeeps/* /Users/antonios/github-repos/BDPA-Peeps-Bedrock-Server/ 
#Move the README back into the repo directory
mv README.md BDPA-Peeps-Bedrock-Server/README.md

rm -r BDPA-Peeps-Bedrock-Server/logs/*
EXIT1=$(echo $?)
rm -r BDPA-Peeps-Bedrock-Server/plugins/AdvancedBan/logs/*
EXIT2=$(echo $?)
rm -r BDPA-Peeps-Bedrock-Server/worlds/world/region/*
EXIT3=$(echo $?)

if [ "$EXIT1" = 0 ]; then
	echo success removing server logs
else
	echo error occured when removing the server logs. Error Code: "$EXIT1"
	exit "$EXIT1"
fi

if [ "$EXIT2" = 0 ]; then
        echo success removing AdvancedBan logs
else
        echo error occured when removing the AdvancedBan logs. Error Code: "$EXIT2"
        exit "$EXIT2"
fi

if [ "$EXIT3" = 0 ]; then
        echo success removing the world regions
else
        echo error occured when removing the world regions. Error Code: "$EXIT3"
        exit "$EXIT3"
fi
