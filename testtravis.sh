#!/bin/bash

# this tests if there are more than one commits in PR

TOTAL_COMMITS=$(git rev-list --count HEAD ^master)
if [ $TOTAL_COMMITS == 1 ]
then 
   echo Found "$TOTAL_COMMITS" commit
else
   echo "ERROR: Please squash commtis!" && exit 113
fi
