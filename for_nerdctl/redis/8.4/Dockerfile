# nerdctl build -t for-nerdctl-redis-84 .
# nerdctl run --rm -p 6379:6379 for-nerdctl-redis-84
# nerdctl exec -it <container-name> /bin/sh

FROM redis:8.4-alpine

EXPOSE 6379

CMD ["redis-server"]
