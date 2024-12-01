kubectl delete -f ./deployment.yaml
kubectl delete -f ./service.yaml
kubectl delete -f ./ingress.yaml
kubectl delete -f ./controller.yaml
kubectl apply -f ./deployment.yaml
kubectl apply -f ./service.yaml
kubectl apply -f ./controller.yaml
kubectl apply -f ./ingress.yaml