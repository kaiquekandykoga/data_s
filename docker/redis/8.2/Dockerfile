# nerdctl build -t data-s-redis-82 .
# nerdctl run --rm -p 6379:6379 data-s-redis-82
# nerdctl exec -it <container-name> /bin/sh

FROM redis:8.2-alpine

EXPOSE 6379

CMD ["redis-server"]
