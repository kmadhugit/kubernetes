kubectl apply -f hello-app.yml
kubectl get pod
kubectl get service
sleep 5
kubectl port-forward service/hello-app-serv 7001:7000
curl http://localhost:7001

