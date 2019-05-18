#!/bin/bash

cat - | sed -e 's/"bool"/"boolean"/g' | sed -E 's/"format": "(boolean|integer|object)?",//g' > $1
#  sed -e 's/"format": "",//g' | 
