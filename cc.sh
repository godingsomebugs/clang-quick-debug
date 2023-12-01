#!/bin/bash

default="main.cpp"

use='Use: "./cc.sh [filename]"'

RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

if [ $# -eq 0 ]; then
  echo $use
  exit 1
fi

if [ $# -gt 1 ]; then
  echo $use
  exit 1
fi

arg=$1
ext=$(echo "$arg" | rev | cut -d'.' -f1 | rev)

shift

if [ $# -gt 0 ]; then
  echo $use
  exit 1
fi

echo "Compiling file for debugging, please wait...";

if [ $arg = "." ]; then
  g++ $default -o tempclangexecutable123
else
  g++ $arg -o tempclangexecutable123
fi

if [ -e "./tempclangexecutable123" ]; then
  ./tempclangexecutable123
  rm tempclangexecutable123
  echo -e "${GREEN}DEBUG: Done!"
else
  echo -e "${RED}DEBUG: Compiling issue."
fi
