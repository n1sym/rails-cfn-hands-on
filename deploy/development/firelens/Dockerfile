FROM amazon/aws-for-fluent-bit:latest

COPY deploy/development/firelens/fluent-bit-custom.conf /fluent-bit/custom.conf
COPY deploy/development/firelens/myparsers.conf /fluent-bit/myparsers.conf
COPY deploy/development/firelens/stream_processor.conf /fluent-bit/stream_processor.conf

RUN ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime 