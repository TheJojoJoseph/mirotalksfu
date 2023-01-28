FROM node:16

WORKDIR /src

RUN \
    DEBIAN_FRONTEND=noninteractive apt update && \
    apt install -y --no-install-recommends build-essential python3-pip

COPY . .

RUN yarn install

CMD yarn start
