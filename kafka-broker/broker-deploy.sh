#!/bin/bash

echo "[Creating kafka-broker services]"
kubectl create -f broker-svc-1.yaml
kubectl create -f broker-svc-2.yaml
kubectl create -f broker-svc-3.yaml
kubectl create -f broker-svc-4.yaml
echo "[Created kafka-broker services completed]"

echo "[Creating kafka-broker deployments]"
kubectl create -f broker-deployment-1.yaml
kubectl create -f broker-deployment-2.yaml
kubectl create -f broker-deployment-3.yaml
kubectl create -f broker-deployment-4.yaml
echo "[Creating kafka-broker deployments completed]"
