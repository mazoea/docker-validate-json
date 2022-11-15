# docker build -t jsonschema:latest .
FROM python:3.8-alpine
LABEL maintainer=jm
RUN pip install jsonschema==4.2.1

WORKDIR /src
ENTRYPOINT [ "/usr/local/bin/jsonschema" ]
