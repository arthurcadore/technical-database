FROM mysql:8.0.34

ENV MYSQL_DATABASE datasheet
ENV MYSQL_ROOT_PASSWORD dev%%ped495

COPY ./setup.sql /docker-entrypoint-initdb.d/
