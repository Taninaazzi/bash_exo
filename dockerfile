FROM ubuntu:latest

RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y python3 python3-pip

WORKDIR /

EXPOSE 8080

CMD ["python3", "-m", "http.server", "8080"]
