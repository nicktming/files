version=v0.10.0

kubectl apply --selector knative.dev/crd-install=true \
  --filename https://github.com/knative/serving/releases/download/$version/serving.yaml \
  --filename https://github.com/knative/serving/releases/download/$version/monitoring.yaml

kubectl apply --filename https://github.com/knative/serving/releases/download/$version/serving.yaml \
  --filename https://github.com/knative/serving/releases/download/$version/monitoring.yaml


