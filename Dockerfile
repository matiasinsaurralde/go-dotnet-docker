FROM microsoft/dotnet:2-runtime
MAINTAINER matias@insaurral.de
RUN apt-get update && apt-get install build-essential git -y
RUN curl "https://dl.google.com/go/go1.9.6.linux-amd64.tar.gz" -o go.tar.gz && tar xf go.tar.gz && rm go.tar.gz
RUN mv go /usr/local/go
RUN ln -s /usr/local/go/bin/go /usr/bin/go
