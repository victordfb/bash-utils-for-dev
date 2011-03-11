#!/bin/bash

#This sed command aims to highlight the matches found in the standard input

sed s/$1/$(printf "\033[7;34m%s\033[0m" \&)/g
