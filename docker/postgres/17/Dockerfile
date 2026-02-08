# nerdctl build -t data-s-postgres-17 .
# nerdctl run --rm -p 5430:5432 -v postgres17_data:/var/lib/postgresql/data data-s-postgres-17
# nerdctl exec -it <container-name> /bin/bash

FROM postgres:17-alpine

ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=postgres
ENV POSTGRES_DB=pdb

VOLUME /var/lib/postgresql/data

EXPOSE 5432
