.PHONY: all

COMMAND = gsutil -q -m rsync -r s3://$(1)/ gs://travis-ci-language-archives/$(2)/binaries/

ruby:
	$(call COMMAND,travis-rubies,ruby)

python:
	$(call COMMAND,travis-python-archives,python)

erlang:
	$(call COMMAND,travis-otp-releases,erlang)

php:
	$(call COMMAND,travis-php-archives,php)

perl:
	$(call COMMAND,travis-perl-archives,perl)

all: ruby python erlang php perl
