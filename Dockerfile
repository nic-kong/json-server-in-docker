FROM node:17-alpine
LABEL authors="Nic Kong"

RUN apk add --no-cache bash
RUN npm install -g json-server

WORKDIR /data
VOLUME /data
ADD db.json /data/db.json

ENV PORT 8080
EXPOSE ${PORT}

RUN mkdir /config \
 && echo -e '{\n  "host": "0.0.0.0",\n  "port": '${PORT}'\n}\n' > /config/json-server.json
ENTRYPOINT json-server --watch ./db.json --config /config/json-server.json
