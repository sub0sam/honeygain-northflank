FROM ubuntu:20.04

RUN apt-get update && \
    apt-get install -y curl unzip wget screen ca-certificates && \
    update-ca-certificates

WORKDIR /app

# Add your Honeygain credentials here
ENV HG_EMAIL=your_email@example.com
ENV HG_PASS=your_password

# Placeholder for now (since official binary download is broken)
RUN echo "This is a placeholder. Insert binary download script here." && sleep 5

CMD echo "Run Honeygain manually once binary source is restored."
