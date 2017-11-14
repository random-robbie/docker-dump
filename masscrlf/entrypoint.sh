#!/bin/bash
python /Sublist3r/sublist3r.py -d $DOMAIN -p 80,443 -v -o $DOMAIN.txt
python /Sublist3r/crlf_scan.py -i $DOMAIN.txt -o output.txt
bash