FROM alpine:3.8
LABEL version="1.0"
LABEL description="Apex image to use automation deployment for AWS Lambda function"
RUN apk add --no-cache curl