version=v0.10.0

kubectl delete --selector knative.dev/crd-install=true \
  --filename https://github.com/knative/serving/releases/download/$version/serving.yaml \
  --filename https://github.com/knative/serving/releases/download/$version/monitoring.yaml

kubectl delete --filename https://github.com/knative/serving/releases/download/$version/serving.yaml \
  --filename https://github.com/knative/serving/releases/download/$version/monitoring.yaml


