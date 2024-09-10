aws iam attach-role-policy \
--role-name eksctl-udacity-cluster-nodegroup-u-NodeInstanceRole-IjI2unW64wtn \
--policy-arn arn:aws:iam::aws:policy/CloudWatchAgentServerPolicy

aws eks create-addon --addon-name amazon-cloudwatch-observability --cluster-name udacity-cluster

