# s3-gcs-transporter
A small script to move things from S3 to GCS

It traverses an S3 bucket, and copies the content to GCS.
Since there is no direct pipe from S3 to GCS, it must download the files to the local machine first,
before uploading to GCS.

## Usage

```
$ ruby s3_to_gcs.rb \
  --s3-region=us-east-1 \
  --s3-creds-csv=/path/to/accessKeys.csv \
  --s3-bucket=s3_bucket \
  --s3-prefix=s3/prefix/ \
  --gcs-region=us-central-1a \
  --gcs-creds-json=/path/to/creds.json \
  --gcs-project-id=gcs_project_id \
  --gcs-bucket=gcs_bucket \
  --gcs-prefix=gcs/prefix/ \
  --log-level=debug
```
