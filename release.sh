#!/bin/bash
rm -rf release
mkdir -p release

cp -rf behaviors *.{hpp,cpp,txt,json} LICENSE release/

mv release score-addon-behaviors
7z a score-addon-behaviors.zip score-addon-behaviors
