#!/bin/sh

head $1 | grep "Last Updated Date"

if [ $? -eq 0 ]
then

    sed -i -e '1,4d' $1

fi
