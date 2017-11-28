#Sub-s3

This tool will check for public S3 buckets using the names of domains / subdomains of the provided domain.

It uses a modified version of teh_s3_bucketeers by Tom de Vries https://github.com/tomdev/teh_s3_bucketeers
it uses Plazmaz's Sublist3r to find the sub domains

## Installation





## Requirements

https://docs.aws.amazon.com/sdk-for-java/v1/developer-guide/setup-credentials.html#setup-credentials-setting

Create an AWS account and set up your access tokens in ~./aws/credentials like this:

```name=~/.aws/credentials
[default]
aws_access_key_id = <key>
aws_secret_access_key = <secret>
```


## Usage

You can test multiple targets at the same time, use a space as a delimiter.

```
docker run txt3rob-subs3 -e DOMAIN=doamin.com -e AWS_ACC=aws_access_key_id -e AWS_SEC=aws_secret_access_key
```

A result file named `results-<target>-<timestamp>.txt` will be created when an accessible bucket has been found.


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/random-robbie/docker-dump/tree/master/sub-s3


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
