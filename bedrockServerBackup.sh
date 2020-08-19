#!/bin/bash

#Move the README to the previous directory so it doesn't get deleted
mv BDPA-Peeps-Bedrock-Server/README.md README.md
echo moved README to ../ directory
#delete all the files to prep for the backup
rm -r BDPA-Peeps-Bedrock-Server/*
echo deleted all files in BDPA-Peeps-Bedrock-Server/ directory
#Rsync all the files from the Pi4 used for the backup
echo starting file sync task
rsync -azvh pi@bdpapeeps:bdpapeeps/* /Users/antonios/github-repos/BDPA-Peeps-Bedrock-Server/ 
#Move the README back into the repo directory
mv README.md BDPA-Peeps-Bedrock-Server/README.md
echo moved README to BDPA-Peeps-Bedrock-Server/ directory

rm -r BDPA-Peeps-Bedrock-Server/logs/*
EXIT1=$(echo $?)
echo removed server logs
rm -r BDPA-Peeps-Bedrock-Server/plugins/AdvancedBan/logs/*
EXIT2=$(echo $?)
echo removed AdvancedBan logs
rm -r BDPA-Peeps-Bedrock-Server/worlds/world/region/* && BDPA-Peeps-Bedrock-Server/worlds/nether/region/*
EXIT3=$(echo $?)
echo removed cached world regions

if [ "$EXIT1" = 0 ]; then
	echo success removing server logs
else
	echo there are no server logs now! 
	exit "$EXIT1"
fi

if [ "$EXIT2" = 0 ]; then
        echo success removing AdvancedBan logs
else
        echo There are no AdvancedBan logs now!
        exit "$EXIT2"
fi

if [ "$EXIT3" = 0 ]; then
        echo success removing the world regions
else
        echo There are no world regions now!
        exit "$EXIT3"
fi
