port-forward: 
	@echo kubectl port-forward service/abc-serv 8080:7000

dry-run:
	helm install --dry-run --debug .

install: 
	helm install .

delete:
	@echo 'helm delete '

test:
	helm test --cleanup .

view:
	~/work/kubernetes/utils/disp.sh

