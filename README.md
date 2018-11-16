# SQLite Python Lambda Layer
Like many Python programmers, you've probably been disappointed when you tried to import `sqlite3`
in a Python3.6 AWS Lambda only to find out it doesn't work. This project remedies that by providing
a [Lambda Layer](https://LAMBALAYERSLINK) that contains the necessary compiled library
(`_sqlite3.so`).

## How to use
See [this blogpost](https://serverless.com/blog/PATH) and
[the example](https://github.com/serverless/sqlite-lambda-layer/tree/master/example)
for how to use this layer
with the [Serverless](https://serverless.com).

The ARN for this layer is: `arn:aws:lambda:us-west-2:377024778620:layer:sqlitePython27:1`

The fully qualified arn with the latest version is:
`arn:aws:lambda:us-west-2:377024778620:layer:sqlitePython36:1`
