#!/bin/bash

#Move the README to the previous directory so it doesn't get deleted
mv BDPA-Peeps-Bedrock-Server/README.md README.md
echo moved README to ../ directory
#Move License to the previous directory so it doesn't get deleted
mv BDPA-Peeps-Bedrock-Server/License.md License.md
echo moved License to ../ directory
#delete all the files to prep for the backup
rm -r BDPA-Peeps-Bedrock-Server/*
echo deleted all files in BDPA-Peeps-Bedrock-Server/ directory
#Rsync all the files from the Pi4 used for the backup
echo starting file sync task
rsync -azvh pi@bdpapeeps:bdpapeeps/* /Users/antonios/github-repos/BDPA-Peeps-Bedrock-Server/ 
#Move the README back into the repo directory
mv README.md BDPA-Peeps-Bedrock-Server/README.md
echo moved README to BDPA-Peeps-Bedrock-Server/ directory
#Move the License back into the repo directory
mv License.md BDPA-Peeps-Bedrock-Server/License.md
echo Moved License back to the repository directory
#Copy over the backup script to the repository directory
cp bedrockServerBackup.sh BDPA-Peeps-Bedrock-Server/bedrockServerBackup.sh
echo Moved Backup script to repository directory

#remove all the cached files that are unnecessary for the operation of the server
rm -r BDPA-Peeps-Bedrock-Server/logs/*
EXIT1=$(echo $?)
rm -r BDPA-Peeps-Bedrock-Server/plugins/AdvancedBan/logs/*
EXIT2=$(echo $?)
rm -r BDPA-Peeps-Bedrock-Server/worlds/world/region/* && rm -r BDPA-Peeps-Bedrock-Server/worlds/nether/region/*
EXIT3=$(echo $?)

if [ "$EXIT1" = 0 ]; then
	echo success removing server logs
elif [ "$EXIT1" = 1 ]; then 
	echo there are no server logs now! No need to remove.
else
	echo An unknown error occurred while removing server logs
	echo exit code: "$EXIT1"
	exit "$EXIT1" 
fi

if [ "$EXIT2" = 0 ]; then
        echo success removing AdvancedBan logs
elif [ "$EXIT2" = 1 ]; then 
	echo there are AdvancedBan logs now! No need to remove.
else
        echo An unknown error occurred while removing AdvancedBan logs
	echo exit code: "$EXIT2"
	exit "$EXIT2"
fi

if [ "$EXIT3" = 0 ]; then
        echo success removing cached world regions
elif [ "$EXIT3" = 1 ]; then 
	echo there are no cached world regions now! No need to remove.
else
        echo An unknown error occurred while removing cached world regions
	echo exit code: "$EXIT3"
	exit "$EXIT3"
fi

echo backup completed successfully
exit 0
