#!/bin/sh

nama=hello-world
image=tutum/hello-world
port=80
portoutside=9999
portoutsidecluster=32226

kubectl run $nama --image=$image --port=80

kubectl create service nodeport $nama-outside \
	--node-port $portoutsidecluster \
	--tcp $portoutside:$port -o yaml --dry-run=client\
       	| kubectl set selector --local -f - 'run=hello-world' -o yaml\
       	| kubectl create -f - 

kubectl get pods

kubectl get svc

