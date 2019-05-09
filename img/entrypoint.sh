#!/usr/bin/env bash

/usr/local/bin/wait_for_it.sh "$NODE_TO_CLUSTER_WITH:4369" -- /usr/local/bin/docker-entrypoint.sh rabbitmq-server -detached
rabbitmqctl stop_app
rabbitmqctl join_cluster "rabbit@$NODE_TO_CLUSTER_WITH"
rabbitmqctl stop
sleep 2s
rabbitmq-server