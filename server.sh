#!/bin/sh

docker build -t wsmodule .
docker run -it --rm -v ./app:/app -p 5001:5001 wsmodule
