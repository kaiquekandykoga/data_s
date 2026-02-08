# nerdctl build -t data-s-redis-84 .
# nerdctl run --rm -p 6379:6379 data-s-redis-84
# nerdctl exec -it <container-name> /bin/sh

FROM redis:8.4-alpine

EXPOSE 6379

CMD ["redis-server"]
