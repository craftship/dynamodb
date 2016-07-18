FROM ubuntu:14.04
MAINTAINER Craftship Ltd <hello@craftship.io>

RUN mkdir /opt/dynamodb
RUN mkdir /opt/dynamodb/db

WORKDIR /opt/dynamodb

RUN sudo apt-get update
RUN sudo apt-get install wget default-jre -y

RUN wget -O /tmp/dynamodb http://dynamodb-local.s3-website-us-west-2.amazonaws.com/dynamodb_local_latest
RUN tar xfz /tmp/dynamodb

ENTRYPOINT ["java", "-Djava.library.path=.", "-jar", "DynamoDBLocal.jar", "-dbPath", "/opt/dynamodb/db"]
CMD ["-port", "8000"]

EXPOSE 8000

VOLUME ["/opt/dynamodb/db"]

