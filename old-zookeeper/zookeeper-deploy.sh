#!/bin/bash
echo "[Creating namespace]"
kubectl create namespace messaging

echo "[Creating zookeeper services]"
kubectl create -f zookeeper-svc-1.yaml
kubectl create -f zookeeper-svc-2.yaml
kubectl create -f zookeeper-svc-3.yaml
echo "[Creating zookeeper services completed]"

echo "[Creating zookeeper deployments]"
kubectl create -f zookeeper-deployment-1.yaml
kubectl create -f zookeeper-deployment-2.yaml
kubectl create -f zookeeper-deployment-3.yaml
echo "[Creating zookeeper deployments completed]"
