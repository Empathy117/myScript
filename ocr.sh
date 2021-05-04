#!/bin/env bash 
# Dependencies: tesseract-ocr imagemagick gnome-screenshot xclip

#Name: OCR Picture
#Author:andrew
#Fuction: take a screenshot and OCR the letters in the picture
#Path: /home/Username/...
#Date: 2020-02-10

#you can only scan one character at a time
SCR="/home/empathy/Documents/temp"

####take a shot what you wana to OCR to text
# flameshot gui $SCR.png
gnome-screenshot -a -f $SCR.png

####increase the png
mogrify -modulate 100,0 -resize 400% $SCR.png 
#should increase detection rate

####OCR by tesseract
tesseract $SCR.png $SCR &> /dev/null -l eng+chi1

####use sed to delete the blanks & get the text and copy to clipboard
# cat $SCR.txt | sed 's/ //g' | xclip -selection clipboard

#需要删除换行请使用此语句 并注释上一句（行首加#）
cat $SCR.txt | sed 's/ //g'| xargs | xclip -selection clipboard

#弹窗提示OCR结束 the code below Thanks to 陈留阳
notify-send "OCR Done"

exit
