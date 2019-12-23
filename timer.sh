#!/bin/bash

cd $(dirname $0)

mpg321 bell.mp3 -l `date '+%-I'` >& /dev/null
