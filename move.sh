#!/bin/bash

if [ $# == 0 ] ##判断参数制是否存在
	then
	exit ##不存在退出
	else
	NAME=$1
	cp ~/src/IdeaProjects/algo/src/Main.java ~/src/IdeaProjects/algo/src/ac/$NAME
fi
