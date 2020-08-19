#!/bin/bash
rm -r logs/*
EXIT1=$(echo $?)
rm -r plugins/AdvancedBan/logs/*
EXIT2=$(echo $?)
rm -r worlds/world/region/*
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
