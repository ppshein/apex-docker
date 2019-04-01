FROM alpine:3.8
LABEL version="1.0"
LABEL description="Apex image to use automation deployment for AWS Lambda function"
RUN apk add --no-cache curl
RUN curl https://raw.githubusercontent.com/apex/apex/master/install.sh | sh
RUN apex upgrade