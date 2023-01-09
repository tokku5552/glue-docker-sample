# glue-docker-sample

- localstackへのファイル追加
```bash:
make glue
aws s3 mb s3://awsglue-datasets --endpoint-url http://localstack:4566
aws s3 cp /path/to/persons.json s3://awsglue-datasets/examples/us-legislators/all/ --endpoint-url http://localstack:4566
```