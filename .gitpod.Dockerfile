FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get install -y curl sudo iptables iproute2 vim gnupg lsb-release && \
    curl -sfL https://get.k3s.io | sh -s - --write-kubeconfig-mode 644

ENV KUBECONFIG=/etc/rancher/k3s/k3s.yaml

