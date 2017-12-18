#!/bin/bash
python /Sublist3r/sublist3r.py -b -d $DOMAIN -v -o $DOMAIN.txt
python /S3Scanner/s3finder.py -i /Sublist3r/$DOMAIN.txt -o output.txt
bash