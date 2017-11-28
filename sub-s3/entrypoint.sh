#!/bin/bash
if [ ! -f ~/.aws/credentials ]; then
	mkdir ~/.aws/
	touch ~/.aws/credentials
    echo "[default]" >> ~/.aws/credentials
	echo "aws_access_key_id = $AWS_ACC" >> ~/.aws/credentials
	echo "aws_secret_access_key = $AWS_SEC" >> ~/.aws/credentials
fi



python /Sublist3r/sublist3r.py -d $DOMAIN -p 80,443 -v -o $DOMAIN
bash /Sublist3r/bucketeer.sh $DOMAIN
bash