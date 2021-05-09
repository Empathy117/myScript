#!/bin/bash

g++ -Wall -std=c++17 -o $1 $1.cpp && ./$1 << ./in
