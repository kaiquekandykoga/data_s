# nerdctl build -t for-nerdctl-postgres-18 .
# nerdctl run --rm -p 5430:5432 -v postgres_data:/var/lib/postgresql/data for-nerdctl-postgres-18
# nerdctl exec -it <container-name> /bin/bash

FROM postgres:18-alpine

ENV POSTGRES_USER=postgres
ENV POSTGRES_PASSWORD=postgres
ENV POSTGRES_DB=pdb

VOLUME /var/lib/postgresql/data

EXPOSE 5432
