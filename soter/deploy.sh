#!/bin/bash

kubectl apply -f spire/spire-server.yaml
kubectl apply -f spire/spire-agent-test.yaml

kubectl rollout status daemonset -n spire spire-agent

kubectl apply -f istio/istio-base-updated.yaml
kubectl apply -f istio/istio-istiod-updated.yaml
kubectl apply -f istio/istio-ingress-updated.yaml

kubectl label namespace default istio-injection=enabled --overwrite
