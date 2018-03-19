#!/bin/bash
echo "[Creating namespace]"
kubectl apply -f ../messaging-namespace.yaml

echo "[Applying messaging secret]"
kubectl apply -f ../messaging-private-registry-secret.yaml --namespace="messaging"

echo "[Applying zookeeper volumes]"
kubectl -n messaging apply -f zookeeper-pv-claim.yaml

echo "[Creating zookeeper services]"
kubectl apply -f zookeeper-service.yaml
echo "[Creating zookeeper services completed]"

echo "[Creating zookeeper deployments]"
kubectl apply -f zookeeper-deployment-1.yaml
kubectl apply -f zookeeper-deployment-2.yaml
kubectl apply -f zookeeper-deployment-3.yaml
echo "[Creating zookeeper deployments completed]"

