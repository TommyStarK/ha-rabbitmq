FROM rabbitmq:3-management-alpine

COPY wait_for_it.sh /usr/local/bin/
COPY entrypoint.sh /usr/local/bin/

RUN chmod +x /usr/local/bin/entrypoint.sh /usr/local/bin/wait_for_it.sh

ENTRYPOINT [ "entrypoint.sh" ]