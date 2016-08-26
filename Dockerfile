FROM heroku/cedar:14

WORKDIR /app

RUN mkdir -p /app/bin

ADD bin/build.sh /app/bin/build.sh

ENTRYPOINT ["./bin/build.sh"]
