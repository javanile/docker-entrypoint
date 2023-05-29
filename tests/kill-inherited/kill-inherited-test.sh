#!/usr/bin/env bash
set -e

cd "$(dirname "${BASH_SOURCE[0]}")"

docker rm -f kill-inherited-test || true
docker build -t javanile/docker-entrypoint:kill-inherited-test .
docker run -d --name kill-inherited-test javanile/docker-entrypoint:kill-inherited-test


#docker exec kill-inherited-test bash -c 'ps -aux' && sleep 2

#docker exec kill-inherited-test bash -c 'kill -9 7' || true

docker logs -f kill-inherited-test
