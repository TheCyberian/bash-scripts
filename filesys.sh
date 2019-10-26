#!/bin/bash

file1="./test.sh"
file2="./test_file"

if [ -e "$file1" ]; then
	echo "$file1 exists"

  if [ -f "$file1" ]; then
    echo "$file1 is a normal file"
  fi

  if [ -r "$file1" ]; then
    echo "$file1 is readable file"
  fi

  if [ -w "$file1" ]; then
    echo "$file1 is writable file"
  fi
  if [ -x "$file1" ]; then
    echo "$file1 is executable"
  fi
  if [ -d "$file1" ]; then
    echo "$file1 is a directory"
  fi
	
  if [ -S "$file1" ]; then
    echo "$file1 is a network socket"
  fi

fi
