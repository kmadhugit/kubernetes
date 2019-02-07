APPNAME := 'hello-app'

port-forward: 
	kubectl port-forward service/${APPNAME}-serv 8080:7000

apply: 
	kubectl apply -f ${APPNAME}.yml

delete:
	kubectl delete -f ${APPNAME}.yml

test:
	curl http://localhost:8080

view:
	~/work/kubernetes/utils/disp.sh

