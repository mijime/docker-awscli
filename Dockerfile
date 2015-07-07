FROM alpine

RUN apk update && \
    apk add curl py-pip && \
    pip install --upgrade pip && \
    rm -rf /var/cache/apk/*

ADD freeze.pip /usr/local/src/freeze.pip

RUN pip install --upgrade -r /usr/local/src/freeze.pip

ENTRYPOINT [ "/bin/sh", "-c" ]
