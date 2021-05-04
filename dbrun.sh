#!/bin/bash

if [ $# == 0 ] ##判断参数制是否存在
then
	exit ##不存在退出
else
	g++ -Wall -std=c++17 -x c++ -o debug -D QUICKRUN -D EDEBUG $1 && ./debug
fi
