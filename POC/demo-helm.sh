#!/bin/bash

DIR="../mithrilctl/helm"

#./create-kind-cluster.sh
#
helm upgrade --install -f "$DIR"/spire/spire-server/values.yaml spire-server "$DIR"/spire/spire-server/
#kubectl rollout status statefulset -n spire spire-server
#
#helm upgrade --install -f "$DIR"/spire/spire-agent/values.yaml spire-agent "$DIR"/spire/spire-agent/
#kubectl apply -f /home/alexandre/Goland/fork/mithril-fork/soter/spire/spire-server.yaml
#kubectl apply -f /home/alexandre/Goland/fork/mithril-fork/soter/spire/spire-agent-test.yaml
kubectl rollout status statefulset -n spire spire-server
#kubectl rollout status daemonset -n spire spire-agent
#
#helm upgrade --install -f "$DIR"/istio/base-1.14.4/base/values.yaml base "$DIR"/istio/base-1.14.4/base/
#helm upgrade --install -f "$DIR"/istio/istiod-1.14.4/istiod/values.yaml istiod "$DIR"/istio/istiod-1.14.4/istiod/ -n istio-system
#helm upgrade --install -f "$DIR"/istio/gateway-1.14.4/gateway/values.yaml ingressgateway "$DIR"/istio/gateway-1.14.4/gateway/ -n istio-system
#
#kubectl -n istio-system rollout status deployment ingressgateway
#kubectl label namespace default istio-injection=enabled --overwrite
#kubectl apply -f bookinfo/bookinfo.yaml
