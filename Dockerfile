FROM node:21-alpine3.18

WORKDIR /APP

RUN  mkdir -p pages public styles
COPY pages/ pages
COPY public/ public
COPY styles/ styles
COPY package.json .
COPY yarn.lock .

RUN  yarn install && \
  yarn build

EXPOSE 8080
ENV PORT 8080
ENV HOSTNAME "0.0.0.0"

CMD ["yarn", "start"]