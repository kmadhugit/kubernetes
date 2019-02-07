
kubectl get node -o=custom-columns=Host:status.addresses[2].address,InternalIP:status.addresses[0].address,ExternalIP:status.addresses[1].address
printf "\n\n"


echo "POD            hostInternalIP  podIP         Containers              Labels" >/tmp/col.lst
echo "metadata.name  status.hostIP   status.podIP  spec.containers[*].name metadata.labels" >> /tmp/col.lst
kubectl get pod -o=custom-columns-file=/tmp/col.lst
printf "\n\n"


echo "Service       Type      ClusterIP       ServicePort          NodePort                ContainerPort             Selector" > /tmp/col.lst
echo "metadata.name spec.type spec.clusterIP  spec.ports[*].port   spec.ports[*].nodePort  spec.ports[*].targetPort  spec.selector" >>/tmp/col.lst
kubectl get service -ocustom-columns-file=/tmp/col.lst
printf "\n\n"

kubectl get endpoints -o wide
