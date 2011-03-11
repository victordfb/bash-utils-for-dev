#!/bin/bash

#remove all .svn of a dir.

for i in $(find . -name .svn); do

	rm -rf $i

done
