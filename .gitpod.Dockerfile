FROM ubuntu:22.04

RUN apt-get update && \
    apt-get install -y curl sudo vim && \
    curl -sfL https://get.k3s.io | sh -

ENV KUBECONFIG=/etc/rancher/k3s/k3s.yaml
