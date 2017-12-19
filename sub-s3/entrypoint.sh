#!/bin/bash
if [ ! -f /root/.aws/credentials: ]; then
	echo "Creating /root/.aws/"
	mkdir -p /root/.aws/
	echo "Creating creds file."
    echo "[default]" >> /root/.aws/credentials
	echo "aws_access_key_id = $AWS_ACC" >> /root/.aws/credentials
	echo "aws_secret_access_key = $AWS_SEC" >> /root/.aws/credentials
fi



echo "[*] Now Scanning for Subdomains for $DOMAIN [*]"
python /Sublist3r/sublist3r.py -b -d $DOMAIN  -v -o /Sublist3r/$DOMAIN.txt
echo "[*] Now Scanning for S3 Buckets for $DOMAIN [*]"
bash /Sublist3r/bucketeer.sh $DOMAIN
bash