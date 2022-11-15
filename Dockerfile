# docker build -t jsonschema:latest .
FROM python:3.8-alpine

RUN pip install --no-cache-dir jsonschema==4.2.1

WORKDIR /src
ENTRYPOINT [ "/usr/local/bin/jsonschema" ]
