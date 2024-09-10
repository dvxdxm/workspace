echo 'Apply secrets.yaml ...'
kubectl apply -f secrets.yml

echo 'Apply db-configmap.yaml ...'
kubectl apply -f db-configmap.yaml

echo 'Apply pvc.yaml ...'
kubectl apply -f pvc.yaml

echo 'Apply pv.yaml ...'
kubectl apply -f pv.yaml

echo 'Apply db.yaml ...'
kubectl apply -f db.yaml
