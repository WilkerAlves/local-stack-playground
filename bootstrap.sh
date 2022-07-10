echo "configuring aws infrastructure"
echo "==================="

export LOCALSTACK_HOST=localhost
export AWS_ACCESS_KEY_ID="test"
export AWS_SECRET_ACCESS_KEY="test"
export AWS_DEFAULT_REGION="us-east-1"

create queue
aws --endpoint-url=http://localhost:4566 sqs create-queue --queue-name sample-queue --attributes VisibilityTimeout=30
aws --endpoint-url=http://localhost:4566 sqs create-queue --queue-name sample-queue.fifo --attributes FifoQueue=true,VisibilityTimeout=30

list queue
aws --endpoint-url=http://localhost:4566 sqs list-queues

echo "==================="
echo "finished running localstack bootstrap"