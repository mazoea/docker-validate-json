FROM python:3-alpine

RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir jsonschema==4.17.3 && \
    rm -rf /root/.cache

WORKDIR /opt/src
RUN adduser -D maz
RUN jsonschema --version
USER maz


ENTRYPOINT [ "/usr/local/bin/jsonschema" ]
