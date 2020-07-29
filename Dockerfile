FROM alpine:3.10

COPY .  /.

RUN apt-get update && apt-get install -y --no-install-recommends \
    python3.7 \
    python3-pip \

RUN pip3 install -r requirements.txt

ENTRYPOINT ["/entrypoint.sh"]
