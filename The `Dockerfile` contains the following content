FROM ubuntu:latest

WORKDIR /app

COPY . /app/

RUN apt-get update && apt-get install -y build-essential

CMD ["./script.sh"]
