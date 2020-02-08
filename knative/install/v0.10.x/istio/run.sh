#!/usr/bin/env bash

export ISTIO_VERSION=1.1.7
curl -L https://git.io/getLatestIstio | sh -
cd istio-${ISTIO_VERSION}

for i in install/kubernetes/helm/istio-init/files/crd*yaml; do kubectl apply -f $i; done

