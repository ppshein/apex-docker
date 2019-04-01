FROM alpine:3.7
RUN curl https://raw.githubusercontent.com/apex/apex/master/install.sh | sudo sh
RUN apex upgrade