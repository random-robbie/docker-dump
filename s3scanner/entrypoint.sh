#!/bin/bash
python /Sublist3r/sublist3r.py -b -d $DOMAIN -v -o /Sublist3r/$DOMAIN.txt
python /S3Scanner/s3finder.py -g found.txt /Sublist3r/$DOMAIN.txt
bash /S3Scanner/s3dumper.sh /found.txt
bash
