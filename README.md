# DynamoDB Local
This Docker repo creates a Docker image for the latest version of DynamoDB local.

## Usage
`FROM craftship/dynamodb:latest`

## AWS CLI
You can also use the AWS CLI against DynamoDB local once you have it up and running using the relevant `--endpoint-url` argument.  For example:

``` bash
aws dynamodb create-table \
  --table-name TableName  \
  --attribute-definitions \
    AttributeName=id,AttributeType=S --key-schema \
    AttributeName=id,KeyType=HASH \
  --provisioned-throughput ReadCapacityUnits=2,WriteCapacityUnits=2 \
  --endpoint-url http://localhost:8000
```

## Useful Links
[Introduction to DynamoDB][a]

[Amazon DynamoDB Local for Desktop Development][b]

[Amazon DynamoDB CLI Reference][c]

[a]: http://docs.aws.amazon.com/amazondynamodb/latest/developerguide/Introduction.html
[b]: https://aws.amazon.com/blogs/aws/dynamodb-local-for-desktop-development/
[c]: http://docs.aws.amazon.com/cli/latest/reference/dynamodb/
