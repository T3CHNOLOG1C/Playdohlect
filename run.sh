#!/bin/bash
python ./run.py &
backgroundPID=$!
cp ./config.ini ./MusicBot/config/token.ini
cd ./MusicBot
python ./run.py
trap "kill $backgroundPID && rm ./config/token.ini" EXIT

