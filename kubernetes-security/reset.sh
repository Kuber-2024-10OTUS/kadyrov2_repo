kubectl delete    -f ./pvc.yaml    -f ./deployment.yaml  -f ./svc.yaml   -f ./ingress.yaml   -f ./nginx-config.yaml     -f ./config-text-file.yaml   -f ./monitoring-sa.yaml -f ./monitoring-cr.yaml -f ./monitoring-crb.yaml -f ./cd-sa.yaml   -f ./cd-rb.yaml  

kubectl apply     -f ./pvc.yaml   -f ./deployment.yaml  -f ./svc.yaml    -f ./ingress.yaml   -f ./nginx-config.yaml    -f ./config-text-file.yaml   -f ./monitoring-sa.yaml -f ./monitoring-cr.yaml -f ./monitoring-crb.yaml   -f ./cd-sa.yaml   -f ./cd-rb.yaml  