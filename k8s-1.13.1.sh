#!/bin/bash
echo "正在拉取镜像"
docker pull mirrorgooglecontainers/kube-apiserver-amd64:v1.13.1
docker pull mirrorgooglecontainers/kube-controller-manager-amd64:v1.13.1
docker pull mirrorgooglecontainers/kube-scheduler-amd64:v1.13.1
docker pull mirrorgooglecontainers/kube-proxy-amd64:v1.13.1
docker pull mirrorgooglecontainers/etcd-amd64:3.2.24
docker pull mirrorgooglecontainers/pause-amd64:3.1
docker pull mirrorgooglecontainers/kubernetes-dashboard-amd64:v1.10.0
docker pull mirrorgooglecontainers/metrics-server-amd64:v0.3.1
docker pull coredns/coredns:1.2.6
echo "给镜像添加官网标签"
docker tag mirrorgooglecontainers/kube-apiserver-amd64:v1.13.1  k8s.gcr.io/kube-apiserver:v1.13.1
docker tag mirrorgooglecontainers/kube-controller-manager-amd64:v1.13.1  k8s.gcr.io/kube-controller-manager:v1.13.1 
docker tag mirrorgooglecontainers/kube-scheduler-amd64:v1.13.1  k8s.gcr.io/kube-scheduler:v1.13.1
docker tag mirrorgooglecontainers/kube-proxy-amd64:v1.13.1  k8s.gcr.io/kube-proxy:v1.13.1
docker tag mirrorgooglecontainers/etcd-amd64:3.2.24  k8s.gcr.io/etcd:3.2.24
docker tag mirrorgooglecontainers/pause-amd64:3.1  k8s.gcr.io/pause:3.1
docker tag mirrorgooglecontainers/kubernetes-dashboard-amd64:v1.10.0  k8s.gcr.io/kubernetes-dashboard-amd64:v1.10.0 
docker tag mirrorgooglecontainers/metrics-server-amd64:v0.3.1  k8s.gcr.io/metrics-server-amd64:v0.3.1
docker tag coredns/coredns:1.2.6  k8s.gcr.io/coredns:1.2.6
echo "删除原有镜像"
docker image rm mirrorgooglecontainers/kube-apiserver-amd64:v1.13.1
docker image rm mirrorgooglecontainers/kube-controller-manager-amd64:v1.13.1
docker image rm mirrorgooglecontainers/kube-scheduler-amd64:v1.13.1
docker image rm mirrorgooglecontainers/kube-proxy-amd64:v1.13.1
docker image rm mirrorgooglecontainers/etcd-amd64:3.2.24
docker image rm mirrorgooglecontainers/pause-amd64:3.1
docker image rm mirrorgooglecontainers/kubernetes-dashboard-amd64:v1.10.0
docker image rm mirrorgooglecontainers/metrics-server-amd64:v0.3.1
docker image rm coredns/coredns:1.2.6
echo "本地镜像准备完成"
