pastikan bahwa docker socket dapat diakses, jika mempunyai akses sudo gunakan sudo chmod a+rwx /var/run/docker.sock


./kind create cluster --config cluster-config.yaml

-get kubeconfig

./kind get kubeconfig --name mycluster > kubeconfig

- set environment

source set-kubeconfig.sh

- ready to use

kubectl cluster-info

kubectl get nodes



