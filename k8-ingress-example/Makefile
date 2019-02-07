APPNAME := 'hello-app'

port-forward: 
	kubectl port-forward service/${APPNAME}-serv 8080:7000

build:
	cat app-template.yml | sed -e 's/hello-app/apple/g' | sed -e 's/hp-/apple-/g' > apple.yml
	cat app-template.yml | sed -e 's/hello-app/orang/g' | sed -e 's/hp-/orang-/g' > orang.yml
apply: 
	kubectl apply -f apple.yml
	kubectl apply -f orang.yml
	kubectl apply -f ingress.yml


delete:
	kubectl delete -f ingress.yml
	kubectl delete -f apple.yml
	kubectl delete -f orang.yml

test:
	@echo '#add `minikube ip` fruits.com in /etc/hosts'
	curl fruits.com/apple
	curl fruits.com/orang

view:
	kubectl get ingress
	~/work/kubernetes/utils/disp.sh

