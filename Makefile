 .PHONY: all

S3_REGION      = 
S3_CSV         = 
GCS_REGION     = 
GCS_JSON       = 
GCS_PROJECT_ID = 
GCS_BUCKET     = 
ARGS           = --s3-region=$(S3_REGION) \
  --s3-creds-csv=$(S3_CSV) \
  --s3-prefix=binaries/ \
  --gcs-region=$(GCS_REGION) \
  --gcs-creds-json=$(GCS_JSON) \
  --gcs-project-id=$(GCS_PROJECT_ID) \
  --gcs-bucket=$(GCS_BUCKET) \
  --log-level=info

ruby:
	ruby s3_to_gcs.rb $(ARGS) --s3-bucket=travis-rubies --gcs-prefix=ruby/binaries/

python:
	ruby s3_to_gcs.rb $(ARGS) --s3-bucket=travis-python-archives --gcs-prefix=python/binaries/

erlang:
	ruby s3_to_gcs.rb $(ARGS) --s3-bucket=travis-otp-releases --gcs-prefix=erlang/binaries/

php:
	ruby s3_to_gcs.rb $(ARGS) --s3-bucket=travis-php-archives --gcs-prefix=php/binaries/

perl:
	ruby s3_to_gcs.rb $(ARGS) --s3-bucket=travis-perl-archives --gcs-prefix=perl/binaries/

all: ruby python erlang php perl
