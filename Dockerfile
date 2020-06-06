FROM node:current-alpine

WORKDIR /workspace

COPY entry.sh .

RUN apk add --update --no-cache \
  graphviz \
  ttf-freefont \
  && npm install -g graphqlviz \
  && mkdir /input /output

CMD ["/bin/sh", "entry.sh"]