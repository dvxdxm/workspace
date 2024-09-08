aws iam attach-role-policy \
--role-name arn:aws:iam::350111553064:role/eksctl-udacity-cluster-nodegroup-u-NodeInstanceRole-X4Z3JZletwvW \
--policy-arn arn:aws:iam::aws:policy/CloudWatchAgentServerPolicy

aws eks create-addon --addon-name amazon-cloudwatch-observability --cluster-name udacity-cluster

