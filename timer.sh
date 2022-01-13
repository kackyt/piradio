#!/bin/bash

cd $(dirname $0)

sudo systemctl stop piradio
mpg321 bell.mp3 -l `date '+%-I'` >& /dev/null
sudo systemctl start piradio
