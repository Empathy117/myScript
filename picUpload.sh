#!/bin/bash
res=`picgo upload | grep "https://empathy.oss-cn-beijing.aliyuncs.com/pic/"`
if [ $res != "" ]; then
	echo "![]($res)" | xclip -sel clip
	notify-send "Img Uploaded"
else
	notify-send "Failed"
fi
