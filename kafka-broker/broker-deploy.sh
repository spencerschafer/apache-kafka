#!/bin/bash
echo "[Creating namespace]"
kubectl apply -f ../messaging-namespace.yaml

echo "[Applying messaging secret]"
kubectl apply -f ../messaging-private-registry-secret.yaml --namespace="messaging"

echo "[Applying kafka volumes]"
kubectl -n messaging apply -f broker-pv-claim.yaml

echo "[Creating kafka-broker services]"
kubectl apply -f broker-service.yaml
echo "[Created kafka-broker services completed]"

echo "[Creating kafka-broker deployments]"
kubectl apply -f broker-deployment-1.yaml
kubectl apply -f broker-deployment-2.yaml
kubectl apply -f broker-deployment-3.yaml
kubectl apply -f broker-deployment-4.yaml
echo "[Creating kafka-broker deployments completed]"
