podname=istio-ingressgateway-85bb5b4c57-l2pcz
ns=istio-system

rm lds.json rds.json cds.json eds.json sds.json

istioctl proxy-config listener $podname -n $ns -o json > lds.json

istioctl proxy-config route $podname -n $ns -o json > rds.json

istioctl proxy-config cluster $podname -n $ns -o json > cds.json

istioctl proxy-config endpoint $podname -n $ns -o json > eds.json

istioctl proxy-config secret $podname -n $ns -o json > sds.json