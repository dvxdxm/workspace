echo 'init cluster ...'
eksctl create cluster --name udacity-cluster --region us-east-1 --nodegroup-name udacity-nodes --node-type t3.small --nodes 1 --nodes-min 1 --nodes-max 2

echo 'update cluster ...'
aws eks --region us-east-1 update-kubeconfig --name udacity-cluster

echo 'kube config current context ...'
kubectl config current-context

