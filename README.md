# terra-con-vault

## What is this repository?

POC using Terraform, Consul and Vault. This repo will allow you to spin up a Consul server with a UI. 

# Getting Started

## Prerequisites

 - [Docker](https://docs.docker.com/installation/) and [Docker Compose](https://docs.docker.com/compose/install/) installed.

## Docker Setup

### Consul

- Create the Consul configuration file that will be mounted to the container as part of the conf.d directory: `cp consul/assets/conf.d/consul.json.example /consul/assets/conf.d/consul.json`

#### Published ports

* 8400 (RPC)
* 8500 (HTTP)
* 8600 (DNS)

## Notes

Docker Image: [progrium/consul](https://hub.docker.com/r/progrium/consul/)

