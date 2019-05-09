# ha-rabbitmq

A swarm stack to spawn easily a high availability RabbitMQ cluster with node failures, network partition, data persistence
and queues mirroring.

You can also run it locally to create and test the `HA` RabbitMQ cluster thanks to the `docker-compose.yml` file.


**/!\\** The source code herein is not prodcution ready. It is meant to create, test, learn, manipulate and benchmark a high availability RabbitMQ cluster.

## Build the image

Before being able to deploy your stack to your swarm cluster, you must build the RabbitMQ image.
To do so, just run the following:

```
$ docker build img/ -t rabbitmq-cluster-alpine:latest
```
## Local

- To run the cluster locally, just run the following:

```
$ export RABBITMQ_ERLANG_COOKIE="i0DPjMZj3Zz1KTAm"
$ docker-compose up
```

## Docker swarm

Assuming you are running an initalized manager node:

```
$ docker swarm deploy -c swarm/rabbitmq_node_1.yaml rmq1
$ docker swarm deploy -c swarm/rabbitmq_node_2.yaml rmq2
$ docker swarm deploy -c swarm/rabbitmq_node_3.yaml rmq3
```

Otherwise, see [how to initialize docker swarm](https://docs.docker.com/engine/reference/commandline/swarm_init/).

